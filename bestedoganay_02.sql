-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 05, 2020 at 06:38 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bestedoganay`
--
CREATE DATABASE IF NOT EXISTS `bestedoganay` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `bestedoganay`;

-- --------------------------------------------------------

--
-- Stand-in structure for view `arama`
-- (See below for the actual view)
--
CREATE TABLE `arama` (
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `bestedoganay`
-- (See below for the actual view)
--
CREATE TABLE `bestedoganay` (
);

-- --------------------------------------------------------

--
-- Table structure for table `dergi`
--

CREATE TABLE `dergi` (
  `dergino` int(11) NOT NULL COMMENT 'derginin numarası',
  `dergiadi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'derginin adı',
  `dergiUlke` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'derginin ülkesi',
  `dergiURL` varchar(75) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='dergiler';

--
-- Dumping data for table `dergi`
--

INSERT INTO `dergi` (`dergino`, `dergiadi`, `dergiUlke`, `dergiURL`) VALUES
(1, 'G.Ü. Gazi Eğitim Fakültesi Dergisi', 'Türkiye', 'http://www.gefad.gazi.edu.tr/tr/'),
(3, 'Türk Kütüphaneciliği', 'Türkiye', 'http://www.tk.org.tr/index.php/TK'),
(4, 'British Educational Research Journal', 'İngiltere', 'https://bera-journals.onlinelibrary.wiley.com/journal/14693518'),
(5, 'Universidad de Huelva', 'İspanya', 'www.uhu.es\r\n'),
(6, 'NUMBERS, FACTS AND TRENDS SHAPING THE WORLD ', 'Amerika', 'https://www.loc.gov/item/lcwaN0002821/'),
(7, 'Dokuz Eylül Üniversitesi\r\nSosyal Bilimler Enstitüsü Dergisi', 'Türkiye', 'https://dergipark.org.tr/tr/pub/deusosbil'),
(8, 'Anadolu Psikiyatri Dergisi', 'Türkiye', 'https://www.anadolupsikiyatri.net'),
(9, 'Wesleyan University Publish', 'Amerika', 'https://www.wesleyan.edu/wespress/'),
(10, 'Selçuk Üniversitesi dergisi', 'Türkiye', 'http://dergisosyalbil.selcuk.edu.tr/susbed'),
(11, 'Akademi dergisi', 'Türkiye', 'https://dergipark.org.tr/tr/pub/kesitakademi');

-- --------------------------------------------------------

