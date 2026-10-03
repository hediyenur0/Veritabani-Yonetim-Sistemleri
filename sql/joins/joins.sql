-- =============================================
-- SQL JOIN Examples
-- =============================================

USE KutuphaneSistemi;


-- INNER JOIN Example

SELECT
    u.uyeAdi,
    u.uyeSoyadi,
    a.sehir
FROM Uyeler AS u
INNER JOIN Adresler AS a
    ON u.adresNo = a.adresNo;


-- JOIN with filtering

SELECT
    u.uyeAdi,
    u.uyeSoyadi,
    a.sehir
FROM Uyeler AS u
INNER JOIN Adresler AS a
    ON u.adresNo = a.adresNo
WHERE a.sehir = 'Kayseri';


-- Multiple table JOIN

SELECT
    u.uyeAdi,
    u.uyeSoyadi,
    k.kitapAdi,
    e.emanetTarihi
FROM Uyeler AS u
INNER JOIN emanet AS e
    ON u.uyeNo = e.uyeNo
INNER JOIN kitaplar AS k
    ON e.ISBN = k.ISBN;
