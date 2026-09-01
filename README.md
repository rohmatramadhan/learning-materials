# Ioda Materials Suite (`ioda-materials-suite`)

Paket skill resmi untuk merancang dan menyusun materi pelatihan Ioda Academy di lingkungan OpenCode.

## Isi Paket Skill

1. **`learning-materials-ioda-academy` (Skill Utama)**
   - Mengorkestrasi seluruh alur materi dari awal sampai akhir:
     1. `learning-brief.md` (Analisis profil peserta & tujuan belajar)
     2. `riset-<topik>.md` (Riset bukti & skenario kerja 2 lapis)
     3. `kerangka-materi-<topik>.md` (Kerangka materi dan daftar slide)
     4. `brief-ppt-<topik>.md` (Arahan slide presentasi dari kerangka yang sudah direview)
2. **`panduan-menulis-dokumen`**
   - Standar penulisan bahasa Indonesia baku ragam formal.
   - Dilengkapi tabel referensi ejaan baku dan padanan ragam cakapan (`references/ejaan-dan-ragam.md`).
3. **`penyusun-brief-ppt-ioda`**
   - Penyusun berkas arahan presentasi (`brief-ppt-<topik>.md`) dari materi utama dan arahan pembelajaran.
   - Dilengkapi katalog visual resmi Ioda (`references/katalog-visual-materi-ioda.md`) dan contoh struktur brief (`examples/contoh-brief-ppt.md`).
4. **`assets/`**
   - Logo resmi Ioda Academy (versi putih transparan untuk cover/Q&A dan versi berwarna untuk slide konten).

---

## Cara Pemasangan (Windows)

Pastikan [OpenCode](https://opencode.ai) sudah terpasang di komputer Anda.

1. Unduh / *clone* repositori ini:
   ```bash
   git clone https://github.com/rohmatramadhan/learning-materials.git
   ```
2. Buka PowerShell di folder repositori.
3. Jalankan perintah instalasi:
   ```powershell
   .\install.ps1
   ```
4. Mulai ulang (*restart*) sesi OpenCode Anda.

---

## Struktur Berkas

```text
├── assets/
│   ├── logo putih.png   # Logo putih transparan (untuk Cover / Q&A)
│   └── logo warna.png   # Logo warna resmi (untuk Header Slide Konten)
├── install.ps1          # Skrip pemasang otomatis Windows (backup & rollback)
├── manifest.json        # Manifes paket dan hash integritas SHA-256
├── README.md            # Dokumentasi paket
└── opencode/
    └── skills/
        ├── learning-materials-ioda-academy/
        │   └── SKILL.md
        ├── panduan-menulis-dokumen/
        │   ├── SKILL.md
        │   └── references/
        │       └── ejaan-dan-ragam.md
        └── penyusun-brief-ppt-ioda/
            ├── SKILL.md
            ├── references/
            │   └── katalog-visual-materi-ioda.md
            └── examples/
                └── contoh-brief-ppt.md
```
