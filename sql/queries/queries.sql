-- =============================================
-- SQL Query Examples
-- =============================================

USE KutuphaneSistemi;

-- Select all records

SELECT * FROM Adresler;

SELECT * FROM Uyeler;

SELECT * FROM kitaplar;

SELECT * FROM kutuphane;


-- LIKE and ORDER BY

SELECT *
FROM Adresler
WHERE mahalle LIKE '%B%'
ORDER BY postakodu DESC;


-- ORDER BY ASC

SELECT *
FROM Uyeler
ORDER BY uyeNo ASC;


-- Filtering with WHERE

SELECT *
FROM Adresler
WHERE adresNo = 41;


-- Multiple conditions with AND / OR

SELECT *
FROM Uyeler
WHERE adresNo = 41
  AND (telefon LIKE '%6%' OR telefon LIKE '%9%');


SELECT *
FROM Uyeler
WHERE telefon LIKE '%6%'
  AND (adresNo = 41 OR adresNo = 61);


-- String concatenation and LEN function

SELECT ('Sn. ' + uyeAdi + ' ' + uyeSoyadi)
FROM Uyeler
WHERE LEN(uyeSoyadi) > 6;


-- Selecting a specific column

SELECT Sehir
FROM Adresler
ORDER BY Sehir ASC;
