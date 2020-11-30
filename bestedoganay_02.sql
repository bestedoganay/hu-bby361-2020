
-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 30 Kas 2020, 20:21:10
-- Sunucu sürümü: 10.4.14-MariaDB
-- PHP Sürümü: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `bestedoganay`
--
CREATE DATABASE IF NOT EXISTS `bestedoganay` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `bestedoganay`;

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `arama`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `arama` (
`makaleAdı` varchar(300)
,`makaleYazarı` varchar(100)
,`makaleDili` varchar(100)
,`makaleTarih` year(4)
,`makaleUlke` varchar(100)
,`makaleDoi` int(50)
,`MakaleNo` int(11)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `bestedoganay`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `bestedoganay` (
`makaleAdı` varchar(300)
,`yazaradı` varchar(100)
,`yazarsoyadı` varchar(100)
,`dergiadı` varchar(100)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dergi`
--

CREATE TABLE `dergi` (
  `dergino` int(11) NOT NULL COMMENT 'derginin numarası',
  `dergiadı` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'derginin adı',
  `dergiülke` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'derginin ülkesi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='dergiler';

--
-- Tablo döküm verisi `dergi`
--

INSERT INTO `dergi` (`dergino`, `dergiadı`, `dergiülke`) VALUES
(1, 'G.Ü. Gazi Eğitim Fakültesi Dergisi', 'Türkiye'),
(3, 'Türk Kütüphaneciliği', 'Türkiye'),
(4, 'British Educational Research Journal', 'İngiltere'),
(5, 'Universidad de Huelva', 'İspanya'),
(6, 'NUMBERS, FACTS AND TRENDS SHAPING THE WORLD ', 'Amerika'),
(7, 'Dokuz Eylül Üniversitesi\r\nSosyal Bilimler Enstitüsü Dergisi', 'Türkiye'),
(8, 'Anadolu Psikiyatri Dergisi', 'Türkiye'),
(9, 'Wesleyan University Publish', 'Amerika'),
(10, 'Selçuk Üniversitesi dergisi', 'Türkiye'),
(11, 'Akademi dergisi', 'Türkiye');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `kutuphane`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `kutuphane` (
`makaleAdı` varchar(300)
,`yazaradı` varchar(100)
,`yazarsoyadı` varchar(100)
,`dergiadı` varchar(100)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `library`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `library` (
`makaleAdı` varchar(300)
,`yazaradı` varchar(100)
,`yazarsoyadı` varchar(100)
,`dergiadı` varchar(100)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `makaleler`
--

CREATE TABLE `makaleler` (
  `makaleAdı` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'makalenin adı',
  `makaleYazarı` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'makalenin yazarı',
  `makaleDili` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'makalenin dili',
  `makaleTarih` year(4) NOT NULL COMMENT 'makale tarih',
  `makaleUlke` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'makalenin ülkesi',
  `makaleDoi` int(50) DEFAULT NULL COMMENT 'makale doi',
  `MakaleNo` int(11) NOT NULL COMMENT 'makale numarası'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `makaleler`
--

INSERT INTO `makaleler` (`makaleAdı`, `makaleYazarı`, `makaleDili`, `makaleTarih`, `makaleUlke`, `makaleDoi`, `MakaleNo`) VALUES
('Müzik, Çocuk Gelişimi ve Öğrenme ', 'Şeyda ÇİLDEN', 'Türkçe', 2001, 'Türkiye', NULL, 1),
('Türk Psikoloji Dergisi’nin Bibliyometrik Profili', 'Umut Al', 'Türkçe', 2007, 'Türkiye', NULL, 3),
('Case Study and Case Records: towards a contemporary history of education', 'Lawrence Stenhouse', 'İngilizce', 2006, 'İngiltere', NULL, 4),
('La familia como contexto de desarrollo infantil : dimensiones de análisis relevantes para la intervención educativa y social', 'Alicia Muñoz Silva', 'İspanyolca', 2005, 'İspanya', NULL, 5),
('Social Media Usage:2005-2015 \r\n', 'Andrew Perrin', 'İngilizce', 2015, 'Amerika', NULL, 6),
('DOĞAL AFET YÖNETİMİ VE\r\nYEREL GÜNDEM 21 ÇALIŞMALARI KAPSAMINDA\r\nİZMİR’DE DEPREM RİSKİ', 'Hikmet YAVAŞ', 'Türkçe', 2001, 'Türkiye', NULL, 7),
('Kadına yönelik aile içi şiddet ve kadınların aile içi şiddete bakışı', 'Şengül YAMAN EFE', 'Türkçe', 2010, 'Türkiye', NULL, 8),
('An Attitude Survey of Animal Rights Activists', 'Scott Plous', 'İngilizce', 1991, 'Amerika', NULL, 9),
('Türkiye\'de bulunan bazı kedi ırklarının D-Loop polimorfizminin araştırılması', 'Elif yılmaz', 'Türkçe', 2010, 'Türkiye', NULL, 10),
('Sanat felsefesi̇nde esteti̇k obje çözümlemesi̇ açısından ebru sanatı', 'Osman Mutluel', 'Türkçe', 2014, 'Türkiye', NULL, 11);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazar`
--

CREATE TABLE `yazar` (
  `yazarno` int(11) NOT NULL COMMENT 'yazar numarası',
  `yazaradı` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'yazarın adı',
  `yazarsoyadı` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'yazarın soyadı'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='yazarlar';

--
-- Tablo döküm verisi `yazar`
--

INSERT INTO `yazar` (`yazarno`, `yazaradı`, `yazarsoyadı`) VALUES
(1, 'Şeyda ', 'Çilden'),
(2, 'Umut ', 'Al'),
(3, 'Stenhouse', 'Lawrance'),
(4, 'Alicia', 'Muñoz Silva'),
(5, 'Andrew', 'Perrin'),
(6, 'Hikmet', 'Yavaş'),
(7, 'Şengül', 'Yaman Efe'),
(8, 'scott', 'Plous'),
(9, 'Elif', 'Yılmaz'),
(10, 'Osman', 'Mutluel');

-- --------------------------------------------------------

--
-- Görünüm yapısı `arama`
--
DROP TABLE IF EXISTS `arama`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `arama`  AS SELECT `makaleler`.`makaleAdı` AS `makaleAdı`, `makaleler`.`makaleYazarı` AS `makaleYazarı`, `makaleler`.`makaleDili` AS `makaleDili`, `makaleler`.`makaleTarih` AS `makaleTarih`, `makaleler`.`makaleUlke` AS `makaleUlke`, `makaleler`.`makaleDoi` AS `makaleDoi`, `makaleler`.`MakaleNo` AS `MakaleNo` FROM `makaleler` WHERE `makaleler`.`makaleTarih` > 2000 ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `bestedoganay`
--
DROP TABLE IF EXISTS `bestedoganay`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bestedoganay`  AS SELECT `m`.`makaleAdı` AS `makaleAdı`, `y`.`yazaradı` AS `yazaradı`, `y`.`yazarsoyadı` AS `yazarsoyadı`, `d`.`dergiadı` AS `dergiadı` FROM ((`dergi` `d` join `makaleler` `m`) join `yazar` `y`) WHERE `m`.`MakaleNo` = `d`.`dergino` AND `m`.`MakaleNo` = `y`.`yazarno` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `kutuphane`
--
DROP TABLE IF EXISTS `kutuphane`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kutuphane`  AS SELECT `m`.`makaleAdı` AS `makaleAdı`, `y`.`yazaradı` AS `yazaradı`, `y`.`yazarsoyadı` AS `yazarsoyadı`, `d`.`dergiadı` AS `dergiadı` FROM ((`dergi` `d` join `makaleler` `m`) join `yazar` `y`) WHERE `m`.`MakaleNo` = `d`.`dergino` AND `m`.`MakaleNo` = `y`.`yazarno` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `library`
--
DROP TABLE IF EXISTS `library`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `library`  AS SELECT `m`.`makaleAdı` AS `makaleAdı`, `y`.`yazaradı` AS `yazaradı`, `y`.`yazarsoyadı` AS `yazarsoyadı`, `d`.`dergiadı` AS `dergiadı` FROM ((`dergi` `d` join `makaleler` `m`) join `yazar` `y`) WHERE `m`.`MakaleNo` = `d`.`dergino` AND `m`.`MakaleNo` = `y`.`yazarno` ;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `dergi`
--
ALTER TABLE `dergi`
  ADD PRIMARY KEY (`dergino`);

--
-- Tablo için indeksler `makaleler`
--
ALTER TABLE `makaleler`
  ADD PRIMARY KEY (`MakaleNo`);

--
-- Tablo için indeksler `yazar`
--
ALTER TABLE `yazar`
  ADD PRIMARY KEY (`yazarno`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `dergi`
--
ALTER TABLE `dergi`
  MODIFY `dergino` int(11) NOT NULL AUTO_INCREMENT COMMENT 'derginin numarası', AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `makaleler`
--
ALTER TABLE `makaleler`
  MODIFY `MakaleNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'makale numarası', AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `yazar`
--
ALTER TABLE `yazar`
  MODIFY `yazarno` int(11) NOT NULL AUTO_INCREMENT COMMENT 'yazar numarası', AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
