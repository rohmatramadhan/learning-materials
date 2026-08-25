---
name: learning-materials-ioda-academy
description: Sistem orkestrasi AI resmi Ioda Academy untuk menyusun materi pelatihan dari awal hingga akhir (learning-brief -> riset kasus -> materi utama naratif -> brief slide PPT). Wajib gunakan skill ini ketika pengguna ingin membuat, merancang, meriset, atau menyusun materi pelatihan, silabus, atau bahan ajar baru.
---

# Learning Materials Ioda Academy

Skill induk ini memandu dan mengorkestrasi penyusunan materi pelatihan di lingkungan Ioda Academy secara bertahap, disiplin, dan teruji.

---

## 1. Alur Kerja 4 Lapis

Setiap pembuatan materi pelatihan **wajib** mengikuti urutan 4 tahap ini tanpa melompat:

```text
Tahap 1: learning-brief.md    (Menangkap kebutuhan & profil peserta)
   ↓
Tahap 2: riset-<topik>.md     (Riset bukti kasus nyata 2 lapis & batas klaim)
   ↓
Tahap 3: materi-<topik>.md    (Kerangka bab → review → modul naratif dua babak)
   ↓
Tahap 4: brief-ppt-<topik>.md (Menurunkan naskah materi menjadi arahan slide)
```

Setiap tahap memiliki **Gerbang Mutu**: tahap hilir hanya boleh dikerjakan setelah tahap hulu berstatus **`Lolos`** atau **`Ditandai`**.

---

## 2. Tahap 1: Arahan Pembelajaran (`learning-brief.md`)

Menangkap informasi kunci sebelum riset dimulai:
1. **Program & Topik:** Nama program dan nomor sesi pertemuan.
2. **Audiens & Tingkat Peserta:** Pengetahuan awal yang diasumsikan.
3. **Durasi Belajar:** Estimasi waktu sesi efektif.
4. **Tujuan Pembelajaran:** Kompetensi spesifik yang harus dicapai peserta.
5. **Cakupan Inti:** Batasan topik yang relevan.

> **Aturan Utama:** Jangan mengarang data. Jika nomor sesi, prasyarat, atau izin catatan pembicara belum ada, tandai dengan `[BUTUH DATA: keterangan]`.

---

## 3. Tahap 2: Riset Kasus & Bukti (`riset-<topik>.md`)

### 3.1 Rantai Alat Riset Wajib

Riset **wajib** mengakses internet secara live menggunakan urutan alat berikut. Dilarang menulis `riset-<topik>.md` hanya dari pengetahuan internal tanpa bukti daring yang divalidasi pada hari riset:

| Urutan | Alat | Fungsi | Biaya |
|---|---|---|---|
| 1 | `9router-web-search` (skill) | Mencari kandidat kasus, sumber resmi, dan referensi. | Gratis |
| 2 | `webfetch` (bawaan OpenCode) | Mengambil dan membaca isi URL menjadi teks bersih. | Gratis |
| 3 | `curl` via terminal | Memvalidasi status tautan (HTTP 200) dan mengunduh berkas. | Gratis |
| 4 | API publik gratis (Crossref, arXiv, npm/PyPI registry) | Memverifikasi jurnal ilmiah, DOI, dan versi perangkat lunak. | Gratis |
| 5 | API OpenAlex (`api.openalex.org`) dan Unpaywall (`api.unpaywall.org/v2/<doi>`) | Memperdalam literatur ilmiah: metadata dan sitasi dicari lewat OpenAlex; Unpaywall dipakai untuk menemukan versi *open access* resmi dari sebuah DOI agar tautan naskah legal dan stabil. | Gratis tanpa kunci |
| 6 | `https://kbbi.web.id/<kata>` | Verifikasi status kata KBBI per kata. Contoh: `https://kbbi.web.id/makalah`. | Gratis |
| 7 | `https://ejaan.kemendikdasmen.go.id/` | Verifikasi kaidah EYD Edisi V. | Gratis |

