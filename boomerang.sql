-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2021 at 07:10 AM
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
(1, '', 'About Us', 'About Us', '', '<p>Architecture viverra tristique justo duis vitae diam neque nivamus aestan ateuene artines aringianu atelit finibus viverra nec lacus. Nedana theme erodino setlie suscipe no curabit tristique.</p>\r\n\r\n<p>Design inilla duiman at elit finibus viverra nec a lacus themo the drudea seneoice misuscipit non sagie the fermen.</p>\r\n\r\n<p>Planner inilla duiman at elit finibus viverra nec a lacus themo the drudea seneoice misuscipit non sagie the fermen.</p>\r\n', '<p>Architecture viverra tristique justo duis vitae diam neque nivamus aestan ateuene artines aringianu atelit finibus viverra nec lacus. Nedana theme erodino setlie suscipe no curabit tristique.</p>\r\n\r\n<p>Design inilla duiman at elit finibus viverra nec a lacus themo the drudea seneoice misuscipit non sagie the fermen.</p>\r\n\r\n<p>Planner inilla duiman at elit finibus viverra nec a lacus themo the drudea seneoice misuscipit non sagie the fermen.</p>\r\n', '/uploads/images/statics/da64bba4ec-About-Us.jpg'),
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
(1, '', 'Unvan', 'Unvan', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13419.040333881774!2d-79.93218134282569!3d32.77209999120473!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88fe7a1ae84ff639%3A0xe5c782f71924a526!2s24%20King%20St%2C%20Charleston%2C%20SC%2029401%2C%20Amerika%20Birle%C5%9Fik%20Devletleri!5e0!3m2!1str!2str!4v1635894790855!5m2!1str!2str\" width=\"100%\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '+994 00000000', '+994 00 000 00 00 ', '+994 00 000 00 00 ', '+994 00 000 00 00 ', 'info@cortex.com.az');

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
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name_az`, `name_en`, `name_ru`, `slug`, `status`) VALUES
(1, '', 'Home', 'Home', '/', 1),
(2, '', 'About', 'About', 'about', 1),
(4, '', 'Services', 'Services', 'services', 1),
(5, '', 'Subjects', 'Subjects', 'subjects', 1),
(7, '', 'Contact', 'Contact', 'contact', 1);

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
(1, 'about', '', 'About', 'About', '', 'About', 'About', '', 'test_az,test', 'About', '/uploads/images/seo_settings/891feab4dabanner.jpg'),
(8, 'services', '', 'Services', 'Services', '', 'Services', 'Services', '', 'Services', 'Services', '/uploads/images/seo_settings/73d8940b63banner.jpg'),
(11, 'contact', '', 'Contact', 'Contact', '', 'Contact', 'Contact', '', 'Contact', 'Contact', '/uploads/images/seo_settings/ca806b4761bannersdsddssd.jpg'),
(12, 'subjects', '', 'Subjects', 'Subjects', '', 'Subjects', 'Subjects', '', 'Subjects', 'Subjects', '/uploads/images/seo_settings/0bbc11694dbanner.jpg');

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
(1, '', 'Cortex', 'Cortex', '', 'Burada sayt haqqinda qisa melumat olacaq. bu melumat saytda gorunmur google kimi axtarish sistemlerinde gorunur', 'Dubai Tour', '', 'test tag', 'Dubai Tour', 1, '/uploads/images/statics/2a7d3137de-Dubai-Tour.png', '/uploads/images/statics/da9ab4c4f3003.png');

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
(5, 'facebook', 'ti-facebook', 'https://www.facebook.com/test.az'),
(6, 'instagram', 'ti-instagram', 'https://www.instagram.com'),
(7, 'twitter', 'ti-twitter', '//twitter.com');

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
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
