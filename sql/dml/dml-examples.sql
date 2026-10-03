-- =============================================
-- DML Examples
-- Data Manipulation Language
-- =============================================

USE KutuphaneSistemi;

SELECT * FROM Uyeler;

INSERT INTO Uyeler (uyeAdi, uyeSoyadi, adresNo)
VALUES ('Bedirhan', 'Çiftç', 1);

SELECT * FROM Adresler;

SELECT * FROM emanet;

INSERT INTO kategori
VALUES ('matematik');

INSERT INTO kategori
VALUES ('bilgisayar');

INSERT INTO kategori_kitap
VALUES ('A123', 2);

INSERT INTO kitaplar
VALUES ('A123', 'vtys I', 300, '2025-11-11');

INSERT INTO kitaplar
VALUES ('B123', 'vtys II', 400, '2026-01-11');

INSERT INTO kitaplar
VALUES ('C345', 'Çalıkuşu', 550, '2025-01-02');

-- Additional INSERT examples

INSERT INTO kutuphane
VALUES (4, 'Karamercan', 'Mevlana mahallesi kütüphanesi', 1);

INSERT INTO kutuphane
VALUES (1, 'Kayü', 'Kayseri şehrinde', 1);

INSERT INTO kutuphane
VALUES (2, 'İtü', 'İstanbul şehrinde', 2);

INSERT INTO yazarlar
VALUES ('oguz', 'atay');

INSERT INTO kitap_kutuphane
VALUES (300, 'A123', 1);

INSERT INTO kitap_kutuphane
VALUES (3, 'C345', 1);

INSERT INTO kutuphane
VALUES (3, 'odtu', 'Ankara şehrinde', 1);

INSERT INTO Adresler
VALUES ('Kayseri', 'Mevlana', 38, 3800, 'Türkiye', '15 Temmuz');

INSERT INTO Adresler (sehir, ulke)
VALUES ('İstanbul', 'Türkiye');

INSERT INTO Uyeler
VALUES ('fatmanur', 'kılıçkaya', NULL, NULL, NULL, 1);

INSERT INTO Uyeler
VALUES ('hediye', 'öz', '', '', '', 2);


-- UPDATE example

UPDATE Uyeler
SET eposta = 'fnurkilickaya@kayseri.edu.tr'
WHERE uyeNo IN (1, 2);


-- DELETE example

DELETE FROM Uyeler
WHERE uyeNo = 3;
