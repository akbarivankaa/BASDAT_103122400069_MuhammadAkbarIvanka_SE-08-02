SELECT * FROM "order" WHERE Id_member = 'MM0119';
-- (Bisa gunakan query insert F0102 lengkap dari jawaban saya sebelumnya)

-- 1. Membuat Tabel Film
CREATE TABLE film (
    Id_film VARCHAR2(10) PRIMARY KEY,
    judul VARCHAR2(100),
    durasi NUMBER,
    tahun NUMBER,
    sinopsis CLOB -- Menggunakan CLOB karena teks sinopsis sangat panjang
);

-- 2. Membuat Tabel Teater
CREATE TABLE teater (
    Nomor_teater VARCHAR2(20) PRIMARY KEY,
    Kelas VARCHAR2(20),
    harga NUMBER,
    kapasitas NUMBER
);

-- 3. Membuat Tabel Member
CREATE TABLE Member (
    Id_member VARCHAR2(10) PRIMARY KEY,
    Nama_member VARCHAR2(50),
    No_hp VARCHAR2(15),
    email VARCHAR2(50),
    Tgl_lahir DATE
);

-- 4. Membuat Tabel Jadwal Tayang
CREATE TABLE jadwalTayang (
    Id_jadwalTayang VARCHAR2(10) PRIMARY KEY,
    Id_film VARCHAR2(10),
    Nomor_teater VARCHAR2(20),
    Periode_start DATE,
    Periode_end DATE,
    CONSTRAINT fk_film FOREIGN KEY (Id_film) REFERENCES film(Id_film),
    CONSTRAINT fk_teater_jadwal FOREIGN KEY (Nomor_teater) REFERENCES teater(Nomor_teater)
);

-- 5. Membuat Tabel Kursi
CREATE TABLE kursi (
    No_inventori VARCHAR2(10) PRIMARY KEY,
    Nomor_teater VARCHAR2(20),
    No_kursi VARCHAR2(5),
    CONSTRAINT fk_teater_kursi FOREIGN KEY (Nomor_teater) REFERENCES teater(Nomor_teater)
);

-- 6. Membuat Tabel Order
-- Menggunakan tanda kutip "order" karena ORDER adalah kata kunci cadangan di SQL
CREATE TABLE "order" (
    Id_order VARCHAR2(10) PRIMARY KEY,
    Id_member VARCHAR2(10),
    Id_jadwalTayang VARCHAR2(10),
    No_inventori VARCHAR2(10),
    Tgl DATE,
    Status VARCHAR2(20),
    CONSTRAINT fk_member FOREIGN KEY (Id_member) REFERENCES Member(Id_member),
    CONSTRAINT fk_jadwal FOREIGN KEY (Id_jadwalTayang) REFERENCES jadwalTayang(Id_jadwalTayang),
    CONSTRAINT fk_kursi FOREIGN KEY (No_inventori) REFERENCES kursi(No_inventori)
);

INSERT INTO film (Id_film, judul, durasi, tahun, sinopsis) 
VALUES ('F0101', 'Keluarga Cemara', 110, 2019, 'Fokus cerita ini masih soal, Emak serta kedua anak mereka, Euis dan Ara. Persis dengan cerita di sinetronnya, film ini mengisahkan tentang bagaimana perjalanan hidup keluarga Abah yang semula nyaman dan mapan lalu kemudian mendadak bangkrut. Abah pun mengajak keluarganya pindah ke rumah warisan yang cukup jauh dari kota. Dengan segala keterbatasan dan kekurangan yang ia memiliki, Abah berusaha menjadi kepala keluarga serta ayah yang baik untuk anak-anaknya. Untung saja, Emak tak pernah lelah mendampinginya dan berusaha menjadi sandaran di saat mereka sedih.');

INSERT INTO film (Id_film, judul, durasi, tahun, sinopsis) 
VALUES ('F0102', 'Habibie & Ainun 3', 96, 2019, 'Habibie & Ainun 3 adalah sebuah film Indonesia tahun 2019 yang disutradarai oleh Hanung Bramantyo dan diproduksi oleh Manoj Punjabi (MD Pictures). Film ini adalah film ketiga dari seri film Habibie & Ainun. Bila "Rudy Habibie" merupakan prekuel dari kisah Habibie muda, maka "Habibie & Ainun 3" ini adalah prekuel dari kisah Ainun muda. Film ini dijadwalkan rilis pada 19 Desember 2019. Hasri Ainun Besari diperankan oleh Maudy Ayunda menggantikan Bunga Citra Lestari pada film pertama, karena film ini akan lebih menekankan pada kisah Ainun di masa muda.');