Aturan penggunaan:
1. **Wajib mulai pencarian** dengan `9router-web-search`. Jika skill ini tidak merespons, lanjutkan pencarian melalui mesin telusur yang dapat dibuka `webfetch`, lalu laporkan penyimpangan alat pada bagian catatan riset.
2. **Wajib verifikasi dua arah:** setiap klaim faktual wajib dibaca isi halamannya (`webfetch`) DAN status tautannya dicek (`curl` menghasilkan HTTP 200).
3. **Wajib verifikasi bahasa:** kata baku dicek ke `kbbi.web.id/<kata>` dan kaidah penulisan ke `ejaan.kemendikdasmen.go.id`. Situs KBBI resmi `kbbi.kemendikdasmen.go.id` memerlukan masuk log; hanya dipakai jika pengguna memberi akun pada sesi berjalan, tanpa menyimpan kredensial ke berkas.
4. Jika seluruh alat daring gagal (offline), jangan mengarang sumber. Hentikan tahap riset dan tandai `[BUTUH DATA: verifikasi sumber <klaim>]`.
5. Alat opsional lain (MCP Firecrawl, Context7, Perplexity API) hanya dipakai jika sudah terpasang; keberadaannya bukan syarat alur.

### 3.2 Pola Dua Lapis Kasus

Riset dilakukan secara terarah menggunakan pola **Dua Lapis Kasus**:
1. **Kasus Nyata (Pemantik):**
   - Kejadian nyata yang terverifikasi (ada nama pelapor, tahun, URL resmi aktif).
   - Arahkan ke pola **kesalahan → pelajaran**: tampilkan satu kesalahan nyata yang diakui pelakunya atau diulas sumber kredibel, lalu petik pelajarannya sebagai *hook* pembuka sesi.
   - Berfungsi sebagai pemantik rasa ingin tahu. Jangan merekonstruksi domain rumitnya.
2. **Skenario Kerja Sederhana (Kasus Utama):**
   - Skenario terisolasi yang dekat dengan dunia kerja peserta.
   - Skenario sengaja meniru jawaban atas kesalahan pada kasus nyata, agar isu pembuka dijawab lewat praktik.
   - Wajib dinyatakan sebagai **`Ilustrasi pembelajaran`** (bukan kejadian nyata).
3. **Batas Klaim & Sumber Kredibel:**
   - Gunakan dokumentasi resmi (*official docs*), artikel ilmiah, atau berita kredibel.
   - Catat keputusan relevansi: topik di luar fokus sesi ditunda.

---

## 4. Tahap 3: Modul Materi Utama (`materi-<topik>.md`)

Materi utama adalah **modul naratif utuh bergaya buku mandiri**: dibaca peserta tanpa kehadiran mentor, dan dijadikan rujukan saat menyusun brief PPT di Tahap 4. Modul mengintegrasikan 10 fungsi konten:
1. Menetapkan tujuan dan batas materi.
2. Memakai kasus nyata sebagai pemantik jika relevan.
3. Menetapkan skenario utama ilustratif.
4. Menjabarkan konsep per subtopik secara sebab-akibat.
5. Menjelaskan hubungan antarkonsep dan penerapannya.
6. Menunjukkan celah atau kesalahan umum yang perlu diwaspadai.
7. Menambahkan contoh transfer jika membantu.
8. Menyediakan praktik mandiri dan kriteria pemeriksaan.
9. Menempatkan materi mendalam sebagai **pengayaan opsional**.
10. Mencantumkan **`Sumber riset`** pada setiap klaim faktual.

### 4.1 Standar kedalaman naskah

Tiap konsep dijelaskan tuntas dengan pola **apa → cara kerja → contoh → kenapa penting → cara memakai atau menghindari**. Konsep tidak boleh hanya disebut dalam satu poin; setiap konsep wajib memuat contoh konkret yang bisa dibayangkan peserta. Naskah mengalir naratif seperti bab buku, bukan daftar poin dan rujukan. Contoh boleh memakai tokoh dan bisnis fiktif berulang (misal peserta "Dina" dan bisnis "Dapur Nia") sebagai benang merah, seperti buku pelajaran memakai tokoh tetap.

### 4.2 Prinsip buka dari dasar

`learning-brief.md` dan lesson plan adalah **hasil akhir** (target kompetensi). Modul ini adalah **jalan menuju hasil akhir**. Jika target menyebut istilah lanjutan, modul membuka dari fondasinya lebih dulu sebelum sampai ke target. Contoh: target "membaca *diff*" → modul menjelaskan lebih dulu apa itu Git, repositori, *commit*, *push*, baru *diff* dan cara membacanya. Target "menyusun *prompt* yang baik" → modul menjelaskan lebih dulu apa itu AI dan model bahasa, baru pola *prompt*.

