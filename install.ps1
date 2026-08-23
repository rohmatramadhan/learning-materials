# Skrip Pemasang Paket Skill IODA untuk OpenCode / IODA Skill Package Installer Script for OpenCode
[CmdletBinding()]
param(
    [Parameter(Mandatory = $false)]
    [string]$TargetConfigPath,

    [Parameter(Mandatory = $false)]
    [switch]$Force
)

$ErrorActionPreference = "Stop"

$scriptDir = $PSScriptRoot
$manifestPath = Join-Path $scriptDir "manifest.json"

Write-Host "==================================================" -ForegroundColor Cyan
Write-Host " Pemasang Paket Skill OpenCode - IODA Suite" -ForegroundColor Cyan
Write-Host "==================================================" -ForegroundColor Cyan

# 1. Validasi keberadaan manifest.json / Validate manifest.json existence
if (-not (Test-Path -LiteralPath $manifestPath)) {
    Write-Host "[GALAT] Berkas manifest.json tidak ditemukan di $manifestPath" -ForegroundColor Red
    exit 1
}

try {
    $manifestContent = Get-Content -LiteralPath $manifestPath -Raw -Encoding UTF8
    $manifest = $manifestContent | ConvertFrom-Json
} catch {
    Write-Host "[GALAT] Gagal membaca berkas manifest.json: $_" -ForegroundColor Red
    exit 1
}

# 2. Pengecekan versi OpenCode / Check OpenCode version
Write-Host "[1/7] Memeriksa instalasi dan versi OpenCode..." -ForegroundColor Yellow
$openCodeCli = Get-Command "opencode" -ErrorAction SilentlyContinue

if ($null -eq $openCodeCli) {
    if (-not $TargetConfigPath) {
        Write-Host "[GALAT] Perintah 'opencode' tidak ditemukan di PATH sistem." -ForegroundColor Red
        exit 1
    } else {
        Write-Host "  Peringatan: CLI 'opencode' tidak ditemukan, pengujian memakai target custom." -ForegroundColor DarkYellow
    }
} else {
    try {
        $rawVersion = & opencode --version 2>&1
        $versionMatch = [regex]::Match($rawVersion, "(\d+\.\d+\.\d+)")
        if ($versionMatch.Success) {
            $currentVer = [System.Version]$versionMatch.Groups[1].Value
            $minVer = [System.Version]$manifest.min_opencode_version
            if ($currentVer -lt $minVer) {
                Write-Host "[GALAT] Versi OpenCode ($currentVer) lebih rendah dari min_opencode_version ($minVer)." -ForegroundColor Red
                exit 1
            }
            Write-Host "  Versi OpenCode terdeteksi: $currentVer (Minimum: $minVer)" -ForegroundColor Green
        }
    } catch {
        Write-Host "[GALAT] Gagal memeriksa versi OpenCode: $_" -ForegroundColor Red
        exit 1
    }
}

# 3. Tentukan direktori target konfigurasi / Determine target configuration directory
if ([string]::IsNullOrWhiteSpace($TargetConfigPath)) {
    Write-Host "[2/7] Mendeteksi jalur konfigurasi OpenCode via 'opencode debug paths'..." -ForegroundColor Yellow
    try {
        $debugPaths = & opencode debug paths 2>&1
        $configLine = $debugPaths | Where-Object { $_ -match "^config\s+(.+)$" }
        if ($configLine -and $configLine -match "^config\s+(.+)$") {
            $TargetConfigPath = $Matches[1].Trim()
        }
    } catch {
        Write-Host "[GALAT] Gagal menjalankan 'opencode debug paths': $_" -ForegroundColor Red
        exit 1
    }

    if ([string]::IsNullOrWhiteSpace($TargetConfigPath)) {
        # Fallback default path OpenCode pada Windows / Fallback default OpenCode path on Windows
        $TargetConfigPath = Join-Path $env:USERPROFILE ".config\opencode"
    }
}

Write-Host "  Direktori target: $TargetConfigPath" -ForegroundColor Green
if (-not (Test-Path -LiteralPath $TargetConfigPath)) {
    New-Item -ItemType Directory -Path $TargetConfigPath -Force | Out-Null
}

