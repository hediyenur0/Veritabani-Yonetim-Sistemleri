-- =============================================
-- Library Database
-- Database Management Systems
-- =============================================

USE KutuphaneSistemi;

-- =============================================
-- Tables
-- =============================================

CREATE TABLE Adresler(
    adresNo INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    sehir NVARCHAR(50) NOT NULL,
    mahalle NVARCHAR(50),
    binaNo INT,
    postakodu INT,
    ulke NVARCHAR(50) NOT NULL,
    cadde NVARCHAR(50)
);

CREATE TABLE Uyeler(
    uyeNo INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    uyeAdi NVARCHAR(100) NOT NULL,
    uyeSoyadi NVARCHAR(100) NOT NULL,
    cinsiyet CHAR(2),
    telefon NVARCHAR(50),
    eposta NVARCHAR(50)
);

ALTER TABLE Uyeler 
ADD adresNo INT
CONSTRAINT "uyeler_adresler"
FOREIGN KEY(adresNo) REFERENCES Adresler(adresNo);

CREATE TABLE kutuphane (...);
CREATE TABLE kitaplar (...);
CREATE TABLE emanet (...);
CREATE TABLE kategori (...);
CREATE TABLE yazarlar (...);
CREATE TABLE kategori_kitap (...);
CREATE TABLE kitap_yazarlar (...);
CREATE TABLE kitap_kutuphane (...);
