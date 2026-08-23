---
name: panduan-menulis-dokumen
description: Aturan wajib gaya penulisan bahasa Indonesia, mencakup struktur kalimat, hemat kata, larangan metawacana dan hiperbola, ejaan baku, ragam formal dan nonformal, format, serta verifikasi ke KBBI dan EYD. WAJIB pakai skill ini setiap kali menulis atau menyunting teks berbahasa Indonesia yang akan dibaca orang lain: dokumen, laporan, artikel, materi pelatihan, proposal, ringkasan, email, naskah slide, caption media sosial, deskripsi produk, atau berkas .md, .docx, dan .pptx. Trigger juga ketika user bilang "tulisin", "buatkan dokumen", "susun laporan", "rapikan tulisan ini", "koreksi bahasanya", "bikin materi", atau menempelkan draf berbahasa Indonesia untuk diperbaiki, walaupun user sama sekali tidak menyebut soal gaya bahasa, ejaan, atau EYD. Jangan dipakai untuk tulisan berbahasa selain Indonesia, kode program, atau balasan percakapan singkat.
---

# Panduan Menulis Dokumen

Panduan ini acuan wajib bagi agen AI setiap kali menulis dalam bahasa Indonesia: berkas Markdown, Word, PowerPoint, laporan, artikel, materi, atau teks apa pun.

---

## Cara memakai panduan ini

### Dua lintasan, bukan satu

Lintasan pertama adalah menulis. Bagian 1, 2, 3, dan 5 diterapkan sejak draf pertama, bukan diperbaiki belakangan.

Lintasan kedua adalah verifikasi. Setelah draf selesai, jalankan Bagian 4, lalu Bagian 7 sebagai pemeriksaan tersendiri. Bagian 7 tidak cukup dibaca. Tiap butir diperiksa langsung terhadap naskahnya, satu per satu, dan hasil temuannya diperbaiki sebelum tulisan diserahkan.

Tulisan yang belum melewati lintasan kedua belum selesai.

### Urutan menang saat dua aturan bentrok

Aturan di panduan ini kadang saling menarik ke arah berbeda. Urutan berikut menentukan mana yang menang.

1. Larangan mengarang data (1.1) mengalahkan semuanya. Tulisan yang pincang lebih baik daripada tulisan yang isinya salah.
2. Permintaan pengguna mengalahkan aturan gaya, kecuali butir 1. Jika pengguna meminta gaya tertentu, ikuti permintaannya, lalu sebutkan di percakapan aturan mana yang jadi dilanggar.
3. Kejelasan mengalahkan kehematan. Jika membuang kata membuat pelaku, rujukan, atau angkanya jadi kabur, kata itu dipertahankan. Aturan 2.5 menang atas 2.2.
4. Aturan khusus mengalahkan aturan umum. Pengecualian yang memang tertulis tetap berlaku, misalnya tanda kurung teknis pada 2.11 dan tabel serta legenda pada 5.3.
5. Panduan ini mengalahkan EYD hanya pada titik yang perbedaannya disebut eksplisit, yaitu 2.11. Di luar itu, EYD yang menang.
6. Jika dua aturan sama kuat, pilih yang menghasilkan kalimat lebih pendek.

### Berkas rujukan

`references/ejaan-dan-ragam.md` memuat tabel ejaan baku dan padanan ragam cakapan yang lengkap. Berkas itu dibaca saat menjalankan Bagian 4, tidak perlu dibuka saat menulis draf.

---

## Tiga kesalahan yang paling sering muncul

Jika waktu terbatas, cegah tiga ini dulu. Tiga ini saja menutup sekitar separuh masalah.

**1. Istilah asing tidak dimiringkan, sementara kalimat Indonesia justru dimiringkan.**
Cek KBBI. Belum masuk, miring. Sudah masuk, tegak. Prosedurnya di Bagian 4.

**2. Kalimat panjang padahal isinya sedikit.**
Buang kata yang tidak menambah makna, dan jangan menyampaikan hal yang sama dua kali. Bagian 2.2 sampai 2.4.

**3. Satu daftar berisi tiga bentuk berbeda.**
Kata kerja, kata benda, dan bentuk pasif tercampur dalam satu kelompok. Bagian 2.6.

---

## 1. Sebelum menulis

### 1.1 Jangan mengarang data

Empat hal berikut tidak boleh dikarang dan tidak boleh diisi tebakan.

Angka. Nominal, kuota, tenggat, persentase, jumlah, dan ukuran.

Kontak. Nomor, email, tautan, nama orang, dan nama jabatan.

Keputusan dan status. Nama tahap, urutan, pihak yang berwenang, dan hal yang sudah atau belum diputuskan.

Kutipan dan rujukan. Judul sumber, nama penulis, tahun terbit, dan isi kutipan.

Jika tulisan membutuhkan salah satunya dan datanya belum ada, tanyakan kepada pengguna sebelum menulis. Jika penulisan tidak bisa dihentikan, tandai bagian itu dengan `[BUTUH DATA: keterangan]` di posisi yang seharusnya, lalu laporkan seluruh penanda tersebut di percakapan setelah tulisan selesai.

### 1.2 Baca sumbernya dulu

Jika tulisan diolah dari berkas lain, baca berkas sumbernya sampai selesai sebelum menulis satu kalimat pun. Angka, istilah, nama, dan urutan mengikuti sumber, bukan ingatan.

### 1.3 Tentukan ragam sebelum menulis

Ragam ditentukan di awal dan tidak berubah di tengah tulisan.

Ragam formal adalah default. Dipakai untuk laporan, panduan, materi pelatihan, dokumen resmi, artikel, dan tulisan yang tidak jelas sasarannya.

Ragam nonformal hanya dipakai jika tujuan tulisannya memang nonformal, misalnya naskah media sosial, pesan singkat, catatan internal, atau ketika pengguna memintanya. Konsekuensinya diatur di 3.3.

### 1.4 Bahasa mengikuti permintaan

Kaidah ejaan dan diksi di sini khusus bahasa Indonesia. Jika pengguna meminta tulisan dwibahasa atau bahasa lain, kaidah bahasa itu yang dipakai. Prinsip kejernihan di Bagian 2 tetap berlaku.

