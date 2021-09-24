-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2021 at 12:03 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moissejev_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `kta20v_languages`
--

CREATE TABLE `kta20v_languages` (
  `id` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `descr` text NOT NULL,
  `code` varchar(2) NOT NULL,
  `listOrder` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kta20v_languages`
--

INSERT INTO `kta20v_languages` (`id`, `title`, `descr`, `code`, `listOrder`) VALUES
(1, 'по-русски', 'Русский язык', 'ru', 2),
(2, 'in english', 'English language', 'en', 3),
(3, 'eesti keeles', 'Eesti keel', 'et', 1),
(4, 'Par Espaniol', 'En espaniol', 'es', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kta20v_languages`
--
ALTER TABLE `kta20v_languages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kta20v_languages`
--
ALTER TABLE `kta20v_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
