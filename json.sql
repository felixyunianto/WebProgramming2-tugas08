-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02 Des 2019 pada 13.10
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `json`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `drzchat`
--

CREATE TABLE `drzchat` (
  `nomor` int(3) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `pesan` varchar(200) NOT NULL,
  `waktu` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `drzchat`
--

INSERT INTO `drzchat` (`nomor`, `nama`, `pesan`, `waktu`) VALUES
(12, 'Admin', 'Reza bergabung dalam chat', '12:58'),
(13, 'Admin', 'Khibar bergabung dalam chat', '12:58'),
(14, 'Admin', 'Felix bergabung dalam chat', '12:59'),
(15, 'Felix', 'Besok ada tugas teman2 ?', '12:59'),
(16, 'Khibar', 'Sepertinya ada, mata kuliah Object oriented', '12:59'),
(17, 'Reza', 'Tugasnya apa yah kalau boleh tau, saya lupa hehe', '13:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(64) DEFAULT NULL,
  `message` text NOT NULL,
  `post_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drzchat`
--
ALTER TABLE `drzchat`
  ADD PRIMARY KEY (`nomor`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`post_time`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drzchat`
--
ALTER TABLE `drzchat`
  MODIFY `nomor` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