# 4. Validasi pra-salin berkas paket dan hash SHA-256 / Pre-copy validation of package files and SHA-256 hash
Write-Host "[3/7] Memvalidasi integritas berkas paket sebelum pemasangan..." -ForegroundColor Yellow
foreach ($entry in $manifest.files) {
    if ($entry.source -match "(^\w+:|^\/|^\\[a-zA-Z0-9]|\.\.)" -or $entry.target -match "(^\w+:|^\/|^\\[a-zA-Z0-9]|\.\.)") {
        Write-Host "[GALAT] Path traversal atau path absolut terdeteksi pada manifes: $($entry.source)" -ForegroundColor Red
        exit 1
    }

    $sourceFilePath = Join-Path $scriptDir ($entry.source.Replace("/", "\"))
    if (-not (Test-Path -LiteralPath $sourceFilePath)) {
        Write-Host "[GALAT] Berkas sumber tidak ditemukan: $sourceFilePath" -ForegroundColor Red
        exit 1
    }

    $calcHash = (Get-FileHash -LiteralPath $sourceFilePath -Algorithm SHA256).Hash.ToLowerInvariant()
    if ($calcHash -ne $entry.sha256.ToLowerInvariant()) {
        Write-Host "[GALAT] Hash SHA-256 sumber tidak cocok untuk: $($entry.source)" -ForegroundColor Red
        exit 1
    }
}
Write-Host "  Seluruh hash berkas sumber valid 100%." -ForegroundColor Green

# 5. Siapkan pencadangan (backup) untuk direktori skill target yang sudah ada / Prepare backup for existing target skill directories
Write-Host "[4/7] Menyiapkan pencadangan skill eksisting..." -ForegroundColor Yellow
$backupDir = Join-Path ([System.IO.Path]::GetTempPath()) ("opencode-backup-" + [System.Guid]::NewGuid().ToString("N"))
New-Item -ItemType Directory -Path $backupDir -Force | Out-Null

$affectedSkillDirs = @{}
foreach ($entry in $manifest.files) {
    $targetRel = $entry.target.Replace("/", "\")
    $parts = $targetRel -split "\\|/"
    if ($parts.Length -ge 2 -and $parts[0] -eq "skills") {
        $skillKey = Join-Path "skills" $parts[1]
        $affectedSkillDirs[$skillKey] = $true
    }
}

$backedUpList = @()
foreach ($skillSubDir in $affectedSkillDirs.Keys) {
    $fullSkillPath = Join-Path $TargetConfigPath $skillSubDir
    if (Test-Path -LiteralPath $fullSkillPath) {
        $backupDest = Join-Path $backupDir $skillSubDir
        $parentBackup = Split-Path -Path $backupDest -Parent
        if (-not (Test-Path -LiteralPath $parentBackup)) {
            New-Item -ItemType Directory -Path $parentBackup -Force | Out-Null
        }
        Copy-Item -LiteralPath $fullSkillPath -Destination $backupDest -Recurse -Force
        $backedUpList += $skillSubDir
        Write-Host "  Folder lama dicadangkan (Backup dibuat di: $backupDest)" -ForegroundColor Cyan
    }
}

# 6. Salin berkas dan verifikasi pasca-salin / Copy files and post-copy verification
Write-Host "[5/7] Memasang berkas ke direktori target..." -ForegroundColor Yellow
$installedFilesList = @()
$installSuccess = $false

try {
    foreach ($entry in $manifest.files) {
        $sourceFilePath = Join-Path $scriptDir ($entry.source.Replace("/", "\"))
        $destFilePath = Join-Path $TargetConfigPath ($entry.target.Replace("/", "\"))
        $destDir = Split-Path -Path $destFilePath -Parent

        if (-not (Test-Path -LiteralPath $destDir)) {
            New-Item -ItemType Directory -Path $destDir -Force | Out-Null
        }

        Copy-Item -LiteralPath $sourceFilePath -Destination $destFilePath -Force
        $installedFilesList += $destFilePath

        # Verifikasi SHA-256 berkas yang baru disalin / Verify SHA-256 of newly copied file
        $destHash = (Get-FileHash -LiteralPath $destFilePath -Algorithm SHA256).Hash.ToLowerInvariant()
        if ($destHash -ne $entry.sha256.ToLowerInvariant()) {
            throw "Hash SHA-256 tidak cocok setelah salin pada berkas: $destFilePath"
        }
    }

    $installSuccess = $true
} catch {
    Write-Host "[GALAT] Terjadi kegagalan saat pemasangan: $_" -ForegroundColor Red
    Write-Host "Memulai proses pemulihan (Rollback)..." -ForegroundColor Yellow

    # Rollback: hapus berkas terpasang baru jika ada / Rollback: remove newly installed files
    foreach ($installedFile in $installedFilesList) {
        if (Test-Path -LiteralPath $installedFile) {
            Remove-Item -LiteralPath $installedFile -Force -ErrorAction SilentlyContinue
        }
    }

    # Pulihkan dari cadangan jika sebelumnya ada / Restore from backup if previously existed
    foreach ($skillSubDir in $backedUpList) {
        $backupSource = Join-Path $backupDir $skillSubDir
        $destSkillPath = Join-Path $TargetConfigPath $skillSubDir
        if (Test-Path -LiteralPath $backupSource) {
            if (Test-Path -LiteralPath $destSkillPath) {
                Remove-Item -LiteralPath $destSkillPath -Recurse -Force -ErrorAction SilentlyContinue
            }
            Copy-Item -LiteralPath $backupSource -Destination $destSkillPath -Recurse -Force
            Write-Host "  Memulihkan skill dari backup: $skillSubDir" -ForegroundColor Yellow
        }
    }

    Write-Host "[ROLLBACK SELESAI] Kondisi target telah dipulihkan." -ForegroundColor Yellow
    exit 1
} finally {
    # Bersihkan folder backup temporer jika berhasil / Clean up temporary backup folder if succeeded
    if ($installSuccess -and (Test-Path -LiteralPath $backupDir)) {
        Remove-Item -LiteralPath $backupDir -Recurse -Force -ErrorAction SilentlyContinue
    }
}

# 7. Pasang ulang skill pendukung wajib: 9router-web-search / Ensure mandatory companion skill: 9router-web-search
Write-Host "[6/7] Memastikan skill pendukung '9router-web-search' tersedia..." -ForegroundColor Yellow
$nineRouterSkillDir = Join-Path $TargetConfigPath "skills\9router-web-search"
$nineRouterSkillFile = Join-Path $nineRouterSkillDir "SKILL.md"
$nineRouterSourceUrl = "https://raw.githubusercontent.com/decolua/9router/refs/heads/master/skills/9router-web-search/SKILL.md"

if (Test-Path -LiteralPath $nineRouterSkillFile) {
    Write-Host "  Skill '9router-web-search' sudah terpasang, dilewati." -ForegroundColor Green
} else {
    $downloadOk = $false
    try {
        if (-not (Test-Path -LiteralPath $nineRouterSkillDir)) {
            New-Item -ItemType Directory -Path $nineRouterSkillDir -Force | Out-Null
        }
        # Unduh via Invoke-WebRequest lalu cadangan curl.exe / Download via Invoke-WebRequest with curl.exe fallback
        try {
            Invoke-WebRequest -Uri $nineRouterSourceUrl -OutFile $nineRouterSkillFile -UseBasicParsing -TimeoutSec 30
            $downloadOk = $true
        } catch {
            & curl.exe -L -s --max-time 30 -o $nineRouterSkillFile $nineRouterSourceUrl
            if ((Test-Path -LiteralPath $nineRouterSkillFile) -and ((Get-Item -LiteralPath $nineRouterSkillFile).Length -gt 0)) {
                $downloadOk = $true
            }
        }

        if ($downloadOk) {
            $headContent = Get-Content -LiteralPath $nineRouterSkillFile -TotalCount 10 -ErrorAction SilentlyContinue
            if (-not ($headContent -match "9router")) {
                throw "Isi unduhan tidak tampak seperti SKILL.md 9router."
            }
            Write-Host "  Skill '9router-web-search' berhasil dipasang otomatis dari repositori resmi." -ForegroundColor Green
        } else {
            throw "Unduhan gagal atau berkas kosong."
        }
    } catch {
        Remove-Item -LiteralPath $nineRouterSkillFile -Force -ErrorAction SilentlyContinue
        Write-Host "  [PERINGATAN] Gagal memasang '9router-web-search': $_" -ForegroundColor DarkYellow
        Write-Host "  Pemasangan paket tetap lanjut. Riset daring dapat memakai 'webfetch' dan API publik gratis sebagai jalur utama." -ForegroundColor DarkYellow
    }
}

# 8. Informasi penyelesaian / Completion information
Write-Host "[7/7] Pemasangan berhasil diselesaikan!" -ForegroundColor Green
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "Paket '$($manifest.name)' v$($manifest.version) berhasil dipasang." -ForegroundColor Green
Write-Host "Direktori: $TargetConfigPath\skills\" -ForegroundColor White
Write-Host ""
Write-Host "PENTING: Silakan muat ulang (restart) OpenCode atau jalankan sesi baru untuk memuat skill yang baru terpasang." -ForegroundColor Yellow
Write-Host "==================================================" -ForegroundColor Cyan
exit 0
