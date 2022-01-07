-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2022 at 10:40 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boomerang`
--

-- --------------------------------------------------------

--
-- Table structure for table `info_site`
--

CREATE TABLE `info_site` (
  `id` int(11) NOT NULL,
  `icon_class` varchar(50) NOT NULL,
  `title_az` varchar(100) NOT NULL,
  `title_en` varchar(100) NOT NULL,
  `title_ru` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `count_side` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info_site`
--

INSERT INTO `info_site` (`id`, `icon_class`, `title_az`, `title_en`, `title_ru`, `count`, `count_side`) VALUES
(1, 'fas fa-users', 'Happy Customers', 'Happy Customers', 'Happy Customers', 35000, ''),
(2, 'far fa-calendar-check', 'Project Done', 'Project Done', 'Project Done', 541, '+'),
(3, 'fas fa-award', 'Awards Win', 'Awards Win', 'Awards Win', 40, '+'),
(4, 'fas fa-user', 'Client Works', 'Client Works', 'Client Works', 678, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info_site`
--
ALTER TABLE `info_site`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info_site`
--
ALTER TABLE `info_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
