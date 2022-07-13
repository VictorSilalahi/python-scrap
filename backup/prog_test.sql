-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2022 at 07:16 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prog_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `news_article`
--

CREATE TABLE `news_article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `article_ts` bigint(20) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `inserted` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_article`
--

INSERT INTO `news_article` (`id`, `title`, `url`, `content`, `summary`, `article_ts`, `publish_date`, `inserted`, `updated`) VALUES
(6, 'NORMALISASI EKONOMI AS | Pasar Redam Efek The Fed', 'https://koran.bisnis.com/read/20220617/244/1544714/normalisasi-ekonomi-as-pasar-redam-efek-the-fed', 'Di pasar komoditas, emas dan aset kripto yang selama ini berlawanan dengan pergerakan dolar AS justru menguat setelah pengumuman bank sentral paling berpengaruh di dunia itu. Emas, minyak mentah, hingga aset kripto sebelumnya terjerembap di zona bearish', 'Di pasar komoditas, emas dan aset kripto yang selama ini berlawanan dengan pergerakan dolar AS justru menguat setelah pengumuman bank sentral paling berpengaruh di dunia itu. Emas, minyak mentah, hingga aset kripto sebelumnya terjerembap di zona bearish', 1655398800, '2022-06-17', '2022-06-16 19:00:00', '2022-06-16 19:00:00'),
(7, 'PEMULIHAN EKONOMI | Mengulur Restrukturisasi Kredit', 'https://koran.bisnis.com/read/20220623/244/1546905/pemulihan-ekonomi-mengulur-restrukturisasi-kredit', 'Bisnis, JAKARTA — Keberlanjutan program restrukturisasi kredit perbankan bakal menjadi faktor krusial dalam menjaga momentum pemulihan dunia usaha.', 'Bisnis, JAKARTA — Keberlanjutan program restrukturisasi kredit perbankan bakal menjadi faktor krusial dalam menjaga momentum pemulihan dunia usaha.', 1655917200, '2022-06-23', '2022-06-22 19:00:00', '2022-06-22 19:00:00'),
(8, 'PENGAWASAN BPKP KUARTAL I/2022 | APBN Hemat Rp20 Triliun', 'https://koran.bisnis.com/read/20220622/433/1546339/pengawasan-bpkp-kuartal-i-2022-apbn-hemat-rp20-triliun', 'Bisnis, JAKARTA — Supervisi Badan Pengawas Keuangan dan Pembangunan (BPKP) dalam pengalokasian anggaran belanja mampu mendorong efisiensi pengeluaran negara hingga Rp20,05 triliun pada kuartal I/2022.\\n', 'Bisnis, JAKARTA — Supervisi Badan Pengawas Keuangan dan Pembangunan (BPKP) dalam pengalokasian anggaran belanja mampu mendorong efisiensi pengeluaran negara hingga Rp20,05 triliun pada kuartal I/2022.\\n', 1655830800, '2022-06-22', '2022-06-21 19:00:00', '2022-06-21 19:00:00'),
(9, 'NORMALISASI EKONOMI AS | Pasar Redam Efek The Fed', 'https://koran.bisnis.com/read/20220617/244/1544714/normalisasi-ekonomi-as-pasar-redam-efek-the-fed', 'Di pasar komoditas, emas dan aset kripto yang selama ini berlawanan dengan pergerakan dolar AS justru menguat setelah pengumuman bank sentral paling berpengaruh di dunia itu. Emas, minyak mentah, hingga aset kripto sebelumnya terjerembap di zona bearish', 'Di pasar komoditas, emas dan aset kripto yang selama ini berlawanan dengan pergerakan dolar AS justru menguat setelah pengumuman bank sentral paling berpengaruh di dunia itu. Emas, minyak mentah, hingga aset kripto sebelumnya terjerembap di zona bearish', 1655398800, '2022-06-17', '2022-06-16 19:00:00', '2022-06-16 19:00:00'),
(10, 'NORMALISASI EKONOMI AS | Pasar Redam Efek The Fed', 'https://koran.bisnis.com/read/20220617/244/1544714/normalisasi-ekonomi-as-pasar-redam-efek-the-fed', 'Di pasar komoditas, emas dan aset kripto yang selama ini berlawanan dengan pergerakan dolar AS justru menguat setelah pengumuman bank sentral paling berpengaruh di dunia itu. Emas, minyak mentah, hingga aset kripto sebelumnya terjerembap di zona bearish', 'Di pasar komoditas, emas dan aset kripto yang selama ini berlawanan dengan pergerakan dolar AS justru menguat setelah pengumuman bank sentral paling berpengaruh di dunia itu. Emas, minyak mentah, hingga aset kripto sebelumnya terjerembap di zona bearish', 1655398800, '2022-06-17', '2022-06-16 19:00:00', '2022-06-16 19:00:00'),
(11, 'PEMULIHAN EKONOMI | Mengulur Restrukturisasi Kredit', 'https://koran.bisnis.com/read/20220623/244/1546905/pemulihan-ekonomi-mengulur-restrukturisasi-kredit', 'Bisnis, JAKARTA — Keberlanjutan program restrukturisasi kredit perbankan bakal menjadi faktor krusial dalam menjaga momentum pemulihan dunia usaha.', 'Bisnis, JAKARTA — Keberlanjutan program restrukturisasi kredit perbankan bakal menjadi faktor krusial dalam menjaga momentum pemulihan dunia usaha.', 1655917200, '2022-06-23', '2022-06-22 19:00:00', '2022-06-22 19:00:00'),
(12, 'NORMALISASI EKONOMI AS | Pasar Redam Efek The Fed', 'https://koran.bisnis.com/read/20220617/244/1544714/normalisasi-ekonomi-as-pasar-redam-efek-the-fed', 'Di pasar komoditas, emas dan aset kripto yang selama ini berlawanan dengan pergerakan dolar AS justru menguat setelah pengumuman bank sentral paling berpengaruh di dunia itu. Emas, minyak mentah, hingga aset kripto sebelumnya terjerembap di zona bearish', 'Di pasar komoditas, emas dan aset kripto yang selama ini berlawanan dengan pergerakan dolar AS justru menguat setelah pengumuman bank sentral paling berpengaruh di dunia itu. Emas, minyak mentah, hingga aset kripto sebelumnya terjerembap di zona bearish', 1655398800, '2022-06-17', '2022-06-16 19:00:00', '2022-06-16 19:00:00'),
(13, 'PEMULIHAN EKONOMI | Mengulur Restrukturisasi Kredit', 'https://koran.bisnis.com/read/20220623/244/1546905/pemulihan-ekonomi-mengulur-restrukturisasi-kredit', 'Bisnis, JAKARTA — Keberlanjutan program restrukturisasi kredit perbankan bakal menjadi faktor krusial dalam menjaga momentum pemulihan dunia usaha.', 'Bisnis, JAKARTA — Keberlanjutan program restrukturisasi kredit perbankan bakal menjadi faktor krusial dalam menjaga momentum pemulihan dunia usaha.', 1655917200, '2022-06-23', '2022-06-22 19:00:00', '2022-06-22 19:00:00'),
(14, 'PENGAWASAN BPKP KUARTAL I/2022 | APBN Hemat Rp20 Triliun', 'https://koran.bisnis.com/read/20220622/433/1546339/pengawasan-bpkp-kuartal-i-2022-apbn-hemat-rp20-triliun', 'Bisnis, JAKARTA — Supervisi Badan Pengawas Keuangan dan Pembangunan (BPKP) dalam pengalokasian anggaran belanja mampu mendorong efisiensi pengeluaran negara hingga Rp20,05 triliun pada kuartal I/2022.\\n', 'Bisnis, JAKARTA — Supervisi Badan Pengawas Keuangan dan Pembangunan (BPKP) dalam pengalokasian anggaran belanja mampu mendorong efisiensi pengeluaran negara hingga Rp20,05 triliun pada kuartal I/2022.\\n', 1655830800, '2022-06-22', '2022-06-21 19:00:00', '2022-06-21 19:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news_article`
--
ALTER TABLE `news_article`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news_article`
--
ALTER TABLE `news_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