---

## 2. Kalimat

### 2.1 Hanya ada dua jenis kalimat

Tentukan dulu sebuah kalimat masuk yang mana, baru susun bentuknya.

Instruksional, memberi tahu pembaca apa yang harus dikerjakan. Subjek boleh hilang karena memang ditujukan kepada pembaca.

- Kerjakan modul sampai tuntas.
- Laporkan setiap kejanggalan ke kanal pengaduan.
- Unggah berkas dalam format PDF.
- Simpan bukti pembayaran sampai program selesai.
- Hubungi mentor jika tugas tidak bisa diakses.

Deskripsi, menerangkan keadaan, ketentuan, atau fakta.

- Program berlangsung tiga bulan penuh.
- Hak peserta berlaku sepanjang kewajiban dipenuhi.
- Setiap kelompok terdiri atas lima orang.
- Materi sesi keempat membahas analisis data.
- Sertifikat terbit dua minggu setelah program berakhir.

Bentuk pasif tidak dilarang, dan subjek tidak wajib muncul. Yang dilarang adalah kalimat yang tidak masuk kedua jenis ini: berputar, menggantung, atau menyamarkan pelaku.

| Tidak masuk keduanya | Masalahnya | Perbaikan |
|---|---|---|
| Terkait hal tersebut, tentu menjadi perhatian bersama | Berputar, tidak menyatakan apa pun | Panitia menindaklanjuti keluhan tersebut |
| Dengan adanya peningkatan kualitas materi | Menggantung, tidak selesai | Materi diperbarui setiap semester |
| Diharapkan dapat dilakukan penyesuaian jadwal | Pelaku disamarkan | Peserta menyesuaikan jadwalnya sendiri |
| Adapun mengenai teknis pelaksanaan akan diinformasikan lebih lanjut | Berputar dan menunda isi | Teknis pelaksanaan diumumkan pada 3 Maret |
| Sehubungan dengan hal tersebut di atas | Tidak membawa informasi | Buang seluruhnya |

### 2.2 Hemat kata

| Bertele-tele | Efektif |
|---|---|
| Syarat yang harus dipenuhi sebelum bisa masuk ke tahap berikutnya | Syarat sebelum masuk tahap berikutnya |
| Tidak ada satu pun yang bisa dikompensasi oleh yang lain | Satu syarat tidak bisa menggantikan yang lain |
| Peserta tidak dapat dinyatakan lulus | Peserta tidak lulus |
| Pakai email yang sama persis dengan yang kamu isi di formulir | Pakai email pendaftaranmu |
| Melakukan pengiriman berkas kepada panitia | Mengirim berkas kepada panitia |
| Dalam rangka untuk meningkatkan kualitas pembelajaran | Untuk meningkatkan kualitas pembelajaran |
| Kegiatan ini bersifat wajib bagi seluruh peserta | Kegiatan ini wajib bagi seluruh peserta |
| Mentor akan memberikan bantuan berupa pendampingan | Mentor mendampingi |
| Pada saat sebelum sesi dimulai | Sebelum sesi dimulai |
| Hal ini disebabkan oleh karena keterbatasan kuota | Kuota terbatas |
| Peserta diminta untuk dapat menyelesaikan tugas | Peserta menyelesaikan tugas |
| Terdapat sejumlah beberapa berkas yang harus dilengkapi | Tiga berkas harus dilengkapi |

Yang sering bisa dibuang: sangat, benar-benar, sempat, sekali lagi, dalam rangka, guna, untuk dapat, yang bersifat, adapun, terkait dengan hal tersebut, pada dasarnya.

Waspadai juga kata kerja yang dipanjangkan tanpa perlu: melakukan pengiriman jadi mengirim, memberikan penjelasan jadi menjelaskan, mengadakan pemeriksaan jadi memeriksa, melaksanakan pendaftaran jadi mendaftar.

### 2.3 Jangan menyampaikan dua kali

Berlaku dalam satu kalimat maupun antarbagian.

| Redundan | Perbaikan |
|---|---|
| Selesaikan hari ini juga, jangan ditunda | Selesaikan hari ini juga |
| Sudah termasuk, tidak perlu kamu siapkan | Sudah termasuk |
| supaya harapanmu tepat sasaran dan tidak ada kekecewaan | supaya harapanmu tepat sasaran |
| Kuota terbatas hanya untuk 20 orang saja | Kuota 20 orang |
| Program ini gratis tanpa dipungut biaya | Program ini gratis |
| Naik ke atas panggung | Naik ke panggung |
| Saling bantu-membantu antarpeserta | Peserta saling membantu |
| Agar supaya materi mudah dipahami | Agar materi mudah dipahami |
| Sertifikat diberikan kepada peserta yang lulus, yaitu peserta yang memenuhi syarat kelulusan | Sertifikat diberikan kepada peserta yang lulus |
| Demi untuk kepentingan bersama | Untuk kepentingan bersama |
| Materi dijelaskan secara detail dan terperinci | Materi dijelaskan terperinci |

Antarbagian juga dihitung. Jika sebuah daftar sudah memuat empat syarat, jangan menambahkan blok baru yang mengulang tiga di antaranya. Jika pembuka bab sudah menyebut tujuan program, penutup bab tidak perlu menyebutnya lagi dengan kalimat berbeda.

### 2.4 Jangan menegaskan yang tidak dipersoalkan

Kalimat yang menyebutkan hal yang tidak dimaksud, padahal tidak ada pembaca yang akan salah menduga, hanya menambah panjang.

| Berlebih | Cukup |
|---|---|
| Kehadiran dihitung dari daftar hadir yang diisi di kelas, bukan dari catatan pribadi | Kehadiran dihitung dari daftar hadir yang diisi peserta di kelas |
| Berkas dikirim lewat email, bukan lewat pesan pribadi | Berkas dikirim lewat email |
| Laporan disusun bulanan, jadi bukan mingguan | Laporan disusun bulanan |
| Sesi dimulai pukul 09.00, bukan pukul 09.30 | Sesi dimulai pukul 09.00 |
| Penilaian dilakukan mentor, bukan oleh sesama peserta | Mentor menilai tugas peserta |
| Program ini untuk pemula, bukan untuk yang sudah ahli | Program ini untuk pemula |
| Tugas dikumpulkan dalam format PDF, tidak boleh format lain | Tugas dikumpulkan dalam format PDF |