INSERT INTO film (Id_film, judul, durasi, tahun, sinopsis) 
VALUES ('F0103', 'Taufiq', 105, 2019, 'Kisah penjalanan hidup politisi yang juga suami Mantan Presiden RI, Megawati Soekarnoputri, Taufiq Kiemas diangkat dalam sebuah film tayang 14 Maret 2019. Film yang diangkat dari kisah nyata itu disutradarai sekaligus skenarionya ditulis oleh Ismail Basbeth. Perjalanan hidup membawanya ke Jakarta dan bertemu langsung dengan Soekarno, menjalin persahabatan dengan Guntur Soekarnoputra serta bertemu Megawati Soekarnoputri untuk pertama kalinya. Taufiq akan memahami arti dari persahabatan, keluarga, cinta dan negara ketika dia menjalani ujian hidup sebagai seorang nasionalis. Setelah itu Ia dijebloskan ke penjara bersama sahabatnya dituduh sebagai anggota Komunis. Dalam penjara Taufiq banyak bertemu orang-orang hebat. Dari situlah perjalanan seorang lelaki yang menantang badai.');

INSERT INTO film (Id_film, judul, durasi, tahun, sinopsis) 
VALUES ('F0104', 'Buya Hamka', 110, 2019, 'Buya Hamka adalah film drama biografi Indonesia tentang Abdul Malik Karim Amrullah atau Hamka, seorang ulama Indonesia yang dikenal sebagai penulis, pujangga, dan politisi. Buya Hamka akan mengisahkan kehidupan Hamka sejak lahir sampai meninggal dunia. Sebelum menjadi sosok yang dikenal banyak orang, Hamka telah melewati beberapa perubahan, mulai dari kanak-kanak, remaja, hingga berkeluarga. Sebagai ulama, film ini menyoroti bagaimana cara Hamka menyampaikan dakwahnya secara santun. Selain itu, Buya Hamka menyoroti aspek humanis Hamka dan prosesnya menggapai semua pencapaian.');


INSERT INTO teater (Nomor_teater, Kelas, harga, kapasitas) VALUES ('Teater 1', 'Reguler', 30000, 50);
INSERT INTO teater (Nomor_teater, Kelas, harga, kapasitas) VALUES ('Teater 2', 'Sweetbox', 100000, 50);
INSERT INTO teater (Nomor_teater, Kelas, harga, kapasitas) VALUES ('Teater 3', '4D', 75000, 50);
INSERT INTO teater (Nomor_teater, Kelas, harga, kapasitas) VALUES ('Teater 4', 'Velvet', 80000, 50);
INSERT INTO teater (Nomor_teater, Kelas, harga, kapasitas) VALUES ('Teater 5', '3D', 50000, 50);

INSERT INTO Member (Id_member, Nama_member, No_hp, email, Tgl_lahir) VALUES ('MM0111', 'Anto', '085267656789', 'Anto2016@gmail.com', DATE '1989-07-21');
INSERT INTO Member (Id_member, Nama_member, No_hp, email, Tgl_lahir) VALUES ('MM0112', 'Budi', '081367589632', 'Budi2016@gmail.com', DATE '1985-01-03');
INSERT INTO Member (Id_member, Nama_member, No_hp, email, Tgl_lahir) VALUES ('MM0113', 'Ari', '081267867543', 'Ari2016@gmail.com', DATE '1983-11-24');
INSERT INTO Member (Id_member, Nama_member, No_hp, email, Tgl_lahir) VALUES ('MM0114', 'Rahmi', '085267935678', 'Rahmi2016@gmail.com', DATE '1981-09-01');
INSERT INTO Member (Id_member, Nama_member, No_hp, email, Tgl_lahir) VALUES ('MM0115', 'Fahmi', '085767298908', 'Fahmi2016@gmail.com', DATE '1986-07-15');
INSERT INTO Member (Id_member, Nama_member, No_hp, email, Tgl_lahir) VALUES ('MM0116', 'Rusli', '085643755398', 'Rusli2016@gmail.com', DATE '1988-02-26');
INSERT INTO Member (Id_member, Nama_member, No_hp, email, Tgl_lahir) VALUES ('MM0117', 'Doni', '081398426789', 'Doni2016@gmail.com', DATE '1986-04-17');
INSERT INTO Member (Id_member, Nama_member, No_hp, email, Tgl_lahir) VALUES ('MM0118', 'Tati', '085245289074', 'Tati2016@gmail.com', DATE '1985-06-22');
INSERT INTO Member (Id_member, Nama_member, No_hp, email, Tgl_lahir) VALUES ('MM0119', 'Dono', '081287234567', 'Dono2016@gmail.com', DATE '1990-07-03');
INSERT INTO Member (Id_member, Nama_member, No_hp, email, Tgl_lahir) VALUES ('MM0120', 'Joko', '081223670942', 'Joko2016@gmail.com', DATE '1988-07-19');

