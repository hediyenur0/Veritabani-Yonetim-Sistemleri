-- =============================================
-- Gallery Database - Version 2
-- Database Management Systems
-- =============================================

CREATE DATABASE GALERI;

USE GALERI;


-- =============================================
-- Customers
-- =============================================

CREATE TABLE MUSTERI (
    mNo INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    mAdi NVARCHAR(50),
    mSoyadi NVARCHAR(50),
    mAdres NVARCHAR(150),
    mTelefon NVARCHAR(50)
);

INSERT INTO MUSTERI
VALUES ('Fatma Nur', 'Kılıçkaya', 'Kayseri', '555');

SELECT *
FROM MUSTERI
WHERE mNo = 1;


-- =============================================
-- Vehicles
-- =============================================

CREATE TABLE ARACLAR (
    aracNo INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    model NVARCHAR(50),
    marka NVARCHAR(50),
    plaka NVARCHAR(150),
    fiyat FLOAT,
    yil DATE
);


-- =============================================
-- Sales
-- =============================================

CREATE TABLE SATISLAR (
    aracNo INT FOREIGN KEY REFERENCES ARACLAR(aracNo),
    satisNo INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    mNo INT FOREIGN KEY REFERENCES MUSTERI(mNo),
    sTarih DATETIME,
    sFiyat FLOAT
);


-- =============================================
-- Purchases
-- =============================================

CREATE TABLE ALISLAR (
    aracNo INT FOREIGN KEY REFERENCES ARACLAR(aracNo),
    alisNo INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    mNo INT FOREIGN KEY REFERENCES MUSTERI(mNo),
    aTarih DATETIME,
    aFiyat FLOAT
);


-- =============================================
-- Sample Data
-- =============================================

INSERT INTO ARACLAR
VALUES (
    'fiesta',
    'ford',
    '45R1315',
    125,
    CONVERT(DATETIME, '18-06-12 10:34:09 PM', 5)
);

INSERT INTO ALISLAR
VALUES (
    1,
    1,
    CONVERT(DATETIME, '18-06-12 10:34:09 PM', 5),
    250
);

INSERT INTO SATISLAR
VALUES (
    1,
    1,
    CONVERT(DATETIME, '20-06-12 10:34:09 PM', 5),
    500
);


-- =============================================
-- JOIN Examples
-- =============================================

SELECT
    m.mAdi,
    m.mSoyadi,
    ar.marka,
    ar.model
FROM MUSTERI AS m
JOIN ALISLAR AS a
    ON m.mNo = a.mNo
JOIN ARACLAR AS ar
    ON ar.aracNo = a.aracNo
WHERE m.mAdres = 'Kayseri';


SELECT
    m.mAdi,
    m.mSoyadi,
    ar.marka,
    ar.model
FROM MUSTERI AS m
JOIN SATISLAR AS s
    ON m.mNo = s.mNo
JOIN ARACLAR AS ar
    ON ar.aracNo = s.aracNo
WHERE m.mAdres = 'İstanbul'
  AND ar.marka = 'Audi';


-- =============================================
-- Date Filtering
-- =============================================

SELECT *
FROM ARACLAR
WHERE yil < CONVERT(
    DATETIME,
    '18-06-20 10:34:09 PM',
    5
);
