---
name: learning-materials-ioda-academy
description: Use when menyusun, merancang, meriset, atau memperbarui materi pelatihan, silabus, bahan ajar, kerangka materi, atau brief slide presentasi Ioda Academy.
---

# Learning Materials Ioda Academy

Skill induk ini memandu dan mengorkestrasi penyusunan materi pelatihan di lingkungan Ioda Academy secara bertahap, disiplin, dan teruji.

---

## 1. Alur Kerja 4 Lapis

Setiap pembuatan materi pelatihan **wajib** mengikuti urutan 4 tahap ini tanpa melompat:

```text
Tahap 1: learning-brief.md    (Menangkap kebutuhan dan profil peserta)
   ↓
Tahap 2: riset-<topik>.md      (Riset bukti kasus nyata dan batas klaim)
   ↓
Tahap 3: kerangka-materi-<topik>.md (Kerangka materi dan daftar slide)
   ↓
Tahap 4: brief-ppt-<topik>.md (Menurunkan kerangka menjadi arahan slide)
```

Setiap tahap memiliki **Gerbang Mutu**. Tahap berikutnya hanya boleh dikerjakan setelah tahap sebelumnya berstatus **`Lolos`** atau **`Ditandai`**.

---

## 2. Tahap 1: Arahan Pembelajaran (`learning-brief.md`)

Sebelum riset, catat:

1. Program dan topik.
2. Audiens dan tingkat peserta.
3. Durasi belajar.
4. Tujuan pembelajaran.
5. Cakupan inti.

Jangan mengarang data. Jika nomor sesi, prasyarat, atau izin catatan pembicara belum tersedia, gunakan `[BUTUH DATA: keterangan]`.

---

## 3. Tahap 2: Riset Kasus dan Bukti (`riset-<topik>.md`)

### 3.1 Rantai Alat Riset Wajib

Riset wajib mengakses internet secara langsung menggunakan urutan berikut:

1. `9router-web-search` untuk mencari kandidat kasus dan sumber.
2. `webfetch` untuk membaca isi URL.
3. `curl` untuk memvalidasi status tautan dan mengunduh berkas.
4. API publik Crossref, arXiv, npm, atau PyPI jika relevan.
5. OpenAlex dan Unpaywall untuk literatur ilmiah.
6. `kbbi.web.id` untuk status kata.
7. `ejaan.kemendikdasmen.go.id` untuk kaidah EYD.

Setiap klaim faktual wajib dibaca melalui `webfetch` dan tautannya wajib divalidasi dengan `curl` hingga menghasilkan HTTP 200. Jika alat daring gagal, jangan mengarang sumber. Tandai klaim dengan `[BUTUH DATA: verifikasi sumber <klaim>]`.

### 3.2 Pola Dua Lapis Kasus

1. **Kasus nyata:** kejadian terverifikasi dengan pelapor, tahun, dan sumber aktif.
2. **Ilustrasi pembelajaran:** skenario kerja sederhana yang dinyatakan sebagai ilustrasi, bukan kejadian nyata.
3. **Batas klaim:** setiap klaim menunjuk sumber kredibel dan topik di luar fokus sesi ditunda.

### 3.3 Sintesis RAG Opsional

Jika sumber lolos berjumlah minimal lima dan membutuhkan sintesis lintas dokumen, gunakan `9router-embeddings` dan model *chat* 9Router. Verifikasi dua arah tetap wajib. Catat hasilnya sebagai `[SINTESIS RAG]`, bukan sebagai klaim primer.

---

## 4. Tahap 3: Kerangka Materi (`kerangka-materi-<topik>.md`)

Tahap 3 menghasilkan kerangka global yang menjadi *blueprint* materi dan slide. "Global" berarti formatnya dapat dipakai lintas program dan topik; isi, jumlah bagian, urutan, alokasi, dan keputusan pembelajaran tetap mengikuti dokumen acuan masing-masing. Kerangka ini bukan modul naratif, bukan naskah buku, dan bukan tempat memindahkan seluruh penjelasan tambahan. Isinya mengatur keputusan materi, hubungan dengan sumber acuan, alokasi waktu, struktur bagian, daftar slide, sumber, dan bahan pengayaan.

### 4.1 Gerbang Tahap 3

