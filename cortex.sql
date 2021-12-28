-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Hazırlanma Vaxtı: 23 Noy, 2021 saat 12:52
-- Server versiyası: 5.6.47
-- PHP Versiyası: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Verilənlər Bazası: `cortex`
--

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title_en` varchar(500) NOT NULL,
  `title_ru` varchar(500) NOT NULL,
  `description_en` text NOT NULL,
  `description_ru` text NOT NULL,
  `image` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sxemi çıxarılan cedvel `about`
--

INSERT INTO `about` (`id`, `title_en`, `title_ru`, `description_en`, `description_ru`, `image`) VALUES
(1, 'About Us', 'About Us', '<p>Architecture viverra tristique justo duis vitae diam neque nivamus aestan ateuene artines aringianu atelit finibus viverra nec lacus. Nedana theme erodino setlie suscipe no curabit tristique.</p>\r\n\r\n<p>Design inilla duiman at elit finibus viverra nec a lacus themo the drudea seneoice misuscipit non sagie the fermen.</p>\r\n\r\n<p>Planner inilla duiman at elit finibus viverra nec a lacus themo the drudea seneoice misuscipit non sagie the fermen.</p>\r\n', '<p>Architecture viverra tristique justo duis vitae diam neque nivamus aestan ateuene artines aringianu atelit finibus viverra nec lacus. Nedana theme erodino setlie suscipe no curabit tristique.</p>\r\n\r\n<p>Design inilla duiman at elit finibus viverra nec a lacus themo the drudea seneoice misuscipit non sagie the fermen.</p>\r\n\r\n<p>Planner inilla duiman at elit finibus viverra nec a lacus themo the drudea seneoice misuscipit non sagie the fermen.</p>\r\n', '/uploads/images/statics/da64bba4ec-About-Us.jpg'),
(2, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `administration`
--

CREATE TABLE `administration` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sxemi çıxarılan cedvel `administration`
--

INSERT INTO `administration` (`id`, `fullname`, `username`, `password`, `status`, `image`) VALUES
(1, 'Oruc Seyidov', 'orucseyidov', '138b24fc2e5028c15f78b887ac793614', 1, '');

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `contactform`
--

CREATE TABLE `contactform` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sxemi çıxarılan cedvel `contactform`
--

INSERT INTO `contactform` (`id`, `fullname`, `email`, `message`, `date`, `status`) VALUES
(1, 'zzxczxc', 'seyidovoruc@gmailcom', 'sadad', '2020-03-27 01:38:32', 1),
(2, 'Oruc Seyidov', 'seyidovoruc@gmail.com', 'dasdasd', '2020-06-30 00:57:40', 0),
(3, 'Oruc Seyidov', 'seyidovoruc@gmail.com', 'dasdasd', '2020-06-30 00:57:50', 0),
(4, 'Oruc Seyidov', 'seyidovoruc@gmail.com', 'dasdasd', '2020-06-30 00:58:20', 0);

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
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
-- Sxemi çıxarılan cedvel `contacts`
--

INSERT INTO `contacts` (`id`, `adress_en`, `adress_ru`, `map`, `phone`, `mobile`, `whatsapp`, `fax`, `mail`) VALUES
(1, 'Unvan', 'Unvan', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13419.040333881774!2d-79.93218134282569!3d32.77209999120473!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88fe7a1ae84ff639%3A0xe5c782f71924a526!2s24%20King%20St%2C%20Charleston%2C%20SC%2029401%2C%20Amerika%20Birle%C5%9Fik%20Devletleri!5e0!3m2!1str!2str!4v1635894790855!5m2!1str!2str\" width=\"100%\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '+994 00000000', '+994 00 000 00 00 ', '+994 00 000 00 00 ', '+994 00 000 00 00 ', 'info@cortex.com.az');

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `keyword` varchar(500) NOT NULL,
  `title_en` varchar(500) NOT NULL,
  `title_ru` varchar(500) NOT NULL,
  `value_en` text NOT NULL,
  `value_ru` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sxemi çıxarılan cedvel `content`
--

INSERT INTO `content` (`id`, `keyword`, `title_en`, `title_ru`, `value_en`, `value_ru`) VALUES
(1, 'tours_home', 'POPULAR PACKAGES', 'POPULAR PACKAGES', '<p>Mollit voluptatem perspiciatis convallis elementum corporis quo veritatis aliquid blandit, blandit torquent, odit placeat. Adipiscing repudiandae eius cursus? Nostrum magnis maxime curae placeat.</p>\r\n', '<p>Mollit voluptatem perspiciatis convallis elementum corporis quo veritatis aliquid blandit, blandit torquent, odit placeat. Adipiscing repudiandae eius cursus? Nostrum magnis maxime curae placeat.</p>\r\n'),
(2, 'home_activity', 'ADVENTURE & ACTIVITY', 'ADVENTURE & ACTIVITY', '<p>Mollit voluptatem perspiciatis convallis elementum corporis quo veritatis aliquid blandit, blandit torquent, odit placeat. Adipiscing repudiandae eius cursus? Nostrum magnis maxime curae placeat.</p>\r\n', '<p>Mollit voluptatem perspiciatis convallis elementum corporis quo veritatis aliquid blandit, blandit torquent, odit placeat. Adipiscing repudiandae eius cursus? Nostrum magnis maxime curae placeat.</p>\r\n'),
(3, 'home_center_subscribe', 'HOLIDAY SPECIAL 25% OFF !', 'HOLIDAY SPECIAL 25% OFF !', '<p>Sign up now to recieve hot special offers and information about the best tour packages, updates and discounts !!</p>\r\n', '<p>Sign up now to recieve hot special offers and information about the best tour packages, updates and discounts !!</p>\r\n'),
(4, 'home_blog', 'OUR RECENT POSTS', 'OUR RECENT POSTS', '<p>Mollit voluptatem perspiciatis convallis elementum corporis quo veritatis aliquid blandit, blandit torquent, odit placeat. Adipiscing repudiandae eius cursus? Nostrum magnis maxime curae placeat.</p>\r\n', '<p>Mollit voluptatem perspiciatis convallis elementum corporis quo veritatis aliquid blandit, blandit torquent, odit placeat. Adipiscing repudiandae eius cursus? Nostrum magnis maxime curae placeat.</p>\r\n'),
(5, 'about_partners', 'PARTNER\'S AND CLIENTS', 'PARTNER\'S AND CLIENTS', '<p>Mollit voluptatem perspiciatis convallis elementum corporis quo veritatis aliquid blandit, blandit torquent, odit placeat. Adipiscing repudiandae eius cursus? Nostrum magnis maxime curae placeat.</p>\r\n', '<p>Mollit voluptatem perspiciatis convallis elementum corporis quo veritatis aliquid blandit, blandit torquent, odit placeat. Adipiscing repudiandae eius cursus? Nostrum magnis maxime curae placeat.</p>\r\n'),
(6, 'contacttext1', 'CONTACT US TO GET MORE INFO', 'CONTACT US TO GET MORE INFO', '<p>Aperiam sociosqu urna praesent, tristique, corrupti condimentum asperiores platea ipsum ad arcu. Nostrud. Esse? Aut nostrum, ornare quas provident laoreet nesciunt odio voluptates etiam, omnis.</p>\r\n', '<p>Aperiam sociosqu urna praesent, tristique, corrupti condimentum asperiores platea ipsum ad arcu. Nostrud. Esse? Aut nostrum, ornare quas provident laoreet nesciunt odio voluptates etiam, omnis.</p>\r\n'),
(7, 'contacttext2', 'Need help ?? Feel free to contact us !', 'Need help ?? Feel free to contact us !', '<p>Penatibus numquam? Non? Aliqua tempore est deserunt sequi itaque, nascetur, consequuntur conubianigp, explicabo? Primis convallis ullam. Egestas deserunt eius molestias app incididunt.</p>\r\n\r\n<p>Nostra doloribus blandit et semper ultrices, quibusdam dignissimos! Netus recusandae, rerum cupidatat. Perferendis aptent wisi.</p>\r\n', '<p>Penatibus numquam? Non? Aliqua tempore est deserunt sequi itaque, nascetur, consequuntur conubianigp, explicabo? Primis convallis ullam. Egestas deserunt eius molestias app incididunt.</p>\r\n\r\n<p>Nostra doloribus blandit et semper ultrices, quibusdam dignissimos! Netus recusandae, rerum cupidatat. Perferendis aptent wisi.</p>\r\n'),
(8, 'footer_about', 'About Travel', 'About Travel', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.</p>\r\n'),
(9, 'footer_subscribe', 'SUBSCRIBE US', 'SUBSCRIBE US', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n');

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(2000) NOT NULL,
  `parent` int(11) NOT NULL,
  `section` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sxemi çıxarılan cedvel `gallery`
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
-- Cədvəl üçün cədvəl strukturu `info_msg`
--

CREATE TABLE `info_msg` (
  `id` int(11) NOT NULL,
  `title` varchar(1500) NOT NULL,
  `description` text NOT NULL,
  `keyword` varchar(1500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `keyword` varchar(1000) NOT NULL,
  `value_en` varchar(1000) NOT NULL,
  `value_ru` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sxemi çıxarılan cedvel `languages`
--

INSERT INTO `languages` (`id`, `keyword`, `value_en`, `value_ru`) VALUES
(1, 'home_tours', 'EXPLORE GREAT PLACES', 'EXPLORE GREAT PLACES'),
(2, 'home_travel_actoivity', 'TRAVEL BY ACTIVITY', 'TRAVEL BY ACTIVITY'),
(3, 'home_center_subscribe', 'HOLIDAY PACKAGE OFFER', 'HOLIDAY PACKAGE OFFER'),
(4, 'youremail', 'Your Email Address', 'Your Email Address'),
(5, 'home_subscribe', 'SUBSCRIBE NOW!', 'SUBSCRIBE NOW!'),
(6, 'home_blog', 'FROM OUR BLOG', 'FROM OUR BLOG'),
(7, 'readmore', 'Read More', 'Read More'),
(8, 'about_partners', 'OUR ASSOCAITES', 'OUR ASSOCAITES'),
(9, 'home_video_area', 'CALLBACK FOR MORE', 'CALLBACK FOR MORE'),
(10, 'video_statisfed_cilents', 'Satisfied Clients', 'Satisfied Clients'),
(11, 'video_award', 'Awards Achieve', 'Awards Achieve'),
(12, 'video_activite_mebers', 'Active Members', 'Active Members'),
(13, 'video_tour_destnation', 'Tour Destnation', 'Tour Destnation'),
(14, 'home724contact', 'Our 24/7 Emergency Phone Services', 'Our 24/7 Emergency Phone Services'),
(15, 'tour_desc', 'DESCRIPTION', 'DESCRIPTION'),
(16, 'tour_program', 'PROGRAM', 'PROGRAM'),
(17, 'tour_map', 'Map', 'Map'),
(18, 'tour_qallery', 'GALLERY / PHOTOS', 'GALLERY / PHOTOS'),
(19, 'getintouch_contact', 'GET IN TOUCH', 'GET IN TOUCH'),
(20, 'contact_name', 'Your Name*', 'Your Name*'),
(21, 'yourmail_contact', 'Your Email*', 'Your Email*'),
(22, 'yourmessage_contact', 'Your Message*', 'Your Message*'),
(23, 'contactform_send', 'SUBMIT MESSAGE', 'SUBMIT MESSAGE'),
(24, 'loaction_contact', 'Location Address', 'Location Address'),
(25, 'contact_emailadress', 'Email Address', 'Email Address'),
(26, 'phone_contact', 'Phone Number', 'Phone Number'),
(27, 'followcontact', 'Follow us on social media..', 'Follow us on social media..'),
(28, 'home_all_package_tours', 'VIEW ALL PACKAGES', 'VIEW ALL PACKAGES'),
(29, 'follow_sidebar', 'Follow', 'Follow'),
(30, 'sidebar_post', 'Recent Post', 'Recent Post'),
(31, 'populartours', 'Popular Tours', 'Popular Tours'),
(32, 'footercontact', 'CONTACT INFORMATION', 'CONTACT INFORMATION'),
(33, 'footer_blog', 'Latest Post', 'Latest Post');

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name_en` varchar(100) NOT NULL,
  `name_ru` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sxemi çıxarılan cedvel `menu`
