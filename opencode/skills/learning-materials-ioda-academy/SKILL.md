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
Tahap 3: materi-<topik>.md    (Menulis naskah naratif materi utama 10 fungsi)
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

Riset dilakukan secara terarah menggunakan pola **Dua Lapis Kasus**:
1. **Kasus Nyata (Pemantik):**
   - Kejadian nyata yang terverifikasi (ada nama pelapor, tahun, URL resmi).
   - Berfungsi sebagai pemantik rasa ingin tahu. Jangan merekonstruksi domain rumitnya.
2. **Skenario Kerja Sederhana (Kasus Utama):**
   - Skenario terisolasi yang dekat dengan dunia kerja peserta.
   - Wajib dinyatakan sebagai **`Ilustrasi pembelajaran`** (bukan kejadian nyata).
3. **Batas Klaim & Sumber Kredibel:**
   - Gunakan dokumentasi resmi (*official docs*), artikel ilmiah, atau berita kredibel.
   - Catat keputusan relevansi: topik di luar fokus sesi ditunda.

---

## 4. Tahap 3: Naskah Materi Utama (`materi-<topik>.md`)

Materi utama adalah **naskah internal lengkap dan siap dibaca** yang mengintegrasikan 10 fungsi konten:
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

> **Aturan Utama:**
> - Materi utama **bebas dari arahan visual** (tidak memuat nomor slide, warna hex, atau layout kotak).
> - Wajib diaudit dengan skill **`panduan-menulis-dokumen`** (ejaan baku, istilah asing *italic*, tanpa metawacana).

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
