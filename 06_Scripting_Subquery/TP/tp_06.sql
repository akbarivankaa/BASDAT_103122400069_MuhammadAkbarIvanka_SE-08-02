/*
 
 Source Server         : DBSE
 Source Server Type    : Oracle
 Source Server Version : 110200 (Oracle Database 11g Enterprise Edition Release 11.2.0.1.0 - 64bit Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options)
 Source Schema         : DBSE

 Target Server Type    : Oracle
 Target Server Version : 110200 (Oracle Database 11g Enterprise Edition Release 11.2.0.1.0 - 64bit Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options)
 File Encoding         : 65001

 Date: 04/03/2024 10:42:47
*/


-- ----------------------------
-- Table structure for FILM
-- ----------------------------
DROP TABLE "FILM_10312240069";
CREATE TABLE "FILM_10312240069" (
  "ID_FILM" CHAR(5 BYTE) NOT NULL,
  "JUDUL" VARCHAR2(100 BYTE) NOT NULL,
  "SINOPSIS" VARCHAR2(1000 BYTE),
  "TAHUN" NUMBER,
  "DURASI" NUMBER
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of FILM
-- ----------------------------
INSERT INTO "FILM_10312240069" VALUES ('F0101', 'Keluarga Cemara', 'Fokus cerita ini masih soal, Emak serta kedua anak mereka, Euis dan Ara . Persis dengan cerita di sinetronnya, film ini mengisahkan tentang bagaimana perjalanan hidup keluarga Abah yang semula nyaman dan mapan lalu kemudian mendadak bangkrut. Abah pun mengajak keluarganya pindah ke rumah warisan yang cukup jauh dari kota. Dengan segala keterbatasan dan kekurangan yang ia memiliki, Abah berusaha menjadi kepala keluarga serta ayah yang baik untuk anak-anaknya. Untung saja, Emak tak pernah lelah mendampinginya dan berusaha menjadi sandaran di saat mereka sedih.', '2019', '110');
INSERT INTO "FILM_10312240069" VALUES ('F0102', 'Habibie Ainun 3', 'Habibie Ainun 3 adalah sebuah film Indonesia tahun 2019 yang disutradarai oleh Hanung Bramantyo dan diproduksi oleh Manoj Punjabi (MD Pictures). Film ini adalah film ketiga dari seri film Habibie Ainun. Bila Rudy Habibie merupakan prekuel dari kisah Habibie muda, maka Habibie Ainun 3 ini adalah prekuel dari kisah Ainun muda. Film ini dijadwalkan rilis pada 19 Desember 2019.', '2019', '96');
INSERT INTO "FILM_10312240069" VALUES ('F0103', 'Taufiq', 'Kisah penjalanan hidup politisi yang juga suami Mantan Presiden RI, Megawati Soekarnoputri, Taufiq Kiemas diangkat dalam sebuah film tayang 14 Maret 2019. Film yang diangkat dari kisah nyata itu disutradarai sekaligus skenarionya ditulis oleh Ismail Basbeth. Perjalanan hidup membawanya ke Jakarta dan bertemu langsung dengan Soekarno, menjalin persahabatan dengan Guntur Soekarnoputra serta bertemu Megawati Soekarnoputri untuk pertama kalinya. Taufiq akan memahami arti dari persahabatan, keluarga, cinta dan negara ketika dia menjalani ujian hidup sebagai seorang nasionalis. Setelah itu Ia dijebloskan ke penjara bersama sahabatnya dituduh sebagai anggota Komunis. Dalam penjara Taufiq banyak bertemu orang-orang hebat. Dari situlah perjalanan seorang lelaki yang menantang badai.', '2019', '105');
INSERT INTO "FILM_10312240069" VALUES ('F0104', 'Buya Hamka', 'Buya Hamka adalah film drama biografi Indonesia tentang Abdul Malik Karim Amrullah atau Hamka, seorang ulama Indonesia yang dikenal sebagai penulis, pujangga, dan politisi. Buya Hamka akan mengisahkan kehidupan Hamka sejak lahir sampai meninggal dunia. Sebelum menjadi sosok yang dikenal banyak orang, Hamka telah melewati beberapa perubahan, mulai dari kanak-kanak, remaja, hingga berkeluarga. Sebagai ulama, film ini menyoroti bagaimana cara Hamka menyampaikan dakwahnya secara santun. Selain itu, Buya Hamka menyoroti aspek humanis Hamka dan prosesnya menggapai semua pencapaian.', '2019', '110');

-- ----------------------------
-- Table structure for INVENTORI
-- ----------------------------
DROP TABLE "INVENTORI_10312240069";
CREATE TABLE "INVENTORI_10312240069" (
  "ID_INVENTORI" CHAR(6 BYTE) NOT NULL,
  "ID_THEATER" VARCHAR2(20 BYTE) NOT NULL,
  "NOMOR_KURSI" VARCHAR2(5 BYTE)
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of INVENTORI
-- ----------------------------
INSERT INTO "INVENTORI_10312240069" VALUES ('IN1001', 'Teater 1', 'A1');
INSERT INTO "INVENTORI_10312240069" VALUES ('IN1002', 'Teater 1', 'A2');
INSERT INTO "INVENTORI_10312240069" VALUES ('IN1003', 'Teater 1', 'A3');
INSERT INTO "INVENTORI_10312240069" VALUES ('IN1004', 'Teater 1', 'A4');
INSERT INTO "INVENTORI_10312240069" VALUES ('IN1005', 'Teater 1', 'A5');
INSERT INTO "INVENTORI_10312240069" VALUES ('IN1006', 'Teater 2', 'A6');
INSERT INTO "INVENTORI_10312240069" VALUES ('IN1007', 'Teater 2', 'A7');
INSERT INTO "INVENTORI_10312240069" VALUES ('IN1008', 'Teater 2', 'A8');
INSERT INTO "INVENTORI_10312240069" VALUES ('IN1009', 'Teater 2', 'B1');
INSERT INTO "INVENTORI_10312240069" VALUES ('IN1010', 'Teater 2', 'B2');
INSERT INTO "INVENTORI_10312240069" VALUES ('IN1011', 'Teater 3', 'C1');
INSERT INTO "INVENTORI_10312240069" VALUES ('IN1012', 'Teater 3', 'C2');

-- ----------------------------
-- Table structure for JADWAL
-- ----------------------------
DROP TABLE "JADWAL_10312240069";
CREATE TABLE "JADWAL_10312240069" (
  "ID_JADWAL" CHAR(5 BYTE) NOT NULL,
  "ID_FILM" CHAR(5 BYTE) NOT NULL,
  "ID_THEATER" VARCHAR2(20 BYTE) NOT NULL,
  "PERIODE_START" DATE,
  "PERIODE_END" DATE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of JADWAL
-- ----------------------------
INSERT INTO "JADWAL_10312240069" VALUES ('JT001', 'F0101', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JADWAL_10312240069" VALUES ('JT002', 'F0101', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JADWAL_10312240069" VALUES ('JT003', 'F0102', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JADWAL_10312240069" VALUES ('JT004', 'F0101', 'Teater 2', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JADWAL_10312240069" VALUES ('JT005', 'F0103', 'Teater 2', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JADWAL_10312240069" VALUES ('JT006', 'F0102', 'Teater 2', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JADWAL_10312240069" VALUES ('JT007', 'F0104', 'Teater 2', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JADWAL_10312240069" VALUES ('JT008', 'F0102', 'Teater 3', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JADWAL_10312240069" VALUES ('JT009', 'F0101', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JADWAL_10312240069" VALUES ('JT010', 'F0102', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for MEMBER
-- ----------------------------
DROP TABLE "MEMBER_10312240069";
CREATE TABLE "MEMBER_10312240069" (
  "ID_MEMBER" CHAR(6 BYTE) NOT NULL,
  "NAMA" VARCHAR2(255 BYTE) NOT NULL,
  "NO_HP" VARCHAR2(20 BYTE) NOT NULL,
  "EMAIL" VARCHAR2(20 BYTE),
  "TGL_LAHIR" DATE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MEMBER
-- ----------------------------
INSERT INTO "MEMBER_10312240069" VALUES ('MM0111', 'Anto', '085267656789', 'Anto2016@gmail.com', TO_DATE('1989-07-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MEMBER_10312240069" VALUES ('MM0112', 'Budi', '081367589632', 'Budi2016@gmail.com', TO_DATE('1985-01-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MEMBER_10312240069" VALUES ('MM0113', 'Ari', '081267867543', 'Ari2016@gmail.com', TO_DATE('1983-11-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MEMBER_10312240069" VALUES ('MM0114', 'Rahmi', '085267935678', 'Rahmi2016@gmail.com', TO_DATE('1981-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MEMBER_10312240069" VALUES ('MM0115', 'Fahmi', '085767298908', 'Fahmi2016@gmail.com', TO_DATE('1986-07-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MEMBER_10312240069" VALUES ('MM0116', 'Rusli', '085643755398', 'Rusli2016@gmail.com', TO_DATE('1988-02-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MEMBER_10312240069" VALUES ('MM0117', 'Doni', '081398426789', 'Doni2016@gmail.com', TO_DATE('1986-04-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MEMBER_10312240069" VALUES ('MM0118', 'Tati', '085245289074', 'Tati2016@gmail.com', TO_DATE('1985-06-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MEMBER_10312240069" VALUES ('MM0119', 'Dono', '081287234567', 'Dono2016@gmail.com', TO_DATE('1990-07-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MEMBER_10312240069" VALUES ('MM0120', 'Joko', '081223670942', 'Joko2016@gmail.com', TO_DATE('1988-07-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for THEATER
-- ----------------------------
DROP TABLE "THEATER_10312240069";
CREATE TABLE "THEATER_10312240069" (
  "ID_THEATER" VARCHAR2(20 BYTE) NOT NULL,
  "KELAS" VARCHAR2(20 BYTE),
  "HARGA" NUMBER NOT NULL,
  "KAPASITAS" NUMBER
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of THEATER
-- ----------------------------
INSERT INTO "THEATER_10312240069" VALUES ('Teater 1', 'Reguler', '30000', '50');
INSERT INTO "THEATER_10312240069" VALUES ('Teater 2', 'Sweetbox', '100000', '50');
INSERT INTO "THEATER_10312240069" VALUES ('Teater 3', '4D', '75000', '50');
INSERT INTO "THEATER_10312240069" VALUES ('Teater 4', 'Velvet', '80000', '50');
INSERT INTO "THEATER_10312240069" VALUES ('Teater 5', '3D', '50000', '50');

-- ----------------------------
-- Table structure for TRANSAKSI
-- ----------------------------
DROP TABLE "TRANSAKSI_10312240069";
CREATE TABLE "TRANSAKSI_10312240069" (
  "KODE_PEMESANAN" CHAR(6 BYTE) NOT NULL,
  "ID_MEMBER" CHAR(6 BYTE) NOT NULL,
  "ID_JADWAL" CHAR(5 BYTE) NOT NULL,
  "ID_INVENTORI" CHAR(6 BYTE) NOT NULL,
  "TANGGAL" DATE NOT NULL,
  "STATUS" VARCHAR2(20 BYTE) NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of TRANSAKSI
-- ----------------------------
INSERT INTO "TRANSAKSI_10312240069" VALUES ('P10001', 'MM0111', 'JT001', 'IN1010', TO_DATE('2019-06-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "TRANSAKSI_10312240069" VALUES ('P10002', 'MM0112', 'JT006', 'IN1009', TO_DATE('2019-06-16 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "TRANSAKSI_10312240069" VALUES ('P10003', 'MM0113', 'JT008', 'IN1008', TO_DATE('2019-06-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "TRANSAKSI_10312240069" VALUES ('P10004', 'MM0114', 'JT001', 'IN1007', TO_DATE('2019-06-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "TRANSAKSI_10312240069" VALUES ('P10005', 'MM0115', 'JT006', 'IN1006', TO_DATE('2019-06-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "TRANSAKSI_10312240069" VALUES ('P10006', 'MM0116', 'JT001', 'IN1001', TO_DATE('2019-06-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'bayar');
INSERT INTO "TRANSAKSI_10312240069" VALUES ('P10007', 'MM0117', 'JT008', 'IN1011', TO_DATE('2019-06-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "TRANSAKSI_10312240069" VALUES ('P10008', 'MM0118', 'JT001', 'IN1003', TO_DATE('2019-06-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "TRANSAKSI_10312240069" VALUES ('P10009', 'MM0119', 'JT006', 'IN1004', TO_DATE('2019-06-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "TRANSAKSI_10312240069" VALUES ('P10010', 'MM0120', 'JT008', 'IN1005', TO_DATE('2019-06-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'checkin');

-- ----------------------------
-- Primary Key structure for table FILM
-- ----------------------------
ALTER TABLE "FILM_10312240069" ADD CONSTRAINT "FILM_PK" PRIMARY KEY ("ID_FILM");


-- ----------------------------
-- Primary Key structure for table INVENTORI
-- ----------------------------
ALTER TABLE "INVENTORI_10312240069" ADD CONSTRAINT "INVENTORI_PK" PRIMARY KEY ("ID_INVENTORI");


-- ----------------------------
-- Primary Key structure for table JADWAL
-- ----------------------------
ALTER TABLE "JADWAL_10312240069" ADD CONSTRAINT "JADWAL_PK" PRIMARY KEY ("ID_JADWAL");


-- ----------------------------
-- Primary Key structure for table MEMBER
-- ----------------------------
ALTER TABLE "MEMBER_10312240069" ADD CONSTRAINT "MEMBER_PK" PRIMARY KEY ("ID_MEMBER");


-- ----------------------------
-- Primary Key structure for table THEATER
-- ----------------------------
ALTER TABLE "THEATER_10312240069" ADD CONSTRAINT "THEATER_PK" PRIMARY KEY ("ID_THEATER");


-- ----------------------------
-- Primary Key structure for table TRANSAKSI
-- ----------------------------
ALTER TABLE "TRANSAKSI_10312240069" ADD CONSTRAINT "TRANSAKSI_PK" PRIMARY KEY ("KODE_PEMESANAN");

-- ----------------------------
-- Foreign Keys structure for table INVENTORI
-- ----------------------------
ALTER TABLE "INVENTORI_10312240069" ADD CONSTRAINT "INVENTORI_FK1" FOREIGN KEY ("ID_THEATER") REFERENCES "THEATER_10312240069" ("ID_THEATER") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table JADWAL
-- ----------------------------
ALTER TABLE "JADWAL_10312240069" ADD CONSTRAINT "JADWAL_FK1" FOREIGN KEY ("ID_FILM") REFERENCES "FILM_10312240069" ("ID_FILM") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "JADWAL_10312240069" ADD CONSTRAINT "JADWAL_FK2" FOREIGN KEY ("ID_THEATER") REFERENCES "THEATER_10312240069" ("ID_THEATER") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table TRANSAKSI
-- ----------------------------
ALTER TABLE "TRANSAKSI_10312240069" ADD CONSTRAINT "TRANSAKSI_FK1" FOREIGN KEY ("ID_JADWAL") REFERENCES "JADWAL_10312240069" ("ID_JADWAL") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "TRANSAKSI_10312240069" ADD CONSTRAINT "TRANSAKSI_FK2" FOREIGN KEY ("ID_INVENTORI") REFERENCES "INVENTORI_10312240069" ("ID_INVENTORI") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "TRANSAKSI_10312240069" ADD CONSTRAINT "TRANSAKSI_FK3" FOREIGN KEY ("ID_MEMBER") REFERENCES "MEMBER_10312240069" ("ID_MEMBER") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- nommer 4
SELECT 
    f.JUDUL || ' adalah film dengan durasi terpendek  yaitu ' || f.DURASI || 
    ' Menit, yang ditonton dengan umur termuda, yaitu ' || 
    MIN(EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM m.TGL_LAHIR)) || ' Tahun' AS KETERANGAN
FROM 
    FILM_10312240069 f
JOIN 
    JADWAL_10312240069 j ON f.ID_FILM = j.ID_FILM
JOIN 
    TRANSAKSI_10312240069 tr ON j.ID_JADWAL = tr.ID_JADWAL
JOIN 
    MEMBER_10312240069 m ON tr.ID_MEMBER = m.ID_MEMBER
WHERE 
    f.DURASI = (SELECT MIN(DURASI) FROM FILM_10312240069)
GROUP BY 
    f.JUDUL, f.DURASI;
    
-- nomer 5 
SELECT 
    th.ID_THEATER AS NOMOR_TEATER, 
    th.KELAS AS KELAS, 
    COUNT(j.ID_JADWAL) AS "TOTAL PEMAKAIAN"
FROM 
    THEATER_10312240069 th
JOIN 
    JADWAL_10312240069 j ON th.ID_THEATER = j.ID_THEATER
GROUP BY 
    th.ID_THEATER, 
    th.KELAS
HAVING 
    COUNT(j.ID_JADWAL) = (
        -- Ini adalah Subquery untuk mencari angka pemakaian paling tinggi (MAX)
        SELECT MAX(COUNT(ID_JADWAL)) 
        FROM JADWAL_10312240069 
        GROUP BY ID_THEATER
    );