--

INSERT INTO `menu` (`id`, `name_en`, `name_ru`, `slug`, `status`) VALUES
(1, 'Home', 'Home', '/', 1),
(2, 'About', 'About', 'about', 1),
(4, 'Services', 'Services', 'services', 1),
(5, 'Subjects', 'Subjects', 'subjects', 1),
(7, 'Contact', 'Contact', 'contact', 1);

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sxemi çıxarılan cedvel `newsletter`
--

INSERT INTO `newsletter` (`id`, `mail`, `date`) VALUES
(1, 'test@asas.as', '2020-06-30 00:51:13');

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `qalereya`
--

CREATE TABLE `qalereya` (
  `id` int(11) NOT NULL,
  `title_en` varchar(500) NOT NULL,
  `title_ru` varchar(500) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sxemi çıxarılan cedvel `qalereya`
--

INSERT INTO `qalereya` (`id`, `title_en`, `title_ru`, `status`, `image`) VALUES
(0, 'asdasd', 'asdasd', 1, '/uploads/images/qalereya/893d0123db-Asdasd.jpg'),
(0, 'asdasdasdas', 'asdasdasd', 1, '/uploads/images/qalereya/266c87662c-Asdasdasdas.jpg');

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` int(11) NOT NULL,
  `page` varchar(255) NOT NULL,
  `title_en` varchar(500) NOT NULL,
  `title_ru` varchar(500) NOT NULL,
  `description_en` varchar(1500) NOT NULL,
  `description_ru` varchar(1500) NOT NULL,
  `keywords_en` varchar(1000) NOT NULL,
  `keywords_ru` varchar(1500) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sxemi çıxarılan cedvel `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `page`, `title_en`, `title_ru`, `description_en`, `description_ru`, `keywords_en`, `keywords_ru`, `image`) VALUES