Penegasan negatif baru layak dipakai jika kesalahpahamannya nyata dan sering terjadi. Contoh yang sah: "Biaya ini di luar akomodasi", karena pembaca memang sering mengira akomodasi sudah termasuk. Jika kemungkinan salah pahamnya hanya dikarang penulis, buang.

### 2.5 Pembaca tidak boleh menebak

| Ambigu | Jelas |
|---|---|
| apabila performa dinilai tidak memenuhi standar | apabila perusahaan menilai performamu tidak memenuhi standar |
| progresmu tidak terbaca panitia | panitia tidak bisa membaca progresmu |
| Laporan dikumpulkan dan hadir di sesi penutup | Mengumpulkan laporan dan hadir di sesi penutup |
| Angka pastinya disampaikan penyelenggara | Kehadiran minimum 80 persen dari 12 pertemuan |
| Berkas akan diperiksa terlebih dahulu | Panitia memeriksa berkas dalam tiga hari kerja |
| Peserta yang terlambat akan dikenakan sanksi | Peserta yang terlambat lebih dari 15 menit tidak dicatat hadir |
| Hal ini perlu segera ditindaklanjuti | Mentor menindaklanjuti keluhan ini sebelum sesi berikutnya |
| Jadwal dapat berubah sewaktu-waktu | Panitia mengumumkan perubahan jadwal paling lambat H-2 |
| Tugas dinilai berdasarkan rubrik | Mentor menilai tugas dengan rubrik pada Lampiran 2 |
| Sistem akan memberitahukan hasilnya | Hasil seleksi dikirim ke email peserta pada 12 Mei |

Baris ketiga adalah pelaku yang bergeser di tengah kalimat: laporan yang dikumpulkan, tetapi peserta yang hadir. Pola serupa: "Modul diselesaikan dan mengikuti ujian akhir."

Baris keempat menunda informasi yang paling dibutuhkan pembaca. Jika angkanya belum diputuskan, ini masuk 1.1.

Kasus lain yang sering lolos: kalimat kedua melanjutkan subjek kalimat pertama, tetapi subjeknya tidak jelas yang mana.

| Menggantung | Jelas |
|---|---|
| Didukung bank mitra. Menyasar peningkatan akses kerja kaum muda. | Program ini didukung bank mitra dan menyasar peningkatan akses kerja kaum muda. |
| Panitia bertemu perwakilan kampus. Menyampaikan keberatan atas jadwal baru. | Panitia bertemu perwakilan kampus yang menyampaikan keberatan atas jadwal baru. |
| Modul disusun tim kurikulum. Sudah dipakai sejak tahun lalu. | Modul yang disusun tim kurikulum sudah dipakai sejak tahun lalu. |

Kata ganti yang tidak jelas rujukannya masuk kategori yang sama. "Peserta menghubungi mentor dan panitia. Mereka meminta perpanjangan tenggat." Yang meminta itu peserta atau mentor dan panitia? Sebut namanya, jangan pakai kata ganti.

### 2.6 Satu daftar, satu bentuk

Salah, empat butir tiga bentuk:
1. Dinyatakan lulus tahap teknis
2. Menuntaskan seluruh modul
3. Mengumpulkan laporan akhir
4. Kehadiran minimum

Benar:
1. Lulus tahap teknis
2. Menuntaskan seluruh modul
3. Mengumpulkan laporan akhir
4. Menghadiri sesi sesuai batas minimum

Berlaku juga untuk judul kolom, label kartu, dan subjudul poin.

Judul kolom yang salah: Nama Peserta · Asal Kampus · Kapan Mendaftar · Status
Judul kolom yang benar: Nama Peserta · Asal Kampus · Tanggal Pendaftaran · Status

Subjudul yang salah: Persiapan · Cara Mengunggah Berkas · Verifikasi · Bagaimana Mengecek Hasil
Subjudul yang benar: Persiapan · Pengunggahan Berkas · Verifikasi · Pengecekan Hasil

Label kartu yang salah: Peserta terpilih · Total mentor · Sudah lulus · Kota
Label kartu yang benar: Peserta terpilih · Mentor terlibat · Peserta lulus · Kota penyelenggara

### 2.7 Inti dulu, penjelasan kemudian

Kalimat pertama memuat putusan, jawaban, atau temuan utamanya. Alasan, syarat, dan pengecualian menyusul setelahnya.

Benar: Tidak. Transportasi dan akomodasi ditanggung peserta.
Salah: Untuk pertanyaan ini, perlu dipahami bahwa pada dasarnya transportasi...

Benar: Pendaftaran ditutup 20 Mei. Peserta yang mendaftar setelah tanggal itu masuk gelombang berikutnya.
Salah: Mengingat tingginya animo dan keterbatasan kuota, maka pendaftaran akan ditutup pada 20 Mei.

Benar: Berkasmu ditolak karena resolusinya di bawah 300 dpi.
Salah: Setelah melalui proses verifikasi oleh tim, ditemukan bahwa berkas yang kamu kirimkan memiliki resolusi yang kurang memadai.

Benar: Tugas boleh dikerjakan berkelompok, maksimal tiga orang.
Salah: Terkait pengerjaan tugas, sebenarnya ada beberapa opsi yang bisa dipilih peserta.

Berlaku juga untuk paragraf dan untuk keseluruhan tulisan. Kesimpulan tidak ditunda ke akhir.

### 2.8 Spesifik, bukan kabur

| Kabur | Spesifik |
|---|---|
| Kuota terbatas | Kuota 20 peserta |
| Sesi berlangsung cukup lama | Sesi berlangsung tiga jam |
| Banyak peserta yang tertarik | 412 orang mendaftar |
| Berkas diproses beberapa hari | Berkas diproses tiga hari kerja |
| Spesifikasi laptop yang memadai | RAM minimal 8 GB dan penyimpanan kosong 20 GB |
| Nilai relatif tinggi | Nilai rata-rata 82 dari 100 |
| Sebagian besar materi sudah diperbarui | 9 dari 12 modul sudah diperbarui |
| Biaya terjangkau | Biaya Rp350.000 per peserta |
| Mentor cenderung responsif | Mentor membalas dalam 24 jam kerja |
| Program dimulai sekitar bulan depan | Program dimulai 3 Juni |

