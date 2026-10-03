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

