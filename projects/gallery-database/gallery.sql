-- =============================================
-- Gallery Database
-- Database Management Systems
-- =============================================

USE GALERI;


-- =============================================
-- Customers
-- =============================================

CREATE TABLE MUSTERI (
    mNo INT NOT NULL PRIMARY KEY,
    mAdi NVARCHAR(50),
    mSoyadi NVARCHAR(50),
    mTelefon INT,
    mAdres NVARCHAR(100)
);

INSERT INTO MUSTERI
VALUES (1, 'Fatma Nur', 'Kılıçkaya', 555, 'Kayseri');

SELECT *
FROM MUSTERI
WHERE mNo = 1;


-- =============================================
-- Vehicles
-- =============================================

CREATE TABLE ARACLAR (
    aracNo INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    model NVARCHAR(50),
    marka NVARCHAR(50),
    yil INT,
    plaka NVARCHAR(100),
    fiyat INT
);

INSERT INTO ARACLAR
VALUES ('fiesta', 'ford', 2024, '21 TW 29', 40456);

SELECT *
FROM ARACLAR
WHERE plaka = '21 TW 29';


-- =============================================
-- Sales
-- =============================================

CREATE TABLE SATISLAR (
    satNo INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    mNo INT CONSTRAINT mNo_FK
        FOREIGN KEY REFERENCES MUSTERI(mNo),
    aracNo INT CONSTRAINT aracNo_FK
        FOREIGN KEY REFERENCES ARACLAR(aracNo),
    satisTarihi DATETIME,
    satisFiyati INT
);

INSERT INTO MUSTERI
VALUES (2, 'Elif', 'Sosun', 500, 'Ankara');

INSERT INTO ARACLAR
VALUES ('golf', 'volkswagen', 2024, '06 SSN 000', 500000);

INSERT INTO SATISLAR
VALUES (2, 1, '2020-05-10', 600000);

SELECT *
FROM SATISLAR
WHERE mNo = 2;


-- =============================================
-- Purchases
-- =============================================

CREATE TABLE ALISLAR (
    alisNo INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    mNo INT CONSTRAINT musteriNo_FK
        FOREIGN KEY REFERENCES MUSTERI(mNo),
    aracNo INT CONSTRAINT aNo_FK
        FOREIGN KEY REFERENCES ARACLAR(aracNo),
    alisTarihi DATETIME,
    alisFiyati INT
);

INSERT INTO ALISLAR
VALUES (4, 1, '2025-10-23', 21020);

INSERT INTO MUSTERI
VALUES (4, 'Merve', 'Cidecio', 5288, 'Kayseri');

SELECT *
FROM MUSTERI;


-- =============================================
-- Additional Sales
-- =============================================

USE GALERI;

INSERT INTO MUSTERI
VALUES (3, 'Turgut', 'Özseven', 893, 'Kayseri');

INSERT INTO SATISLAR
VALUES (3, 1, '2021-05-04', 7000);

SELECT *
FROM SATISLAR;

INSERT INTO SATISLAR
VALUES (1, 2, '2019-10-10', 80000);


-- =============================================
-- Display All Tables
-- =============================================

SELECT *
FROM ALISLAR;

SELECT *
FROM ARACLAR;

SELECT *
FROM MUSTERI;

SELECT *
FROM SATISLAR;