### 4.3 Struktur dua babak

- Sesi tatap muka (6 jam efektif) dibagi **dua babak**: Babak Pagi (3 jam) dan Babak Siang (3 jam), dipisahkan ISOMA. Setiap babak memuat **satu siklus penuh Melihat → Mencoba → Merefleksikan → Mencoba Lagi** dengan aktivitasnya masing-masing.
- Sesi *online* (3 jam) memakai **satu babak** dengan satu siklus penuh.
- Pemetaan isi setiap babak mengikuti rundown per menit pada lesson plan (Babak Pagi = blok pembuka/recap dan pemaparan/demo; Babak Siang = blok *hands-on* dan refleksi/tanya jawab). Setiap tahapan diberi judul sesuai aktivitasnya, misal "Mencoba: memecah fitur menjadi daftar *task*".

### 4.4 Gerbang kerangka materi

Sebelum menulis naskah penuh, susun dulu **`kerangka-materi-<topik>.md`** sebagai peta bab yang direview pemilik materi. Naskah penuh hanya ditulis setelah kerangka **disetujui**. Isi kerangka:

1. **Prinsip penulisan** — hasil akhir sudah tetap, modul memberi jalan ke sana; tiap konsep dibuka dari dasar; alur Melihat → Mencoba → Merefleksikan → Mencoba Lagi per babak; satu tokoh ilustrasi berulang; format buku; modul jadi bekal brief PPT.
2. **Pemetaan ke rundown lesson plan** — tabel yang menautkan tiap bagian modul ke blok dan rentang menit pada lesson plan.
3. **Struktur satu bab** — tiap bab mengikuti urutan: pembuka/cerita → tujuan bab → isi naratif → contoh → latihan/cek pemahaman → ringkasan.
4. **Daftar bab per babak** — tiap bab menyebut: tujuan, dasar yang dibuka (urutan prasyarat), isi, contoh, dan cek pemahaman.
5. **Bagian penutup** — glosarium (daftar istilah yang wajib dijelaskan tuntas), kunci jawaban latihan, dan tabel sumber riset.
6. **Pertanyaan terbuka untuk pemilik materi** — jumlah bab, data versi/tangkapan layar yang belum tersedia, dan izin kutipan bila memakai kutipan langsung.

### 4.5 Aturan utama

> **Aturan Utama:**
> - Modul **bebas dari arahan visual** (tidak memuat nomor slide, warna hex, atau layout kotak).
> - Wajib diaudit dengan skill **`panduan-menulis-dokumen`** (ejaan baku, istilah asing *italic*, tanpa metawacana).
> - **Kebijakan istilah teknis di KBBI edisi III:** istilah teknis yang tidak ditemukan di `kbbi.web.id` ditulis dalam bentuk aslinya (bahasa Inggris) dan dimiringkan, misalnya `*mindset*`, `*repository*`. Dilarang memakai transliterasi yang belum baku seperti "repositori"; gunakan `*repository*`.

### 4.6 Aturan inti bahasa yang paling sering dilanggar

Ringkasan ini wajib dipenuhi di tiap bab dan diperiksa ulang saat audit. Detail lengkap ada di skill `panduan-menulis-dokumen`.

1. **Jenis kalimat (2.1):** setiap kalimat hanya *instruksional* atau *deskripsi*. Dilarang kalimat berputar, menggantung, atau menyamarkan pelaku.
2. **Tanpa metafora, kiasan, hiperbola (3.1):** dilarang "kelas dunia", "revolusioner", "gerbang masa depan". Tulis fakta terukur.
3. **Tanpa jargon tanpa penjelasan (2.5):** istilah asing dimiringkan dan diberi definisi kerja saat pertama muncul; pembaca tidak boleh menebak.
4. **Judul menyebut isi langsung (5.1):** dilarang judul menggantung "Yang ...", judul kemasan ("3 langkah", "dalam 1 halaman"), dan judul metaforis.
5. **Hemat kata (2.2):** buang kata yang bisa dibuang tanpa mengubah makna.
6. **Satu daftar satu bentuk (2.6):** semua butir dalam satu daftar memakai pola gramatikal sama, termasuk label kartu.
7. **Tanpa metawacana (2.10):** dilarang "perlu diketahui", "pada bab ini akan dibahas".
8. **Inti di kalimat pertama (2.7):** putusan lebih dulu, alasan menyusul.
9. **Spesifik (2.8):** pakai angka; dilarang "banyak", "cukup", "sekitar".
10. **Modalitas tegas (2.9):** tulis "wajib", "dapat", "tidak berhak" — bukan "diharapkan", "sebaiknya".

