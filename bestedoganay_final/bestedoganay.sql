-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 12 Oca 2021, 19:27:40
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
-- Görünüm yapısı durumu `bestedoganay`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `bestedoganay` (
`makaleAdi` varchar(300)
,`yazaradi` varchar(100)
,`yazarsoyadi` varchar(100)
,`dergiadi` varchar(100)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dergi`
--

CREATE TABLE `dergi` (
  `dergino` int(11) NOT NULL COMMENT 'derginin numarası',
  `dergikayitno` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'derginin kayıt numarası',
  `dergiadi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'derginin adı',
  `dergiulke` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'derginin ülkesi',
  `dergiURL` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dergi URLi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='dergiler';

--
-- Tablo döküm verisi `dergi`
--

INSERT INTO `dergi` (`dergino`, `dergikayitno`, `dergiadi`, `dergiulke`, `dergiURL`) VALUES
(1, '2021-01-08 19:32:31', 'G.Ü. Gazi Eğitim Fakültesi Dergisi', 'Türkiye', 'http://www.gefad.gazi.edu.tr/tr/'),
(3, '2021-01-08 19:32:31', 'Türk Kütüphaneciliği', 'Türkiye', 'http://www.tk.org.tr/index.php/TK'),
(4, '2021-01-08 19:32:31', 'British Educational Research Journal', 'İngiltere', 'https://www.thebritishacademy.ac.uk/'),
(5, '2021-01-08 19:32:31', 'Universidad de Huelva', 'İspanya', 'http://www.uhu.es/index.php'),
(6, '2021-01-08 19:32:31', 'NUMBERS, FACTS AND TRENDS SHAPING THE WORLD ', 'Amerika', 'https://www.pewresearch.org/'),
(7, '2021-01-08 19:32:31', 'Dokuz Eylül Üniversitesi\r\nSosyal Bilimler Enstitüsü Dergisi', 'Türkiye', 'https://dergipark.org.tr/tr/pub/deusosbil'),
(8, '2021-01-08 19:32:31', 'Anadolu Psikiyatri Dergisi', 'Türkiye', 'https://alpha-psychiatry.com/'),
(9, '2021-01-08 19:32:31', 'Wesleyan University Publish', 'Amerika', 'https://www.wesleyan.edu/wespress/'),
(10, '2021-01-08 19:32:31', 'Selçuk Üniversitesi dergisi', 'Türkiye', 'http://dergisosyalbil.selcuk.edu.tr/susbed'),
(11, '2021-01-08 19:32:31', 'Akademi dergisi', 'Türkiye', 'http://www.dergipark.org.tr/tr/pub/ilak'),
(12, '2021-01-10 16:48:10', 'tew', 'ispanya', 'https://www.tew.ac.br/');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `library`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `library` (
`makaleAdi` varchar(300)
,`yazaradi` varchar(100)
,`yazarsoyadi` varchar(100)
,`dergiadi` varchar(100)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `makaleler`
--

CREATE TABLE `makaleler` (
  `makaleAdi` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'makalenin adı',
  `makaleDili` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'makalenin dili',
  `makaleTarih` year(4) NOT NULL COMMENT 'makale tarih',
  `makaleUlke` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'makalenin ülkesi',
  `makaleAcik` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'makalemeye ilişkin açıklama',
  `makaleDoi` int(50) DEFAULT NULL COMMENT 'makale doi',
  `MakaleNo` int(11) NOT NULL COMMENT 'makale numarası',
  `makalekayitno` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'makale kayıt tarihi',
  `yazarno` int(100) NOT NULL COMMENT 'yazar numarası',
  `dergino` int(100) NOT NULL COMMENT 'derginin numarası'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `makaleler`
--

INSERT INTO `makaleler` (`makaleAdi`, `makaleDili`, `makaleTarih`, `makaleUlke`, `makaleAcik`, `makaleDoi`, `MakaleNo`, `makalekayitno`, `yazarno`, `dergino`) VALUES
('Müzik, Çocuk Gelişimi ve Öğrenme ', 'Türkçe', 2001, 'Türkiye', 'müziğin çocuk gelişimi ve öğrenme üzerinde etkisini anlatan makale.', 1012786, 1, '2021-01-08 19:31:33', 2, 3),
('Türk Psikoloji Dergisi’nin Bibliyometrik Profili', 'Türkçe', 2007, 'Türkiye', 'Türk Psikoloji Dergisinin bibliyometrik profiline ilişkin makale.', 1014514, 3, '2021-01-08 19:31:33', 2, 3),
('Case Study and Case Records: towards a contemporary history of education', 'İngilizce', 2006, 'İngiltere', NULL, 10115114, 4, '2021-01-08 19:31:33', 3, 4),
('La familia como contexto de desarrollo infantil : dimensiones de análisis relevantes para la intervención educativa y social', 'İspanyolca', 2005, 'İspanya', NULL, NULL, 5, '2021-01-08 19:31:33', 4, 5),
('Social Media Usage:2005-2015 \r\n', 'İngilizce', 2015, 'Amerika', '2005-2015 yılları arası sosyal medya kullanımına ilişkin makale.', 10956733, 6, '2021-01-08 19:31:33', 5, 6),
('DOĞAL AFET YÖNETİMİ VE\r\nYEREL GÜNDEM 21 ÇALIŞMALARI KAPSAMINDA\r\nİZMİR’DE DEPREM RİSKİ', 'Türkçe', 2001, 'Türkiye', 'Doğal afet yönetimine ilişkin makale.', NULL, 7, '2021-01-08 19:31:33', 6, 7),
('Kadına yönelik aile içi şiddet ve kadınların aile içi şiddete bakışı', 'Türkçe', 2010, 'Türkiye', 'Kadına yönelik aile içi şiddetin araştırmasının yapıldığı makale.', 10435234, 8, '2021-01-08 19:31:33', 7, 8),
('An Attitude Survey of Animal Rights Activists', 'İngilizce', 1991, 'Amerika', NULL, NULL, 9, '2021-01-08 19:31:33', 8, 9),
('Türkiye\'de bulunan bazı kedi ırklarının D-Loop polimorfizminin araştırılması', 'Türkçe', 2010, 'Türkiye', 'Türkiye\'de ki kedi ırklarını göstern makale.', NULL, 10, '2021-01-08 19:31:33', 9, 10),
('Sanat felsefesi̇nde esteti̇k obje çözümlemesi̇ açısından ebru sanatı', 'Türkçe', 2014, 'Türkiye', 'Estetik obje çözümlemesine yönelik makale.', 10753344, 11, '2021-01-08 19:31:33', 10, 11),
('sosyal bilimler', 'türkçe', 1989, 'türkiye', NULL, 10977566, 14, '2021-01-08 22:33:40', 4, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazar`
--

CREATE TABLE `yazar` (
  `yazarno` int(11) NOT NULL COMMENT 'yazar numarası',
  `yazarkayitno` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'yazarın kayıt numarası',
  `yazaradi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'yazarın adı',
  `yazarsoyadi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'yazarın soyadı',
  `yazarURL` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'yazarın URL adresi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='yazarlar';

--
-- Tablo döküm verisi `yazar`
--

INSERT INTO `yazar` (`yazarno`, `yazarkayitno`, `yazaradi`, `yazarsoyadi`, `yazarURL`) VALUES
(1, '2021-01-08 19:30:14', 'Şeyda ', 'Çilden', 'https://avesis.gazi.edu.tr/cilden'),
(2, '2021-01-08 19:30:14', 'Umut ', 'Al', 'https://avesis.hacettepe.edu.tr/umutal'),
(3, '2021-01-08 19:30:14', 'Stenhouse', 'Lawrance', 'https://en.wikipedia.org/wiki/Lawrence_Stenhouse'),
(4, '2021-01-08 19:30:14', 'Alicia', 'Muñoz Silva', 'https://www.researchgate.net/profile/Alicia_Munoz-Silva'),
(5, '2021-01-08 19:30:14', 'Andrew', 'Perrin', 'http://perrin.socsci.unc.edu/'),
(6, '2021-01-08 19:30:14', 'Hikmet', 'Yavaş', 'https://avesis.comu.edu.tr/1290'),
(7, '2021-01-08 19:30:14', 'Şengül', 'Yaman Efe', 'https://gazi.academia.edu/%C5%9Feng%C3%BClyaman/'),
(8, '2021-01-08 19:30:14', 'scott', 'Plous', 'https://www.wesleyan.edu/academics/faculty/splous/profile.html'),
(9, '2021-01-08 19:30:14', 'Elif', 'Yılmaz', NULL),
(10, '2021-01-08 19:30:14', 'Osman', 'Mutluel', 'https://www.pau.edu.tr/ilahiyat/tr/sayfa/osman-mutluel'),
(16, '2021-01-10 16:23:56', 'Orçun ', 'Madran', 'www.madran.net');

-- --------------------------------------------------------

--
-- Görünüm yapısı `bestedoganay`
--
DROP TABLE IF EXISTS `bestedoganay`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bestedoganay`  AS SELECT `m`.`makaleAdi` AS `makaleAdi`, `y`.`yazaradi` AS `yazaradi`, `y`.`yazarsoyadi` AS `yazarsoyadi`, `d`.`dergiadi` AS `dergiadi` FROM ((`dergi` `d` join `makaleler` `m`) join `yazar` `y`) WHERE `m`.`MakaleNo` = `d`.`dergino` AND `m`.`MakaleNo` = `y`.`yazarno` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `library`
--
DROP TABLE IF EXISTS `library`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `library`  AS SELECT `m`.`makaleAdi` AS `makaleAdi`, `y`.`yazaradi` AS `yazaradi`, `y`.`yazarsoyadi` AS `yazarsoyadi`, `d`.`dergiadi` AS `dergiadi` FROM ((`dergi` `d` join `makaleler` `m`) join `yazar` `y`) WHERE `m`.`MakaleNo` = `d`.`dergino` AND `m`.`MakaleNo` = `y`.`yazarno` ;

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
  MODIFY `dergino` int(11) NOT NULL AUTO_INCREMENT COMMENT 'derginin numarası', AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `makaleler`
--
ALTER TABLE `makaleler`
  MODIFY `MakaleNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'makale numarası', AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `yazar`
--
ALTER TABLE `yazar`
  MODIFY `yazarno` int(11) NOT NULL AUTO_INCREMENT COMMENT 'yazar numarası', AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