INSERT INTO jadwalTayang (Id_jadwalTayang, Id_film, Nomor_teater, Periode_start, Periode_end) VALUES ('JT001', 'F0101', 'Teater 1', TO_DATE('01/07/2019', 'DD/MM/YYYY'), TO_DATE('07/07/2019', 'DD/MM/YYYY'));
INSERT INTO jadwalTayang (Id_jadwalTayang, Id_film, Nomor_teater, Periode_start, Periode_end) VALUES ('JT002', 'F0101', 'Teater 1', TO_DATE('01/07/2019', 'DD/MM/YYYY'), TO_DATE('07/07/2019', 'DD/MM/YYYY'));
INSERT INTO jadwalTayang (Id_jadwalTayang, Id_film, Nomor_teater, Periode_start, Periode_end) VALUES ('JT003', 'F0102', 'Teater 1', TO_DATE('01/07/2019', 'DD/MM/YYYY'), TO_DATE('07/07/2019', 'DD/MM/YYYY'));
INSERT INTO jadwalTayang (Id_jadwalTayang, Id_film, Nomor_teater, Periode_start, Periode_end) VALUES ('JT004', 'F0101', 'Teater 2', TO_DATE('01/07/2019', 'DD/MM/YYYY'), TO_DATE('07/07/2019', 'DD/MM/YYYY'));
INSERT INTO jadwalTayang (Id_jadwalTayang, Id_film, Nomor_teater, Periode_start, Periode_end) VALUES ('JT005', 'F0103', 'Teater 2', TO_DATE('01/07/2019', 'DD/MM/YYYY'), TO_DATE('07/07/2019', 'DD/MM/YYYY'));
INSERT INTO jadwalTayang (Id_jadwalTayang, Id_film, Nomor_teater, Periode_start, Periode_end) VALUES ('JT006', 'F0102', 'Teater 2', TO_DATE('01/07/2019', 'DD/MM/YYYY'), TO_DATE('07/07/2019', 'DD/MM/YYYY'));
INSERT INTO jadwalTayang (Id_jadwalTayang, Id_film, Nomor_teater, Periode_start, Periode_end) VALUES ('JT007', 'F0104', 'Teater 2', TO_DATE('01/07/2019', 'DD/MM/YYYY'), TO_DATE('07/07/2019', 'DD/MM/YYYY'));
INSERT INTO jadwalTayang (Id_jadwalTayang, Id_film, Nomor_teater, Periode_start, Periode_end) VALUES ('JT008', 'F0102', 'Teater 3', TO_DATE('01/07/2019', 'DD/MM/YYYY'), TO_DATE('07/07/2019', 'DD/MM/YYYY'));
INSERT INTO jadwalTayang (Id_jadwalTayang, Id_film, Nomor_teater, Periode_start, Periode_end) VALUES ('JT009', 'F0101', 'Teater 1', TO_DATE('01/07/2019', 'DD/MM/YYYY'), TO_DATE('07/07/2019', 'DD/MM/YYYY'));
INSERT INTO jadwalTayang (Id_jadwalTayang, Id_film, Nomor_teater, Periode_start, Periode_end) VALUES ('JT010', 'F0102', 'Teater 1', TO_DATE('01/07/2019', 'DD/MM/YYYY'), TO_DATE('07/07/2019', 'DD/MM/YYYY'));

INSERT INTO kursi (No_inventori, Nomor_teater, No_kursi) VALUES ('IN1001', 'Teater 1', 'A1');
INSERT INTO kursi (No_inventori, Nomor_teater, No_kursi) VALUES ('IN1002', 'Teater 1', 'A2');
INSERT INTO kursi (No_inventori, Nomor_teater, No_kursi) VALUES ('IN1003', 'Teater 1', 'A3');
INSERT INTO kursi (No_inventori, Nomor_teater, No_kursi) VALUES ('IN1004', 'Teater 1', 'A4');
INSERT INTO kursi (No_inventori, Nomor_teater, No_kursi) VALUES ('IN1005', 'Teater 1', 'A5');
INSERT INTO kursi (No_inventori, Nomor_teater, No_kursi) VALUES ('IN1006', 'Teater 2', 'A6');
INSERT INTO kursi (No_inventori, Nomor_teater, No_kursi) VALUES ('IN1007', 'Teater 2', 'A7');
INSERT INTO kursi (No_inventori, Nomor_teater, No_kursi) VALUES ('IN1008', 'Teater 2', 'A8');
INSERT INTO kursi (No_inventori, Nomor_teater, No_kursi) VALUES ('IN1009', 'Teater 2', 'B1');
INSERT INTO kursi (No_inventori, Nomor_teater, No_kursi) VALUES ('IN1010', 'Teater 2', 'B2');
INSERT INTO kursi (No_inventori, Nomor_teater, No_kursi) VALUES ('IN1011', 'Teater 3', 'C1');
INSERT INTO kursi (No_inventori, Nomor_teater, No_kursi) VALUES ('IN1012', 'Teater 3', 'C2');