### 4.7 Audit bahasa sebagai bukti

Setelah seluruh bab selesai, `materi-<topik>.md` **wajib ditutup dengan bagian `Audit bahasa`** berupa tabel: tiap kategori wajib memuat tiga kolom — **temuan nyata** (kutipan asli dari naskah), **perbaikan yang diterapkan** (kutipan setelah diperbaiki), dan **status**. Pernyataan "sudah lolos" tanpa kutipan tidak dihitung sebagai bukti. Tabel audit ini direview pemilik materi bersama kerangka dan modul.

**Seluruh kategori berikut wajib dicek dan dimasukkan ke tabel — tidak boleh di-skip:**

| Kategori | Aturan | Pola yang wajib dicari |
| :--- | :--- | :--- |
| Jenis kalimat | 2.1 | Fragment ("Baris demi baris, dari nol, sampai...") → digabung jadi kalimat deskriptif utuh |
| Redundansi | 2.3 | Gagasan diulang ("Keterampilan yang dibangun... Keterampilan yang dibangun") → cukup satu |
| Pelaku jelas | 2.5 | "menyerahkan seluruh kendali" — pelakunya siapa → perjelas |
| Metawacana | 2.10 | "Pertanyaan itu dijawab di bab ini", "akan dibahas" → hapus |
| Tanpa sisipan | 2.11 | Aposisi ("Simon Willison, penulis...") → dipisah jadi dua kalimat |
| Pola buatan | 2.12 | "bukan X, melainkan Y" → pernyataan langsung |
| Ragam cakapan | 3.3 | "kalau"→jika, "kenapa"→mengapa, termasuk di subjudul, latihan, dan kunci jawaban |
| Konsistensi pasangan | 3.7 | Campur "setiap/tiap" → seragam memakai satu |
| Istilah asing konsisten | 4.7 | "programmer" tegak sedangkan "web programmer" miring → seragamkan (dimiringkan) |
| Kiasan dan hiperbola | 3.1 | "kelas dunia", "revolusioner", "gerbang masa depan" → fakta terukur |
| Judul | 5.1 | Judul menggantung "Yang ...", judul kemasan ("3 langkah", "dalam 1 halaman") → ganti |
| KBBI dan EYD | 4.2 | Kata tak ditemukan di KBBI → bentuk asli Inggris + miring; kaidah dicek ke EYD |

---

## 5. Tahap 4: Arahan Slide Presentasi (`brief-ppt-<topik>.md`)

Menurunkan naskah materi menjadi arahan visual menggunakan skill **`penyusun-brief-ppt-ioda`**:
1. Mengikuti format ringkas per slide:
   - **`Teks di slide`**: Teks kalimat/poin yang akan tampil di layar (maks 25 kata).
   - **`Visual brief`**: Instruksi tata letak, warna, bentuk, kartu, dan diagram.
2. Memuat **`KETENTUAN GLOBAL DECK`** (Header, Footer, Palet Ioda: Ungu `#652F8E`, Kuning `#FFC107`, Ungu Muda `#BD54F0`, Putih, Teks `#333333`).
3. Memuat **`Registri Aset Global`** (Logo Ioda resmi, aset Q&A, dataset).
4. Setiap slide wajib memiliki **`Sumber materi`** yang menunjuk bagian pada `materi-<topik>.md`.

---

## 6. Integrasi Skill Pendukung

Dalam menjalankan alur ini, selalu rujuk skill pendukung:
- **`panduan-menulis-dokumen`**: Untuk audit bahasa Indonesia baku di setiap penulisan dokumen.
- **`penyusun-brief-ppt-ioda`**: Untuk katalog visual dan contoh format brief slide.