Dihindari: banyak, cukup, beberapa, sekitar, lumayan, relatif, cenderung, memadai, terbatas, sebagian besar.

Jika angkanya memang tidak diketahui, jangan diganti kualifier. Sebutkan bahwa angkanya belum ada, atau tandai sesuai 1.1.

### 2.9 Modalitas tegas

| Lemah | Tegas |
|---|---|
| Peserta diharapkan hadir tepat waktu | Peserta wajib hadir tepat waktu |
| Sebaiknya berkas dikirim sebelum tenggat | Berkas dikirim sebelum tenggat |
| Disarankan untuk mengaktifkan kamera | Peserta wajib mengaktifkan kamera |
| Alangkah baiknya jika tugas dikumpulkan lebih awal | Tugas dapat dikumpulkan lebih awal |
| Peserta mungkin bisa mengajukan cuti | Peserta berhak mengajukan cuti satu kali |
| Kehadiran diharapkan minimal 80 persen | Kehadiran minimum 80 persen |
| Panitia akan berusaha membalas secepatnya | Panitia membalas dalam 24 jam kerja |

Dipakai: wajib, dapat, berhak, tidak dapat, tidak berhak.

Kata anjuran baru boleh dipakai jika yang ditulis memang saran yang boleh ditolak pembaca, bukan ketentuan. Contoh yang sah: "Peserta disarankan membawa laptop sendiri, meskipun panitia menyediakan unit cadangan."

### 2.10 Tanpa metawacana

Jangan menulis kalimat yang membicarakan tulisannya sendiri. Langsung sampaikan isinya.

| Metawacana | Langsung |
|---|---|
| Pada bagian ini akan dibahas syarat kelulusan | Syarat kelulusan: |
| Perlu diketahui bahwa kehadiran minimum 80 persen | Kehadiran minimum 80 persen |
| Berikut ini adalah tabel jadwal pelatihan | Jadwal pelatihan: |
| Sebelum masuk ke pembahasan, mari kita lihat definisinya | Definisi: |
| Dalam dokumen ini penulis akan menguraikan tiga tahap | Program berjalan dalam tiga tahap. |
| Seperti yang telah dijelaskan di atas, tugas dikumpulkan tiap pekan | Tugas dikumpulkan tiap pekan |
| Materi ini berisi tentang cara menyusun laporan | Cara menyusun laporan: |
| Perlu diperhatikan bahwa kuota hanya 20 orang | Kuota 20 orang |
| Demikian penjelasan mengenai syarat pendaftaran | Buang seluruhnya |
| Selanjutnya akan dijelaskan mengenai skema pembayaran | Skema pembayaran: |

Pembuka yang hampir selalu bisa dibuang: perlu diketahui bahwa, perlu diperhatikan, seperti yang kita ketahui bersama, pada bagian ini akan dibahas, tulisan ini berisi tentang, sebagaimana dijelaskan sebelumnya, demikian penjelasan mengenai.

Rujukan silang tetap boleh, asal spesifik: "Lihat Bagian 3.1." Yang dilarang: "seperti yang sudah disinggung sebelumnya" tanpa menunjuk bagian mana.

### 2.11 Tanpa sisipan di luar bangun kalimat

Yang dilarang bukan karakternya, melainkan kebiasaannya. Jangan menyelipkan keterangan yang berdiri di luar struktur kalimat. Jika keterangan itu penting, jadikan kalimat sendiri. Jika tidak penting, buang.

Larangan ini mencakup tanda pisah, tanda kurung, dan sepasang koma yang dipakai untuk tujuan tersebut. Ujinya sederhana: jika kalimat tetap utuh setelah bagian di dalam sisipan dicoret, sisipan itu tidak diperlukan.

| Bersisipan | Perbaikan |
|---|---|
| Peserta wajib hadir, terutama pada sesi praktik, minimal 80 persen | Peserta wajib hadir minimal 80 persen |
| Modul dikerjakan mandiri (tanpa pendampingan mentor) | Modul dikerjakan mandiri. Mentor tidak mendampingi pengerjaan. |
| Program ini, yang sudah berjalan tiga angkatan, dibuka lagi bulan depan | Program ini dibuka lagi bulan depan. Tiga angkatan sudah berjalan sebelumnya. |
| Sertifikat, sebagaimana dijanjikan panitia, terbit dua minggu setelah acara | Sertifikat terbit dua minggu setelah acara |
| Biaya pendaftaran (belum termasuk akomodasi) sebesar Rp350.000 | Biaya pendaftaran Rp350.000. Akomodasi belum termasuk. |
| Mentor akan menilai tugas, biasanya dalam tiga hari, lalu mengirim umpan balik | Mentor menilai tugas dalam tiga hari kerja, lalu mengirim umpan balik |

Tanda pisah tidak dipakai sama sekali. Untuk dua fakta setara dalam satu baris, pakai titik tengah: Sesi daring 3 jam · Sesi luring 6 jam efektif.

Tanda kurung tetap boleh untuk keperluan teknis: singkatan pada kemunculan pertama, satuan, dan rujukan sumber. Contoh yang sah: Rencana Pembelajaran Semester (RPS), berat 2 kg (bersih), Badan Bahasa (2022).

Aturan ini lebih ketat daripada EYD, yang sebenarnya membolehkan tanda pisah untuk keperluan tersebut. Jika hasil pengecekan EYD bertentangan dengan aturan ini, aturan ini yang menang.

### 2.12 Hindari pola tulisan yang terasa buatan

Sepuluh pola berikut membuat tulisan terasa seperti keluaran mesin. Hindari semuanya. Dua yang paling sering muncul adalah kalimat perbandingan retoris pada butir 3 dan penjelasan repetitif pada butir 8 dan 10.