(1, 'about', 'About', 'About', 'About', 'About', 'test_az,test', 'About', '/uploads/images/seo_settings/891feab4dabanner.jpg'),
(8, 'services', 'Services', 'Services', 'Services', 'Services', 'Services', 'Services', '/uploads/images/seo_settings/73d8940b63banner.jpg'),
(11, 'contact', 'Contact', 'Contact', 'Contact', 'Contact', 'Contact', 'Contact', '/uploads/images/seo_settings/ca806b4761bannersdsddssd.jpg'),
(12, 'subjects', 'Subjects', 'Subjects', 'Subjects', 'Subjects', 'Subjects', 'Subjects', '/uploads/images/seo_settings/0bbc11694dbanner.jpg');

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `title_en` varchar(2500) NOT NULL,
  `title_ru` varchar(2500) NOT NULL,
  `description_en` text NOT NULL,
  `description_ru` text NOT NULL,
  `slug` varchar(2500) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xəbərlər';

--
-- Sxemi çıxarılan cedvel `services`
--

INSERT INTO `services` (`id`, `category`, `title_en`, `title_ru`, `description_en`, `description_ru`, `slug`, `status`, `image`) VALUES
(1, 1, 'Test Service 1', 'Test Service 1', '<p>Architecture bibendum eros eget lacus the vulputate sit amet vehicuta nibhen ulicera in the vitae miss.</p>\r\n', '<p>Architecture bibendum eros eget lacus the vulputate sit amet vehicuta nibhen ulicera in the vitae miss.</p>\r\n', 'test-service-1', 1, '/uploads/images/services/af6dba81a2-Test-service-1.png'),
(2, 1, 'Test 2', 'Test 2', '<p>Architecture bibendum eros eget lacus the vulputate sit amet vehicuta nibhen ulicera in the vitae miss.</p>\r\n', '<p>Architecture bibendum eros eget lacus the vulputate sit amet vehicuta nibhen ulicera in the vitae miss.</p>\r\n', 'test-2', 1, '/uploads/images/services/eb1051d2a7-Test-2.png'),
(3, 1, 'Test 3', 'Test 3', '<p>Architecture bibendum eros eget lacus the vulputate sit amet vehicuta nibhen ulicera in the vitae miss.</p>\r\n', '<p>Architecture bibendum eros eget lacus the vulputate sit amet vehicuta nibhen ulicera in the vitae miss.</p>\r\n', 'test-3', 1, '/uploads/images/services/c2370a977d-Test-3.png');

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `service_category`
--

