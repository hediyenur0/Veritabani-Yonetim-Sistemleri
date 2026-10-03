-- =============================================
-- SQL Subquery Examples
-- =============================================

USE GALERI;

-- Nested subquery example

SELECT
    musteri.mAdi,
    musteri.mSoyadi,
    satislar.aracNo
FROM satislar
JOIN musteri
    ON musteri.mNo = satislar.mNo
WHERE satislar.aracNo = (
    SELECT satislar.aracNo
    FROM satislar
    WHERE satislar.mNo = (
        SELECT mNo
        FROM musteri
        WHERE mAdi = 'Turgut'
          AND mSoyadi = 'Özseven'
    )
);

-- IN with subquery

SELECT *
FROM araclar
WHERE aracNo IN (
    SELECT aracNo
    FROM satislar
);

-- ANY with subquery

SELECT *
FROM satislar AS s
JOIN alislar AS a
    ON a.aracNo = s.aracNo
WHERE s.sFiyat < ANY (
    SELECT aFiyat
    FROM alislar
);

-- Subquery with JOIN

-- Customer information for sold vehicles

SELECT *
FROM musteri AS m
JOIN satislar AS s
    ON s.mNo = m.mNo
JOIN araclar AS a
    ON a.aracNo = s.aracNo
WHERE m.mNo IN (
    SELECT mNo
    FROM satislar
);

-- SUM with filtering

SELECT SUM(s.sFiyat)
FROM satislar AS s
JOIN musteri AS m
    ON m.mNo = s.mNo
WHERE m.mAdres IN ('Tokat', 'Amasya');