1. Kalimat penutup yang terdengar dramatis atau filosofis. Contoh: "Pada akhirnya, belajar adalah perjalanan tanpa garis akhir."
2. Deretan kalimat pendek berturut-turut. Contoh: "Materi padat. Waktu singkat. Hasilnya nyata."
3. Pola "bukan sekadar X, melainkan Y" dan kalimat perbandingan retoris sejenisnya. Contoh: "Ini bukan sekadar pelatihan, melainkan investasi jangka panjang."
4. Kata transisi yang berulang: ternyata, padahal, namun, pada akhirnya.
5. Struktur tulisan yang setiap bagiannya dipaksa berjumlah sama, misalnya semua bab berisi tepat tiga poin.
6. Pernyataan umum tanpa satu pun detail yang bisa diperiksa. Contoh: "Metode ini terbukti efektif bagi banyak peserta."
7. Klaim tentang keadaan lapangan tanpa sumber atau contoh. Contoh: "Kebanyakan perusahaan kini mencari kandidat dengan kemampuan ini."
8. Pengulangan ide yang sama dengan kata berbeda. Saudara dekatnya 2.3.
9. Pembuka generik yang bisa dipakai di banyak topik. Contoh: "Di era digital yang serba cepat ini", "Seiring berkembangnya teknologi".
10. Kesimpulan yang merangkum ulang isi tanpa menambah hal baru. Contoh: "Dari uraian di atas, dapat disimpulkan bahwa program ini memiliki tiga tahap."

Yang dilarang pada butir 3 adalah pola retorisnya. Perbandingan data atau opsi dalam tabel tetap dipakai.

---

## 3. Diksi dan ejaan

### 3.1 Tanpa hiperbola dan kiasan

| Hiperbolik | Netral |
|---|---|
| Gerbang penentu nasibmu | Tahap seleksi akhir |
| Program yang akan mengubah masa depanmu | Program pelatihan tiga bulan |
| Kesempatan emas yang tidak boleh dilewatkan | Pendaftaran dibuka sampai 20 Mei |
| Metode pembelajaran revolusioner | Metode pembelajaran berbasis proyek |
| Mentor kelas dunia | Mentor dengan pengalaman industri minimal lima tahun |
| Pengalaman belajar yang luar biasa | Pelatihan 12 sesi dengan pendampingan mentor |
| Wujudkan mimpimu bersama kami | Daftar sebelum 20 Mei |
| Transformasi karier total | Perpindahan jalur karier |

Kiasan juga masuk sini, sekalipun terdengar rapi.

| Kiasan | Netral |
|---|---|
| Anatomi Sesi | Susunan Sesi |
| Ritme Mingguan | Jadwal Mingguan |
| Modal yang Kamu Bawa | Syarat Peserta |
| Gerbang 1 | Tahap 1 |
| Titik nol | Awal program |
| Peta Jalan Belajar | Urutan Materi |
| Menuju Puncak Pembelajaran | Sesi Penutup |

### 3.2 Ejaan baku

Dua belas kesalahan yang paling sering muncul.

| Salah | Baku |
|---|---|
| praktek | praktik |
| analisa | analisis |
| resiko | risiko |
| sekedar | sekadar |
| silahkan | silakan |
| jadual | jadwal |
| ijin | izin |
| karir | karier |
| merubah | mengubah |
| mengkonfirmasi | mengonfirmasi |
| aktifitas | aktivitas |
| respon | respons |

Daftar lengkapnya, termasuk aturan peluluhan imbuhan dan serapan berakhiran -tas, ada di `references/ejaan-dan-ragam.md`. Berkas itu dibuka saat menjalankan Bagian 4, bukan saat menulis draf.

Tabel ini contoh, bukan daftar tertutup. Kata lain yang ejaannya diragukan dicek sesuai Bagian 4.

### 3.3 Ragam nonformal

Pada ragam formal, nada boleh santai tetapi kata tetap baku.

| Cakapan | Baku |
|---|---|
| tapi | tetapi |
| kalau | jika atau apabila |
| gimana | bagaimana |
| bikin | membuat |
| kayak | seperti |
| ngga, gak, nggak | tidak |
| udah | sudah |
| banget | sangat, atau ganti dengan angka sesuai 2.8 |
| makanya | karena itu |
| doang | saja |

Padanan selengkapnya ada di `references/ejaan-dan-ragam.md`.

Pada ragam nonformal, kata cakapan boleh dipakai selama tujuan tulisannya memang nonformal sesuai 1.3. Dua syarat tetap berlaku.

Pertama, satu tulisan memakai satu ragam saja. Yang dilarang adalah pencampuran seperti ini: "Peserta wajib menyerahkan berkas sebelum tenggat. Kalau telat, ya nggak diproses." Kalimat pertama formal, kalimat kedua cakapan.

Kedua, ejaan tetap baku sekalipun ragamnya nonformal. "Kalau" boleh, "kalo" tidak. "Tidak" boleh disingkat jadi "nggak", tetapi tidak jadi "ngga" atau "gk". "Sudah" boleh jadi "udah", tidak jadi "udh".

### 3.4 namun dan tetapi

"Namun" adalah konjungsi antarkalimat, tempatnya sesudah titik. Di tengah kalimat pakai "tetapi".

Benar: Ia menuntaskan seluruh modul, tetapi laporannya tidak selesai.
Benar: Ia menuntaskan seluruh modul. Namun, laporannya tidak selesai.
Salah: Ia menuntaskan seluruh modul namun laporannya tidak selesai.

Pola yang sama berlaku untuk konjungsi lain.

| Salah | Benar |
|---|---|
| Kuota penuh, oleh karena itu pendaftaran ditutup | Kuota penuh. Oleh karena itu, pendaftaran ditutup |
| Sehingga peserta tidak bisa mengakses materi | Akibatnya, peserta tidak bisa mengakses materi |
| Materi sudah diperbarui. Sedangkan jadwalnya belum | Materi sudah diperbarui, sedangkan jadwalnya belum |
| Ia terlambat mendaftar. Sehingga masuk gelombang kedua | Ia terlambat mendaftar sehingga masuk gelombang kedua |
| Akan tetapi peserta tetap wajib hadir | Peserta tetap wajib hadir. Akan tetapi, kehadirannya dicatat terpisah |

Ringkasnya: namun, oleh karena itu, akibatnya, dan akan tetapi berada di awal kalimat baru dan diikuti koma. Tetapi, sedangkan, sehingga, dan melainkan berada di tengah kalimat.