INSERT INTO "order" (Id_order, Id_member, Id_jadwalTayang, No_inventori, Tgl, Status) VALUES ('P10001', 'MM0111', 'JT001', 'IN1010', TO_DATE('15/06/2019', 'DD/MM/YYYY'), 'pesan');
INSERT INTO "order" (Id_order, Id_member, Id_jadwalTayang, No_inventori, Tgl, Status) VALUES ('P10002', 'MM0112', 'JT006', 'IN1009', TO_DATE('16/06/2019', 'DD/MM/YYYY'), 'pesan');
INSERT INTO "order" (Id_order, Id_member, Id_jadwalTayang, No_inventori, Tgl, Status) VALUES ('P10003', 'MM0113', 'JT008', 'IN1008', TO_DATE('17/06/2019', 'DD/MM/YYYY'), 'pesan');
INSERT INTO "order" (Id_order, Id_member, Id_jadwalTayang, No_inventori, Tgl, Status) VALUES ('P10004', 'MM0114', 'JT001', 'IN1007', TO_DATE('18/06/2019', 'DD/MM/YYYY'), 'pesan');
INSERT INTO "order" (Id_order, Id_member, Id_jadwalTayang, No_inventori, Tgl, Status) VALUES ('P10005', 'MM0115', 'JT006', 'IN1006', TO_DATE('19/06/2019', 'DD/MM/YYYY'), 'pesan');
INSERT INTO "order" (Id_order, Id_member, Id_jadwalTayang, No_inventori, Tgl, Status) VALUES ('P10006', 'MM0116', 'JT001', 'IN1001', TO_DATE('20/06/2019', 'DD/MM/YYYY'), 'bayar');
INSERT INTO "order" (Id_order, Id_member, Id_jadwalTayang, No_inventori, Tgl, Status) VALUES ('P10007', 'MM0117', 'JT008', 'IN1011', TO_DATE('21/06/2019', 'DD/MM/YYYY'), 'pesan');
INSERT INTO "order" (Id_order, Id_member, Id_jadwalTayang, No_inventori, Tgl, Status) VALUES ('P10008', 'MM0118', 'JT001', 'IN1003', TO_DATE('22/06/2019', 'DD/MM/YYYY'), 'pesan');
INSERT INTO "order" (Id_order, Id_member, Id_jadwalTayang, No_inventori, Tgl, Status) VALUES ('P10009', 'MM0119', 'JT006', 'IN1004', TO_DATE('23/06/2019', 'DD/MM/YYYY'), 'pesan');
INSERT INTO "order" (Id_order, Id_member, Id_jadwalTayang, No_inventori, Tgl, Status) VALUES ('P10010', 'MM0120', 'JT008', 'IN1005', TO_DATE('24/06/2019', 'DD/MM/YYYY'), 'checkin');

COMMIT;


-- nomer 1
SELECT COUNT(*) AS jumlah_film_tersedia 
FROM film;

-- nomer 2
SELECT COUNT(DISTINCT Id_film) AS jumlah_film_tayang 
FROM jadwalTayang;

-- nomer 3
SELECT Id_member, COUNT(Id_order) AS jumlah_nonton 
FROM "order" 
GROUP BY Id_member 
HAVING COUNT(Id_order) > 2;

SELECT Id_member, COUNT(Id_order) AS jumlah_nonton 
FROM "order" 
GROUP BY Id_member 
HAVING COUNT(Id_order) > 3;

SELECT Id_member, COUNT(Id_order) AS jumlah_nonton 
FROM "order" 
GROUP BY Id_member 
HAVING COUNT(Id_order) > 4;

SELECT Id_member, COUNT(Id_order) AS jumlah_nonton 
FROM "order" 
GROUP BY Id_member 
HAVING COUNT(Id_order) > 5;

-- nomer 4
SELECT m.Nama_member, m.Tgl_lahir, COUNT(o.Id_order) AS jumlah_ditonton
FROM Member m
LEFT JOIN "order" o ON m.Id_member = o.Id_member
WHERE m.Tgl_lahir = (SELECT MAX(Tgl_lahir) FROM Member)
GROUP BY m.Nama_member, m.Tgl_lahir;    

-- nomer 5
SELECT TO_CHAR(Tgl_lahir, 'MM') AS bulan_lahir, COUNT(Id_member) AS jumlah_member
FROM Member
GROUP BY TO_CHAR(Tgl_lahir, 'MM')
ORDER BY bulan_lahir;

-- nomer 6
SELECT f.judul, COUNT(j.Id_jadwalTayang) AS jumlah_jadwal
FROM film f
JOIN jadwalTayang j ON f.Id_film = j.Id_film
GROUP BY f.judul;