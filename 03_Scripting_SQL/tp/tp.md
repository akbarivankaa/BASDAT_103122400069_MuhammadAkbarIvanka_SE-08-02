# Tugas Pendahuluan : Scripting Sql

Muhammad Akbar Ivanka

103122400069

SE-08-02

## Soal

1. Buat Tabel Mahasiswa yang beratribut (id, nama, tempat lahir, tanggal lahir, nomor hp, email, tinggi badan, berat badan.)

2. Lakukan insert data pada table nomor 1 sebanyak 15 rows.

3. Lakukan Fungsi (Fungsi Karakter dan String, Fungsi Tanggal dan Waktu, Fungsi Konversi, dan Fungsi Numerik)

## Deskripsi Output

1. Membuat Tabel "Mahasiswa" ini berfungsi sbg wadah penyimpanan data. Tabel ini akan berisi beberapa kolom utama, yaitu id, nama, tempat_lahir, tanggal_lahir, nomor_hp, email, tinggi_badan, dan berat_badan. untuk memastikan strutkur database sudah siap sebelum proses input, masing masing kolom tsb telah diatur menggunakan tipe data yang paling tepat, seperti format teks, numerik, maupun format tanggal.

2. untuk selanjutnya memasukkan insert sebanyak 15 record/baris data ke dalam tabel Mahasiswa. Setiap record harus diisi dengan informasi yg komprehensif, mulai dari identitas dasar, kontok, smpai rincian fisik tiap mahasiswa. Proses pengisian data ini penting utk memastikan kita mempunyai dataset awal yg siap untuk dieksekusi dan dianalisis menggunakan berbagai perintah query Sql.

3. Penerapan fungsi fungsi SQL
- Fungsi String, ini berfungsi utk memanipulasi tipe data teks, contohnya pada kolom nama dan email. Fitur ini berguna ketika kita ingin mengubah format huruf (case), mengambil bagian teks tertentu hingga menghitung total karakter dari sebuah data teks yg sesuai kebutuhan.

- Fungsi Waktu&Tanggal, ini diterapkan utk mengelola informasi yg berkaitan dengan waktu, seperti kolom tanggal lahir. Dengan fungsi ini, kita bisa melakukan berbagai hal seperti menampilkan tanggal hari ini, menghitung jarak antar tanggal, dan menambahkan interval bulan utk menghasilkan nilai waktu yg akurat.

- Fungsi Konversi Data, digunakan saat perlu mengubah/menyesuaikan tipe data dri satu format ke format lainnya(misalnya mengubah teks menjadi angka/tanggal). Hal ini dilakukan agar data tsb kompatibel dn sesuai dengan format yg dibutuhkan saat menjalankan query.

- Fungsi Numerik, ini khusus utk memproses data berupa angka, seperti pd informasi tinggi dan berat badan mahasiswa. Fungsi ini memfasilitasi berbagai operasi perhitungan matematis, mulai dari mencari nilai rata rata, menentukan angka tertinggi/terendah, smpai melakukan pembulatan nilai desimal berdasarkan data yg ada di tabel.