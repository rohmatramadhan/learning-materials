---
name: penyusun-brief-ppt-ioda
description: Menyusun brief slide materi presentasi (PPT) berstandar Ioda Academy yang siap dieksekusi tim desain atau asisten visual, dengan penegasan batasan teks ringkas, pemilihan metafora visual teruji, dan kepatuhan pada panduan menulis dokumen bahasa Indonesia.
---

# Penyusun Brief PPT Ioda

Skill ini digunakan untuk menyusun dokumen brief presentasi (`brief-ppt-<topik>.md`) dari bahan ajar, modul naratif, atau materi pelatihan Ioda Academy.

---

## 1. Aturan Wajib & Batasan Kerja

1. **Batasan Output:**
   - HANYA menghasilkan berkas Markdown brief slide (`brief-ppt-<topik>.md`) dan laporan hasil pemeriksaan checklist.
   - DILARANG membuat slide fisik (file `.pptx`, HTML slide, kode rendering slide).
   - DILARANG merender gambar atau membuat visual biner/grafis langsung.
   - DILARANG mengarang tautan, gambar, poster, atau data faktual palsu. Jika membutuhkan bukti nyata, gunakan format `[SLOT GAMBAR]`.

2. **Kepatuhan Bahasa:**
   - Wajib mematuhi seluruh kaidah ejaan, struktur kalimat hemat kata, dan pelarangan kata mubazir dari skill `panduan-menulis-dokumen`.
   - Gunakan bahasa Indonesia baku ragam formal.

3. **Status Berkas Contoh:**
   - Berkas di dalam folder `examples/` murni sebagai acuan bentuk format penulisan, BUKAN batasan silabus atau konten kaku.

---

## 2. Struktur Format Output Brief

Setiap berkas brief yang dihasilkan wajib mengikuti format standar per slide:

```markdown
### Slide [Nomor] - [Judul/Fungsi Slide]

**Tipe slide:** [Tipe slide dari taksonomi]
**Pola visual dipakai:** [Nama pola visual atau 'tanpa pola khusus']

**Teks di slide**
[Teks ringkas final yang tampil pada slide. Maksimal 25 kata untuk non-tutorial, atau '(hanya label pada bagan)']

**Visual brief**
[Paragraf deskripsi terstruktur untuk desainer visual:
1. Latar dan komposisi bidang
2. Objek/metafora utama beserta posisinya
3. Detail data, hierarki, dan label teks
4. Aksen warna dan elemen penjelas]

**Jenis gambar:** [Ilustrasi / Bukti nyata] (opsional jika ada gambar)

`[SLOT GAMBAR: <deskripsi detail> | Sumber: <sumber> | Ukuran: <ukuran> | Wajib asli: ya]` (opsional jika bukti nyata)
```

---

## 3. Langkah Kerja Penyusunan Brief

Ikuti alur kerja berikut secara disiplin:

1. **Analisis Materi Sumber:**
   - Identifikasi konsep inti, alur logis, dan tujuan pembelajaran materi.
   - Terapkan prinsip: satu slide, satu ide utama.

2. **Penerapan Kerangka Keputusan Visual:**
   - Baca referensi `references/katalog-visual-materi-ioda.md`.
   - Klasifikasikan jenis slide (Perbandingan, Proses/Urutan, Hierarki, Bukti Nyata, Tutorial, Kuis, dll).
   - Tentukan pola visual yang tepat berdasarkan tabel pemetaan.
   - Jalankan uji validasi kecocokan (anti-mismatch) agar struktur visual selaras dengan logika isi.

3. **Penyusunan Teks Slide yang Ringkas:**
   - Maksimal 25 kata per slide untuk slide konseptual/non-tutorial.
   - Untuk tutorial, gunakan label instruksi singkat (maksimal 6-8 kata per aksi).
   - Hindari memasukkan seluruh materi bacaan ke dalam teks slide; letakkan penjelasan detail dalam modul bacaan terpisah.

4. **Penulisan Deskripsi Visual Brief yang Presisi:**
   - Deskripsikan latar, palet warna brand (Ungu #652F8E, Kuning #FFC107, Ungu Muda #BD54F0, Netral #F8F9FA), posisi elemen, dan metafora dengan jelas tanpa ambiguitas.

5. **Penerapan Aturan Tutorial (Jika Ada):**
   - Batasi maksimal 3 tahap per slide.
   - Lakukan penomoran tahap secara global lintas slide berturutan (`Bagian 1 dari N`).
   - Wajibkan screenshot nyata dengan anotasi kotak merah #E53935 stroke 3px dan badge nomor urut.

6. **Pemeriksaan Akhir & Checklist Kualitas:**
   - Evaluasi setiap slide terhadap checklist pada referensi `references/katalog-visual-materi-ioda.md` Bagian 8.