### 3.5 jam dan pukul

Jam untuk lamanya waktu. Pukul untuk saat.

| Salah | Benar |
|---|---|
| Kelas dimulai jam 09.00 | Kelas dimulai pukul 09.00 |
| Sesi berlangsung selama enam pukul | Sesi berlangsung enam jam |
| Alamat dan jam mulai | Alamat dan waktu mulai |
| Pendaftaran ditutup jam 5 sore | Pendaftaran ditutup pukul 17.00 |
| Durasi ujian dua pukul | Durasi ujian dua jam |
| Mentor membalas dalam 24 pukul | Mentor membalas dalam 24 jam |

### 3.6 Yang sering luput

Kata depan "di" dan "ke" terpisah, awalan serangkai.

Benar: di atas, di antara, di rumah, ke lokasi, ke kampus.
Benar: dibagikan, ditentukan, dikirim, kesampaian.
Salah: diatas, keluar kota jika maksudnya ke luar kota, di kirim, di tentukan.

Partikel "per" terpisah jika berarti tiap atau mulai.

Benar: per bulan, per orang, per 1 Januari.
Salah: perbulan, perorang.

Lambang mata uang tanpa titik dan tanpa spasi.

Benar: Rp2.000.000, Rp350.000, USD1.500.
Salah: Rp. 2.000.000, Rp 2.000.000.

Bentuk terikat dan kata majemuk.

Benar: beri tahu, memberitahukan, tanda tangan, menandatangani, terima kasih, berterima kasih.
Salah: beritahu, menanda tangani, terimakasih.

Partikel "pun" terpisah pada kata ganti dan keterangan, serangkai pada kata yang sudah lazim.

Benar: apa pun, mana pun, siapa pun, kapan pun.
Benar: adapun, andaipun, bagaimanapun, meskipun, walaupun, sekalipun.

Rentang tanggal dan angka pakai tanda pisah pendek, bukan tanda hubung.

Benar: 31 Agu – 25 Sep, halaman 10 – 15, pukul 09.00 – 12.00.
Salah: 31 Agu-25 Sep, halaman 10-15.

Angka dan bilangan.

Benar: 12 peserta, tiga tahap, 8 GB, 80 persen, abad ke-20, tahun 2020-an.
Salah: 3 tahap jika jumlahnya bisa ditulis satu kata, 80%, abad ke 20.

Bilangan satu sampai sembilan ditulis dengan huruf. Bilangan 10 ke atas ditulis dengan angka. Pengecualiannya adalah data teknis, tabel, satuan, dan persentase yang tetap ditulis dengan angka.

### 3.7 Pilih satu, lalu jangan pindah

Pasangan berikut sama-sama benar, tetapi tidak boleh dicampur dalam satu tulisan.

| Pasangan | Contoh pencampuran yang dilarang |
|---|---|
| setiap dan tiap | "setiap peserta" di Bab 1, "tiap peserta" di Bab 3 |
| jika dan apabila | "jika terlambat" di paragraf pertama, "apabila terlambat" di paragraf kedua |
| satu lawan satu dan 1-on-1 | Judul memakai "Sesi 1-on-1", isinya memakai "sesi satu lawan satu" |
| Rp2,5 juta dan Rp2.500.000 | Tabel memakai angka penuh, kalimat memakai singkatan |
| daring dan online | Jadwal memakai "kelas daring", ketentuan memakai "kelas *online*" |
| pukul 09.00 dan pukul 9 pagi | Jadwal memakai format 24 jam, pengumuman memakai format 12 jam |
| narasumber dan pemateri | Undangan memakai "narasumber", susunan acara memakai "pemateri" |

Untuk ragam formal, pilih setiap. Jika padanan Indonesianya sudah dipakai sekali, pakai terus.

---

## 4. Verifikasi ke KBBI dan EYD

Bagian ini dikerjakan setelah draf selesai dan sebelum tulisan diserahkan. Bagian ini wajib, bukan opsional.

### 4.1 Menebak tidak diperbolehkan

Setiap istilah asing dan setiap kata yang ejaannya diragukan wajib dicek ke sumber daring resmi. Termasuk kata yang terasa sudah umum, karena justru kata itu yang paling sering salah dinilai.

### 4.2 Dua sumber, dua urusan

KBBI untuk status kata dan bentuk bakunya. Alat cek wajib:

1. Utama: `https://kbbi.web.id/<kata>`. Contoh: `https://kbbi.web.id/makalah`. Tidak perlu masuk log dan dapat diakses langsung melalui `webfetch` atau `curl`.
2. Cadangan resmi: `https://kbbi.kemendikdasmen.go.id/`. Situs ini memerlukan masuk log; gunakan hanya jika pengguna menyediakan akun pada sesi berjalan. Jangan pernah menyimpan kredensial ke berkas mana pun.

EYD Edisi V untuk kaidah: tanda baca, huruf miring, huruf kapital, penulisan angka dan bilangan, unsur serapan, kata depan, partikel, dan konjungsi. Alat cek: `https://ejaan.kemendikdasmen.go.id/`.

Jika ragu sebuah persoalan masuk yang mana, ujinya begini. Pertanyaan tentang satu kata tertentu dicek ke KBBI. Pertanyaan tentang cara menulis dicek ke EYD.

Cara kerja agen saat mengecek:
1. Ambil halaman `https://kbbi.web.id/<kata>` dengan `webfetch`.
2. Halaman memuat entri berarti kata sudah diserap; tulis tegak sesuai entri.
3. Halaman tidak memuat entri (kata tidak ditemukan) berarti belum diserap; tulis miring.
4. Jika `kbbi.web.id` gagal dijangkau, coba mesin telusur lewat `webfetch`, lalu laporkan batas verifikasinya. Jangan menebak.

### 4.3 Prosedur

1. Selesaikan drafnya lebih dulu.
2. Kumpulkan semua istilah asing dan kata yang ejaannya diragukan menjadi satu daftar.
3. Cek tiap kata ke KBBI, dan cek tiap persoalan penulisan ke EYD.
4. Terapkan hasilnya ke seluruh tulisan, bukan hanya ke kemunculan pertama.
5. Laporkan di percakapan kata mana saja yang statusnya berubah setelah dicek.