--
-- Stand-in structure for view `kutuphane`
-- (See below for the actual view)
--
CREATE TABLE `kutuphane` (
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `library`
-- (See below for the actual view)
--
CREATE TABLE `library` (
);

-- --------------------------------------------------------

--
-- Table structure for table `makaleler`
--

CREATE TABLE `makaleler` (
  `makaleAdi` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'makalenin adı',
  `makaleYazari` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'makalenin yazarı',
  `makaleDili` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'makalenin dili',
  `makaleTarih` year(4) NOT NULL COMMENT 'makale tarih',
  `makaleUlke` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'makalenin ülkesi',
  `makaleDoi` int(50) DEFAULT NULL COMMENT 'makale doi',
  `MakaleNo` int(11) NOT NULL COMMENT 'makale numarası'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `makaleler`
--

INSERT INTO `makaleler` (`makaleAdi`, `makaleYazari`, `makaleDili`, `makaleTarih`, `makaleUlke`, `makaleDoi`, `MakaleNo`) VALUES
('Müzik, Çocuk Gelişimi ve Öğrenme ', 'Şeyda ÇİLDEN', 'Türkçe', 2001, 'Türkiye', NULL, 1),
('Türk Psikoloji Dergisi’nin Bibliyometrik Profili', 'Umut Al', 'Türkçe', 2007, 'Türkiye', NULL, 3),
('Case Study and Case Records: towards a contemporary history of education', 'Lawrence Stenhouse', 'İngilizce', 2006, 'İngiltere', NULL, 4),
('La familia como contexto de desarrollo infantil : dimensiones de análisis relevantes para la intervención educativa y social', 'Alicia Muñoz Silva', 'İspanyolca', 2005, 'İspanya', NULL, 5),
('Social Media Usage:2005-2015 \r\n', 'Andrew Perrin', 'İngilizce', 2015, 'Amerika', NULL, 6),
('DOĞAL AFET YÖNETİMİ VE\r\nYEREL GÜNDEM 21 ÇALIŞMALARI KAPSAMINDA\r\nİZMİR’DE DEPREM RİSKİ', 'Hikmet YAVAŞ', 'Türkçe', 2001, 'Türkiye', NULL, 7),
('Kadına yönelik aile içi şiddet ve kadınların aile içi şiddete bakışı', 'Şengül YAMAN EFE', 'Türkçe', 2010, 'Türkiye', NULL, 8),
('An Attitude Survey of Animal Rights Activists', 'Scott Plous', 'İngilizce', 1991, 'Amerika', 14679280, 9),
('Türkiye\'de bulunan bazı kedi ırklarının D-Loop polimorfizminin araştırılması', 'Elif yılmaz', 'Türkçe', 2010, 'Türkiye', NULL, 10),
('Sanat felsefesi̇nde esteti̇k obje çözümlemesi̇ açısından ebru sanatı', 'Osman Mutluel', 'Türkçe', 2014, 'Türkiye', NULL, 11);

-- --------------------------------------------------------

--
-- Table structure for table `yazar`
--

CREATE TABLE `yazar` (
  `yazarno` int(11) NOT NULL COMMENT 'yazar numarası',
  `yazaradı` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'yazarın adı',
  `yazarsoyadı` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'yazarın soyadı'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='yazarlar';

--
-- Dumping data for table `yazar`
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
-- Structure for view `arama`
--
DROP TABLE IF EXISTS `arama`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `arama`  AS SELECT `makaleler`.`makaleAdı` AS `makaleAdı`, `makaleler`.`makaleYazarı` AS `makaleYazarı`, `makaleler`.`makaleDili` AS `makaleDili`, `makaleler`.`makaleTarih` AS `makaleTarih`, `makaleler`.`makaleUlke` AS `makaleUlke`, `makaleler`.`makaleDoi` AS `makaleDoi`, `makaleler`.`MakaleNo` AS `MakaleNo` FROM `makaleler` WHERE `makaleler`.`makaleTarih` > 2000 ;

-- --------------------------------------------------------

--
-- Structure for view `bestedoganay`
--
DROP TABLE IF EXISTS `bestedoganay`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bestedoganay`  AS SELECT `m`.`makaleAdı` AS `makaleAdı`, `y`.`yazaradı` AS `yazaradı`, `y`.`yazarsoyadı` AS `yazarsoyadı`, `d`.`dergiadı` AS `dergiadı` FROM ((`dergi` `d` join `makaleler` `m`) join `yazar` `y`) WHERE `m`.`MakaleNo` = `d`.`dergino` AND `m`.`MakaleNo` = `y`.`yazarno` ;

-- --------------------------------------------------------

--
-- Structure for view `kutuphane`
--
DROP TABLE IF EXISTS `kutuphane`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kutuphane`  AS SELECT `m`.`makaleAdı` AS `makaleAdı`, `y`.`yazaradı` AS `yazaradı`, `y`.`yazarsoyadı` AS `yazarsoyadı`, `d`.`dergiadı` AS `dergiadı` FROM ((`dergi` `d` join `makaleler` `m`) join `yazar` `y`) WHERE `m`.`MakaleNo` = `d`.`dergino` AND `m`.`MakaleNo` = `y`.`yazarno` ;

-- --------------------------------------------------------

--
-- Structure for view `library`
--
DROP TABLE IF EXISTS `library`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `library`  AS SELECT `m`.`makaleAdı` AS `makaleAdı`, `y`.`yazaradı` AS `yazaradı`, `y`.`yazarsoyadı` AS `yazarsoyadı`, `d`.`dergiadı` AS `dergiadı` FROM ((`dergi` `d` join `makaleler` `m`) join `yazar` `y`) WHERE `m`.`MakaleNo` = `d`.`dergino` AND `m`.`MakaleNo` = `y`.`yazarno` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dergi`
--
ALTER TABLE `dergi`
  ADD PRIMARY KEY (`dergino`);

--
-- Indexes for table `makaleler`
--
ALTER TABLE `makaleler`
  ADD PRIMARY KEY (`MakaleNo`);

--
-- Indexes for table `yazar`
--
ALTER TABLE `yazar`
  ADD PRIMARY KEY (`yazarno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dergi`
--
ALTER TABLE `dergi`
  MODIFY `dergino` int(11) NOT NULL AUTO_INCREMENT COMMENT 'derginin numarası', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `makaleler`
--
ALTER TABLE `makaleler`
  MODIFY `MakaleNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'makale numarası', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `yazar`
--
ALTER TABLE `yazar`
  MODIFY `yazarno` int(11) NOT NULL AUTO_INCREMENT COMMENT 'yazar numarası', AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
