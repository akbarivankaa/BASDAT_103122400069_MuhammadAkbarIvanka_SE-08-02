SQL>  --nama : MuhammadAkbarIvanka
SQL>  --nim : 103122400069
SQL> SELECT * FROM Film;

   ID_FILM                                                                      
----------                                                                      
JUDUL                                                                           
--------------------------------------------------------------------------------
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
         1                                                                      
The Batman: Rise of Gotham                                                      
Kisah detektif Gotham                                                           
      2022        175                                                           
                                                                                

SQL> S
SP2-0042: unknown command "S" - rest of line ignored.
SQL> DESC Film;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_FILM                                   NOT NULL NUMBER
 JUDUL                                              VARCHAR2(100)
 SINOPSIS                                           VARCHAR2(500)
 TAHUN                                              NUMBER(4)
 DURASI                                             NUMBER

SQL> DESC Theater;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_THEATER                                NOT NULL NUMBER
 HARGA                                              NUMBER
 KAPASITAS                                          NUMBER
 KELAS                                              VARCHAR2(50)

SQL> DESC Member;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_MEMBER                                 NOT NULL NUMBER
 NAMA                                               VARCHAR2(100)
 NO_HP                                              VARCHAR2(15)
 TGL_LAHIR                                          DATE
 EMAIL                                              VARCHAR2(100)

SQL> DESC Jadwal;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_JADWAL                                 NOT NULL NUMBER
 ID_FILM                                            NUMBER
 ID_THEATER                                         NUMBER
 PERIODE_START                                      DATE
 PERIODE_END                                        DATE

SQL> DESC Inventaris;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_INVENTARIS                             NOT NULL NUMBER
 ID_THEATER                                         NUMBER
 NOMOR_KURSI                                        VARCHAR2(10)

SQL> DESC Transaksi;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 KODE_PEMESANAN                            NOT NULL VARCHAR2(20)
 ID_JADWAL                                          NUMBER
 ID_MEMBER                                          NUMBER
 STATUS                                             VARCHAR2(50)
 TANGGAL                                            DATE
 TOTAL_HARGA                                        NUMBER

SQL> UPDATE Film SET judul = 'The Batman: Rise of Gotham' WHERE id_film = 1;

1 row updated.

SQL> UPDATE Theater SET harga = 75000 WHERE id_theater = 101;

1 row updated.

SQL> UPDATE Member SET no_hp = '0855667788' WHERE id_member = 1;

1 row updated.

SQL> UPDATE Inventaris SET nomor_kursi = 'B12' WHERE id_inventaris = 901;

0 rows updated.

SQL> UPDATE Transaksi SET status = 'LUNAS' WHERE kode_pemesanan = 'TRX001';

0 rows updated.

SQL> COMMIT;

Commit complete.

SQL> DELETE FROM Transaksi WHERE kode_pemesanan = 'TRX001';

0 rows deleted.

SQL> DELETE FROM Inventaris WHERE id_inventaris = 901;

0 rows deleted.

SQL> COMMIT;

Commit complete.

SQL> INSERT INTO Inventaris (id_inventaris, id_theater, nomor_kursi)
  2  VALUES (901, 101, 'A1');

1 row created.

SQL> INSERT INTO Transaksi (kode_pemesanan, id_jadwal, id_member, status, tanggal, total_harga)
  2  VALUES ('TRX001', 501, 1, 'Proses', TO_DATE('2026-03-08', 'YYYY-MM-DD'), 50000);

1 row created.

SQL> COMMIT;

Commit complete.

SQL> UPDATE Film SET judul = 'The Batman: Rise of Gotham' WHERE id_film = 1;

1 row updated.

SQL> UPDATE Theater SET harga = 75000 WHERE id_theater = 101;

1 row updated.

SQL> UPDATE Member SET no_hp = '0855667788' WHERE id_member = 1;

1 row updated.

SQL> UPDATE Inventaris SET nomor_kursi = 'B12' WHERE id_inventaris = 901;

1 row updated.

SQL> UPDATE Transaksi SET status = 'LUNAS' WHERE kode_pemesanan = 'TRX001';

1 row updated.

SQL> COMMIT;

Commit complete.

SQL> DESC Transaksi;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 KODE_PEMESANAN                            NOT NULL VARCHAR2(20)
 ID_JADWAL                                          NUMBER
 ID_MEMBER                                          NUMBER
 STATUS                                             VARCHAR2(50)
 TANGGAL                                            DATE
 TOTAL_HARGA                                        NUMBER

SQL> SELECT * FROM Film;

   ID_FILM                                                                      
----------                                                                      
JUDUL                                                                           
--------------------------------------------------------------------------------
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
         1                                                                      
The Batman: Rise of Gotham                                                      
Kisah detektif Gotham                                                           
      2022        175                                                           
                                                                                

SQL> SELECT * FROM Transaksi;

KODE_PEMESANAN        ID_JADWAL  ID_MEMBER                                      
-------------------- ---------- ----------                                      
STATUS                                             TANGGAL   TOTAL_HARGA        
-------------------------------------------------- --------- -----------        
TRX001                      501          1                                      
LUNAS                                              08-MAR-26       50000        
                                                                                

SQL> SELECT * FROM Inventaris;

ID_INVENTARIS ID_THEATER NOMOR_KURS                                             
------------- ---------- ----------                                             
          901        101 B12                                                    

SQL> DELETE FROM Transaksi WHERE kode_pemesanan = 'TRX001';

1 row deleted.

SQL> DELETE FROM Inventaris WHERE id_inventaris = 901;

1 row deleted.

SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM Transaksi;

no rows selected

SQL> SELECT * FROM Inventaris;

no rows selected

SQL> SPOOL OFF;