### 4.4 Membaca hasil KBBI

Kata ditemukan berarti sudah diserap. Tulis tegak dengan ejaan persis seperti pada entri.

Kata tidak ditemukan berarti belum diserap. Tulis miring.

Bentukan berimbuhan dicek terpisah dari kata dasarnya. Mentor ada di KBBI, sedangkan *mentoring* tidak. Praktik ada di KBBI, sedangkan *best practice* tidak.

### 4.5 Yang tidak perlu dicek

Nama diri tetap tegak apa pun hasil pengecekan: Zoom, WhatsApp, ChatGPT, Google, serta nama program, produk, dan perusahaan.

### 4.6 Jika sumber tidak bisa diakses

Jangan menebak. Tulis miring sebagai posisi aman, lalu laporkan daftar kata yang belum terverifikasi di percakapan supaya bisa dicek manual.

### 4.7 Jangan dipaksa diterjemahkan

Istilah kerja yang memang dipakai di lapangan dipertahankan dan dimiringkan, bukan diganti padanan yang tidak dikenal pembaca.

### 4.8 Konsisten sepanjang tulisan

Satu istilah tidak boleh muncul miring di satu halaman dan tegak di halaman lain.

---

## 5. Format

### 5.1 Judul menyebut isinya langsung

Tanpa jargon, tanpa kiasan, tanpa membicarakan kemasannya. Ujinya sederhana: pembaca harus tahu isi bagian itu hanya dengan membaca judulnya.

Untuk tutorial, pakai pola "Cara" ditambah tugasnya.

Benar: Cara Mengakses LMS
Salah: 3 Langkah Mengakses LMS

Untuk ringkasan, sebut apa yang diringkas.

Benar: Ringkasan Program
Salah: Isi Program dalam 1 Slide

Frasa seperti "3 langkah" dan "dalam 1 slide" membicarakan kemasan, bukan isi. Itu metawacana, dan tempatnya bukan di judul.

Kriteria tambahan: dilarang memakai judul, kepala kartu, atau label yang berawalan frasa menggantung seperti "Yang membuat ...", "Yang tidak termasuk ...". Bentuk itu menjanjikan isi tanpa menyatakannya sehingga pembaca harus membaca lebih dahulu untuk tahu maksudnya. Ganti dengan frasa benda atau kalimat yang langsung menyebut isi.

| Tidak lolos | Lolos |
|---|---|
| Yang membuat e-MedTerm berbeda | Penilaian otomatis tanpa koreksi manual |
| Yang tidak termasuk dan tidak dibangun pada versi pertama | Batas fitur versi pertama |

Jika dua fakta setara ingin digabung dalam satu baris judul, pakai titik tengah alih-alih koma. Contoh lolos: `Lima jenis soal · Semua dinilai otomatis`.

### 5.2 Poin dan penjelasannya

Poin bahasan berdiri sendiri sebagai baris. Penjelasannya ditulis sebagai kalimat utuh di bawahnya, bukan ditempelkan setelah titik dua.

Salah:
```
Kehadiran: minimal 80 persen dari 12 pertemuan.
```

Benar:
```
Kehadiran

Peserta wajib hadir minimal 80 persen dari 12 pertemuan.
```

Panjang penjelasan mengikuti isinya. Satu kalimat sudah cukup jika informasinya selesai dalam satu kalimat. Kalimat berikutnya ditambahkan hanya jika membawa informasi baru yang belum tersampaikan, bukan untuk memenuhi panjang tertentu.

### 5.3 Info padat masuk tabel

Jangan menumpuk data dalam paragraf. Pola yang biasa dipakai: Aspek dan Ketentuan, Tahap dan Waktu, Pelanggaran dan Sanksi.

Tabel, legenda, dan pengantar daftar dikecualikan dari 5.2. Judul kolom, label legenda, dan titik dua sebelum daftar tetap dipakai seperti biasa.

### 5.4 Huruf kapital penuh, maksimal enam kali per tulisan

Simpan untuk yang berkonsekuensi, misalnya PERINGATAN PENIPUAN. Jika sering dipakai, bobotnya hilang.

### 5.5 Kapitalisasi istilah

Nama komponen program ditulis Title Case: Kelas *Soft Skill*, Magang Berbayar.

Istilah yang sama di dalam kalimat ditulis huruf kecil: "peserta menyelesaikan modul *soft skill*".

Label pada kartu angka kapital di awal saja: "Peserta terpilih".

### 5.6 Format angka

Kartu statistik atau ruang sempit: Rp2 jt. Kalimat dan tabel: Rp2.000.000. Jangan dicampur dalam konteks yang sama.

### 5.7 Penomoran berurutan

Sub-bagian pakai 11.1, 11.2, 11.3. Periksa sebelum menyerahkan. Nomor yang melompat itu cacat.

### 5.8 Elemen visual diberi label

Legenda warna, ikon, dan diagram tidak boleh menggantung. Tulis "Keterangan warna:" atau label setara.

### 5.9 Penanda miring dan tebal di tiap jenis berkas

Markdown: miring pakai satu tanda bintang, tebal pakai dua tanda bintang.

Word dan PowerPoint: miring dan tebal diterapkan sebagai format asli saat berkas dibuat, misalnya lewat python-docx atau python-pptx, bukan ditulis sebagai tanda bintang.

Karena itu, tandai istilah asing sejak draf supaya tidak ada yang terlewat ketika berkas final dibuat.

---

## 6. Contoh utuh

Aturan di atas terlihat jelas satu per satu, tetapi sulit dilihat efek gabungannya. Bagian ini menunjukkan naskah yang sama dalam dua versi.

### 6.1 Versi yang melanggar

