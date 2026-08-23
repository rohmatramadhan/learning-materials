# Katalog Skill: Visual Design System untuk Materi Ioda Academy

**Status:** Rujukan resmi desain slide materi
**Cakupan:** Berlaku untuk semua materi baru Ioda Academy (Live Bootcamp, WPB, onboarding internal, materi lain), lintas platform.
**Fungsi file ini:** Dipakai sebagai acuan oleh agent AI atau tim manusia setiap kali menyusun brief visual untuk slide materi, sebelum satu slide pun didesain.

---

## 0. Cara Pakai Katalog Ini

Setiap kali menyusun brief visual untuk satu materi baru, ikuti urutan ini:

1. Baca Bagian 1 sampai 4 sekali di awal untuk memahami fondasi (warna, tipografi, format field brief).
2. Untuk setiap slide yang akan dibuat briefnya, jalankan **Kerangka Keputusan** di Bagian 5 untuk menentukan tipe slide dan pola visual yang cocok.
3. Jika slide berjenis tutorial atau demonstrasi, tambahan aturan di Bagian 6 wajib dipatuhi di atas aturan umum.
4. Jika slide memerlukan gambar (bukan ilustrasi), ikuti Bagian 7 untuk menentukan jenis gambar dan format placeholder.
5. Sebelum brief difinalisasi, jalankan checklist di Bagian 9.

Status tiap pola visual ditandai di tabel masing-masing:
- **Resmi (dari draft asli)** = sudah terbukti dipakai di materi yang sudah jalan, bisa langsung dipakai
- **Usulan** = hasil formalisasi/ekstrapolasi pola, siap dipakai sesuai kerangka kecocokan

---

## 1. Fondasi Visual (Design Tokens)

### 1.1 Warna

| Nama | Hex | Fungsi |
|---|---|---|
| Ungu Ioda (Primary) | #652F8E | Warna utama brand, latar divider, elemen dominan |
| Kuning (Secondary) | #FFC107 | Aksen, angka penting, elemen yang menarik perhatian |
| Ungu Muda | #BD54F0 | Aksen kedua, label pill, elemen turunan ungu utama |
| Putih | #FFFFFF | Latar kartu, teks di atas warna gelap |
| Teks Utama (Header/Cover/Divider) | #282828 | Warna teks judul di kotak kuning header dan kotak putih cover/divider |
| Teks Sekunder (Footer/Meta) | #595959 | Warna teks footer dan elemen meta kecil lainnya |
| Latar Netral | #F8F9FA | Latar slide galeri atau slide dengan objek menonjol |
| Hijau (Semantic) | #15A66A | Khusus penanda jawaban benar di kuis (bukan dekorasi) |
| Peach (Diagram Only) | #ED8E7C | Khusus elemen dalam diagram |
| Biru (Diagram Only) | #5FBDFF | Khusus elemen dalam diagram |
| Merah Instruksi | #E53935 | Khusus highlight instruksi di screenshot tutorial |

**Aturan pemakaian:** Satu slide sebaiknya tidak memakai lebih dari 3 warna selain putih dan teks default. Warna semantik (hijau, merah instruksi) hanya boleh dipakai untuk fungsinya masing-masing.

### 1.2 Tipografi

| Elemen | Font | Ukuran | Warna |
|---|---|---|---|
| Judul di kotak header (slide konten) | Montserrat Bold | 18pt | #282828 |
| Footer, nomor sesi (misal "01") | Figtree SemiBold | 12pt | #595959 |
| Footer, kode topik (misal "PPIC") | Figtree Regular | 12pt | #595959 |
| Judul cover | Montserrat ExtraBold | 33pt | Ungu #652F8E |
| Label pill cover | Montserrat SemiBold | ~17pt | Putih |
| Judul divider/interstitial | Montserrat ExtraBold | 45pt | Ungu #652F8E |
| Label pill divider/interstitial | Montserrat SemiBold | ~25pt | Putih |

### 1.3 Ikonografi

- Gaya: outline, stroke 2px, sudut membulat (rounded corner).
- Warna ikon: putih (di atas latar solid) atau ungu (di atas latar putih/netral).
- Ilustrasi konseptual digambar ulang dengan Shape dan Text Box, bukan AI image generation.

### 1.4 Layout Global

**Header (slide isi/konten):**
- Logo Ioda Academy (PNG asli) di pojok kanan atas.
- Judul slide berupa kotak solid Kuning #FFC107 di kiri atas, teks Montserrat Bold 18pt rata tengah.
- Tanpa garis pemisah tipis di bawah header.

**Footer (semua slide isi):**
- Format "NomorSesi—KodeTopik" (contoh: `01—PPIC`), dirotasi vertikal 90 derajat di pojok kanan bawah.
- Font Figtree 12pt #595959 (nomor sesi SemiBold, kode topik Regular).