1. Baca `learning-brief.md` dan *lesson plan* sampai selesai sebelum menyusun kerangka.
2. Ambil tujuan, profil peserta, durasi, cakupan, dan keluaran dari `learning-brief.md`.
3. Ambil urutan kegiatan, metode, aktivitas, dan alokasi waktu dari *lesson plan*.
4. Jangan mengisi data yang belum tersedia. Gunakan `[BUTUH DATA: keterangan]`.
5. Review kerangka bersama pemilik materi sebelum menurunkannya menjadi `brief-ppt-<topik>.md`.
6. Status tahap hulu harus `Lolos` atau `Ditandai` sebelum Tahap 3 dimulai.

### 4.2 Format Kerangka Wajib

Gunakan urutan bagian berikut. Jumlah bagian atau topik di dalam Bagian 4 menyesuaikan tujuan pembelajaran dan *lesson plan*.

```text
# Kerangka Materi [Topik]
## 1. Identitas dan Keputusan Materi
### 1.1 Arah Materi
### 1.2 Hubungan dengan Learning Brief
### 1.3 Hubungan dengan Lesson Plan
### 1.4 Batas Materi
## 2. Prinsip Penulisan dan Struktur
### 2.1 Prinsip Format
### 2.2 Ketentuan Judul
### 2.3 Ketentuan Bahasa
### 2.4 Ketentuan Kalimat
### 2.5 Ketentuan Istilah Teknis
### 2.6 Ketentuan Nomor Slide
## 3. Pemetaan ke Rundown
### 3.1 Rundown Pembelajaran
### 3.2 Pemetaan Tujuan ke Bagian Materi
### 3.3 Perbandingan Alokasi
### 3.4 Penyimpangan dari Lesson Plan
### 3.5 Pembagian Babak atau Sesi
## 4. Struktur Materi dan Daftar Slide
### 4.1 Aturan Struktur Bagian
### 4.2 Bagian [Nomor]. [Judul Bagian]
## 5. Bagian Penutup Materi
### 5.1 Glosarium
### 5.2 Sumber Riset
### 5.3 Pertanyaan Terbuka
## 6. Checklist Kerangka
## 7. Lecture Notes
```

### 4.3 Identitas dan Keputusan Materi

Gunakan tabel `Aspek | Isi` dengan baris Program, Sesi, Topik, Format, Durasi, Waktu, Skenario, Dokumen acuan, Layanan atau alat, Keluaran, Batas materi, dan Jumlah slide. Bagian `Arah Materi`, `Hubungan dengan Learning Brief`, `Hubungan dengan Lesson Plan`, dan `Batas Materi` menjelaskan keputusan tersebut tanpa membuat tujuan baru.

### 4.4 Prinsip Penulisan dan Struktur

Prinsip format global:

1. Satu subtopik menjadi satu slide atau satu unit materi yang jelas.
2. Nomor slide disusun berurutan di dalam bagian atau topik.
3. Struktur materi mengikuti tujuan pembelajaran, kebutuhan peserta, dan urutan kegiatan pada *lesson plan*.
4. Setiap bagian memiliki tujuan, alokasi waktu, keluaran, dan daftar isi.
5. Materi yang tidak dibahas dalam slide ditempatkan pada bagian `Lecture Notes`.

Ketentuan judul, bahasa, dan kalimat **wajib mengikuti `panduan-menulis-dokumen`**. Terapkan ketentuan judul langsung, bahasa Indonesia formal, istilah asing yang konsisten, kalimat deskriptif atau instruksional, pelaku yang jelas, inti pada kalimat pertama, kalimat hemat, serta larangan metawacana, kiasan, hiperbola, dan data karangan.

Istilah teknis yang belum terserap ditulis dalam bentuk asli dan dimiringkan setelah diperiksa ke KBBI. Gunakan satu istilah yang sama untuk satu konsep. Nomor slide tidak harus sama dengan nomor akhir pada *deck*, tetapi harus berurutan dan seluruh rujukannya harus diperbarui jika berubah.

### 4.5 Pemetaan ke Rundown

Rundown wajib mengacu pada `learning-brief.md` dan *lesson plan*. Gunakan tabel berikut:

```markdown
| Waktu | Durasi | Tujuan Pembelajaran | Bagian | Aktivitas | Keluaran |
| :--- | :--- | :--- | :--- | :--- | :--- |
| [Waktu] | [Durasi] | [Tujuan] | [Bagian] | [Aktivitas] | [Keluaran] |
```