```
Informasi Penting Terkait Perubahan Jadwal Sesi 5

Perlu diketahui bahwa sehubungan dengan adanya kendala teknis di ruang
pelatihan, yang sebenarnya sudah kami antisipasi sejak awal, maka dengan
ini kami sampaikan bahwa akan dilakukan penyesuaian terhadap jadwal
Sesi 5. Sesi tersebut yang tadinya dijadwalkan pada hari Kamis kini
dipindahkan ke hari lain, dan waktunya pun sedikit bergeser.

Diharapkan seluruh peserta dapat menyesuaikan diri dengan perubahan ini,
bukan justru mengabaikannya. Bagi yang berhalangan, sebaiknya segera
menghubungi panitia melalui kanal resmi. Rekaman sesi nantinya akan
dibagikan dalam beberapa hari.

Kami mohon maaf atas ketidaknyamanannya. Pada akhirnya, fleksibilitas
adalah kunci dari sebuah proses belajar.
```

### 6.2 Versi yang benar

```
Perubahan Jadwal Sesi 5

Sesi 5 dipindah dari Kamis 12 Juni ke Sabtu 14 Juni, pukul 09.00 – 12.00.
Ruang pelatihan di lantai 3 diperbaiki sampai 13 Juni.

Tempat

Sesi berlangsung di gedung yang sama, ruang 2A di lantai 2.

Peserta yang berhalangan

Peserta yang tidak dapat hadir pada 14 Juni wajib memberi tahu panitia
sebelum 12 Juni lewat email panitia@contoh.id.

Rekaman

Rekaman sesi dikirim ke email peserta paling lambat tiga hari setelah
sesi berakhir.
```

### 6.3 Apa yang diperbaiki

| Pada versi yang melanggar | Masalahnya | Aturan |
|---|---|---|
| Informasi Penting Terkait Perubahan Jadwal | Judul membicarakan kemasan, bukan isi | 5.1 |
| Perlu diketahui bahwa | Metawacana | 2.10 |
| yang sebenarnya sudah kami antisipasi sejak awal | Sisipan di luar bangun kalimat | 2.11 |
| maka dengan ini kami sampaikan bahwa akan dilakukan penyesuaian | Bertele-tele, kata kerja dipanjangkan | 2.2 |
| dipindahkan ke hari lain | Pembaca menebak, informasi utama ditunda | 2.5, 2.7 |
| waktunya pun sedikit bergeser | Kualifier kabur, tanpa angka | 2.8 |
| Diharapkan seluruh peserta dapat menyesuaikan diri | Modalitas lemah untuk hal yang wajib | 2.9 |
| bukan justru mengabaikannya | Penegasan yang tidak dipersoalkan siapa pun | 2.4 |
| sebaiknya segera menghubungi panitia | Anjuran untuk kewajiban, tanpa tenggat | 2.9, 2.8 |
| melalui kanal resmi | Rujukan kabur, kontaknya tidak ada di tempatnya | 2.5 |
| dalam beberapa hari | Kualifier kabur | 2.8 |
| Pada akhirnya, fleksibilitas adalah kunci | Penutup filosofis | 2.12 butir 1 |

Perhatikan juga bentuk versi yang benar. Putusan utamanya ada di kalimat pertama, alasannya menyusul di kalimat kedua. Tiap poin berdiri sebagai baris tersendiri lalu dijelaskan di bawahnya, bukan ditempel setelah titik dua. Penjelasan berhenti begitu informasinya habis, tanpa kalimat tambahan untuk memenuhi panjang.

Dua catatan tentang isinya. Tanggal, jam, ruang, dan email pada contoh ini dikarang untuk keperluan ilustrasi. Pada tulisan sungguhan, semuanya masuk kategori 1.1 dan wajib berasal dari sumber atau ditanyakan kepada pengguna.

---

## 7. Checklist sebelum menyerahkan

Dijalankan sebagai lintasan tersendiri setelah Bagian 4 selesai. Tiap butir diperiksa langsung terhadap naskah, bukan dijawab dari ingatan. Butir yang menemukan masalah diperbaiki dulu sebelum lanjut ke butir berikutnya.

Urut dari yang paling sering ditemukan.

1. Semua istilah asing sudah dicek ke KBBI, bukan ditebak?
2. Persoalan tanda baca, angka, dan konjungsi sudah dicek ke EYD?
3. Miring atau tegak sudah benar dan konsisten di seluruh tulisan?
4. Ada kalimat Indonesia yang ikut dimiringkan? Lepas.
5. Ada kata yang bisa dibuang tanpa mengubah makna?
6. Ada kata kerja yang dipanjangkan tanpa perlu, seperti melakukan pengiriman?
7. Ada gagasan yang disampaikan dua kali?
8. Ada penegasan negatif yang tidak dipersoalkan siapa pun?
9. Butir dalam satu daftar sudah satu bentuk? Periksa juga judul kolom dan label kartu.
10. Ada kalimat yang membuat pembaca menebak pelaku, rujukan, atau angkanya?
11. Ada kalimat yang berganti pelaku di tengah jalan?
12. Ada kata ganti yang rujukannya tidak jelas?
13. Ada tanda pisah, tanda kurung, atau koma sisip yang menyelipkan keterangan di luar bangun kalimat?
14. Ada pola `Label: Penjelasan` di luar tabel dan legenda?
15. Ada kalimat tambahan yang tidak membawa informasi baru?
16. Ada kata hiperbolik atau kiasan?
17. Ada kualifier kabur seperti "banyak" atau "cukup"?
18. Ada modalitas lemah seperti "diharapkan" untuk hal yang sebenarnya wajib?
19. Ragam formal dan nonformal tercampur?
20. Ada kata tidak baku dari daftar 3.2 dan 3.3?
21. Ada "namun" atau "sehingga" yang salah posisi?
22. Ada "jam" yang dipakai untuk menyebut saat?
23. Pasangan setiap dan tiap, jika dan apabila, sudah konsisten?
24. Rentang tanggal pakai tanda pisah pendek, bukan tanda hubung?
25. Bilangan satu sampai sembilan sudah ditulis dengan huruf?
26. Ada judul yang membicarakan tampilan atau kemasan, bukan isinya?
27. Ada kalimat metawacana di dalam isi?
28. Kalimat pertama sudah memuat inti, bukan pengantar?
29. Nomor sub-bagian berurutan?
30. Tidak ada angka, kontak, keputusan, atau kutipan yang dikarang?
31. Semua penanda `[BUTUH DATA: ...]` sudah dilaporkan di percakapan?
32. Ada pola dari daftar 2.12 yang membuat tulisan terasa buatan?