**Cover:**
- Latar penuh Ungu #652F8E, logo putih di tengah atas.
- Kotak putih solid di bagian bawah berisi judul materi (Montserrat ExtraBold 33pt #652F8E) dan label pill (Ungu Muda #BD54F0).
- Bentuk burst/asterisk kuning di pojok kanan atas kotak putih.

**Divider dan Interstitial (Submateri, Quiz, Studi Kasus, Q&A):**
- Satu template fleksibel: latar Ungu #652F8E, kotak putih dimiringkan ~2 derajat, judul Montserrat ExtraBold 45pt #652F8E.
- Label pill miring di atas kotak putih ("Submateri" atau "WAKTUNYA").
- Ikon aksen sesuai fungsi: folder kuning (Submateri/Studi Kasus), bohlam kuning (Quiz), tanda tanya + tangan outline kuning (Q&A).

**Aturan konten:**
- Maksimal 25 kata teks per slide non-tutorial.
- Satu slide, satu ide utama.

---

## 2. Struktur Field Brief (Format Standar)

Setiap entri brief slide wajib mengikuti format berikut:

```markdown
### Slide [nomor] - [Nama slide/fungsi singkat]

**Tipe slide:** [diisi dari taksonomi Bagian 4]
**Pola visual dipakai:** [diisi dari pustaka Bagian 8, atau "tanpa pola khusus"]

**Teks di slide**
[teks final ringkas, maks 25 kata non-tutorial, atau "(hanya label pada bagan)"]

**Visual brief**
[paragraf deskripsi komposisi latar, tata letak objek/metafora, detail data, dan aksen]

**Jenis gambar:** [Ilustrasi / Bukti nyata] (opsional, hanya jika ada gambar)

`[SLOT GAMBAR]` (opsional jika membutuhkan gambar nyata)
```

---

## 3. Taksonomi Tipe Slide

| Tipe | Ciri struktur brief |
|---|---|
| Cover | Latar penuh ungu, logo putih tengah atas, kotak judul putih dengan label pill |
| Divider/Interstitial | Kotak judul miring ~2 derajat, label pill sesuai subtopik/aktivitas, ikon aksen khas |
| Penutup | Latar ungu, judul terima kasih, logo dan informasi kontak di pojok kiri bawah |
| Hook/Pemantik | Pertanyaan atau kutipan pembuka untuk memancing rasa ingin tahu |
| Perbandingan (Compare) | Split screen dua sisi sejajar dengan struktur identik |
| Data Spec Card | Kartu spesifikasi data berlabel dengan ikon |
| Galeri Bukti Nyata | Grid rapi berisi aset nyata dengan teks minimal |
| Anotasi Aset Asli | Screenshot nyata ditambah kotak penanda (callout) |
| Bagan Hierarki/Alur | Struktur non-linear (pohon, corong, tangga, sarang lebah) untuk alur/proses |
| Kuis Pilihan Ganda | Layout soal di kiri dan opsi kartu di kanan, opsi benar berwarna hijau |
| Kuis Diskusi | Latar ungu muda, pertanyaan terbuka, kartu sticky note untuk respons peserta |
| Checklist/Rubrik | Daftar bertingkat dengan indikator centang atau baris proporsi |
| Tutorial Bertahap | Maksimal 3 tahap per slide, screenshot nyata, penomoran global |
| Tutorial Anotasi Layar | Screenshot antarmuka dengan kotak highlight merah bernomor dan label perintah |

---

## 4. Kerangka Keputusan Pemilihan Visual

Agent AI wajib menjalankan 3 langkah keputusan ini secara berurutan:

### Langkah 1: Klasifikasi Jenis Konten
1. Instruksi tool/software/UI bertahap? -> **Tutorial/Demonstrasi** (Bagian 6)
2. Membandingkan dua hal atau lebih? -> **Perbandingan**
3. Urutan waktu atau proses bertahap non-UI? -> **Proses/Urutan**
4. Hierarki atau percabangan keputusan? -> **Hierarki/Percabangan**
5. Menjelaskan sebab di balik masalah? -> **Sebab Tersembunyi**
6. Sintesis banyak input jadi kesimpulan? -> **Penyaringan/Sintesis**
7. Penilaian dari berbagai kriteria? -> **Penilaian Multi Dimensi**
8. Bukti nyata hasil kerja/dokumen? -> **Bukti Nyata** (Bagian 7)
9. Pertanyaan uji pemahaman berjawaban benar? -> **Kuis Pilihan Ganda**
10. Pertanyaan refleksi terbuka? -> **Kuis Diskusi/Refleksi**
11. Konsep mandiri umum? -> **Konsep Berdiri Sendiri** (kartu polos)

### Langkah 2: Peta Kategori ke Pola Visual
- **Perbandingan:** Gunung Es (kedalaman/substansi), Split Kolom Sejajar (data setara), Timbangan (pro-kontra).
- **Proses/Urutan:** Strip Film (kronologis), Ban Berjalan (tahapan transformasi), Tangga Isometrik (tingkatan level), Bagan Alur Proses (flowchart kondisional).
- **Hierarki/Percabangan:** Bagan Struktur Pohon (hierarki nyata), Persimpangan Y (2 cabang), Pohon Keputusan (3+ cabang), Sarang Lebah (elemen mengelilingi induk).
- **Sebab Tersembunyi:** Akar Tersembunyi.
- **Penyaringan/Sintesis:** Piramida Terbalik (luas ke sempit), Corong (input ke output), Jam Pasir (menyempit lalu melebar lagi).
- **Penilaian Multi Dimensi:** Radar/Spider Chart, Gauge Level, Checklist Bertingkat.
- **Bukti Nyata:** Galeri Grid, Anotasi Callout, Exploded View.
- **Kuis:** Layout Kuis Standar, Balon Refleksi, Papan Sticky Note.

### Langkah 3: Validasi Kecocokan (Anti-Mismatch)
- Pastikan pola visual menggambarkan relasi yang sama dengan logika materi.
- Pastikan jumlah data sesuai kapasitas pola visual.
- Hindari memaksakan metafora jika konsep materi lebih cocok disajikan dengan layout kartu dasar.

---

## 5. Aturan Khusus Materi Tutorial & Demonstrasi

- **Maksimal 3 tahap per slide.** Jika lebih dari 3 tahap, pecah menjadi beberapa slide berurutan dengan penamaan sub-bagian: `[Nama Topik] (Bagian X dari Y)`.
- **Penomoran tahap bersifat global** lintas slide (misal Slide 1 berisi tahap 1-3, Slide 2 melanjutkan tahap 4-5).
- **Wajib screenshot nyata** untuk materi tutorial perangkat lunak/UI; dilarang mengganti UI nyata dengan ilustrasi buatan.
- **Sistem Anotasi Highlight:**
  1. Kotak highlight merah #E53935 stroke 3px mengelilingi elemen target.
  2. Badge nomor urut merah solid dengan angka putih di sudut kiri atas kotak.
  3. Label perintah singkat (maksimal 6-8 kata) berbentuk pill putih bergaris merah.
- **Dua Kasus Antarmuka:**
  - *Kasus A (Satu Layar):* Satu screenshot besar dengan 2-3 kotak highlight bernomor.
  - *Kasus B (Layar Berpindah):* Pola rangkaian 2-3 mini-screenshot sejajar yang dihubungkan panah alur.

---

## 6. Aturan Gambar dan Placeholder

1. **Ilustrasi Konseptual:** Boleh dibuat/direkonstruksi oleh desainer menggunakan bentuk vektor/shape standar.
2. **Bukti Nyata (Screenshot, Dokumen, Foto Asli):** Tidak boleh dikarang. Wajib menggunakan format placeholder standar:

```markdown
`[SLOT GAMBAR: <deskripsi spesifik gambar/tangkapan layar> | Sumber: <internal/tim/user> | Ukuran: <penuh/setengah/grid> | Wajib asli: ya]`
```

---

## 7. Pustaka Metafora & Diagram

- **Pola Resmi:** Gunung Es, Piramida Terbalik, Corong, Tangga Isometrik, Ban Berjalan, Exploded View, Persimpangan Y, Strip Film, Timbangan, Rel Kereta & Stasiun.
- **Pola Terstruktur:** Akar Tersembunyi, Jam Pasir, Lapisan Kue, Puzzle Belum Lengkap, Pohon Keputusan Bercabang, Efek Domino, Rantai Kait, Radar Chart, Gauge Level, Kunci & Gembok, Jaring Keterkaitan, Rak Referensi, Lampu Sinyal, Balon Refleksi, Jembatan Penghubung.
- **Diagram Standar:** Bagan Alur (Flowchart), Bagan Organisasi/Pohon Hierarki, Matriks 2x2, Diagram Venn, Diagram Siklus, Mind Map, Bagan Swimlane.

---

## 8. Checklist Kualitas Brief

- [ ] Tipe slide ditentukan dari kerangka keputusan (bukan asumsi acak).
- [ ] Pola visual sesuai dengan relasi materi (lolos uji anti-mismatch).
- [ ] Teks di slide ringkas (maksimal 25 kata untuk slide non-tutorial; 6-8 kata untuk label instruksi).
- [ ] Visual brief memuat urutan jelas: latar/komposisi -> objek utama -> detail data -> aksen visual.
- [ ] Slide tutorial mematuhi batas maksimal 3 tahap, penomoran global, dan anotasi highlight.
- [ ] Elemen bukti nyata menggunakan format `[SLOT GAMBAR]` standar tanpa mengarang aset palsu.