Tambahkan tabel pemetaan tujuan, perbandingan alokasi, penyimpangan dari *lesson plan*, dan pembagian babak atau sesi. Jika ada perubahan alokasi atau urutan, jelaskan alasannya. Jika tidak ada perubahan, tulis `Tidak ada penyimpangan dari lesson plan.`.

### 4.6 Struktur Materi dan Daftar Slide

Jumlah bagian dan topik tidak ditetapkan secara global. Setiap bagian memakai format berikut:

```markdown
### Bagian [Nomor]. [Judul Bagian]

**Tujuan bagian:** [Kemampuan yang dicapai peserta]

**Alokasi:** [Durasi]

**Keluaran:** [Hasil yang dihasilkan peserta]

| Slide | Judul Slide | Isi Utama | Tujuan yang Didukung |
| :--- | :--- | :--- | :--- |
| [Nomor] | [Judul langsung] | [Isi utama] | [Tujuan] |

**Isi slide [Nomor]:**

[Definisi, penjelasan, contoh, instruksi, aktivitas, batas klaim, atau catatan fasilitator.]

**Batas bagian:**

[Materi yang tidak dibahas pada bagian ini.]
```

Struktur khusus seperti jumlah slide demonstrasi, jumlah slide praktik, siklus belajar, satu tokoh, atau urutan topik tertentu hanya digunakan jika ditetapkan oleh *lesson plan* atau keputusan pelatihan. Struktur tersebut bukan aturan global Tahap 3.

### 4.7 Bagian Penutup Materi

Bagian penutup wajib memuat glosarium, sumber riset, dan pertanyaan terbuka. Glosarium menggunakan tabel `Istilah | Definisi yang Dipakai | Diperkenalkan pada`. Sumber riset menggunakan tabel `Klaim atau Materi | Sumber | Status Verifikasi`. Semua data yang belum tersedia memakai `[BUTUH DATA: keterangan]`.

### 4.8 Checklist Kerangka

Periksa kesesuaian tujuan dengan `learning-brief.md`, kesesuaian rundown dengan *lesson plan*, kelengkapan tujuan dan keluaran setiap bagian, judul, bahasa, istilah, nomor slide, sumber, dan penanda kebutuhan data. Checklist ditulis sebagai tabel `Pemeriksaan | Status | Catatan`.

### 4.9 Lecture Notes

`Lecture Notes` wajib menjadi bagian paling akhir. Bagian ini berisi usulan *micro learning*, artikel, atau bahan bacaan yang mendukung dan memperkaya materi slide. Materi ini tidak dibahas dalam sesi utama dan tidak masuk hitungan slide.

Gunakan format wajib berikut:

```markdown
## 7. Lecture Notes

| No | Judul | Gambaran Isi Materi |
| :--- | :--- | :--- |
| 1 | [Judul artikel atau bahan bacaan] | [Gambaran isi dan kaitannya dengan materi slide] |
```

Setiap judul harus menyebut isi secara langsung. Setiap gambaran isi harus menjelaskan hubungan bahan bacaan dengan materi slide. Lecture Notes tidak boleh menambahkan tujuan pembelajaran baru, menggantikan konsep utama, masuk ke rundown, atau memuat instruksi yang wajib disampaikan pada slide. Klaim faktual di dalamnya harus memiliki sumber atau penanda verifikasi.

---

## 5. Tahap 4: Arahan Slide Presentasi (`brief-ppt-<topik>.md`)

Turunkan kerangka materi yang sudah direview menjadi arahan visual menggunakan skill **`penyusun-brief-ppt-ioda`**:

1. Gunakan format ringkas per slide dengan `Teks di slide`, `Visual brief`, dan `Sumber materi`.
2. Terapkan batas teks dan aturan visual dari `penyusun-brief-ppt-ioda`.
3. Setiap slide wajib menunjuk bagian kerangka materi yang menjadi sumbernya.
4. Materi pada `Lecture Notes` tidak menjadi slide kecuali pemilik materi menetapkannya melalui keputusan baru.

---

## 6. Integrasi Skill Pendukung

Dalam menjalankan alur ini, selalu rujuk skill pendukung:

- **`panduan-menulis-dokumen`**: Untuk judul, bahasa, kalimat, ejaan, istilah, dan audit dokumen.
- **`penyusun-brief-ppt-ioda`**: Untuk katalog visual dan format brief slide.
