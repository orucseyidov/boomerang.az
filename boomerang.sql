-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2022 at 12:00 PM
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
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title_az` varchar(500) NOT NULL,
  `title_en` varchar(500) NOT NULL,
  `title_ru` varchar(500) NOT NULL,
  `description_az` text NOT NULL,
  `description_en` text NOT NULL,
  `description_ru` text NOT NULL,
  `image` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title_az`, `title_en`, `title_ru`, `description_az`, `description_en`, `description_ru`, `image`) VALUES
(1, 'A Trendy Doors for Trendy Home', 'A Trendy Doors for Trendy Home', 'A Trendy Doors for Trendy Home', '<p>The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;</p>\r\n', '<p>The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;</p>\r\n', '<p>The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs.&nbsp;</p>\r\n', '/uploads/images/statics/f079f9deb4-A-Trendy-Doors-for-Trendy-Home.jpg'),
(2, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE `administration` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `administration`
--

INSERT INTO `administration` (`id`, `fullname`, `username`, `password`, `status`, `image`) VALUES
(1, 'Oruc Seyidov', 'orucseyidov', '138b24fc2e5028c15f78b887ac793614', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title_az` varchar(500) NOT NULL,
  `title_en` varchar(500) NOT NULL,
  `title_ru` varchar(500) NOT NULL,
  `description_az` text NOT NULL,
  `description_en` text NOT NULL,
  `description_ru` text NOT NULL,
  `tags_az` varchar(1500) NOT NULL,
  `tags_en` varchar(1500) NOT NULL,
  `tags_ru` varchar(1500) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date` date NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL,
  `slug` varchar(500) NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `image` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title_az`, `title_en`, `title_ru`, `description_az`, `description_en`, `description_ru`, `tags_az`, `tags_en`, `tags_ru`, `status`, `date`, `created_at`, `is_deleted`, `slug`, `view`, `image`) VALUES
(1, 'Mauris neque nisiibus non elementum', 'Mauris neque nisiibus non elementum', 'Mauris neque nisiibus non elementum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', '', 1, '2021-12-18', '2022-01-06 14:01:02', 0, 'blog1', 22, '/uploads/images/blog/0f7315cdd3blog4.jpg'),
(2, 'Quisque suscipit ipsum est, eu venenatis leo', 'Quisque suscipit ipsum est, eu venenatis leo', 'Quisque suscipit ipsum est, eu venenatis leo', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', '', 1, '2021-11-07', '2022-01-06 14:02:43', 0, 'blog2', 146, '/uploads/images/blog/3ffad4007bblog3.jpg'),
(3, 'Maecenas interdum lorem eleifend orci aliquam', 'Maecenas interdum lorem eleifend orci aliquam', 'Maecenas interdum lorem eleifend orci aliquam', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', '', 1, '2021-11-11', '2022-01-06 14:02:43', 0, 'blog3', 29, '/uploads/images/blog/03e7d962f2imgblog1.jpg'),
(4, 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', '', 1, '2021-12-03', '2022-01-06 14:03:51', 0, 'blog4', 50, '/uploads/images/blog/2bb90b8800blog2.jpg'),
(5, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', '', 1, '2021-12-26', '2022-01-06 14:03:51', 0, 'blog5', 107, '/uploads/images/blog/e9c9affc96blog1.jpg'),
(6, 'Mauris neque nisiibus non elementum', 'Mauris neque nisiibus non elementum', 'Mauris neque nisiibus non elementum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', '', 1, '2021-11-10', '2022-01-06 14:01:02', 0, 'blog6', 16, '/uploads/images/blog/6e218b8d3bimgblog1.jpg'),
(7, 'Quisque suscipit ipsum est, eu venenatis leo', 'Quisque suscipit ipsum est, eu venenatis leo', 'Quisque suscipit ipsum est, eu venenatis leo', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', '', 1, '2021-12-24', '2022-01-06 14:02:43', 0, 'blog7', 143, '/uploads/images/blog/4648fd759ablog4.jpg'),
(8, 'Maecenas interdum lorem eleifend orci aliquam', 'Maecenas interdum lorem eleifend orci aliquam', 'Maecenas interdum lorem eleifend orci aliquam', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', '', 1, '2022-01-02', '2022-01-06 14:02:43', 0, 'blog8', 23, '/uploads/images/blog/c140412b8ablog3.jpg'),
(9, 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', '', 1, '2022-01-05', '2022-01-06 14:03:51', 0, 'blog9', 48, '/uploads/images/blog/2a61df768fblog2.jpg'),
(10, 'Social media-driven trading frenzy for GameStop, AMC Entertainment sparks calls for scrutiny', 'Social media-driven trading frenzy for GameStop, AMC Entertainment sparks calls for scrutiny', 'Social media-driven trading frenzy for GameStop, AMC Entertainment sparks calls for scrutiny', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', '', 1, '2022-01-07', '2022-01-06 14:03:51', 0, 'social-media-driven-trading-frenzy', 94, '/uploads/images/blog/e9c9affc96blog1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `title_az` varchar(500) NOT NULL,
  `title_en` varchar(500) NOT NULL,
  `title_ru` varchar(500) NOT NULL,
  `description_az` text NOT NULL,
  `description_en` text NOT NULL,
  `description_ru` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `slug` varchar(500) NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contactform`
--

CREATE TABLE `contactform` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactform`
--

INSERT INTO `contactform` (`id`, `fullname`, `email`, `message`, `date`, `status`) VALUES
(1, 'zzxczxc', 'seyidovoruc@gmailcom', 'sadad', '2020-03-27 01:38:32', 1),
(2, 'Oruc Seyidov', 'seyidovoruc@gmail.com', 'dasdasd', '2020-06-30 00:57:40', 0),
(3, 'Oruc Seyidov', 'seyidovoruc@gmail.com', 'dasdasd', '2020-06-30 00:57:50', 0),
(4, 'Oruc Seyidov', 'seyidovoruc@gmail.com', 'dasdasd', '2020-06-30 00:58:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `adress_az` varchar(500) NOT NULL,
  `adress_en` varchar(500) NOT NULL,
  `adress_ru` varchar(500) NOT NULL,
  `map` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `adress_az`, `adress_en`, `adress_ru`, `map`, `phone`, `mobile`, `whatsapp`, `fax`, `mail`) VALUES
(1, 'PSD Building, 2 AlBahr St, Loskia sripur, jamukara.', 'PSD Building, 2 AlBahr St, Loskia sripur, jamukara.', 'PSD Building, 2 AlBahr St, Loskia sripur, jamukara.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13419.040333881774!2d-79.93218134282569!3d32.77209999120473!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88fe7a1ae84ff639%3A0xe5c782f71924a526!2s24%20King%20St%2C%20Charleston%2C%20SC%2029401%2C%20Amerika%20Birle%C5%9Fik%20Devletleri!5e0!3m2!1str!2str!4v1635894790855!5m2!1str!2str\" width=\"100%\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '+994 00000000', '+994 00 000 00 00 ', '+994 00 000 00 00 ', '+994 00 000 00 00 ', 'info@boomerang.com.az');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `keyword` varchar(500) NOT NULL,
  `title_az` varchar(500) NOT NULL,
  `title_en` varchar(500) NOT NULL,
  `title_ru` varchar(500) NOT NULL,
  `value_az` text NOT NULL,
  `value_en` text NOT NULL,
  `value_ru` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `keyword`, `title_az`, `title_en`, `title_ru`, `value_az`, `value_en`, `value_ru`) VALUES
(1, 'services_home', 'Services for You', 'Services for You', 'Services for You', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd</p>\r\n', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd</p>\r\n', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd</p>\r\n'),
(2, 'blog_home', 'Our Insights & Articles', 'Our Insights & Articles', 'Our Insights & Articles', '<p>Our Insights &amp; Articles</p>\r\n', '<p>Our Insights &amp; Articles</p>\r\n', '<p>Our Insights &amp; Articles</p>\r\n'),
(3, 'client_home', 'What our clients say', 'What our clients say', 'What our clients say', '<p>What our clients say</p>\r\n', '<p>What our clients say</p>\r\n', '<p>What our clients say</p>\r\n'),
(4, 'contact_home', 'Do You Have Any Questions? We’ll Be Happy To Assist!', 'Do You Have Any Questions? We’ll Be Happy To Assist!', 'Do You Have Any Questions? We’ll Be Happy To Assist!', '<p>Do You Have Any Questions? We&rsquo;ll Be Happy To Assist!</p>\r\n', '<p>Do You Have Any Questions? We&rsquo;ll Be Happy To Assist!</p>\r\n', '<p>Do You Have Any Questions? We&rsquo;ll Be Happy To Assist!</p>\r\n'),
(5, 'phone_word', ' Our Phone', ' Our Phone', ' Our Phone', '<p>Our Phone</p>\r\n', '<p>Our Phone</p>\r\n', '<p>Our Phone</p>\r\n'),
(7, 'mail_word', 'Our Email', 'Our Email', 'Our Email', '<p>Our Email</p>\r\n', '<p>Our Email</p>\r\n', '<p>Our Email</p>\r\n'),
(8, 'address_word', 'Our Address', 'Our Address', 'Our Address', '<p>Our Address</p>\r\n', '<p>Our Address</p>\r\n', '<p>Our Address</p>\r\n'),
(9, 'send_msg_contact', 'Write Us a Message', 'Write Us a Message', 'Write Us a Message', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo</p>\r\n', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo</p>\r\n', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo</p>\r\n'),
(11, 'portfolio_home', 'Case Study', 'Case Study', 'Case Study', '<p>Case Study</p>\r\n', '<p>Case Study</p>\r\n', '<p>Case Study</p>\r\n'),
(12, 'footer_title', 'Useful Links', 'Useful Links', 'Useful Links', '<p>Useful&nbsp;Links</p>\r\n', '<p>Useful&nbsp;Links</p>\r\n', '<p>Useful&nbsp;Links</p>\r\n'),
(13, 'contact_word', 'Contact', 'Contact', 'Contact', '<p>Call Us</p>\r\n', '<p>Call Us</p>\r\n', '<p>Call Us</p>\r\n'),
(14, 'readmore', 'READ MORE', 'READ MORE', 'READ MORE', '<p>READ MORE</p>\r\n', '<p>READ MORE</p>\r\n', '<p>READ MORE</p>\r\n'),
(15, 'blog_sidebar', 'Son Yazılar', 'Recent News', 'Recent News', '<p>Son Yazılar&nbsp;</p>\r\n', '<p>Recent News</p>\r\n', '<p>Recent News</p>\r\n'),
(16, 'projects_word', 'Layihələr', 'Projects', 'Projects', '<p>Layihələr</p>\r\n', '<p>Projects</p>\r\n', '<p>Projects</p>\r\n'),
(17, 'services_word', 'Xidmətlər', 'Xidmətlər', 'Xidmətlər', '<p>Xidmətlər</p>\r\n', '<p>Xidmətlər</p>\r\n', '<p>Xidmətlər</p>\r\n'),
(18, 'search_word', 'Search', 'Search', 'Search', '<p>Search here</p>\r\n', '<p>Search here</p>\r\n', '<p>Search here</p>\r\n'),
(19, 'service_details_word', 'Service Details', 'Service Details', 'Service Details', '<p>Service&nbsp;Details</p>\r\n', '<p>Service&nbsp;Details</p>\r\n', '<p>Service&nbsp;Details</p>\r\n'),
(20, 'home_word', 'Home', 'Home', 'Home', '<p>Home</p>\r\n', '<p>Home</p>\r\n', '<p>Home</p>\r\n'),
(22, 'full_name', 'Full Name', 'Full Name', 'Full Name', '<p>Full&nbsp;Name</p>\r\n', '<p>Full&nbsp;Name</p>\r\n', '<p>Full&nbsp;Name</p>\r\n'),
(23, 'phone_number', 'Phone Number', 'Phone Number', 'Phone Number', '<p>Phone&nbsp;Number</p>\r\n', '<p>Phone&nbsp;Number</p>\r\n', '<p>Phone&nbsp;Number</p>\r\n'),
(24, 'email_address', 'Email Address', 'Email Address', 'Email Address', '<p>Email&nbsp;Address</p>\r\n', '<p>Email&nbsp;Address</p>\r\n', '<p>Email&nbsp;Address</p>\r\n'),
(25, 'your_message', 'Your Message', 'Your Message', 'Your Message', '<p>Your&nbsp;Message</p>\r\n', '<p>Your&nbsp;Message</p>\r\n', '<p>Your&nbsp;Message</p>\r\n'),
(26, 'send_msg', 'Send message', 'Send message', 'Send message', '<p>Send&nbsp;message</p>\r\n', '<p>Send&nbsp;message</p>\r\n', '<p>Send&nbsp;message</p>\r\n'),
(27, 'choose_services', 'Choose services', 'Choose services', 'Choose services', '<p>Choose&nbsp;services</p>\r\n', '<p>Choose services</p>\r\n', '<p>Choose services</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(2000) NOT NULL,
  `parent` int(11) NOT NULL,
  `section` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`, `parent`, `section`) VALUES
(6, '/uploads/gallery/products/97c72d3d37-Img-hover4jpg.jpg', 2, 'products'),
(7, '/uploads/gallery/products/b5e3be7c91-Img7jpg.jpg', 2, 'products'),
(8, '/uploads/gallery/products/cdc64d3e1a-Img4jpg.jpg', 2, 'products'),
(9, '/uploads/gallery/products/c439fcc221-Img3jpg.jpg', 2, 'products'),
(11, '/uploads/gallery/products/3d6721850e-Img4jpg.jpg', 3, 'products'),
(12, '/uploads/gallery/products/04701db044-Img3jpg.jpg', 3, 'products'),
(13, '/uploads/gallery/products/4a7875c74e-Img-hover3jpg.jpg', 3, 'products'),
(14, '/uploads/gallery/products/77eddd1015-Img-hover4jpg.jpg', 3, 'products'),
(15, '/uploads/gallery/products/a8dd8422df-Img7jpg.jpg', 3, 'products'),
(16, '/uploads/gallery/products/ca663a1190-Product8jpg.jpg', 12, 'products'),
(17, '/uploads/gallery/products/88b45bd13f-Product3jpg.jpg', 12, 'products'),
(18, '/uploads/gallery/products/7b68e69eb6-Product7jpg.jpg', 12, 'products'),
(19, '/uploads/gallery/products/db817d04c9-Thsirt1-1jpg.jpg', 12, 'products');

-- --------------------------------------------------------

--
-- Table structure for table `info_msg`
--

CREATE TABLE `info_msg` (
  `id` int(11) NOT NULL,
  `title` varchar(1500) NOT NULL,
  `description` text NOT NULL,
  `keyword` varchar(1500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `keyword` varchar(1000) NOT NULL,
  `value_az` varchar(1000) NOT NULL,
  `value_en` varchar(1000) NOT NULL,
  `value_ru` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name_az` varchar(100) NOT NULL,
  `name_en` varchar(100) NOT NULL,
  `name_ru` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name_az`, `name_en`, `name_ru`, `slug`, `status`, `rank`) VALUES
(1, 'Ana Səhifə', 'Home', 'Home', '', 1, 0),
(2, 'Haqqımızda', 'About', 'About', 'about', 1, 1),
(4, 'Xidmətlər', 'Services', 'Services', 'services', 1, 2),
(5, 'Layihələr', 'Projects', 'Projects', 'projects', 1, 3),
(7, 'Əlaqə', 'Contact', 'Contact', 'contact', 1, 6),
(8, 'Blog', 'Blog', 'Blog', 'blog', 1, 5),
(9, 'Məhsullar', 'Məhsullar', 'Məhsullar', 'products', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `mail`, `date`) VALUES
(1, 'test@asas.as', '2020-06-30 00:51:13');

-- --------------------------------------------------------

--
-- Table structure for table `opinions`
--

CREATE TABLE `opinions` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `opinion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `opinions`
--

INSERT INTO `opinions` (`id`, `username`, `image`, `opinion`) VALUES
(1, 'Jeniffer', '/assets/images/Secsion/imgtestimonio3.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at est id leo luctus gravida a in ipsum.'),
(2, 'Raven', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at est id leo luctus gravida a in ipsum.');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title_az` varchar(500) NOT NULL,
  `title_en` varchar(500) NOT NULL,
  `title_ru` varchar(500) NOT NULL,
  `description_az` text NOT NULL,
  `description_en` text NOT NULL,
  `description_ru` text NOT NULL,
  `keywords_az` varchar(1500) NOT NULL,
  `keywords_en` varchar(1500) NOT NULL,
  `keywords_ru` varchar(1500) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `slug` varchar(500) NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `image` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title_az`, `title_en`, `title_ru`, `description_az`, `description_en`, `description_ru`, `keywords_az`, `keywords_en`, `keywords_ru`, `date`, `status`, `is_deleted`, `created_at`, `slug`, `view`, `image`) VALUES
(1, 'title_az1', 'title_en1', 'title_ru1', 'desc_az1', 'desc_en1', 'desc_ru1', '', '', '', '2022-01-10', 1, 0, '2022-01-10 05:58:26', 'project1', 0, '/uploads/images/projects/1c26abc708-LayihE-adi-1-yeni-layihE-1-1-test-en.jpg'),
(2, 'Layihə adi 1 yeni layihə 1-1 test', 'Layihə adi 1 yeni layihə 1-1 test en', 'Layihə adi 1 yeni layihə 1-1 test ru', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', '', '', '', '2022-01-10', 1, 0, '2022-01-10 10:40:06', 'slug1', 0, '/uploads/images/projects/1c26abc708-LayihE-adi-1-yeni-layihE-1-1-test-en.jpg'),
(6, 'Layihə adi 2 yeni layihə 1-1 test', 'Layihə adi 2 yeni layihə 1-1 test en', 'Layihə adi 2 yeni layihə 1-1 test ru', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', '', '', '', '2022-01-10', 1, 0, '2022-01-10 10:40:06', 'slug2', 0, '/uploads/images/projects/1c26abc708-LayihE-adi-1-yeni-layihE-1-1-test-en.jpg'),
(7, 'Layihə adi 3 yeni layihə 1-1 test', 'Layihə adi 3 yeni layihə 1-1 test en', 'Layihə adi 3 yeni layihə 1-1 test ru', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', '', '', '', '2022-01-10', 1, 0, '2022-01-10 10:40:06', 'slug3', 0, '/uploads/images/projects/1c26abc708-LayihE-adi-1-yeni-layihE-1-1-test-en.jpg'),
(8, 'Layihə adi 4 yeni layihə 1-1 test', 'Layihə adi 4 yeni layihə 1-1 test en', 'Layihə adi 4 yeni layihə 1-1 test ru', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', '', '', '', '2022-01-10', 1, 0, '2022-01-10 10:40:06', 'slug4', 0, '/uploads/images/projects/1c26abc708-LayihE-adi-1-yeni-layihE-1-1-test-en.jpg'),
(9, 'Layihə adi 5 yeni layihə 1-1 test', 'Layihə adi 5 yeni layihə 1-1 test en', 'Layihə adi 5 yeni layihə 1-1 test ru', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', '', '', '', '2022-01-10', 1, 0, '2022-01-10 10:40:06', 'slug5', 0, '/uploads/images/projects/1c26abc708-LayihE-adi-1-yeni-layihE-1-1-test-en.jpg'),
(10, 'Layihə adi 6 yeni layihə 1-1 test', 'Layihə adi 6 yeni layihə 1-1 test en', 'Layihə adi 6 yeni layihə 1-1 test ru', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', '', '', '', '2022-01-10', 1, 0, '2022-01-10 10:40:06', 'slug6', 0, '/uploads/images/projects/1c26abc708-LayihE-adi-1-yeni-layihE-1-1-test-en.jpg'),
(11, 'Layihə adi 7 yeni layihə 1-1 test', 'Layihə adi 7 yeni layihə 1-1 test en', 'Layihə adi 7 yeni layihə 1-1 test ru', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', '', '', '', '2022-01-10', 1, 0, '2022-01-10 10:40:06', 'slug7', 0, '/uploads/images/projects/1c26abc708-LayihE-adi-1-yeni-layihE-1-1-test-en.jpg'),
(12, 'Layihə adi 8 yeni layihə 1-1 test', 'Layihə adi 8 yeni layihə 1-1 test en', 'Layihə adi 8 yeni layihə 1-1 test ru', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', '', '', '', '2022-01-10', 1, 0, '2022-01-10 10:40:06', 'slug8', 0, '/uploads/images/projects/1c26abc708-LayihE-adi-1-yeni-layihE-1-1-test-en.jpg'),
(13, 'Layihə adi 9 yeni layihə 1-1 test', 'Layihə adi 9 yeni layihə 1-1 test en', 'Layihə adi 9 yeni layihə 1-1 test ru', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', '', '', '', '2022-01-10', 1, 0, '2022-01-10 10:40:06', 'slug9', 0, '/uploads/images/projects/1c26abc708-LayihE-adi-1-yeni-layihE-1-1-test-en.jpg'),
(14, 'Layihə adi 10 yeni layihə 1-1 test', 'Layihə adi 10 yeni layihə 1-1 test en', 'Layihə adi 10 yeni layihə 1-1 test ru', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', 'Information Of Project\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna', '', '', '', '2022-01-10', 1, 0, '2022-01-10 10:40:06', 'slug10', 0, '/uploads/images/projects/1c26abc708-LayihE-adi-1-yeni-layihE-1-1-test-en.jpg'),
(15, 'Layihə adi 11 yeni layihə 1-1 test', 'Layihə adi 11 yeni layihə 1-1 test en', 'Layihə adi 11 yeni layihə 1-1 test ru', '<p>Information Of Project Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna</p>\r\n', '<p>Information Of Project Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna</p>\r\n', '<p>Information Of Project Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna</p>\r\n', 'project1', 'project1', 'project1', '2022-01-10', 1, 0, '2022-01-10 10:40:06', 'slug11-61dc0e0dee64b', 0, '/uploads/images/projects/1c26abc708-LayihE-adi-1-yeni-layihE-1-1-test-en.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `qalereya`
--

CREATE TABLE `qalereya` (
  `id` int(11) NOT NULL,
  `title_az` varchar(500) NOT NULL,
  `title_en` varchar(500) NOT NULL,
  `title_ru` varchar(500) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qalereya`
--

INSERT INTO `qalereya` (`id`, `title_az`, `title_en`, `title_ru`, `status`, `image`) VALUES
(0, '', 'asdasd', 'asdasd', 1, '/uploads/images/qalereya/893d0123db-Asdasd.jpg'),
(0, '', 'asdasdasdas', 'asdasdasd', 1, '/uploads/images/qalereya/266c87662c-Asdasdasdas.jpg'),
(0, '', 'asdasd', 'asdasd', 1, '/uploads/images/qalereya/893d0123db-Asdasd.jpg'),
(0, '', 'asdasdasdas', 'asdasdasd', 1, '/uploads/images/qalereya/266c87662c-Asdasdasdas.jpg'),
(0, '', 'asdasd', 'asdasd', 1, '/uploads/images/qalereya/893d0123db-Asdasd.jpg'),
(0, '', 'asdasdasdas', 'asdasdasd', 1, '/uploads/images/qalereya/266c87662c-Asdasdasdas.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` int(11) NOT NULL,
  `page` varchar(255) NOT NULL,
  `title_az` varchar(500) NOT NULL,
  `title_en` varchar(500) NOT NULL,
  `title_ru` varchar(500) NOT NULL,
  `description_az` varchar(1500) NOT NULL,
  `description_en` varchar(1500) NOT NULL,
  `description_ru` varchar(1500) NOT NULL,
  `keywords_az` varchar(1500) NOT NULL,
  `keywords_en` varchar(1000) NOT NULL,
  `keywords_ru` varchar(1500) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `page`, `title_az`, `title_en`, `title_ru`, `description_az`, `description_en`, `description_ru`, `keywords_az`, `keywords_en`, `keywords_ru`, `image`) VALUES
(1, 'about', 'Haqqımızda', 'About', 'About', 'Haqqımızda', 'About', 'About', 'Haqqımızda', 'About', 'About', '/uploads/images/seo_settings/f20e31b3aeimgheader.jpg'),
(11, 'contact', 'Əlaqə', 'Contact', 'Contact', 'Əlaqə', 'Contact', 'Contact', 'Əlaqə', 'Contact', 'Contact', '/uploads/images/seo_settings/ca806b4761bannersdsddssd.jpg/uploads/images/seo_settings/f20e31b3aeimgheader.jpg'),
(12, 'projects', 'Layihələr', 'Projects', 'Projects', 'Layihələr', 'Projects', 'Projects', 'Layihələr', 'Projects', 'Projects', '/uploads/images/seo_settings/f20e31b3aeimgheader.jpg'),
(13, 'products', 'Məhsullar', 'Products', 'Products', 'Məhsullar', 'Products', 'Products', 'Məhsullar', 'Products', 'Products', '/uploads/images/seo_settings/f20e31b3aeimgheader.jpg'),
(14, 'services', 'Xidmətlər', 'Services', 'Services', 'Xidmətlər', 'Services', 'Services', 'Xidmətlər', 'Services', 'Services', '/uploads/images/seo_settings/f20e31b3aeimgheader.jpg'),
(15, 'blog', 'Bloq', 'Blog', 'Blog', 'Bloq', 'Blog', 'Blog', 'Bloq', 'Blog', 'Blog', '/uploads/images/seo_settings/f20e31b3aeimgheader.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title_az` varchar(500) NOT NULL,
  `title_en` varchar(500) NOT NULL,
  `title_ru` varchar(500) NOT NULL,
  `description_az` text NOT NULL,
  `description_en` text NOT NULL,
  `description_ru` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(500) NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(1000) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title_az`, `title_en`, `title_ru`, `description_az`, `description_en`, `description_ru`, `created_at`, `is_deleted`, `status`, `slug`, `view`, `icon`, `image`) VALUES
(1, 'WINDOWS SERVICES', 'WINDOWS SERVICES', 'WINDOWS SERVICES', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore', '2022-01-07 11:48:00', 0, 1, 'windows-services', 0, '/uploads/images/services/e3f1c480a4-WINDOWS-SERVICES.png', '/uploads/images/services/d7f434eff4-WINDOWS-SERVICES.jpg'),
(2, 'DOORS SERVICES', 'DOORS SERVICES', 'DOORS SERVICES', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore', '2022-01-07 11:49:20', 0, 1, 'doors-services', 0, '/uploads/images/services/8595e939aa-DOORS-SERVICES.png', '/uploads/images/services/418150cf00-DOORS-SERVICES.jpg'),
(3, 'PLANNING & PROJECTS', 'PLANNING & PROJECTS', 'PLANNING & PROJECTS', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore', '2022-01-07 11:50:24', 0, 1, 'planning-and-projects', 0, '/uploads/images/services/047e8ed1ad-PLANNING-PROJECTS.png', '/uploads/images/services/e078d42726-PLANNING-PROJECTS.jpg'),
(4, 'REPLACE ACCESSORIES', 'REPLACE ACCESSORIES', 'REPLACE ACCESSORIES', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore', '2022-01-07 11:52:18', 0, 1, 'replace-accessories', 0, '/uploads/images/services/fa0189df5b-REPLACE-ACCESSORIES.png', '/uploads/images/services/a8f4592c37-REPLACE-ACCESSORIES.jpg'),
(5, 'DOOR MAINTENANCE REPAIR', 'DOOR MAINTENANCE REPAIR', 'DOOR MAINTENANCE REPAIR', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore', '2022-01-07 11:53:41', 0, 1, 'door-maintenance-repair', 0, '/uploads/images/services/0fb743d764-DOOR-MAINTENANCE-REPAIR.png', '/uploads/images/services/99e558d8d1-DOOR-MAINTENANCE-REPAIR.jpg'),
(6, 'SELLING DOOR ACCESSORIES', 'SELLING DOOR ACCESSORIES', 'SELLING DOOR ACCESSORIES', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;</p>\r\n', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;</p>\r\n', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore&nbsp;</p>\r\n', '2022-01-07 11:55:14', 0, 1, 'selling-door-accessories', 0, '/uploads/images/services/bb490967a8-SELLING-DOOR-ACCESSORIES.png', '/uploads/images/services/20ebb895ae-SELLING-DOOR-ACCESSORIES.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_title_az` varchar(500) NOT NULL,
  `site_title_en` varchar(500) NOT NULL,
  `site_title_ru` varchar(500) NOT NULL,
  `description_az` text NOT NULL,
  `description_en` text NOT NULL,
  `description_ru` text NOT NULL,
  `tags_az` varchar(1500) NOT NULL,
  `tags_en` varchar(1500) NOT NULL,
  `tags_ru` varchar(1500) NOT NULL,
  `site_status` tinyint(1) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `favicon` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_title_az`, `site_title_en`, `site_title_ru`, `description_az`, `description_en`, `description_ru`, `tags_az`, `tags_en`, `tags_ru`, `site_status`, `image`, `favicon`) VALUES
(1, 'Boomerang', 'Boomerang', 'Boomerang', 'Burada sayt haqqinda qisa melumat olacaq. bu melumat saytda gorunmur google kimi axtarish sistemlerinde gorunur', 'Burada sayt haqqinda qisa melumat olacaq. bu melumat saytda gorunmur google kimi axtarish sistemlerinde gorunur', 'Burada sayt haqqinda qisa melumat olacaq. bu melumat saytda gorunmur google kimi axtarish sistemlerinde gorunur', 'keyword', 'keyword', 'keyword', 1, '/uploads/images/statics/2a7d3137de-Dubai-Tour.png', '/uploads/images/statics/da9ab4c4f3003.png');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `title_az` varchar(1500) NOT NULL,
  `title_en` varchar(1500) NOT NULL,
  `title_ru` varchar(1500) NOT NULL,
  `description_az` varchar(2000) NOT NULL,
  `description_en` varchar(2000) NOT NULL,
  `description_ru` varchar(2000) NOT NULL,
  `link` varchar(1500) NOT NULL,
  `link_status` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `rank` int(11) NOT NULL,
  `image` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title_az`, `title_en`, `title_ru`, `description_az`, `description_en`, `description_ru`, `link`, `link_status`, `status`, `rank`, `image`) VALUES
(1, '', 'Best solutions for your business', 'Best solutions for your business', '', ' is simply dummy text of the printing and typesetting industry.', ' is simply dummy text of the printing and typesetting industry.', '', 1, 1, 0, '/uploads/images/slider/70f3033364-Best-solutions-for-your-business.png'),
(2, '', 'The successful business', 'The successful business', '', ' is simply dummy text of the printing and typesetting industry.', ' is simply dummy text of the printing and typesetting industry.', '', 1, 1, 0, '/uploads/images/slider/c711c40b37-The-successful-business.png');

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `link` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`id`, `name`, `icon`, `link`) VALUES
(5, 'facebook', 'fab fa-facebook-f', 'https://www.facebook.com/test.az'),
(6, 'instagram', 'fab fa-instagram', 'https://www.instagram.com'),
(7, 'twitter', 'fab fa-twitter', '//twitter.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `administration`
--
ALTER TABLE `administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactform`
--
ALTER TABLE `contactform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_msg`
--
ALTER TABLE `info_msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_site`
--
ALTER TABLE `info_site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opinions`
--
ALTER TABLE `opinions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `administration`
--
ALTER TABLE `administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contactform`
--
ALTER TABLE `contactform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `info_msg`
--
ALTER TABLE `info_msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info_site`
--
ALTER TABLE `info_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `opinions`
--
ALTER TABLE `opinions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
