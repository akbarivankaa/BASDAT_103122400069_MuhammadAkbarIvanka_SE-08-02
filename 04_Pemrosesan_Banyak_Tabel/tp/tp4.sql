CREATE TABLE teater (
    id_teater VARCHAR2(10) PRIMARY KEY,
    nomor_teater VARCHAR2(20)
);

CREATE TABLE kursi (
    id_kursi VARCHAR2(10) PRIMARY KEY,
    no_k VARCHAR2(5),
    id_teater VARCHAR2(10),
    CONSTRAINT fk_teater FOREIGN KEY (id_teater) REFERENCES teater(id_teater)
);

SELECT t.nomor_teater, k.no_k
FROM teater t
JOIN kursi k ON t.id_teater = k.id_teater
ORDER BY t.nomor_teater, k.no_k;

INSERT INTO teater (id_teater, nomor_teater) VALUES ('T1', 'Teater 1');
INSERT INTO teater (id_teater, nomor_teater) VALUES ('T5', 'Teater 5');

INSERT INTO kursi (id_kursi, no_k, id_teater) VALUES ('K01', 'A1', 'T1');
INSERT INTO kursi (id_kursi, no_k, id_teater) VALUES ('K02', 'A2', 'T1');
INSERT INTO kursi (id_kursi, no_k, id_teater) VALUES ('K03', 'E3', 'T5');
INSERT INTO kursi (id_kursi, no_k, id_teater) VALUES ('K04', 'E4', 'T5');

COMMIT;

SELECT t.nomor_teater, k.no_k
FROM teater t
JOIN kursi k ON t.id_teater = k.id_teater
ORDER BY t.nomor_teater, k.no_k;

DECLARE
    v_id_kursi NUMBER := 1;
    v_huruf CHAR(1);
BEGIN
   
    FOR i IN 1..5 LOOP
        INSERT INTO teater (id_teater, nomor_teater) 
        VALUES ('T' || i, 'Teater ' || i);
        
        FOR j IN 65..69 LOOP 
            v_huruf := CHR(j);
            
            FOR k IN 1..8 LOOP
                INSERT INTO kursi (id_kursi, no_k, id_teater) 
                VALUES ('K' || v_id_kursi, v_huruf || k, 'T' || i);
                
                v_id_kursi := v_id_kursi + 1; 
            END LOOP;
        END LOOP;
    END LOOP;
    
    COMMIT;
END;
/


DELETE FROM kursi;
DELETE FROM teater;

SELECT 
    t.nomor_teater, 
    k.no_k AS nomor_kursi
FROM teater t
JOIN kursi k ON t.id_teater = k.id_teater
ORDER BY t.nomor_teater, k.no_k;