CREATE TABLE `service_category` (
  `id` int(11) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ru` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Sxemi çıxarılan cedvel `service_category`
--

INSERT INTO `service_category` (`id`, `title_en`, `title_ru`, `status`, `slug`) VALUES
(1, '3p Management', '3p Management', 1, '3p-management'),
(2, 'Consulting', 'Consulting', 1, 'consulting'),
(3, 'Supervison', 'Supervison', 1, 'supervison');

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_title_en` varchar(500) NOT NULL,
  `site_title_ru` varchar(500) NOT NULL,
  `description_en` text NOT NULL,
  `description_ru` text NOT NULL,
  `tags_en` varchar(1500) NOT NULL,
  `tags_ru` varchar(1500) NOT NULL,
  `site_status` tinyint(1) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `favicon` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sxemi çıxarılan cedvel `settings`
--

INSERT INTO `settings` (`id`, `site_title_en`, `site_title_ru`, `description_en`, `description_ru`, `tags_en`, `tags_ru`, `site_status`, `image`, `favicon`) VALUES
(1, 'Cortex', 'Cortex', 'Burada sayt haqqinda qisa melumat olacaq. bu melumat saytda gorunmur google kimi axtarish sistemlerinde gorunur', 'Dubai Tour', 'test tag', 'Dubai Tour', 1, '/uploads/images/statics/2a7d3137de-Dubai-Tour.png', '/uploads/images/statics/da9ab4c4f3003.png');

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `title_en` varchar(1500) NOT NULL,
  `title_ru` varchar(1500) NOT NULL,
  `description_en` varchar(2000) NOT NULL,
  `description_ru` varchar(2000) NOT NULL,
  `link` varchar(1500) NOT NULL,
  `link_status` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rank` int(11) NOT NULL,
  `image` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sxemi çıxarılan cedvel `slider`
--

INSERT INTO `slider` (`id`, `title_en`, `title_ru`, `description_en`, `description_ru`, `link`, `link_status`, `status`, `rank`, `image`) VALUES
(1, 'Best solutions for your business', 'Best solutions for your business', ' is simply dummy text of the printing and typesetting industry.', ' is simply dummy text of the printing and typesetting industry.', '', 1, 1, 0, '/uploads/images/slider/70f3033364-Best-solutions-for-your-business.png'),
(2, 'The successful business', 'The successful business', ' is simply dummy text of the printing and typesetting industry.', ' is simply dummy text of the printing and typesetting industry.', '', 1, 1, 0, '/uploads/images/slider/c711c40b37-The-successful-business.png');

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `link` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sxemi çıxarılan cedvel `social`
--

INSERT INTO `social` (`id`, `name`, `icon`, `link`) VALUES
(5, 'facebook', 'ti-facebook', 'https://www.facebook.com/test.az'),
(6, 'instagram', 'ti-instagram', 'https://www.instagram.com'),
(7, 'twitter', 'ti-twitter', '//twitter.com');

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `title_en` varchar(2500) NOT NULL,
  `title_ru` varchar(2500) NOT NULL,
  `description_en` text NOT NULL,
  `description_ru` text NOT NULL,
  `slug` varchar(2500) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Movzular';

--
-- Sxemi çıxarılan cedvel `subjects`
--

INSERT INTO `subjects` (`id`, `category`, `title_en`, `title_ru`, `description_en`, `description_ru`, `slug`, `status`, `image`) VALUES
(1, 1, 'Test 1', 'Test 1', '<p>Architecture bibendum eros eget lacus the vulputate sit amet vehicuta nibhen ulicera in the vitae miss.</p>\r\n', '<p>Architecture bibendum eros eget lacus the vulputate sit amet vehicuta nibhen ulicera in the vitae miss.</p>\r\n', 'test-1', 1, '/uploads/images/subjects/21c03caa5a-Test-1.png');

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `subjects_category`
--

CREATE TABLE `subjects_category` (
  `id` int(11) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ru` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Sxemi çıxarılan cedvel `subjects_category`
--

INSERT INTO `subjects_category` (`id`, `title_en`, `title_ru`, `status`, `slug`) VALUES
(1, 'Development', 'Development', 1, 'development'),
(2, 'Sustainability', 'Sustainability', 1, 'sustainability'),
(3, 'Transportation', 'Transportation', 1, 'transportation'),
(4, 'Technology', 'Technology', 1, 'technology'),
(5, 'Defence İndustry', 'Defence İndustry', 1, 'defence-industry');

--
-- Indexes for dumped tables
--

--
-- Cədvəl üçün indekslər `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Cədvəl üçün indekslər `administration`
--
ALTER TABLE `administration`
  ADD PRIMARY KEY (`id`);

--
-- Cədvəl üçün indekslər `contactform`
--
ALTER TABLE `contactform`
  ADD PRIMARY KEY (`id`);

--
-- Cədvəl üçün indekslər `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Cədvəl üçün indekslər `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Cədvəl üçün indekslər `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Cədvəl üçün indekslər `info_msg`
--
ALTER TABLE `info_msg`
  ADD PRIMARY KEY (`id`);

--
-- Cədvəl üçün indekslər `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Cədvəl üçün indekslər `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Cədvəl üçün indekslər `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Cədvəl üçün indekslər `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Cədvəl üçün indekslər `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Cədvəl üçün indekslər `service_category`
--
ALTER TABLE `service_category`
  ADD PRIMARY KEY (`id`);

--
-- Cədvəl üçün indekslər `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Cədvəl üçün indekslər `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Cədvəl üçün indekslər `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Cədvəl üçün indekslər `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Cədvəl üçün indekslər `subjects_category`
--
ALTER TABLE `subjects_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- Cədvəl üçün AUTO_INCREMENT `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Cədvəl üçün AUTO_INCREMENT `administration`
--
ALTER TABLE `administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Cədvəl üçün AUTO_INCREMENT `contactform`
--
ALTER TABLE `contactform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Cədvəl üçün AUTO_INCREMENT `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Cədvəl üçün AUTO_INCREMENT `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Cədvəl üçün AUTO_INCREMENT `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Cədvəl üçün AUTO_INCREMENT `info_msg`
--
ALTER TABLE `info_msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Cədvəl üçün AUTO_INCREMENT `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Cədvəl üçün AUTO_INCREMENT `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Cədvəl üçün AUTO_INCREMENT `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Cədvəl üçün AUTO_INCREMENT `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Cədvəl üçün AUTO_INCREMENT `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Cədvəl üçün AUTO_INCREMENT `service_category`
--
ALTER TABLE `service_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Cədvəl üçün AUTO_INCREMENT `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Cədvəl üçün AUTO_INCREMENT `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Cədvəl üçün AUTO_INCREMENT `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Cədvəl üçün AUTO_INCREMENT `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Cədvəl üçün AUTO_INCREMENT `subjects_category`
--
ALTER TABLE `subjects_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
