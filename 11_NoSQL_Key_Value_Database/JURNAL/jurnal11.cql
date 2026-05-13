-- 1. membuat Keyspace
CREATE KEYSPACE spotifine_0802 
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

-- Gunakan Keyspace yang baru dibuat
USE spotifine_0802;

-- 2. membuat Table
CREATE TABLE musician_data (
    artist_id text PRIMARY KEY,
    artist_name text,
    followers int,
    origin text,
    genres set<text>
);

-- 3. Insert 3 data musisi
INSERT INTO musician_data (artist_id, artist_name, followers, origin, genres) 
VALUES ('M001', 'The Weeknd', 110000000, 'Canada', {'Pop', 'R&B', 'Synth-pop'});

INSERT INTO musician_data (artist_id, artist_name, followers, origin, genres) 
VALUES ('M002', 'Daft Punk', 25000000, 'France', {'Electronic', 'Disco'});

INSERT INTO musician_data (artist_id, artist_name, followers, origin, genres) 
VALUES ('M003', 'Adele', 65000000, 'UK', {'Pop'});

-- 4. Nampilin semua data
SELECT * FROM musician_data;