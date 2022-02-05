-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 05, 2022 at 04:07 AM
-- Server version: 10.2.41-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kdjzqbap_site`
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
(1, 'Haqqımızda', 'About Us', 'О Нас', '<p>&quot;Boomerang&quot; şirkəti Azərbaycanda 2012 &ndash; ci ildən fəaliyyət gostərməkdədir. Şirkətimizin əsas fəaliyyət istiqaməti avtomatlaşdırmadır. İstehsalda istifadə etdiyimiz mal və materiallar avropanın &ouml;ndər şirkətlərinin məhsullarıdır və uzun m&uuml;ddətdən&nbsp;bəri &ouml;z keyfiyyəti ilə s&uuml;but olunmuşdurlar. Darvazaların, qarajların, anbar və marketlərin qapılarının avtomatik olaraq a&ccedil;ılıb bağlanması şirkətimizin siz m&uuml;ştərilərimizə təklif etdiyi xidmətlərdən yalnız bir ne&ccedil;əsidir. Bizim əsas məqsədimiz və amalımız sizin etibarınızı qazanmaq və z&ouml;vq&uuml;n&uuml;z&uuml; oxşamaqdır.</p>\r\n', '<p>&quot;Boomerang&quot; şirkəti Azərbaycanda 2012 &ndash; ci ildən fəaliyyət gostərməkdədir. Şirkətimizin əsas fəaliyyət istiqaməti avtomatlaşdırmadır. İstehsalda istifadə etdiyimiz mal və materiallar avropanın &ouml;ndər şirkətlərinin məhsullarıdır və uzun m&uuml;ddətdən&nbsp;bəri &ouml;z keyfiyyəti ilə s&uuml;but olunmuşdurlar. Darvazaların, qarajların, anbar və marketlərin qapılarının avtomatik olaraq a&ccedil;ılıb bağlanması şirkətimizin siz m&uuml;ştərilərimizə təklif etdiyi xidmətlərdən yalnız bir ne&ccedil;əsidir. Bizim əsas məqsədimiz və amalımız sizin etibarınızı qazanmaq və z&ouml;vq&uuml;n&uuml;z&uuml; oxşamaqdır.</p>\r\n', '<p>&quot;Boomerang&quot; şirkəti Azərbaycanda 2012 &ndash; ci ildən fəaliyyət gostərməkdədir. Şirkətimizin əsas fəaliyyət istiqaməti avtomatlaşdırmadır. İstehsalda istifadə etdiyimiz mal və materiallar avropanın &ouml;ndər şirkətlərinin məhsullarıdır və uzun m&uuml;ddətdən&nbsp;bəri &ouml;z keyfiyyəti ilə s&uuml;but olunmuşdurlar. Darvazaların, qarajların, anbar və marketlərin qapılarının avtomatik olaraq a&ccedil;ılıb bağlanması şirkətimizin siz m&uuml;ştərilərimizə təklif etdiyi xidmətlərdən yalnız bir ne&ccedil;əsidir. Bizim əsas məqsədimiz və amalımız sizin etibarınızı qazanmaq və z&ouml;vq&uuml;n&uuml;z&uuml; oxşamaqdır.</p>\r\n', '/uploads/images/statics/e756fe947c-Haqqimizda.jpg'),
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
(7, 'Avtomatik Qapıların Kəşfi', 'Avtomatik Qapıların Kəşfi', 'Avtomatik Qapıların Kəşfi', '<p><u>Horton&nbsp;</u>və&nbsp;<u>Hewitt</u>&nbsp;d&uuml;nyanın yeni bir qapı sistemi ilə tanış olmasına səbəb oldu.</p>\r\n\r\n<p>1954 - c&uuml; ildə Corpus Christi, Texasda fəaliyyət g&ouml;stərən Horton Ş&uuml;şə Şirkəti (&nbsp;<a href=\"http://www.hortondoors.com/Pages/Welcome.aspx\" target=\"_blank\">Horton Glass Company</a>&nbsp;) n&uuml;mayəndələrindən olan Dee Horton və Lew Hewitt, cənubi Texasın sərt k&uuml;ləklərinin zərər verdiyi bir pəncərəni dəyişirdilər. Bu tip zərərlər o d&ouml;vr&uuml;n standart i&ccedil;əri və ya &ccedil;&ouml;lə a&ccedil;ılıb - bağlanan qapılarında tez - tez rast gəlinirdi. Bu c&uuml;r qapıların zərər g&ouml;rməsi insanlar &uuml;&ccedil;&uuml;n belə təhl&uuml;kə yarada bilərdi. Bundan sonra ikili daha səmərəli və təhl&uuml;kəsiz qapı sistemi hazırlamaq &uuml;&ccedil;&uuml;n işə başladılar.</p>\r\n\r\n<p>İlk hazırladıqları qapı elektriklə işləyən və qapının &ouml;n&uuml;ndəki ayaqaltıya basıldığında a&ccedil;ılıb - bağlanacaq şəkildə istehsal edilmişdi. Bu kəşf nəinki sərt k&uuml;ləklərin verə biləcəyi zərərlərin qarşısını aldı, həmdə m&uuml;ştərilərin və əli dolu təslimat iş&ccedil;ilərinin də rahat şəkildə məkana daxil olmasını rahatlaşdırdı. Qrup, qapıların satışına 1960 - cı ildə başladı və satılan ilk avtomatik qapı Corpus Christi - dəki bir restoranda yerləşdirildi. Qrup, kəşflərini 1964 - c&uuml; ildə patentləşdirdi və beləcə&nbsp;<strong>Horton Automatics</strong>&nbsp;quruldu.</p>\r\n\r\n<p><strong><a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar\" target=\"_blank\">Avtomatik qapılar</a></strong>&nbsp;m&uuml;asir d&ouml;vr&uuml;m&uuml;zdə ofislərdə, restoranlarda, idarələrdə və m&uuml;xtəlif ictimai binaların girişlərində qurulmuşdur. İstifadə&ccedil;ilərə rahat giriş təmin edən bu qapılar digər texnaloji nəaliyyətlər kimi ayrılmaz bir hissəyə &ccedil;evrilmişdir. Bu qapıların istifadəsi o qədər geniş yayılmışdır ki, hətta bəzi inkişaf etmiş &ouml;lkələrdə hər hansı bir ictimai binanın girişində avtomatikləşdirilmiş qapıların olmaması insanlarda ki&ccedil;ik bir təəcc&uuml;bə səbəb ola bilir.</p>\r\n', '<p><u>Horton&nbsp;</u>və&nbsp;<u>Hewitt</u>&nbsp;d&uuml;nyanın yeni bir qapı sistemi ilə tanış olmasına səbəb oldu.</p>\r\n\r\n<p>1954 - c&uuml; ildə Corpus Christi, Texasda fəaliyyət g&ouml;stərən Horton Ş&uuml;şə Şirkəti (&nbsp;<a href=\"http://www.hortondoors.com/Pages/Welcome.aspx\" target=\"_blank\">Horton Glass Company</a>&nbsp;) n&uuml;mayəndələrindən olan Dee Horton və Lew Hewitt, cənubi Texasın sərt k&uuml;ləklərinin zərər verdiyi bir pəncərəni dəyişirdilər. Bu tip zərərlər o d&ouml;vr&uuml;n standart i&ccedil;əri və ya &ccedil;&ouml;lə a&ccedil;ılıb - bağlanan qapılarında tez - tez rast gəlinirdi. Bu c&uuml;r qapıların zərər g&ouml;rməsi insanlar &uuml;&ccedil;&uuml;n belə təhl&uuml;kə yarada bilərdi. Bundan sonra ikili daha səmərəli və təhl&uuml;kəsiz qapı sistemi hazırlamaq &uuml;&ccedil;&uuml;n işə başladılar.</p>\r\n\r\n<p>İlk hazırladıqları qapı elektriklə işləyən və qapının &ouml;n&uuml;ndəki ayaqaltıya basıldığında a&ccedil;ılıb - bağlanacaq şəkildə istehsal edilmişdi. Bu kəşf nəinki sərt k&uuml;ləklərin verə biləcəyi zərərlərin qarşısını aldı, həmdə m&uuml;ştərilərin və əli dolu təslimat iş&ccedil;ilərinin də rahat şəkildə məkana daxil olmasını rahatlaşdırdı. Qrup, qapıların satışına 1960 - cı ildə başladı və satılan ilk avtomatik qapı Corpus Christi - dəki bir restoranda yerləşdirildi. Qrup, kəşflərini 1964 - c&uuml; ildə patentləşdirdi və beləcə&nbsp;<strong>Horton Automatics</strong>&nbsp;quruldu.</p>\r\n\r\n<p><strong><a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar\" target=\"_blank\">Avtomatik qapılar</a></strong>&nbsp;m&uuml;asir d&ouml;vr&uuml;m&uuml;zdə ofislərdə, restoranlarda, idarələrdə və m&uuml;xtəlif ictimai binaların girişlərində qurulmuşdur. İstifadə&ccedil;ilərə rahat giriş təmin edən bu qapılar digər texnaloji nəaliyyətlər kimi ayrılmaz bir hissəyə &ccedil;evrilmişdir. Bu qapıların istifadəsi o qədər geniş yayılmışdır ki, hətta bəzi inkişaf etmiş &ouml;lkələrdə hər hansı bir ictimai binanın girişində avtomatikləşdirilmiş qapıların olmaması insanlarda ki&ccedil;ik bir təəcc&uuml;bə səbəb ola bilir.</p>\r\n', '<p><u>Horton&nbsp;</u>və&nbsp;<u>Hewitt</u>&nbsp;d&uuml;nyanın yeni bir qapı sistemi ilə tanış olmasına səbəb oldu.</p>\r\n\r\n<p>1954 - c&uuml; ildə Corpus Christi, Texasda fəaliyyət g&ouml;stərən Horton Ş&uuml;şə Şirkəti (&nbsp;<a href=\"http://www.hortondoors.com/Pages/Welcome.aspx\" target=\"_blank\">Horton Glass Company</a>&nbsp;) n&uuml;mayəndələrindən olan Dee Horton və Lew Hewitt, cənubi Texasın sərt k&uuml;ləklərinin zərər verdiyi bir pəncərəni dəyişirdilər. Bu tip zərərlər o d&ouml;vr&uuml;n standart i&ccedil;əri və ya &ccedil;&ouml;lə a&ccedil;ılıb - bağlanan qapılarında tez - tez rast gəlinirdi. Bu c&uuml;r qapıların zərər g&ouml;rməsi insanlar &uuml;&ccedil;&uuml;n belə təhl&uuml;kə yarada bilərdi. Bundan sonra ikili daha səmərəli və təhl&uuml;kəsiz qapı sistemi hazırlamaq &uuml;&ccedil;&uuml;n işə başladılar.</p>\r\n\r\n<p>İlk hazırladıqları qapı elektriklə işləyən və qapının &ouml;n&uuml;ndəki ayaqaltıya basıldığında a&ccedil;ılıb - bağlanacaq şəkildə istehsal edilmişdi. Bu kəşf nəinki sərt k&uuml;ləklərin verə biləcəyi zərərlərin qarşısını aldı, həmdə m&uuml;ştərilərin və əli dolu təslimat iş&ccedil;ilərinin də rahat şəkildə məkana daxil olmasını rahatlaşdırdı. Qrup, qapıların satışına 1960 - cı ildə başladı və satılan ilk avtomatik qapı Corpus Christi - dəki bir restoranda yerləşdirildi. Qrup, kəşflərini 1964 - c&uuml; ildə patentləşdirdi və beləcə&nbsp;<strong>Horton Automatics</strong>&nbsp;quruldu.</p>\r\n\r\n<p><strong><a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar\" target=\"_blank\">Avtomatik qapılar</a></strong>&nbsp;m&uuml;asir d&ouml;vr&uuml;m&uuml;zdə ofislərdə, restoranlarda, idarələrdə və m&uuml;xtəlif ictimai binaların girişlərində qurulmuşdur. İstifadə&ccedil;ilərə rahat giriş təmin edən bu qapılar digər texnaloji nəaliyyətlər kimi ayrılmaz bir hissəyə &ccedil;evrilmişdir. Bu qapıların istifadəsi o qədər geniş yayılmışdır ki, hətta bəzi inkişaf etmiş &ouml;lkələrdə hər hansı bir ictimai binanın girişində avtomatikləşdirilmiş qapıların olmaması insanlarda ki&ccedil;ik bir təəcc&uuml;bə səbəb ola bilir.</p>\r\n', '', '', '', 1, '2021-12-24', '2022-01-06 14:02:43', 0, 'blog7', 168, '/uploads/images/blog/f886e38502cd260912991200px-Oorlogsmuseum_Overloon.jpg'),
(8, 'Dönər Qapıların İxtirası', 'Dönər Qapıların İxtirası', 'Dönər Qapıların İxtirası', '<p>Təxmini olaraq&nbsp;<a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-doner-qapilar\" target=\"_blank\"><strong>D&ouml;nər Qapılar</strong></a>&nbsp;ilk ixtira olunduğu vaxtdakı dizaynını qoruyub saxlamışdır. Bu qapılar &uuml;&ccedil;&uuml;n ilk patent m&uuml;raciəti, alman ixtira&ccedil;ısı&nbsp;<strong>H. Bockhacker</strong>&nbsp;tərəfindən edilib. Lakin o d&ouml;vrdə bu ixtira uğur qazana bilmədi.</p>\r\n\r\n<p>1888 - ci ildə Pensilvaniyada yaşayan&nbsp;<strong>Theophilus Van Kannel</strong>, enerji baxımından səmərəli və qapı &ccedil;ər&ccedil;ivəsi ilə uyğun hava siyirməli &uuml;&ccedil; istiqamətli fırtına qapısı ( three - way strom door ) &uuml;&ccedil;&uuml;n ilk ABŞ patentini aldı. Məhsulu istehsal etmək &uuml;&ccedil;&uuml;n &ouml;z&nbsp;<strong>&ldquo; Van Kannel Revolving Door Co. &rdquo;</strong>&nbsp;şirkətini qurdu. Daha sonra 1907 - ci ildə Van Kannel bunu<strong>&nbsp;&ldquo; International Steel &rdquo;</strong>&nbsp;şirkətinə satdı. ( hal hazırda&nbsp;<strong>&ldquo; International Revolving Door Co. &rdquo;</strong>&nbsp;olaraq tanınır )</p>\r\n\r\n<p>Van Kannelin şəxsi həyatı ilə bağlı ətraflı məlumat yoxdur. Ancaq bu ixtirasında nədən ilhamlanması haqqında bəzi şayiələr m&ouml;vcuddur. Deyilənə g&ouml;rə o, qadınların ke&ccedil;ə bilməsi &uuml;&ccedil;&uuml;n kişilərin qapını a&ccedil;ıq saxlamağını mənasız hesab edirdi. Beləcə o, həyatının əsas hissəsini bu qapıların ixtirasına, təkmilləşdirilməsinə və istehsalına ayırdı. Və he&ccedil; vaxt evlənmədi.</p>\r\n\r\n<p>Van Kannel d&ouml;nər qapıların ixtirası ilə &ccedil;oxlu pul və ş&ouml;hrət qazandı. 1889 - cu ildə Filodelfiyada ixtirasının cəmiyyətə bəxş etdiyi səmərəliliyə g&ouml;rə&nbsp;<strong>John Scott</strong>&nbsp;m&uuml;kafatını aldı.</p>\r\n\r\n<p>Van Kannel 1919 - cu ildə 78 yaşında d&uuml;nyasını dəyişdi. İxtirası olan&nbsp;<a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-doner-qapilar\" target=\"_blank\"><strong>D&ouml;nər Qapılar</strong></a><a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-doner-qapilar\" target=\"_blank\">&nbsp;</a>isə hələ də d&uuml;nyanın hər yerində istifadə edilir.</p>\r\n\r\n<p>Van Kannelin ixtirası bəzilərinə g&ouml;rə həmin d&ouml;vr &uuml;&ccedil;&uuml;n lazımsız sayılan bəzi etika qaydalarının sıradan &ccedil;ıxarılmasına istiqamətlənmiş idi. Bu d&ouml;vrdə belə, kişilərin, qadınların ke&ccedil;məsi &uuml;&ccedil;&uuml;n d&ouml;nər qapıya birinci daxil olub itələməsi, yoxsa nəzakət g&ouml;stərib &ouml;ncəliyin qadınlara verilməsi m&uuml;bahisəli bir m&ouml;vzuya &ccedil;evrilmişdir. &nbsp;</p>\r\n', '<p>Təxmini olaraq&nbsp;<a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-doner-qapilar\" target=\"_blank\"><strong>D&ouml;nər Qapılar</strong></a>&nbsp;ilk ixtira olunduğu vaxtdakı dizaynını qoruyub saxlamışdır. Bu qapılar &uuml;&ccedil;&uuml;n ilk patent m&uuml;raciəti, alman ixtira&ccedil;ısı&nbsp;<strong>H. Bockhacker</strong>&nbsp;tərəfindən edilib. Lakin o d&ouml;vrdə bu ixtira uğur qazana bilmədi.</p>\r\n\r\n<p>1888 - ci ildə Pensilvaniyada yaşayan&nbsp;<strong>Theophilus Van Kannel</strong>, enerji baxımından səmərəli və qapı &ccedil;ər&ccedil;ivəsi ilə uyğun hava siyirməli &uuml;&ccedil; istiqamətli fırtına qapısı ( three - way strom door ) &uuml;&ccedil;&uuml;n ilk ABŞ patentini aldı. Məhsulu istehsal etmək &uuml;&ccedil;&uuml;n &ouml;z&nbsp;<strong>&ldquo; Van Kannel Revolving Door Co. &rdquo;</strong>&nbsp;şirkətini qurdu. Daha sonra 1907 - ci ildə Van Kannel bunu<strong>&nbsp;&ldquo; International Steel &rdquo;</strong>&nbsp;şirkətinə satdı. ( hal hazırda&nbsp;<strong>&ldquo; International Revolving Door Co. &rdquo;</strong>&nbsp;olaraq tanınır )</p>\r\n\r\n<p>Van Kannelin şəxsi həyatı ilə bağlı ətraflı məlumat yoxdur. Ancaq bu ixtirasında nədən ilhamlanması haqqında bəzi şayiələr m&ouml;vcuddur. Deyilənə g&ouml;rə o, qadınların ke&ccedil;ə bilməsi &uuml;&ccedil;&uuml;n kişilərin qapını a&ccedil;ıq saxlamağını mənasız hesab edirdi. Beləcə o, həyatının əsas hissəsini bu qapıların ixtirasına, təkmilləşdirilməsinə və istehsalına ayırdı. Və he&ccedil; vaxt evlənmədi.</p>\r\n\r\n<p>Van Kannel d&ouml;nər qapıların ixtirası ilə &ccedil;oxlu pul və ş&ouml;hrət qazandı. 1889 - cu ildə Filodelfiyada ixtirasının cəmiyyətə bəxş etdiyi səmərəliliyə g&ouml;rə&nbsp;<strong>John Scott</strong>&nbsp;m&uuml;kafatını aldı.</p>\r\n\r\n<p>Van Kannel 1919 - cu ildə 78 yaşında d&uuml;nyasını dəyişdi. İxtirası olan&nbsp;<a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-doner-qapilar\" target=\"_blank\"><strong>D&ouml;nər Qapılar</strong></a><a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-doner-qapilar\" target=\"_blank\">&nbsp;</a>isə hələ də d&uuml;nyanın hər yerində istifadə edilir.</p>\r\n\r\n<p>Van Kannelin ixtirası bəzilərinə g&ouml;rə həmin d&ouml;vr &uuml;&ccedil;&uuml;n lazımsız sayılan bəzi etika qaydalarının sıradan &ccedil;ıxarılmasına istiqamətlənmiş idi. Bu d&ouml;vrdə belə, kişilərin, qadınların ke&ccedil;məsi &uuml;&ccedil;&uuml;n d&ouml;nər qapıya birinci daxil olub itələməsi, yoxsa nəzakət g&ouml;stərib &ouml;ncəliyin qadınlara verilməsi m&uuml;bahisəli bir m&ouml;vzuya &ccedil;evrilmişdir. &nbsp;</p>\r\n', '<p>Təxmini olaraq&nbsp;<a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-doner-qapilar\" target=\"_blank\"><strong>D&ouml;nər Qapılar</strong></a>&nbsp;ilk ixtira olunduğu vaxtdakı dizaynını qoruyub saxlamışdır. Bu qapılar &uuml;&ccedil;&uuml;n ilk patent m&uuml;raciəti, alman ixtira&ccedil;ısı&nbsp;<strong>H. Bockhacker</strong>&nbsp;tərəfindən edilib. Lakin o d&ouml;vrdə bu ixtira uğur qazana bilmədi.</p>\r\n\r\n<p>1888 - ci ildə Pensilvaniyada yaşayan&nbsp;<strong>Theophilus Van Kannel</strong>, enerji baxımından səmərəli və qapı &ccedil;ər&ccedil;ivəsi ilə uyğun hava siyirməli &uuml;&ccedil; istiqamətli fırtına qapısı ( three - way strom door ) &uuml;&ccedil;&uuml;n ilk ABŞ patentini aldı. Məhsulu istehsal etmək &uuml;&ccedil;&uuml;n &ouml;z&nbsp;<strong>&ldquo; Van Kannel Revolving Door Co. &rdquo;</strong>&nbsp;şirkətini qurdu. Daha sonra 1907 - ci ildə Van Kannel bunu<strong>&nbsp;&ldquo; International Steel &rdquo;</strong>&nbsp;şirkətinə satdı. ( hal hazırda&nbsp;<strong>&ldquo; International Revolving Door Co. &rdquo;</strong>&nbsp;olaraq tanınır )</p>\r\n\r\n<p>Van Kannelin şəxsi həyatı ilə bağlı ətraflı məlumat yoxdur. Ancaq bu ixtirasında nədən ilhamlanması haqqında bəzi şayiələr m&ouml;vcuddur. Deyilənə g&ouml;rə o, qadınların ke&ccedil;ə bilməsi &uuml;&ccedil;&uuml;n kişilərin qapını a&ccedil;ıq saxlamağını mənasız hesab edirdi. Beləcə o, həyatının əsas hissəsini bu qapıların ixtirasına, təkmilləşdirilməsinə və istehsalına ayırdı. Və he&ccedil; vaxt evlənmədi.</p>\r\n\r\n<p>Van Kannel d&ouml;nər qapıların ixtirası ilə &ccedil;oxlu pul və ş&ouml;hrət qazandı. 1889 - cu ildə Filodelfiyada ixtirasının cəmiyyətə bəxş etdiyi səmərəliliyə g&ouml;rə&nbsp;<strong>John Scott</strong>&nbsp;m&uuml;kafatını aldı.</p>\r\n\r\n<p>Van Kannel 1919 - cu ildə 78 yaşında d&uuml;nyasını dəyişdi. İxtirası olan&nbsp;<a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-doner-qapilar\" target=\"_blank\"><strong>D&ouml;nər Qapılar</strong></a><a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-doner-qapilar\" target=\"_blank\">&nbsp;</a>isə hələ də d&uuml;nyanın hər yerində istifadə edilir.</p>\r\n\r\n<p>Van Kannelin ixtirası bəzilərinə g&ouml;rə həmin d&ouml;vr &uuml;&ccedil;&uuml;n lazımsız sayılan bəzi etika qaydalarının sıradan &ccedil;ıxarılmasına istiqamətlənmiş idi. Bu d&ouml;vrdə belə, kişilərin, qadınların ke&ccedil;məsi &uuml;&ccedil;&uuml;n d&ouml;nər qapıya birinci daxil olub itələməsi, yoxsa nəzakət g&ouml;stərib &ouml;ncəliyin qadınlara verilməsi m&uuml;bahisəli bir m&ouml;vzuya &ccedil;evrilmişdir. &nbsp;</p>\r\n', '', '', '', 1, '2022-01-02', '2022-01-06 14:02:43', 0, 'blog8', 38, '/uploads/images/blog/919e9262bcc691fb1bd6revolvingdoor.jpg'),
(9, 'Qapı Zəngini Kim İxtira Etdi ?', 'Qapı Zəngini Kim İxtira Etdi ?', 'Qapı Zəngini Kim İxtira Etdi ?', '<p><strong>Qapı zəngi</strong>, binanın və ya evin girişində, qapının yaxininda yerləşdirilən bir siqnal cihazıdır. Ziyarətə gələn insan qapı zənginin &uuml;zərindəki d&uuml;yməni basan zaman i&ccedil;əridə bir səs siqnalı yaranar və ev sahibi evin &ouml;n&uuml;ndə g&ouml;zləyən birinin olduğu barədə xəbərdar olar.</p>\r\n\r\n<p>İlk qapı zəngləri mexaniki sistemlə işləyirdi. Bir tərəfində ip, digər tərəfdə zınqrov olan bir cihaz şəklində d&uuml;zəldilmişdi. M&uuml;asir qapı zəngləri isə elektron sistemlə təchiz olunmuşdur.</p>\r\n\r\n<p>Şotland ixtira&ccedil;ısı&nbsp;<strong>William Murdoch</strong>, 1817 - ci ildə Birmingham - da ixtira etdiyi ilk qapı zəngini &ouml;z evində yerləşdirmişdir. Lakin bu qapı zəngi d&ouml;vr&uuml;m&uuml;zdəkilər kimi elektriklə deyil, daha sadə sistemlə &ccedil;alışırdı. Elektriklə işləyən qapı zəngi isə&nbsp;<strong>Joseph Henry</strong>&nbsp;tərəfindən 1831 - ci ildə ixtira edildi. 1900 - cu illərin əvvəllərindən artıq qapı zənglərinə demək olar ki, hər yerdə rast gəlinirdi.</p>\r\n', '<p><strong>Qapı zəngi</strong>, binanın və ya evin girişində, qapının yaxininda yerləşdirilən bir siqnal cihazıdır. Ziyarətə gələn insan qapı zənginin &uuml;zərindəki d&uuml;yməni basan zaman i&ccedil;əridə bir səs siqnalı yaranar və ev sahibi evin &ouml;n&uuml;ndə g&ouml;zləyən birinin olduğu barədə xəbərdar olar.</p>\r\n\r\n<p>İlk qapı zəngləri mexaniki sistemlə işləyirdi. Bir tərəfində ip, digər tərəfdə zınqrov olan bir cihaz şəklində d&uuml;zəldilmişdi. M&uuml;asir qapı zəngləri isə elektron sistemlə təchiz olunmuşdur.</p>\r\n\r\n<p>Şotland ixtira&ccedil;ısı&nbsp;<strong>William Murdoch</strong>, 1817 - ci ildə Birmingham - da ixtira etdiyi ilk qapı zəngini &ouml;z evində yerləşdirmişdir. Lakin bu qapı zəngi d&ouml;vr&uuml;m&uuml;zdəkilər kimi elektriklə deyil, daha sadə sistemlə &ccedil;alışırdı. Elektriklə işləyən qapı zəngi isə&nbsp;<strong>Joseph Henry</strong>&nbsp;tərəfindən 1831 - ci ildə ixtira edildi. 1900 - cu illərin əvvəllərindən artıq qapı zənglərinə demək olar ki, hər yerdə rast gəlinirdi.</p>\r\n', '<p><strong>Qapı zəngi</strong>, binanın və ya evin girişində, qapının yaxininda yerləşdirilən bir siqnal cihazıdır. Ziyarətə gələn insan qapı zənginin &uuml;zərindəki d&uuml;yməni basan zaman i&ccedil;əridə bir səs siqnalı yaranar və ev sahibi evin &ouml;n&uuml;ndə g&ouml;zləyən birinin olduğu barədə xəbərdar olar.</p>\r\n\r\n<p>İlk qapı zəngləri mexaniki sistemlə işləyirdi. Bir tərəfində ip, digər tərəfdə zınqrov olan bir cihaz şəklində d&uuml;zəldilmişdi. M&uuml;asir qapı zəngləri isə elektron sistemlə təchiz olunmuşdur.</p>\r\n\r\n<p>Şotland ixtira&ccedil;ısı&nbsp;<strong>William Murdoch</strong>, 1817 - ci ildə Birmingham - da ixtira etdiyi ilk qapı zəngini &ouml;z evində yerləşdirmişdir. Lakin bu qapı zəngi d&ouml;vr&uuml;m&uuml;zdəkilər kimi elektriklə deyil, daha sadə sistemlə &ccedil;alışırdı. Elektriklə işləyən qapı zəngi isə&nbsp;<strong>Joseph Henry</strong>&nbsp;tərəfindən 1831 - ci ildə ixtira edildi. 1900 - cu illərin əvvəllərindən artıq qapı zənglərinə demək olar ki, hər yerdə rast gəlinirdi.</p>\r\n', '', '', '', 1, '2022-01-05', '2022-01-06 14:03:51', 0, 'blog9', 62, '/uploads/images/blog/a8b120b004a556eff3dfNetvue-Belle-AI-WiFi-Doorbell-01.jpg'),
(10, 'İşləmə Prinsipləri', 'İşləmə Prinsipləri', 'İşləmə Prinsipləri', '<p>Qapının a&ccedil;ılmasını təmin edən m&uuml;xtəlif &uuml;sullar vardır. Bunlardan ən əsası yaxınlaşan insanın x&uuml;susi sensorlar vasitəsilə təyin olunmasıdır. Bu sensorların da m&uuml;xtəlif n&ouml;vləri m&ouml;vcuddur. Misal kimi təzyiq &uuml;sulunu g&ouml;stərək olar.</p>\r\n\r\n<p>Bir digəri isə infraqırmızı ş&uuml;alardan bir pərdə yaradar və bu ş&uuml;alar kəsintiyə uğradığı zaman qapıların a&ccedil;ılmasını təmin edər. Bu c&uuml;r hərəkət sensorlarından biri də aşağı mikrodalğalar yayan radar vasitəsi ilə &ccedil;alışır.</p>\r\n\r\n<p>Uzaqdan idarə etmə ilə &ccedil;alışan Avtomatik Qapılar da vardır ki, bunlar əsasən qarajlarda və ya darvazalarda quraşdırılır. Bu c&uuml;r qapılar əsasən həyat keyfiyyətinin y&uuml;ksəldilməsinə y&ouml;nldilmişdir. Bunun bir digər variantı isə nəqliyyat vasitələrində quraşdırılmış sensorlardır ki, qapıya yaxınlaşarkən onların a&ccedil;ılmasını avtomatik təşkil edir.</p>\r\n\r\n<p>Avtomatik Qapıların a&ccedil;ılıb - bağlanmasını təmin edən bir digər &uuml;sul da şifrə və yaxud da kart sistemidir. Bu &uuml;sulun da tətbiqi &nbsp;əl əməyinin istisna edilməsində rol oynayır.</p>\r\n', '<p>Qapının a&ccedil;ılmasını təmin edən m&uuml;xtəlif &uuml;sullar vardır. Bunlardan ən əsası yaxınlaşan insanın x&uuml;susi sensorlar vasitəsilə təyin olunmasıdır. Bu sensorların da m&uuml;xtəlif n&ouml;vləri m&ouml;vcuddur. Misal kimi təzyiq &uuml;sulunu g&ouml;stərək olar.</p>\r\n\r\n<p>Bir digəri isə infraqırmızı ş&uuml;alardan bir pərdə yaradar və bu ş&uuml;alar kəsintiyə uğradığı zaman qapıların a&ccedil;ılmasını təmin edər. Bu c&uuml;r hərəkət sensorlarından biri də aşağı mikrodalğalar yayan radar vasitəsi ilə &ccedil;alışır.</p>\r\n\r\n<p>Uzaqdan idarə etmə ilə &ccedil;alışan Avtomatik Qapılar da vardır ki, bunlar əsasən qarajlarda və ya darvazalarda quraşdırılır. Bu c&uuml;r qapılar əsasən həyat keyfiyyətinin y&uuml;ksəldilməsinə y&ouml;nldilmişdir. Bunun bir digər variantı isə nəqliyyat vasitələrində quraşdırılmış sensorlardır ki, qapıya yaxınlaşarkən onların a&ccedil;ılmasını avtomatik təşkil edir.</p>\r\n\r\n<p>Avtomatik Qapıların a&ccedil;ılıb - bağlanmasını təmin edən bir digər &uuml;sul da şifrə və yaxud da kart sistemidir. Bu &uuml;sulun da tətbiqi &nbsp;əl əməyinin istisna edilməsində rol oynayır.</p>\r\n', '<p>Qapının a&ccedil;ılmasını təmin edən m&uuml;xtəlif &uuml;sullar vardır. Bunlardan ən əsası yaxınlaşan insanın x&uuml;susi sensorlar vasitəsilə təyin olunmasıdır. Bu sensorların da m&uuml;xtəlif n&ouml;vləri m&ouml;vcuddur. Misal kimi təzyiq &uuml;sulunu g&ouml;stərək olar.</p>\r\n\r\n<p>Bir digəri isə infraqırmızı ş&uuml;alardan bir pərdə yaradar və bu ş&uuml;alar kəsintiyə uğradığı zaman qapıların a&ccedil;ılmasını təmin edər. Bu c&uuml;r hərəkət sensorlarından biri də aşağı mikrodalğalar yayan radar vasitəsi ilə &ccedil;alışır.</p>\r\n\r\n<p>Uzaqdan idarə etmə ilə &ccedil;alışan Avtomatik Qapılar da vardır ki, bunlar əsasən qarajlarda və ya darvazalarda quraşdırılır. Bu c&uuml;r qapılar əsasən həyat keyfiyyətinin y&uuml;ksəldilməsinə y&ouml;nldilmişdir. Bunun bir digər variantı isə nəqliyyat vasitələrində quraşdırılmış sensorlardır ki, qapıya yaxınlaşarkən onların a&ccedil;ılmasını avtomatik təşkil edir.</p>\r\n\r\n<p>Avtomatik Qapıların a&ccedil;ılıb - bağlanmasını təmin edən bir digər &uuml;sul da şifrə və yaxud da kart sistemidir. Bu &uuml;sulun da tətbiqi &nbsp;əl əməyinin istisna edilməsində rol oynayır.</p>\r\n', '', '', '', 1, '2022-01-07', '2022-01-06 14:03:51', 0, 'social-media-driven-trading-frenzy', 101, '/uploads/images/blog/d4a63bc2cb335cab029bFotolia_32644969_Subscription_Monthly_M.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `slug` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `image`, `slug`) VALUES
(5, '', '/uploads/images/brands/cc3403d309-61e95a6521e33.jpg', ''),
(6, '', '/uploads/images/brands/63a1da7a28-61e95a6b2b430.jpg', ''),
(7, '', '/uploads/images/brands/72d6d675b0-61e95a707cc2e.jpg', ''),
(8, '', '/uploads/images/brands/e72be5c778-61e95a7466664.jpg', ''),
(9, '', '/uploads/images/brands/0528278e33-61e95a78813b0.jpg', ''),
(10, '', '/uploads/images/brands/cd61665405-61e95a7ca0766.jpg', ''),
(11, '', '/uploads/images/brands/5e798adfa0-61e95a81d1488.jpg', ''),
(12, '', '/uploads/images/brands/1c76862550-61e95a8710ae3.jpg', ''),
(13, '', '/uploads/images/brands/e2c9942d24-61e95a8b89764.jpg', ''),
(14, '', '/uploads/images/brands/a6382461f3-61e95a8fac607.jpg', ''),
(15, '', '/uploads/images/brands/ea007266ac-61e95a93f2bbf.jpg', ''),
(16, '', '/uploads/images/brands/1dc18581bd-61e95a992e95e.jpg', ''),
(17, '', '/uploads/images/brands/a54df07f89-61e95a9d33d0a.jpg', ''),
(18, '', '/uploads/images/brands/a9a006c4ef-61e95aa26f9b4.jpg', ''),
(19, '', '/uploads/images/brands/eeeaa82754-61e95aa6af9ee.jpg', ''),
(20, '', '/uploads/images/brands/ddb2ba5e57-61e95aab1a0b9.jpg', ''),
(21, '', '/uploads/images/brands/3171335723-61e95aaf36b1c.jpg', ''),
(22, '', '/uploads/images/brands/41ce1d6f1b-61e95ab3b622b.jpg', ''),
(23, '', '/uploads/images/brands/0fa9a25a02-61e95ab88677d.jpg', ''),
(24, '', '/uploads/images/brands/0e9a08cdaf-61e95abd558dd.jpg', ''),
(25, '', '/uploads/images/brands/a8f3d99a62-61e95ac1cceac.jpg', ''),
(26, '', '/uploads/images/brands/ab021d77a5-61e95ac592ad8.jpg', ''),
(27, '', '/uploads/images/brands/3194791660-61e95bc3dc09f.jpg', '');

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
  `keywords_az` varchar(1500) NOT NULL,
  `keywords_en` varchar(1500) NOT NULL,
  `keywords_ru` varchar(1500) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `slug` varchar(500) NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `rank` int(11) DEFAULT 0,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `parent`, `title_az`, `title_en`, `title_ru`, `description_az`, `description_en`, `description_ru`, `keywords_az`, `keywords_en`, `keywords_ru`, `status`, `created_at`, `is_deleted`, `slug`, `view`, `rank`, `image`) VALUES
(8, 0, 'Avtomatik Fotosel Və Dönər Qapılar', 'Avtomatik Fotosel Və Dönər Qapılar', 'Avtomatik Fotosel Və Dönər Qapılar', '<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-fotosel-qapilar\">Fotosel Qapılar</a></h3>\r\n\r\n<p>Son d&ouml;vrlərdə x&uuml;susi orjinallığı ilə fərqlənən və qeyri standart &uuml;slubda olan girişlər məşhurluq qazanmışdır. Yarımdairəvi qapılar da bunlardan biridir. Bu qapılar &nbsp;m&uuml;xtəlif materiallardan hazırlanır, istənilən &uuml;slubda və istənilən interyerə uyğun təşkil olunur.</p>\r\n\r\n<p>Yarımdairəvi qapılar bir &ccedil;ox &uuml;st&uuml;n x&uuml;susiyyətləri ilə digərlərindən fərqlənir. Bu qapılar istismarda olduqca səmərəlidir. Belə ki, bu qapıların istifadə edildiyi yerlərdə i&ccedil;əridə tənzimlənmiş hava &ccedil;&ouml;lə axın etmir. Bu da &ouml;z n&ouml;vbəsində bu vəya digər tanzimləmələr &uuml;&ccedil;&uuml;n ayrılan vəsaitə qənaət imkanı yaradır. İstənilən binada elektrik kəsintisi halları istisna deyildir. Hətta bu hallarda belə yarımdairəvi qapılar bir ne&ccedil;ə saat işləyə bilər. Səssiz işləmə x&uuml;susiyyəti ilə fərqlənən bu qapılar binanın daxili qəza sistemi ilə də birləşdirilə bilər. B&uuml;t&uuml;n bu sayılan &uuml;st&uuml;nl&uuml;klər qonaqların və personalın rahatlığını , ən əsası isə həyat təhl&uuml;kəsizliyini təmin edir.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-doner-qapilar\">D&ouml;nər Qapılar</a></h3>\r\n\r\n<p>Avtomatik d&ouml;nər qapılar son zamanlar ticari obyektlərdə, biznes mərkəzlərində, idarələrdə geniş istifadə olunan bir giriş vasitəsidir. Bu c&uuml;r qapılar i&ccedil;əridəki temperaturu sabit saxlamaq &uuml;&ccedil;&uuml;n ən ideal vasitələrdəndir. D&ouml;nər qapılar istənilən formada və istənilən &uuml;sluba uyğun quraşdırıla bilinir. M&uuml;xtəlif dizaynlarda təklif olunur.</p>\r\n\r\n<p>Avtomatik d&ouml;nər qapıların saydığımız cəhətlərindən əlavə &uuml;st&uuml;nl&uuml;kləri də vardır ki, bunlardan biri də onların mexaniki hissələrinin intensiv istifadəyə uyğunlasşdırılmasıdır. Bu da onlara daha uzun&ouml;m&uuml;rl&uuml; istifadə imkanı bəxş edir.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-yarimdairevi-qapilar\">Yarımdairəvi Qapılar</a></h3>\r\n\r\n<p>Son d&ouml;vrlərdə x&uuml;susi orjinallığı ilə fərqlənən və qeyri standart &uuml;slubda olan girişlər məşhurluq qazanmışdır. Yarımdairəvi qapılar da bunlardan biridir. Bu qapılar &nbsp;m&uuml;xtəlif materiallardan hazırlanır, istənilən &uuml;slubda və istənilən interyerə uyğun təşkil olunur.</p>\r\n\r\n<p>Yarımdairəvi qapılar bir &ccedil;ox &uuml;st&uuml;n x&uuml;susiyyətləri ilə digərlərindən fərqlənir. Bu qapılar istismarda olduqca səmərəlidir. Belə ki, bu qapıların istifadə edildiyi yerlərdə i&ccedil;əridə tənzimlənmiş hava &ccedil;&ouml;lə axın etmir. Bu da &ouml;z n&ouml;vbəsində bu vəya digər tanzimləmələr &uuml;&ccedil;&uuml;n ayrılan vəsaitə qənaət imkanı yaradır. İstənilən binada elektrik kəsintisi halları istisna deyildir. Hətta bu hallarda belə yarımdairəvi qapılar bir ne&ccedil;ə saat işləyə bilər. Səssiz işləmə x&uuml;susiyyəti ilə fərqlənən bu qapılar binanın daxili qəza sistemi ilə də birləşdirilə bilər. B&uuml;t&uuml;n bu sayılan &uuml;st&uuml;nl&uuml;klər qonaqların və personalın rahatlığını , ən əsası isə həyat təhl&uuml;kəsizliyini təmin edir.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-hermetik-ve-xestexana-qapilari\">Hermetik və Xəstəxana Qapıları</a></h3>\r\n\r\n<p>Hermetik qapılar xəstəxana binalarında quraşdırılan qapılardandandır. Bu qapılar əsasən m&uuml;əyyən otaqların steril vəziyyətini tarazlaşdırmaqda k&ouml;mək edir. Əməlliyyat otaqlarının və reanimasiyaların girişlərinə quraşdırılır. İstehsalında x&uuml;susi laminat və poladdan istifadə olunur. A&ccedil;ılma formalarına g&ouml;rə m&uuml;xtəlif tipləri m&ouml;vcuddur. Təhl&uuml;kəsizlik baxımından bu qapıların a&ccedil;ılmasında barmaq izi, kart, şifrə kimi vasitələr istifadə olunur.</p>\r\n\r\n<p>Hermetik qapılar bir &ccedil;ox hallarda x&uuml;susi laboratoriyalarda da quraşdırılır. Kimyəvi maddələrin &ccedil;&ouml;lə axınının və ya i&ccedil;əriyə digər maddələrin hava axını ilə daxil olmasının qarşısının alınmasında b&ouml;y&uuml;k rol oynayır.</p>\r\n', '<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-fotosel-qapilar\">Fotosel Qapılar</a></h3>\r\n\r\n<p>Son d&ouml;vrlərdə x&uuml;susi orjinallığı ilə fərqlənən və qeyri standart &uuml;slubda olan girişlər məşhurluq qazanmışdır. Yarımdairəvi qapılar da bunlardan biridir. Bu qapılar &nbsp;m&uuml;xtəlif materiallardan hazırlanır, istənilən &uuml;slubda və istənilən interyerə uyğun təşkil olunur.</p>\r\n\r\n<p>Yarımdairəvi qapılar bir &ccedil;ox &uuml;st&uuml;n x&uuml;susiyyətləri ilə digərlərindən fərqlənir. Bu qapılar istismarda olduqca səmərəlidir. Belə ki, bu qapıların istifadə edildiyi yerlərdə i&ccedil;əridə tənzimlənmiş hava &ccedil;&ouml;lə axın etmir. Bu da &ouml;z n&ouml;vbəsində bu vəya digər tanzimləmələr &uuml;&ccedil;&uuml;n ayrılan vəsaitə qənaət imkanı yaradır. İstənilən binada elektrik kəsintisi halları istisna deyildir. Hətta bu hallarda belə yarımdairəvi qapılar bir ne&ccedil;ə saat işləyə bilər. Səssiz işləmə x&uuml;susiyyəti ilə fərqlənən bu qapılar binanın daxili qəza sistemi ilə də birləşdirilə bilər. B&uuml;t&uuml;n bu sayılan &uuml;st&uuml;nl&uuml;klər qonaqların və personalın rahatlığını , ən əsası isə həyat təhl&uuml;kəsizliyini təmin edir.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-doner-qapilar\">D&ouml;nər Qapılar</a></h3>\r\n\r\n<p>Avtomatik d&ouml;nər qapılar son zamanlar ticari obyektlərdə, biznes mərkəzlərində, idarələrdə geniş istifadə olunan bir giriş vasitəsidir. Bu c&uuml;r qapılar i&ccedil;əridəki temperaturu sabit saxlamaq &uuml;&ccedil;&uuml;n ən ideal vasitələrdəndir. D&ouml;nər qapılar istənilən formada və istənilən &uuml;sluba uyğun quraşdırıla bilinir. M&uuml;xtəlif dizaynlarda təklif olunur.</p>\r\n\r\n<p>Avtomatik d&ouml;nər qapıların saydığımız cəhətlərindən əlavə &uuml;st&uuml;nl&uuml;kləri də vardır ki, bunlardan biri də onların mexaniki hissələrinin intensiv istifadəyə uyğunlasşdırılmasıdır. Bu da onlara daha uzun&ouml;m&uuml;rl&uuml; istifadə imkanı bəxş edir.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-yarimdairevi-qapilar\">Yarımdairəvi Qapılar</a></h3>\r\n\r\n<p>Son d&ouml;vrlərdə x&uuml;susi orjinallığı ilə fərqlənən və qeyri standart &uuml;slubda olan girişlər məşhurluq qazanmışdır. Yarımdairəvi qapılar da bunlardan biridir. Bu qapılar &nbsp;m&uuml;xtəlif materiallardan hazırlanır, istənilən &uuml;slubda və istənilən interyerə uyğun təşkil olunur.</p>\r\n\r\n<p>Yarımdairəvi qapılar bir &ccedil;ox &uuml;st&uuml;n x&uuml;susiyyətləri ilə digərlərindən fərqlənir. Bu qapılar istismarda olduqca səmərəlidir. Belə ki, bu qapıların istifadə edildiyi yerlərdə i&ccedil;əridə tənzimlənmiş hava &ccedil;&ouml;lə axın etmir. Bu da &ouml;z n&ouml;vbəsində bu vəya digər tanzimləmələr &uuml;&ccedil;&uuml;n ayrılan vəsaitə qənaət imkanı yaradır. İstənilən binada elektrik kəsintisi halları istisna deyildir. Hətta bu hallarda belə yarımdairəvi qapılar bir ne&ccedil;ə saat işləyə bilər. Səssiz işləmə x&uuml;susiyyəti ilə fərqlənən bu qapılar binanın daxili qəza sistemi ilə də birləşdirilə bilər. B&uuml;t&uuml;n bu sayılan &uuml;st&uuml;nl&uuml;klər qonaqların və personalın rahatlığını , ən əsası isə həyat təhl&uuml;kəsizliyini təmin edir.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-hermetik-ve-xestexana-qapilari\">Hermetik və Xəstəxana Qapıları</a></h3>\r\n\r\n<p>Hermetik qapılar xəstəxana binalarında quraşdırılan qapılardandandır. Bu qapılar əsasən m&uuml;əyyən otaqların steril vəziyyətini tarazlaşdırmaqda k&ouml;mək edir. Əməlliyyat otaqlarının və reanimasiyaların girişlərinə quraşdırılır. İstehsalında x&uuml;susi laminat və poladdan istifadə olunur. A&ccedil;ılma formalarına g&ouml;rə m&uuml;xtəlif tipləri m&ouml;vcuddur. Təhl&uuml;kəsizlik baxımından bu qapıların a&ccedil;ılmasında barmaq izi, kart, şifrə kimi vasitələr istifadə olunur.</p>\r\n\r\n<p>Hermetik qapılar bir &ccedil;ox hallarda x&uuml;susi laboratoriyalarda da quraşdırılır. Kimyəvi maddələrin &ccedil;&ouml;lə axınının və ya i&ccedil;əriyə digər maddələrin hava axını ilə daxil olmasının qarşısının alınmasında b&ouml;y&uuml;k rol oynayır.</p>\r\n', '<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-fotosel-qapilar\">Fotosel Qapılar</a></h3>\r\n\r\n<p>Son d&ouml;vrlərdə x&uuml;susi orjinallığı ilə fərqlənən və qeyri standart &uuml;slubda olan girişlər məşhurluq qazanmışdır. Yarımdairəvi qapılar da bunlardan biridir. Bu qapılar &nbsp;m&uuml;xtəlif materiallardan hazırlanır, istənilən &uuml;slubda və istənilən interyerə uyğun təşkil olunur.</p>\r\n\r\n<p>Yarımdairəvi qapılar bir &ccedil;ox &uuml;st&uuml;n x&uuml;susiyyətləri ilə digərlərindən fərqlənir. Bu qapılar istismarda olduqca səmərəlidir. Belə ki, bu qapıların istifadə edildiyi yerlərdə i&ccedil;əridə tənzimlənmiş hava &ccedil;&ouml;lə axın etmir. Bu da &ouml;z n&ouml;vbəsində bu vəya digər tanzimləmələr &uuml;&ccedil;&uuml;n ayrılan vəsaitə qənaət imkanı yaradır. İstənilən binada elektrik kəsintisi halları istisna deyildir. Hətta bu hallarda belə yarımdairəvi qapılar bir ne&ccedil;ə saat işləyə bilər. Səssiz işləmə x&uuml;susiyyəti ilə fərqlənən bu qapılar binanın daxili qəza sistemi ilə də birləşdirilə bilər. B&uuml;t&uuml;n bu sayılan &uuml;st&uuml;nl&uuml;klər qonaqların və personalın rahatlığını , ən əsası isə həyat təhl&uuml;kəsizliyini təmin edir.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-doner-qapilar\">D&ouml;nər Qapılar</a></h3>\r\n\r\n<p>Avtomatik d&ouml;nər qapılar son zamanlar ticari obyektlərdə, biznes mərkəzlərində, idarələrdə geniş istifadə olunan bir giriş vasitəsidir. Bu c&uuml;r qapılar i&ccedil;əridəki temperaturu sabit saxlamaq &uuml;&ccedil;&uuml;n ən ideal vasitələrdəndir. D&ouml;nər qapılar istənilən formada və istənilən &uuml;sluba uyğun quraşdırıla bilinir. M&uuml;xtəlif dizaynlarda təklif olunur.</p>\r\n\r\n<p>Avtomatik d&ouml;nər qapıların saydığımız cəhətlərindən əlavə &uuml;st&uuml;nl&uuml;kləri də vardır ki, bunlardan biri də onların mexaniki hissələrinin intensiv istifadəyə uyğunlasşdırılmasıdır. Bu da onlara daha uzun&ouml;m&uuml;rl&uuml; istifadə imkanı bəxş edir.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-yarimdairevi-qapilar\">Yarımdairəvi Qapılar</a></h3>\r\n\r\n<p>Son d&ouml;vrlərdə x&uuml;susi orjinallığı ilə fərqlənən və qeyri standart &uuml;slubda olan girişlər məşhurluq qazanmışdır. Yarımdairəvi qapılar da bunlardan biridir. Bu qapılar &nbsp;m&uuml;xtəlif materiallardan hazırlanır, istənilən &uuml;slubda və istənilən interyerə uyğun təşkil olunur.</p>\r\n\r\n<p>Yarımdairəvi qapılar bir &ccedil;ox &uuml;st&uuml;n x&uuml;susiyyətləri ilə digərlərindən fərqlənir. Bu qapılar istismarda olduqca səmərəlidir. Belə ki, bu qapıların istifadə edildiyi yerlərdə i&ccedil;əridə tənzimlənmiş hava &ccedil;&ouml;lə axın etmir. Bu da &ouml;z n&ouml;vbəsində bu vəya digər tanzimləmələr &uuml;&ccedil;&uuml;n ayrılan vəsaitə qənaət imkanı yaradır. İstənilən binada elektrik kəsintisi halları istisna deyildir. Hətta bu hallarda belə yarımdairəvi qapılar bir ne&ccedil;ə saat işləyə bilər. Səssiz işləmə x&uuml;susiyyəti ilə fərqlənən bu qapılar binanın daxili qəza sistemi ilə də birləşdirilə bilər. B&uuml;t&uuml;n bu sayılan &uuml;st&uuml;nl&uuml;klər qonaqların və personalın rahatlığını , ən əsası isə həyat təhl&uuml;kəsizliyini təmin edir.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-hermetik-ve-xestexana-qapilari\">Hermetik və Xəstəxana Qapıları</a></h3>\r\n\r\n<p>Hermetik qapılar xəstəxana binalarında quraşdırılan qapılardandandır. Bu qapılar əsasən m&uuml;əyyən otaqların steril vəziyyətini tarazlaşdırmaqda k&ouml;mək edir. Əməlliyyat otaqlarının və reanimasiyaların girişlərinə quraşdırılır. İstehsalında x&uuml;susi laminat və poladdan istifadə olunur. A&ccedil;ılma formalarına g&ouml;rə m&uuml;xtəlif tipləri m&ouml;vcuddur. Təhl&uuml;kəsizlik baxımından bu qapıların a&ccedil;ılmasında barmaq izi, kart, şifrə kimi vasitələr istifadə olunur.</p>\r\n\r\n<p>Hermetik qapılar bir &ccedil;ox hallarda x&uuml;susi laboratoriyalarda da quraşdırılır. Kimyəvi maddələrin &ccedil;&ouml;lə axınının və ya i&ccedil;əriyə digər maddələrin hava axını ilə daxil olmasının qarşısının alınmasında b&ouml;y&uuml;k rol oynayır.</p>\r\n', 'Avtomatik Fotosel Və Dönər Qapılar', 'Avtomatik Fotosel Və Dönər Qapılar', 'Avtomatik Fotosel Və Dönər Qapılar', 1, '2022-01-19 18:52:14', 0, 'avtomatik-fotosel-ve-doner-qapilar', 0, 0, '/uploads/images/category/96f77d6a80fotosel.jpg'),
(9, 8, 'Fotosel Qapılar', 'Fotosel Qapılar', 'Fotosel Qapılar', '<p>Fotoselli avtomatik s&uuml;r&uuml;şmə qapıları istənilən məkanda girişin rahatlığını və səmərəliliyini təmin etmək &uuml;&ccedil;&uuml;n b&ouml;y&uuml;k rol oynayır. Son vaxtlar bir &ccedil;ox m&uuml;xtəlif təyinatlı iş yerlərində geniş istifadə edilir. Bu ona g&ouml;rədir ki, fotoselli qapılar bir &ccedil;ox &uuml;st&uuml;nl&uuml;klərinə g&ouml;rə digərlərindən fərqlənir. Təmasda olmadan a&ccedil;ılma &uuml;st&uuml;nl&uuml;y&uuml;nə malik olan bu qapılar i&ccedil;əridə olan tənzimlənmiş havanın &ccedil;&ouml;lə axın etməsinin də qarşısını alır. Avtomatik s&uuml;r&uuml;şmə qapıları m&uuml;xtəlif tiplərə b&ouml;l&uuml;n&uuml;r ki, bu da ke&ccedil;idin maksimumluğunu təmin etmə və ya tarazlaşdırma imkanı yaradır. Bu qapılar dizayn m&uuml;xtəlifliyində he&ccedil; bir sərhəd tanımır. Fotoselli qapılarda səssiz a&ccedil;ılıb bağlanma, istilik və səs izolyasiyası kimi x&uuml;suyyətləri də nəzərə almaq lazımdır. Siz bu tip qapılara həm də giriş təhl&uuml;kəsizliyi kimi x&uuml;susiyyətlər də artıra bilərsiniz ki, bu halda girişdən istifadə etməzdən əvvəl barmaq izi, şifrə və yaxud da kart istifadəsi zərurəti yaradacaqsınız. Biz sizə fotoselli avtomatik qapıları m&uuml;xtəlif ş&uuml;şə n&ouml;vləri ilə təklif edirik.</p>\r\n', '<p>Fotoselli avtomatik s&uuml;r&uuml;şmə qapıları istənilən məkanda girişin rahatlığını və səmərəliliyini təmin etmək &uuml;&ccedil;&uuml;n b&ouml;y&uuml;k rol oynayır. Son vaxtlar bir &ccedil;ox m&uuml;xtəlif təyinatlı iş yerlərində geniş istifadə edilir. Bu ona g&ouml;rədir ki, fotoselli qapılar bir &ccedil;ox &uuml;st&uuml;nl&uuml;klərinə g&ouml;rə digərlərindən fərqlənir. Təmasda olmadan a&ccedil;ılma &uuml;st&uuml;nl&uuml;y&uuml;nə malik olan bu qapılar i&ccedil;əridə olan tənzimlənmiş havanın &ccedil;&ouml;lə axın etməsinin də qarşısını alır. Avtomatik s&uuml;r&uuml;şmə qapıları m&uuml;xtəlif tiplərə b&ouml;l&uuml;n&uuml;r ki, bu da ke&ccedil;idin maksimumluğunu təmin etmə və ya tarazlaşdırma imkanı yaradır. Bu qapılar dizayn m&uuml;xtəlifliyində he&ccedil; bir sərhəd tanımır. Fotoselli qapılarda səssiz a&ccedil;ılıb bağlanma, istilik və səs izolyasiyası kimi x&uuml;suyyətləri də nəzərə almaq lazımdır. Siz bu tip qapılara həm də giriş təhl&uuml;kəsizliyi kimi x&uuml;susiyyətlər də artıra bilərsiniz ki, bu halda girişdən istifadə etməzdən əvvəl barmaq izi, şifrə və yaxud da kart istifadəsi zərurəti yaradacaqsınız. Biz sizə fotoselli avtomatik qapıları m&uuml;xtəlif ş&uuml;şə n&ouml;vləri ilə təklif edirik.</p>\r\n', '<p>Fotoselli avtomatik s&uuml;r&uuml;şmə qapıları istənilən məkanda girişin rahatlığını və səmərəliliyini təmin etmək &uuml;&ccedil;&uuml;n b&ouml;y&uuml;k rol oynayır. Son vaxtlar bir &ccedil;ox m&uuml;xtəlif təyinatlı iş yerlərində geniş istifadə edilir. Bu ona g&ouml;rədir ki, fotoselli qapılar bir &ccedil;ox &uuml;st&uuml;nl&uuml;klərinə g&ouml;rə digərlərindən fərqlənir. Təmasda olmadan a&ccedil;ılma &uuml;st&uuml;nl&uuml;y&uuml;nə malik olan bu qapılar i&ccedil;əridə olan tənzimlənmiş havanın &ccedil;&ouml;lə axın etməsinin də qarşısını alır. Avtomatik s&uuml;r&uuml;şmə qapıları m&uuml;xtəlif tiplərə b&ouml;l&uuml;n&uuml;r ki, bu da ke&ccedil;idin maksimumluğunu təmin etmə və ya tarazlaşdırma imkanı yaradır. Bu qapılar dizayn m&uuml;xtəlifliyində he&ccedil; bir sərhəd tanımır. Fotoselli qapılarda səssiz a&ccedil;ılıb bağlanma, istilik və səs izolyasiyası kimi x&uuml;suyyətləri də nəzərə almaq lazımdır. Siz bu tip qapılara həm də giriş təhl&uuml;kəsizliyi kimi x&uuml;susiyyətlər də artıra bilərsiniz ki, bu halda girişdən istifadə etməzdən əvvəl barmaq izi, şifrə və yaxud da kart istifadəsi zərurəti yaradacaqsınız. Biz sizə fotoselli avtomatik qapıları m&uuml;xtəlif ş&uuml;şə n&ouml;vləri ilə təklif edirik.</p>\r\n', 'Fotosel Qapılar', 'Fotosel Qapılar', 'Fotosel Qapılar', 1, '2022-01-19 18:53:21', 0, 'avtomatik-fotosel-ve-doner-qapilar-fotosel-qapilar', 0, 0, '/uploads/images/category/c9226222a9-Avtomatik-fotosel-ve-doner-qapilar-fotosel-qapilar.jpg'),
(10, 8, 'Dönər Qapılar', 'Dönər Qapılar', 'Dönər Qapılar', '<p>Avtomatik d&ouml;nər qapılar son zamanlar ticari obyektlərdə, biznes mərkəzlərində, idarələrdə geniş istifadə olunan bir giriş vasitəsidir. Bu c&uuml;r qapılar i&ccedil;əridəki temperaturu sabit saxlamaq &uuml;&ccedil;&uuml;n ən ideal vasitələrdəndir. D&ouml;nər qapılar istənilən formada və istənilən &uuml;sluba uyğun quraşdırıla bilinir. M&uuml;xtəlif dizaynlarda təklif olunur.</p>\r\n\r\n<p>Avtomatik d&ouml;nər qapıların saydığımız cəhətlərindən əlavə &uuml;st&uuml;nl&uuml;kləri də vardır ki, bunlardan biri də onların mexaniki hissələrinin intensiv istifadəyə uyğunlasşdırılmasıdır. Bu da onlara daha uzun&ouml;m&uuml;rl&uuml; istifadə imkanı bəxş edir.</p>\r\n', '<p>Avtomatik d&ouml;nər qapılar son zamanlar ticari obyektlərdə, biznes mərkəzlərində, idarələrdə geniş istifadə olunan bir giriş vasitəsidir. Bu c&uuml;r qapılar i&ccedil;əridəki temperaturu sabit saxlamaq &uuml;&ccedil;&uuml;n ən ideal vasitələrdəndir. D&ouml;nər qapılar istənilən formada və istənilən &uuml;sluba uyğun quraşdırıla bilinir. M&uuml;xtəlif dizaynlarda təklif olunur.</p>\r\n\r\n<p>Avtomatik d&ouml;nər qapıların saydığımız cəhətlərindən əlavə &uuml;st&uuml;nl&uuml;kləri də vardır ki, bunlardan biri də onların mexaniki hissələrinin intensiv istifadəyə uyğunlasşdırılmasıdır. Bu da onlara daha uzun&ouml;m&uuml;rl&uuml; istifadə imkanı bəxş edir.</p>\r\n', '<p>Avtomatik d&ouml;nər qapılar son zamanlar ticari obyektlərdə, biznes mərkəzlərində, idarələrdə geniş istifadə olunan bir giriş vasitəsidir. Bu c&uuml;r qapılar i&ccedil;əridəki temperaturu sabit saxlamaq &uuml;&ccedil;&uuml;n ən ideal vasitələrdəndir. D&ouml;nər qapılar istənilən formada və istənilən &uuml;sluba uyğun quraşdırıla bilinir. M&uuml;xtəlif dizaynlarda təklif olunur.</p>\r\n\r\n<p>Avtomatik d&ouml;nər qapıların saydığımız cəhətlərindən əlavə &uuml;st&uuml;nl&uuml;kləri də vardır ki, bunlardan biri də onların mexaniki hissələrinin intensiv istifadəyə uyğunlasşdırılmasıdır. Bu da onlara daha uzun&ouml;m&uuml;rl&uuml; istifadə imkanı bəxş edir.</p>\r\n', 'Dönər Qapılar', 'Dönər Qapılar', 'Dönər Qapılar', 1, '2022-01-19 18:53:46', 0, 'avtomatik-fotosel-ve-doner-qapilar-doner-qapilar', 0, 0, '/uploads/images/category/96e761ecec-Avtomatik-fotosel-ve-doner-qapilar-doner-qapilar.jpg'),
(11, 8, 'Yarımdairəvi Qapılar', 'Yarımdairəvi Qapılar', 'Yarımdairəvi Qapılar', '<p>Son d&ouml;vrlərdə x&uuml;susi orjinallığı ilə fərqlənən və qeyri standart &uuml;slubda olan girişlər məşhurluq qazanmışdır. Yarımdairəvi qapılar da bunlardan biridir. Bu qapılar&nbsp; m&uuml;xtəlif materiallardan hazırlanır, istənilən &uuml;slubda və istənilən interyerə uyğun təşkil olunur.</p>\r\n\r\n<p>Yarımdairəvi qapılar bir &ccedil;ox &uuml;st&uuml;n x&uuml;susiyyətləri ilə digərlərindən fərqlənir. Bu qapılar istismarda olduqca səmərəlidir. Belə ki, bu qapıların istifadə edildiyi yerlərdə i&ccedil;əridə tənzimlənmiş hava &ccedil;&ouml;lə axın etmir. Bu da &ouml;z n&ouml;vbəsində bu vəya digər tanzimləmələr &uuml;&ccedil;&uuml;n ayrılan vəsaitə qənaət imkanı yaradır. İstənilən binada elektrik kəsintisi halları istisna deyildir. Hətta bu hallarda belə yarımdairəvi qapılar bir ne&ccedil;ə saat işləyə bilər. Səssiz işləmə x&uuml;susiyyəti ilə fərqlənən bu qapılar binanın daxili qəza sistemi ilə də birləşdirilə bilər. B&uuml;t&uuml;n bu sayılan &uuml;st&uuml;nl&uuml;klər qonaqların və personalın rahatlığını , ən əsası isə həyat təhl&uuml;kəsizliyini təmin edir.</p>\r\n', '<p>Son d&ouml;vrlərdə x&uuml;susi orjinallığı ilə fərqlənən və qeyri standart &uuml;slubda olan girişlər məşhurluq qazanmışdır. Yarımdairəvi qapılar da bunlardan biridir. Bu qapılar&nbsp; m&uuml;xtəlif materiallardan hazırlanır, istənilən &uuml;slubda və istənilən interyerə uyğun təşkil olunur.</p>\r\n\r\n<p>Yarımdairəvi qapılar bir &ccedil;ox &uuml;st&uuml;n x&uuml;susiyyətləri ilə digərlərindən fərqlənir. Bu qapılar istismarda olduqca səmərəlidir. Belə ki, bu qapıların istifadə edildiyi yerlərdə i&ccedil;əridə tənzimlənmiş hava &ccedil;&ouml;lə axın etmir. Bu da &ouml;z n&ouml;vbəsində bu vəya digər tanzimləmələr &uuml;&ccedil;&uuml;n ayrılan vəsaitə qənaət imkanı yaradır. İstənilən binada elektrik kəsintisi halları istisna deyildir. Hətta bu hallarda belə yarımdairəvi qapılar bir ne&ccedil;ə saat işləyə bilər. Səssiz işləmə x&uuml;susiyyəti ilə fərqlənən bu qapılar binanın daxili qəza sistemi ilə də birləşdirilə bilər. B&uuml;t&uuml;n bu sayılan &uuml;st&uuml;nl&uuml;klər qonaqların və personalın rahatlığını , ən əsası isə həyat təhl&uuml;kəsizliyini təmin edir.</p>\r\n', '<p>Son d&ouml;vrlərdə x&uuml;susi orjinallığı ilə fərqlənən və qeyri standart &uuml;slubda olan girişlər məşhurluq qazanmışdır. Yarımdairəvi qapılar da bunlardan biridir. Bu qapılar&nbsp; m&uuml;xtəlif materiallardan hazırlanır, istənilən &uuml;slubda və istənilən interyerə uyğun təşkil olunur.</p>\r\n\r\n<p>Yarımdairəvi qapılar bir &ccedil;ox &uuml;st&uuml;n x&uuml;susiyyətləri ilə digərlərindən fərqlənir. Bu qapılar istismarda olduqca səmərəlidir. Belə ki, bu qapıların istifadə edildiyi yerlərdə i&ccedil;əridə tənzimlənmiş hava &ccedil;&ouml;lə axın etmir. Bu da &ouml;z n&ouml;vbəsində bu vəya digər tanzimləmələr &uuml;&ccedil;&uuml;n ayrılan vəsaitə qənaət imkanı yaradır. İstənilən binada elektrik kəsintisi halları istisna deyildir. Hətta bu hallarda belə yarımdairəvi qapılar bir ne&ccedil;ə saat işləyə bilər. Səssiz işləmə x&uuml;susiyyəti ilə fərqlənən bu qapılar binanın daxili qəza sistemi ilə də birləşdirilə bilər. B&uuml;t&uuml;n bu sayılan &uuml;st&uuml;nl&uuml;klər qonaqların və personalın rahatlığını , ən əsası isə həyat təhl&uuml;kəsizliyini təmin edir.</p>\r\n', 'Yarımdairəvi Qapılar', 'Yarımdairəvi Qapılar', 'Yarımdairəvi Qapılar', 1, '2022-01-19 18:54:09', 0, 'avtomatik-fotosel-ve-doner-qapilar-yarimdairevi-qapilar', 0, 0, '/uploads/images/category/bb3f4e750b-Avtomatik-fotosel-ve-doner-qapilar-yarimdairevi-qapilar.jpg'),
(12, 8, 'Hermetik və Xəstəxana Qapıları', 'Hermetik və Xəstəxana Qapıları', 'Hermetik və Xəstəxana Qapıları', '<p>Hermetik qapılar xəstəxana binalarında quraşdırılan qapılardandandır. Bu qapılar əsasən m&uuml;əyyən otaqların steril vəziyyətini tarazlaşdırmaqda k&ouml;mək edir. Əməlliyyat otaqlarının və reanimasiyaların girişlərinə quraşdırılır. İstehsalında x&uuml;susi laminat və poladdan istifadə olunur. A&ccedil;ılma formalarına g&ouml;rə m&uuml;xtəlif tipləri m&ouml;vcuddur. Təhl&uuml;kəsizlik baxımından bu qapıların a&ccedil;ılmasında barmaq izi, kart, şifrə kimi vasitələr istifadə olunur.</p>\r\n\r\n<p>Hermetik qapılar bir &ccedil;ox hallarda x&uuml;susi laboratoriyalarda da quraşdırılır. Kimyəvi maddələrin &ccedil;&ouml;lə axınının və ya i&ccedil;əriyə digər maddələrin hava axını ilə daxil olmasının qarşısının alınmasında b&ouml;y&uuml;k rol oynayır.</p>\r\n', '<p>Hermetik qapılar xəstəxana binalarında quraşdırılan qapılardandandır. Bu qapılar əsasən m&uuml;əyyən otaqların steril vəziyyətini tarazlaşdırmaqda k&ouml;mək edir. Əməlliyyat otaqlarının və reanimasiyaların girişlərinə quraşdırılır. İstehsalında x&uuml;susi laminat və poladdan istifadə olunur. A&ccedil;ılma formalarına g&ouml;rə m&uuml;xtəlif tipləri m&ouml;vcuddur. Təhl&uuml;kəsizlik baxımından bu qapıların a&ccedil;ılmasında barmaq izi, kart, şifrə kimi vasitələr istifadə olunur.</p>\r\n\r\n<p>Hermetik qapılar bir &ccedil;ox hallarda x&uuml;susi laboratoriyalarda da quraşdırılır. Kimyəvi maddələrin &ccedil;&ouml;lə axınının və ya i&ccedil;əriyə digər maddələrin hava axını ilə daxil olmasının qarşısının alınmasında b&ouml;y&uuml;k rol oynayır.</p>\r\n', '<p>Hermetik qapılar xəstəxana binalarında quraşdırılan qapılardandandır. Bu qapılar əsasən m&uuml;əyyən otaqların steril vəziyyətini tarazlaşdırmaqda k&ouml;mək edir. Əməlliyyat otaqlarının və reanimasiyaların girişlərinə quraşdırılır. İstehsalında x&uuml;susi laminat və poladdan istifadə olunur. A&ccedil;ılma formalarına g&ouml;rə m&uuml;xtəlif tipləri m&ouml;vcuddur. Təhl&uuml;kəsizlik baxımından bu qapıların a&ccedil;ılmasında barmaq izi, kart, şifrə kimi vasitələr istifadə olunur.</p>\r\n\r\n<p>Hermetik qapılar bir &ccedil;ox hallarda x&uuml;susi laboratoriyalarda da quraşdırılır. Kimyəvi maddələrin &ccedil;&ouml;lə axınının və ya i&ccedil;əriyə digər maddələrin hava axını ilə daxil olmasının qarşısının alınmasında b&ouml;y&uuml;k rol oynayır.</p>\r\n', 'Hermetik Və Xəstəxana Qapıları', 'Hermetik Və Xəstəxana Qapıları', 'Hermetik Və Xəstəxana Qapıları', 1, '2022-01-19 18:54:28', 0, 'avtomatik-fotosel-ve-doner-qapilar-hermetik-ve-xestexana-qapilari', 0, 0, '/uploads/images/category/c08eba001c-Avtomatik-fotosel-ve-doner-qapilar-hermetik-ve-xestexana-qapilari.jpg'),
(13, 0, 'Avtomatik Seksiyonal Qapılar', 'Avtomatik Seksiyonal Qapılar', 'Avtomatik Seksiyonal Qapılar', '<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-seksiyonal-qapilar-qaraj-qapilari\">Qaraj Qapıları</a></h3>\r\n\r\n<p>Qaraj qapıları da bir &ccedil;ox istifadə vasitələri kimi son d&ouml;vr&uuml;n texnaloji nəaliyyətlərindən bəhrələnmişdir. Belə ki, onların avtomatlaşdırılması artıq bir məcburiyyət halını almışdır. Bu c&uuml;r qapılar digərlərindən bir &ccedil;ox &uuml;st&uuml;nl&uuml;kləri ilə fərqlənir ki, bunlardan da ən başlıcası uzağdan idarəetmə vasitəsi ilə işləməsidir. Artıq siz d&uuml;yməni sıxmaqla qapıların a&ccedil;ılmasını və bağlanmasını təşkil edə bilərsiniz. Bu isə sizə pis hava şəraitində nəqliyyat vasitəsini tərk etmədən qaraja daxil olmanızı təmin edəcək.</p>\r\n\r\n<p>Avtomatik qaraj qapıları həm də x&uuml;susi radar sisteminə malikdir. Qapılar hər hansı bir əşya ilə təmas edərkən avtomatik dayanır. Bu halda baş verə biləcək m&uuml;xtəlif qəza hallarının qarşısı da alınmış olur.</p>\r\n\r\n<p>Biz qaraj qapılarının istehsalında avropanın brend şirkətlərinin məhsullarından istifadə edirik. Bu şirkətlərin bu g&uuml;nə qədər əldə etdikləri təcr&uuml;bələr də işin sonunda &ouml;z nəticəsini g&ouml;stərir.</p>\r\n\r\n<p>Avtomatik qaraj qapılarının istehsalında sendvi&ccedil; panellərdən istifadə olunur. Bu halda qapılar isti və soyuğa davamlı bir hala gəlir. Bu panellərin qalınlığı əsasən 45 mm təşkil edir. Bu c&uuml;r qapıların mexaniki hissələri də davamlı və uzun&ouml;m&uuml;rl&uuml; olur.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-seksiyonal-qapilar-senaye-qapilari\">Sənaye Qapıları</a></h3>\r\n\r\n<p>Avtomatik sənaye qapıları istifadəyə daha intensiv məruz qaldığı &uuml;&ccedil;&uuml;n onların keyfiyyət parametrlərinə olan tələb də artır. Bu c&uuml;r qapılarda davamlılığ və uzun&ouml;m&uuml;rl&uuml;l&uuml;k əsas şərtlərdəndir. Bu qapıların istehsalında istifadə olunan panellər 40 mm qalınlığa malik olur. Sənaye qapıları y&uuml;ksək istilik izolyasiyasına malikdir. Bundan başqa bu qapılar həm də iş&ccedil;i heyyətin təhl&uuml;kəsizliyini də təmin edir.</p>\r\n\r\n<p>Avtomatik sənaye qapılarının mexaniki hissələri də digər n&ouml;vlərdən &ouml;z davamlılığı ilə fərqlənir. Bu da &ouml;z n&ouml;vbəsində qapıların intensiv istifadəsinə şərait yaradır.</p>\r\n', '<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-seksiyonal-qapilar-qaraj-qapilari\">Qaraj Qapıları</a></h3>\r\n\r\n<p>Qaraj qapıları da bir &ccedil;ox istifadə vasitələri kimi son d&ouml;vr&uuml;n texnaloji nəaliyyətlərindən bəhrələnmişdir. Belə ki, onların avtomatlaşdırılması artıq bir məcburiyyət halını almışdır. Bu c&uuml;r qapılar digərlərindən bir &ccedil;ox &uuml;st&uuml;nl&uuml;kləri ilə fərqlənir ki, bunlardan da ən başlıcası uzağdan idarəetmə vasitəsi ilə işləməsidir. Artıq siz d&uuml;yməni sıxmaqla qapıların a&ccedil;ılmasını və bağlanmasını təşkil edə bilərsiniz. Bu isə sizə pis hava şəraitində nəqliyyat vasitəsini tərk etmədən qaraja daxil olmanızı təmin edəcək.</p>\r\n\r\n<p>Avtomatik qaraj qapıları həm də x&uuml;susi radar sisteminə malikdir. Qapılar hər hansı bir əşya ilə təmas edərkən avtomatik dayanır. Bu halda baş verə biləcək m&uuml;xtəlif qəza hallarının qarşısı da alınmış olur.</p>\r\n\r\n<p>Biz qaraj qapılarının istehsalında avropanın brend şirkətlərinin məhsullarından istifadə edirik. Bu şirkətlərin bu g&uuml;nə qədər əldə etdikləri təcr&uuml;bələr də işin sonunda &ouml;z nəticəsini g&ouml;stərir.</p>\r\n\r\n<p>Avtomatik qaraj qapılarının istehsalında sendvi&ccedil; panellərdən istifadə olunur. Bu halda qapılar isti və soyuğa davamlı bir hala gəlir. Bu panellərin qalınlığı əsasən 45 mm təşkil edir. Bu c&uuml;r qapıların mexaniki hissələri də davamlı və uzun&ouml;m&uuml;rl&uuml; olur.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-seksiyonal-qapilar-senaye-qapilari\">Sənaye Qapıları</a></h3>\r\n\r\n<p>Avtomatik sənaye qapıları istifadəyə daha intensiv məruz qaldığı &uuml;&ccedil;&uuml;n onların keyfiyyət parametrlərinə olan tələb də artır. Bu c&uuml;r qapılarda davamlılığ və uzun&ouml;m&uuml;rl&uuml;l&uuml;k əsas şərtlərdəndir. Bu qapıların istehsalında istifadə olunan panellər 40 mm qalınlığa malik olur. Sənaye qapıları y&uuml;ksək istilik izolyasiyasına malikdir. Bundan başqa bu qapılar həm də iş&ccedil;i heyyətin təhl&uuml;kəsizliyini də təmin edir.</p>\r\n\r\n<p>Avtomatik sənaye qapılarının mexaniki hissələri də digər n&ouml;vlərdən &ouml;z davamlılığı ilə fərqlənir. Bu da &ouml;z n&ouml;vbəsində qapıların intensiv istifadəsinə şərait yaradır.</p>\r\n', '<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-seksiyonal-qapilar-qaraj-qapilari\">Qaraj Qapıları</a></h3>\r\n\r\n<p>Qaraj qapıları da bir &ccedil;ox istifadə vasitələri kimi son d&ouml;vr&uuml;n texnaloji nəaliyyətlərindən bəhrələnmişdir. Belə ki, onların avtomatlaşdırılması artıq bir məcburiyyət halını almışdır. Bu c&uuml;r qapılar digərlərindən bir &ccedil;ox &uuml;st&uuml;nl&uuml;kləri ilə fərqlənir ki, bunlardan da ən başlıcası uzağdan idarəetmə vasitəsi ilə işləməsidir. Artıq siz d&uuml;yməni sıxmaqla qapıların a&ccedil;ılmasını və bağlanmasını təşkil edə bilərsiniz. Bu isə sizə pis hava şəraitində nəqliyyat vasitəsini tərk etmədən qaraja daxil olmanızı təmin edəcək.</p>\r\n\r\n<p>Avtomatik qaraj qapıları həm də x&uuml;susi radar sisteminə malikdir. Qapılar hər hansı bir əşya ilə təmas edərkən avtomatik dayanır. Bu halda baş verə biləcək m&uuml;xtəlif qəza hallarının qarşısı da alınmış olur.</p>\r\n\r\n<p>Biz qaraj qapılarının istehsalında avropanın brend şirkətlərinin məhsullarından istifadə edirik. Bu şirkətlərin bu g&uuml;nə qədər əldə etdikləri təcr&uuml;bələr də işin sonunda &ouml;z nəticəsini g&ouml;stərir.</p>\r\n\r\n<p>Avtomatik qaraj qapılarının istehsalında sendvi&ccedil; panellərdən istifadə olunur. Bu halda qapılar isti və soyuğa davamlı bir hala gəlir. Bu panellərin qalınlığı əsasən 45 mm təşkil edir. Bu c&uuml;r qapıların mexaniki hissələri də davamlı və uzun&ouml;m&uuml;rl&uuml; olur.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-seksiyonal-qapilar-senaye-qapilari\">Sənaye Qapıları</a></h3>\r\n\r\n<p>Avtomatik sənaye qapıları istifadəyə daha intensiv məruz qaldığı &uuml;&ccedil;&uuml;n onların keyfiyyət parametrlərinə olan tələb də artır. Bu c&uuml;r qapılarda davamlılığ və uzun&ouml;m&uuml;rl&uuml;l&uuml;k əsas şərtlərdəndir. Bu qapıların istehsalında istifadə olunan panellər 40 mm qalınlığa malik olur. Sənaye qapıları y&uuml;ksək istilik izolyasiyasına malikdir. Bundan başqa bu qapılar həm də iş&ccedil;i heyyətin təhl&uuml;kəsizliyini də təmin edir.</p>\r\n\r\n<p>Avtomatik sənaye qapılarının mexaniki hissələri də digər n&ouml;vlərdən &ouml;z davamlılığı ilə fərqlənir. Bu da &ouml;z n&ouml;vbəsində qapıların intensiv istifadəsinə şərait yaradır.</p>\r\n', 'Avtomatik Seksiyonal Qapılar', 'Avtomatik Seksiyonal Qapılar', 'Avtomatik Seksiyonal Qapılar', 1, '2022-01-19 18:55:38', 0, 'avtomatik-seksiyonal-qapilar', 0, 0, '/uploads/images/category/998a85f7d0-Avtomatik-seksiyonal-qapilar.jpg'),
(14, 13, 'Qaraj Qapıları', 'Qaraj Qapıları', 'Qaraj Qapıları', '<p>Qaraj qapıları da bir &ccedil;ox istifadə vasitələri kimi son d&ouml;vr&uuml;n texnaloji nəaliyyətlərindən bəhrələnmişdir. Belə ki, onların avtomatlaşdırılması artıq bir məcburiyyət halını almışdır. Bu c&uuml;r qapılar digərlərindən bir &ccedil;ox &uuml;st&uuml;nl&uuml;kləri ilə fərqlənir ki, bunlardan da ən başlıcası uzağdan idarəetmə vasitəsi ilə işləməsidir. Artıq siz d&uuml;yməni sıxmaqla qapıların a&ccedil;ılmasını və bağlanmasını təşkil edə bilərsiniz. Bu isə sizə pis hava şəraitində nəqliyyat vasitəsini tərk etmədən qaraja daxil olmanızı təmin edəcək.</p>\r\n\r\n<p>Avtomatik qaraj qapıları həm də x&uuml;susi radar sisteminə malikdir. Qapılar hər hansı bir əşya ilə təmas edərkən avtomatik dayanır. Bu halda baş verə biləcək m&uuml;xtəlif qəza hallarının qarşısı da alınmış olur.</p>\r\n\r\n<p>Biz qaraj qapılarının istehsalında avropanın brend şirkətlərinin məhsullarından istifadə edirik. Bu şirkətlərin bu g&uuml;nə qədər əldə etdikləri təcr&uuml;bələr də işin sonunda &ouml;z nəticəsini g&ouml;stərir.</p>\r\n\r\n<p>Avtomatik qaraj qapılarının istehsalında sendvi&ccedil; panellərdən istifadə olunur. Bu halda qapılar isti və soyuğa davamlı bir hala gəlir. Bu panellərin qalınlığı əsasən 45 mm təşkil edir. Bu c&uuml;r qapıların mexaniki hissələri də davamlı və uzun&ouml;m&uuml;rl&uuml; olur.</p>\r\n', '<p>Qaraj qapıları da bir &ccedil;ox istifadə vasitələri kimi son d&ouml;vr&uuml;n texnaloji nəaliyyətlərindən bəhrələnmişdir. Belə ki, onların avtomatlaşdırılması artıq bir məcburiyyət halını almışdır. Bu c&uuml;r qapılar digərlərindən bir &ccedil;ox &uuml;st&uuml;nl&uuml;kləri ilə fərqlənir ki, bunlardan da ən başlıcası uzağdan idarəetmə vasitəsi ilə işləməsidir. Artıq siz d&uuml;yməni sıxmaqla qapıların a&ccedil;ılmasını və bağlanmasını təşkil edə bilərsiniz. Bu isə sizə pis hava şəraitində nəqliyyat vasitəsini tərk etmədən qaraja daxil olmanızı təmin edəcək.</p>\r\n\r\n<p>Avtomatik qaraj qapıları həm də x&uuml;susi radar sisteminə malikdir. Qapılar hər hansı bir əşya ilə təmas edərkən avtomatik dayanır. Bu halda baş verə biləcək m&uuml;xtəlif qəza hallarının qarşısı da alınmış olur.</p>\r\n\r\n<p>Biz qaraj qapılarının istehsalında avropanın brend şirkətlərinin məhsullarından istifadə edirik. Bu şirkətlərin bu g&uuml;nə qədər əldə etdikləri təcr&uuml;bələr də işin sonunda &ouml;z nəticəsini g&ouml;stərir.</p>\r\n\r\n<p>Avtomatik qaraj qapılarının istehsalında sendvi&ccedil; panellərdən istifadə olunur. Bu halda qapılar isti və soyuğa davamlı bir hala gəlir. Bu panellərin qalınlığı əsasən 45 mm təşkil edir. Bu c&uuml;r qapıların mexaniki hissələri də davamlı və uzun&ouml;m&uuml;rl&uuml; olur.</p>\r\n', '<p>Qaraj qapıları da bir &ccedil;ox istifadə vasitələri kimi son d&ouml;vr&uuml;n texnaloji nəaliyyətlərindən bəhrələnmişdir. Belə ki, onların avtomatlaşdırılması artıq bir məcburiyyət halını almışdır. Bu c&uuml;r qapılar digərlərindən bir &ccedil;ox &uuml;st&uuml;nl&uuml;kləri ilə fərqlənir ki, bunlardan da ən başlıcası uzağdan idarəetmə vasitəsi ilə işləməsidir. Artıq siz d&uuml;yməni sıxmaqla qapıların a&ccedil;ılmasını və bağlanmasını təşkil edə bilərsiniz. Bu isə sizə pis hava şəraitində nəqliyyat vasitəsini tərk etmədən qaraja daxil olmanızı təmin edəcək.</p>\r\n\r\n<p>Avtomatik qaraj qapıları həm də x&uuml;susi radar sisteminə malikdir. Qapılar hər hansı bir əşya ilə təmas edərkən avtomatik dayanır. Bu halda baş verə biləcək m&uuml;xtəlif qəza hallarının qarşısı da alınmış olur.</p>\r\n\r\n<p>Biz qaraj qapılarının istehsalında avropanın brend şirkətlərinin məhsullarından istifadə edirik. Bu şirkətlərin bu g&uuml;nə qədər əldə etdikləri təcr&uuml;bələr də işin sonunda &ouml;z nəticəsini g&ouml;stərir.</p>\r\n\r\n<p>Avtomatik qaraj qapılarının istehsalında sendvi&ccedil; panellərdən istifadə olunur. Bu halda qapılar isti və soyuğa davamlı bir hala gəlir. Bu panellərin qalınlığı əsasən 45 mm təşkil edir. Bu c&uuml;r qapıların mexaniki hissələri də davamlı və uzun&ouml;m&uuml;rl&uuml; olur.</p>\r\n', 'Qaraj Qapıları', 'Qaraj Qapıları', 'Qaraj Qapıları', 1, '2022-01-19 18:56:04', 0, 'avtomatik-seksiyonal-qapilar-qaraj-qapilari', 0, 0, '/uploads/images/category/47dcc1e99c-Avtomatik-seksiyonal-qapilar-qaraj-qapilari.jpg'),
(15, 13, 'Sənaye Qapıları', 'Sənaye Qapıları', 'Sənaye Qapıları', '<p>Avtomatik sənaye qapıları istifadəyə daha intensiv məruz qaldığı &uuml;&ccedil;&uuml;n onların keyfiyyət parametrlərinə olan tələb də artır. Bu c&uuml;r qapılarda davamlılığ və uzun&ouml;m&uuml;rl&uuml;l&uuml;k əsas şərtlərdəndir. Bu qapıların istehsalında istifadə olunan panellər 40 mm qalınlığa malik olur. Sənaye qapıları y&uuml;ksək istilik izolyasiyasına malikdir. Bundan başqa bu qapılar həm də iş&ccedil;i heyyətin təhl&uuml;kəsizliyini də təmin edir.</p>\r\n\r\n<p>Avtomatik sənaye qapılarının mexaniki hissələri də digər n&ouml;vlərdən &ouml;z davamlılığı ilə fərqlənir. Bu da &ouml;z n&ouml;vbəsində qapıların intensiv istifadəsinə şərait yaradır.</p>\r\n', '<p>Avtomatik sənaye qapıları istifadəyə daha intensiv məruz qaldığı &uuml;&ccedil;&uuml;n onların keyfiyyət parametrlərinə olan tələb də artır. Bu c&uuml;r qapılarda davamlılığ və uzun&ouml;m&uuml;rl&uuml;l&uuml;k əsas şərtlərdəndir. Bu qapıların istehsalında istifadə olunan panellər 40 mm qalınlığa malik olur. Sənaye qapıları y&uuml;ksək istilik izolyasiyasına malikdir. Bundan başqa bu qapılar həm də iş&ccedil;i heyyətin təhl&uuml;kəsizliyini də təmin edir.</p>\r\n\r\n<p>Avtomatik sənaye qapılarının mexaniki hissələri də digər n&ouml;vlərdən &ouml;z davamlılığı ilə fərqlənir. Bu da &ouml;z n&ouml;vbəsində qapıların intensiv istifadəsinə şərait yaradır.</p>\r\n', '<p>Avtomatik sənaye qapıları istifadəyə daha intensiv məruz qaldığı &uuml;&ccedil;&uuml;n onların keyfiyyət parametrlərinə olan tələb də artır. Bu c&uuml;r qapılarda davamlılığ və uzun&ouml;m&uuml;rl&uuml;l&uuml;k əsas şərtlərdəndir. Bu qapıların istehsalında istifadə olunan panellər 40 mm qalınlığa malik olur. Sənaye qapıları y&uuml;ksək istilik izolyasiyasına malikdir. Bundan başqa bu qapılar həm də iş&ccedil;i heyyətin təhl&uuml;kəsizliyini də təmin edir.</p>\r\n\r\n<p>Avtomatik sənaye qapılarının mexaniki hissələri də digər n&ouml;vlərdən &ouml;z davamlılığı ilə fərqlənir. Bu da &ouml;z n&ouml;vbəsində qapıların intensiv istifadəsinə şərait yaradır.</p>\r\n', 'Sənaye Qapıları', 'Sənaye Qapıları', 'Sənaye Qapıları', 1, '2022-01-19 18:56:42', 0, 'avtomatik-seksiyonal-qapilar-senaye-qapilari', 0, 0, '/uploads/images/category/c866093a03-Avtomatik-seksiyonal-qapilar-senaye-qapilari.jpg'),
(16, 0, 'Avtomatik Jalüz Qapılar', 'Avtomatik Jalüz Qapılar', 'Avtomatik Jalüz Qapılar', '<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-jaluz-qapilar-avtomatik-pencere-jaluzleri\">Avtomatik Pəncərə Jal&uuml;zləri</a></h3>\r\n\r\n<p>Jal&uuml;z sistemləri əsasən mağaza və virtajların &ouml;n&uuml;ndə &ouml;rt&uuml;k kimi istifadə olunur. Bu tip sistemlər avtomatikləşdirildiyindən onların istifadəsi daha asan və səmərəli hala gəlir.</p>\r\n\r\n<p>Avtomatik jal&uuml;z sistemlərini siz həm də qaraj və darvazalarda da quraşdıra bilərsiniz. Bu sistemin &uuml;st&uuml;nl&uuml;y&uuml; onun hərəkət s&uuml;rətinin daha &ccedil;ox olmasıdır. Jal&uuml;z sistemində &nbsp;y&uuml;ng&uuml;l materialların istifadəsi buna şərait yaradır.</p>\r\n\r\n<p>Jal&uuml;z sistemlərinin mexaniki hissələri aliminium qutunun i&ccedil;ərisinə yerləşdirilir. Pərdə hərəkət edərkən bu qutunun i&ccedil;ərisini doğru yığılır.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-jaluz-qapilar-jaluz-darvazalar\">Jal&uuml;z Darvazalar</a></h3>\r\n\r\n<p>Jal&uuml;z sistemləri əsasən mağaza və virtajların &ouml;n&uuml;ndə &ouml;rt&uuml;k kimi istifadə olunur. Bu tip sistemlər avtomatikləşdirildiyindən onların istifadəsi daha asan və səmərəli hala gəlir.</p>\r\n\r\n<p>Avtomatik jal&uuml;z sistemlərini siz həm də qaraj və darvazalarda da quraşdıra bilərsiniz. Bu sistemin &uuml;st&uuml;nl&uuml;y&uuml; onun hərəkət s&uuml;rətinin daha &ccedil;ox olmasıdır. Jal&uuml;z sistemində &nbsp;y&uuml;ng&uuml;l materialların istifadəsi buna şərait yaradır.</p>\r\n\r\n<p>Jal&uuml;z sistemlərinin mexaniki hissələri aliminium qutunun i&ccedil;ərisinə yerləşdirilir. Pərdə hərəkət edərkən bu qutunun i&ccedil;ərisini doğru yığılır.</p>\r\n', '<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-jaluz-qapilar-avtomatik-pencere-jaluzleri\">Avtomatik Pəncərə Jal&uuml;zləri</a></h3>\r\n\r\n<p>Jal&uuml;z sistemləri əsasən mağaza və virtajların &ouml;n&uuml;ndə &ouml;rt&uuml;k kimi istifadə olunur. Bu tip sistemlər avtomatikləşdirildiyindən onların istifadəsi daha asan və səmərəli hala gəlir.</p>\r\n\r\n<p>Avtomatik jal&uuml;z sistemlərini siz həm də qaraj və darvazalarda da quraşdıra bilərsiniz. Bu sistemin &uuml;st&uuml;nl&uuml;y&uuml; onun hərəkət s&uuml;rətinin daha &ccedil;ox olmasıdır. Jal&uuml;z sistemində &nbsp;y&uuml;ng&uuml;l materialların istifadəsi buna şərait yaradır.</p>\r\n\r\n<p>Jal&uuml;z sistemlərinin mexaniki hissələri aliminium qutunun i&ccedil;ərisinə yerləşdirilir. Pərdə hərəkət edərkən bu qutunun i&ccedil;ərisini doğru yığılır.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-jaluz-qapilar-jaluz-darvazalar\">Jal&uuml;z Darvazalar</a></h3>\r\n\r\n<p>Jal&uuml;z sistemləri əsasən mağaza və virtajların &ouml;n&uuml;ndə &ouml;rt&uuml;k kimi istifadə olunur. Bu tip sistemlər avtomatikləşdirildiyindən onların istifadəsi daha asan və səmərəli hala gəlir.</p>\r\n\r\n<p>Avtomatik jal&uuml;z sistemlərini siz həm də qaraj və darvazalarda da quraşdıra bilərsiniz. Bu sistemin &uuml;st&uuml;nl&uuml;y&uuml; onun hərəkət s&uuml;rətinin daha &ccedil;ox olmasıdır. Jal&uuml;z sistemində &nbsp;y&uuml;ng&uuml;l materialların istifadəsi buna şərait yaradır.</p>\r\n\r\n<p>Jal&uuml;z sistemlərinin mexaniki hissələri aliminium qutunun i&ccedil;ərisinə yerləşdirilir. Pərdə hərəkət edərkən bu qutunun i&ccedil;ərisini doğru yığılır.</p>\r\n', '<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-jaluz-qapilar-avtomatik-pencere-jaluzleri\">Avtomatik Pəncərə Jal&uuml;zləri</a></h3>\r\n\r\n<p>Jal&uuml;z sistemləri əsasən mağaza və virtajların &ouml;n&uuml;ndə &ouml;rt&uuml;k kimi istifadə olunur. Bu tip sistemlər avtomatikləşdirildiyindən onların istifadəsi daha asan və səmərəli hala gəlir.</p>\r\n\r\n<p>Avtomatik jal&uuml;z sistemlərini siz həm də qaraj və darvazalarda da quraşdıra bilərsiniz. Bu sistemin &uuml;st&uuml;nl&uuml;y&uuml; onun hərəkət s&uuml;rətinin daha &ccedil;ox olmasıdır. Jal&uuml;z sistemində &nbsp;y&uuml;ng&uuml;l materialların istifadəsi buna şərait yaradır.</p>\r\n\r\n<p>Jal&uuml;z sistemlərinin mexaniki hissələri aliminium qutunun i&ccedil;ərisinə yerləşdirilir. Pərdə hərəkət edərkən bu qutunun i&ccedil;ərisini doğru yığılır.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-jaluz-qapilar-jaluz-darvazalar\">Jal&uuml;z Darvazalar</a></h3>\r\n\r\n<p>Jal&uuml;z sistemləri əsasən mağaza və virtajların &ouml;n&uuml;ndə &ouml;rt&uuml;k kimi istifadə olunur. Bu tip sistemlər avtomatikləşdirildiyindən onların istifadəsi daha asan və səmərəli hala gəlir.</p>\r\n\r\n<p>Avtomatik jal&uuml;z sistemlərini siz həm də qaraj və darvazalarda da quraşdıra bilərsiniz. Bu sistemin &uuml;st&uuml;nl&uuml;y&uuml; onun hərəkət s&uuml;rətinin daha &ccedil;ox olmasıdır. Jal&uuml;z sistemində &nbsp;y&uuml;ng&uuml;l materialların istifadəsi buna şərait yaradır.</p>\r\n\r\n<p>Jal&uuml;z sistemlərinin mexaniki hissələri aliminium qutunun i&ccedil;ərisinə yerləşdirilir. Pərdə hərəkət edərkən bu qutunun i&ccedil;ərisini doğru yığılır.</p>\r\n', 'Avtomatik Jalüz Qapılar', 'Avtomatik Jalüz Qapılar', 'Avtomatik Jalüz Qapılar', 1, '2022-01-19 18:57:40', 0, 'avtomatik-jaluz-qapilar', 0, 0, '/uploads/images/category/1489d099ce983690e96cjaluz.jpg'),
(17, 16, 'Avtomatik Pəncərə Jalüzləri', 'Avtomatik Pəncərə Jalüzləri', 'Avtomatik Pəncərə Jalüzləri', '<p>Jal&uuml;z sistemləri əsasən mağaza və virtajların &ouml;n&uuml;ndə &ouml;rt&uuml;k kimi istifadə olunur. Bu tip sistemlər avtomatikləşdirildiyindən onların istifadəsi daha asan və səmərəli hala gəlir.</p>\r\n\r\n<p>Avtomatik jal&uuml;z sistemlərini siz həm də qaraj və darvazalarda da quraşdıra bilərsiniz. Bu sistemin &uuml;st&uuml;nl&uuml;y&uuml; onun hərəkət s&uuml;rətinin daha &ccedil;ox olmasıdır. Jal&uuml;z sistemində &nbsp;y&uuml;ng&uuml;l materialların istifadəsi buna şərait yaradır.</p>\r\n\r\n<p>Jal&uuml;z sistemlərinin mexaniki hissələri aliminium qutunun i&ccedil;ərisinə yerləşdirilir. Pərdə hərəkət edərkən bu qutunun i&ccedil;ərisini doğru yığılır.</p>\r\n', '<p>Jal&uuml;z sistemləri əsasən mağaza və virtajların &ouml;n&uuml;ndə &ouml;rt&uuml;k kimi istifadə olunur. Bu tip sistemlər avtomatikləşdirildiyindən onların istifadəsi daha asan və səmərəli hala gəlir.</p>\r\n\r\n<p>Avtomatik jal&uuml;z sistemlərini siz həm də qaraj və darvazalarda da quraşdıra bilərsiniz. Bu sistemin &uuml;st&uuml;nl&uuml;y&uuml; onun hərəkət s&uuml;rətinin daha &ccedil;ox olmasıdır. Jal&uuml;z sistemində &nbsp;y&uuml;ng&uuml;l materialların istifadəsi buna şərait yaradır.</p>\r\n\r\n<p>Jal&uuml;z sistemlərinin mexaniki hissələri aliminium qutunun i&ccedil;ərisinə yerləşdirilir. Pərdə hərəkət edərkən bu qutunun i&ccedil;ərisini doğru yığılır.</p>\r\n', '<p>Jal&uuml;z sistemləri əsasən mağaza və virtajların &ouml;n&uuml;ndə &ouml;rt&uuml;k kimi istifadə olunur. Bu tip sistemlər avtomatikləşdirildiyindən onların istifadəsi daha asan və səmərəli hala gəlir.</p>\r\n\r\n<p>Avtomatik jal&uuml;z sistemlərini siz həm də qaraj və darvazalarda da quraşdıra bilərsiniz. Bu sistemin &uuml;st&uuml;nl&uuml;y&uuml; onun hərəkət s&uuml;rətinin daha &ccedil;ox olmasıdır. Jal&uuml;z sistemində &nbsp;y&uuml;ng&uuml;l materialların istifadəsi buna şərait yaradır.</p>\r\n\r\n<p>Jal&uuml;z sistemlərinin mexaniki hissələri aliminium qutunun i&ccedil;ərisinə yerləşdirilir. Pərdə hərəkət edərkən bu qutunun i&ccedil;ərisini doğru yığılır.</p>\r\n', 'Avtomatik Pəncərə Jalüzləri', 'Avtomatik Pəncərə Jalüzləri', 'Avtomatik Pəncərə Jalüzləri', 1, '2022-01-19 18:58:31', 0, 'avtomatik-jaluz-qapilar-avtomatik-pencere-jaluzleri', 0, 0, '/uploads/images/category/a39977aec5-Avtomatik-jaluz-qapilar-avtomatik-pencere-jaluzleri.jpg'),
(18, 16, 'Jalüz Darvazalar', 'Jalüz Darvazalar', 'Jalüz Darvazalar', '<p>Jal&uuml;z sistemləri əsasən mağaza və virtajların &ouml;n&uuml;ndə &ouml;rt&uuml;k kimi istifadə olunur. Bu tip sistemlər avtomatikləşdirildiyindən onların istifadəsi daha asan və səmərəli hala gəlir.</p>\r\n\r\n<p>Avtomatik jal&uuml;z sistemlərini siz həm də qaraj və darvazalarda da quraşdıra bilərsiniz. Bu sistemin &uuml;st&uuml;nl&uuml;y&uuml; onun hərəkət s&uuml;rətinin daha &ccedil;ox olmasıdır. Jal&uuml;z sistemində &nbsp;y&uuml;ng&uuml;l materialların istifadəsi buna şərait yaradır.</p>\r\n\r\n<p>Jal&uuml;z sistemlərinin mexaniki hissələri aliminium qutunun i&ccedil;ərisinə yerləşdirilir. Pərdə hərəkət edərkən bu qutunun i&ccedil;ərisini doğru yığılır.</p>\r\n', '<p>Jal&uuml;z sistemləri əsasən mağaza və virtajların &ouml;n&uuml;ndə &ouml;rt&uuml;k kimi istifadə olunur. Bu tip sistemlər avtomatikləşdirildiyindən onların istifadəsi daha asan və səmərəli hala gəlir.</p>\r\n\r\n<p>Avtomatik jal&uuml;z sistemlərini siz həm də qaraj və darvazalarda da quraşdıra bilərsiniz. Bu sistemin &uuml;st&uuml;nl&uuml;y&uuml; onun hərəkət s&uuml;rətinin daha &ccedil;ox olmasıdır. Jal&uuml;z sistemində &nbsp;y&uuml;ng&uuml;l materialların istifadəsi buna şərait yaradır.</p>\r\n\r\n<p>Jal&uuml;z sistemlərinin mexaniki hissələri aliminium qutunun i&ccedil;ərisinə yerləşdirilir. Pərdə hərəkət edərkən bu qutunun i&ccedil;ərisini doğru yığılır.</p>\r\n', '<p>Jal&uuml;z sistemləri əsasən mağaza və virtajların &ouml;n&uuml;ndə &ouml;rt&uuml;k kimi istifadə olunur. Bu tip sistemlər avtomatikləşdirildiyindən onların istifadəsi daha asan və səmərəli hala gəlir.</p>\r\n\r\n<p>Avtomatik jal&uuml;z sistemlərini siz həm də qaraj və darvazalarda da quraşdıra bilərsiniz. Bu sistemin &uuml;st&uuml;nl&uuml;y&uuml; onun hərəkət s&uuml;rətinin daha &ccedil;ox olmasıdır. Jal&uuml;z sistemində &nbsp;y&uuml;ng&uuml;l materialların istifadəsi buna şərait yaradır.</p>\r\n\r\n<p>Jal&uuml;z sistemlərinin mexaniki hissələri aliminium qutunun i&ccedil;ərisinə yerləşdirilir. Pərdə hərəkət edərkən bu qutunun i&ccedil;ərisini doğru yığılır.</p>\r\n', 'Jalüz Darvazalar', 'Jalüz Darvazalar', 'Jalüz Darvazalar', 1, '2022-01-19 18:58:57', 0, 'avtomatik-jaluz-qapilar-jaluz-darvazalar', 0, 0, '/uploads/images/category/47534498c3-Avtomatik-jaluz-qapilar-jaluz-darvazalar.jpg');
INSERT INTO `category` (`id`, `parent`, `title_az`, `title_en`, `title_ru`, `description_az`, `description_en`, `description_ru`, `keywords_az`, `keywords_en`, `keywords_ru`, `status`, `created_at`, `is_deleted`, `slug`, `view`, `rank`, `image`) VALUES
(19, 0, 'Avtomatik Darvazalar', 'Avtomatik Darvazalar', 'Avtomatik Darvazalar', '<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-darvazalar-90-derece-acilan-darvazalar\">90 Dərəcə A&ccedil;ılan Darvazalar</a></h3>\r\n\r\n<p>90 dərəcə a&ccedil;ılan və ya başqa adı ilə iki tağlı darvazalar zaman ke&ccedil;dikcə he&ccedil; bir şəkildə m&uuml;xtəlif deformasiyalara uğramır. Bunun ən başlıca səbəbi onların a&ccedil;ılıb - bağlanma mexanizmidir.</p>\r\n\r\n<p>Bu mexanizmlərin cəlbedici x&uuml;susiyyətlərindən biri də onların m&ouml;vcud darvazalara belə quraşdırılmağının m&uuml;mk&uuml;n olmasıdır. Təhl&uuml;kəsizlik baxımından da olduqca yararlıdır.</p>\r\n\r\n<p>İki tağlı mexanizimlər avropa istehsalıdır. Paslanmaya və digər aşınmalara olduqca d&ouml;z&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-darvazalar-yana-acilan-darvazalar\">Yana A&ccedil;ılan Darvazalar</a></h3>\r\n\r\n<p>Yana a&ccedil;ılan qapılar y&uuml;ksək komfort və səmərəlilik təmin edir. Bu qapılar rahat a&ccedil;ılıb - bağlanma ilə yanaşı təhl&uuml;kəsizlik baxımından da olduqca yararlıdır.</p>\r\n\r\n<p>Digərləri kimi bu qapılar da uzaqdan idarəetmə vasitəsilə sadəcə bir d&uuml;yməyə sıxmaqla a&ccedil;ılır.</p>\r\n\r\n<p>Bu c&uuml;r avtomatik qapıların mexaniki hissələri ən son texnalogiya ilə istehsal edilir. Elektrik enerjisinə qənaəti baxımından da olduqca sərfəlidir.</p>\r\n\r\n<p>Avtomatik yana s&uuml;r&uuml;şərək a&ccedil;ılan qapılar həm də m&uuml;xtəlif tipli m&uuml;əssisələrdə də quraşdırılır. Bu həm də onların intensiv a&ccedil;ılıb bağlanmaya davamlı olduğundandır.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-darvazalar-x-acilan-darvazalar\">&quot;X&quot; A&ccedil;ılan Darvazalar</a></h3>\r\n\r\n<p>&ldquo;X&rdquo; a&ccedil;ılan darvazalar amerikan tipli darvazalardır. Bu qapıların ən vacib x&uuml;susiyyəti digərlərinə g&ouml;rə daha s&uuml;rətli a&ccedil;ılıb bağlanmasıdır. &ldquo;X&rdquo; a&ccedil;ılan qapıların &uuml;zərinə eyni dizaynda personal qapısı da yerləşdirmək m&uuml;mk&uuml;nd&uuml;r.</p>\r\n\r\n<p>Bu qapılar bir tağlı sistemdən ibarətdir. A&ccedil;ıldığı zaman tavana paralel dayanır. İstifadə baxımından uzun&ouml;m&uuml;rl&uuml; hesab olunan bu qapıların mexaniki hissələri zaman ke&ccedil;dikcə paslanmır.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-darvazalar-avtomatik-demir-darvazalar\">Avtomatik Dəmir Darvazalar</a></h3>\r\n\r\n<p>Avtomatik darvazalar sizin və ailənizin rahatlığının təmin olunmasına istiqamətlənmiş m&uuml;asir sistemlərdən biridir. Siz bu qurğunu &ouml;z evinizin girişində quraşdırmaqla bir &ccedil;ox bezdirici əməliyyatların icrasından xilas olacaqsınız. Belə ki, artıq siz girişə yaxınlaşarkən uzaqdan idarə etmə vasitəsilə qapıların a&ccedil;ılıb bağlanmasını təşkil edə bilərsiniz. Siz bu sistemi quraşdırmaqla həm də əmlakınızın və yaxınlarınızın təhl&uuml;kəsizliyini y&uuml;ksək səviyyədə təşkil etmiş olursunuz. Bu tip konstruksiyalar daha uzun&ouml;m&uuml;rl&uuml;d&uuml;r və daha tez a&ccedil;ılıb - bağlanma imkanı yaradır. Bizim şirkətimiz artıq uzun illərdir ki, &nbsp;bu sahədə fəaliyyət g&ouml;stərir və b&uuml;t&uuml;n təcr&uuml;bəsiylə birlikdə sizə xidmət vəd edir.</p>\r\n', '<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-darvazalar-90-derece-acilan-darvazalar\">90 Dərəcə A&ccedil;ılan Darvazalar</a></h3>\r\n\r\n<p>90 dərəcə a&ccedil;ılan və ya başqa adı ilə iki tağlı darvazalar zaman ke&ccedil;dikcə he&ccedil; bir şəkildə m&uuml;xtəlif deformasiyalara uğramır. Bunun ən başlıca səbəbi onların a&ccedil;ılıb - bağlanma mexanizmidir.</p>\r\n\r\n<p>Bu mexanizmlərin cəlbedici x&uuml;susiyyətlərindən biri də onların m&ouml;vcud darvazalara belə quraşdırılmağının m&uuml;mk&uuml;n olmasıdır. Təhl&uuml;kəsizlik baxımından da olduqca yararlıdır.</p>\r\n\r\n<p>İki tağlı mexanizimlər avropa istehsalıdır. Paslanmaya və digər aşınmalara olduqca d&ouml;z&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-darvazalar-yana-acilan-darvazalar\">Yana A&ccedil;ılan Darvazalar</a></h3>\r\n\r\n<p>Yana a&ccedil;ılan qapılar y&uuml;ksək komfort və səmərəlilik təmin edir. Bu qapılar rahat a&ccedil;ılıb - bağlanma ilə yanaşı təhl&uuml;kəsizlik baxımından da olduqca yararlıdır.</p>\r\n\r\n<p>Digərləri kimi bu qapılar da uzaqdan idarəetmə vasitəsilə sadəcə bir d&uuml;yməyə sıxmaqla a&ccedil;ılır.</p>\r\n\r\n<p>Bu c&uuml;r avtomatik qapıların mexaniki hissələri ən son texnalogiya ilə istehsal edilir. Elektrik enerjisinə qənaəti baxımından da olduqca sərfəlidir.</p>\r\n\r\n<p>Avtomatik yana s&uuml;r&uuml;şərək a&ccedil;ılan qapılar həm də m&uuml;xtəlif tipli m&uuml;əssisələrdə də quraşdırılır. Bu həm də onların intensiv a&ccedil;ılıb bağlanmaya davamlı olduğundandır.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-darvazalar-x-acilan-darvazalar\">&quot;X&quot; A&ccedil;ılan Darvazalar</a></h3>\r\n\r\n<p>&ldquo;X&rdquo; a&ccedil;ılan darvazalar amerikan tipli darvazalardır. Bu qapıların ən vacib x&uuml;susiyyəti digərlərinə g&ouml;rə daha s&uuml;rətli a&ccedil;ılıb bağlanmasıdır. &ldquo;X&rdquo; a&ccedil;ılan qapıların &uuml;zərinə eyni dizaynda personal qapısı da yerləşdirmək m&uuml;mk&uuml;nd&uuml;r.</p>\r\n\r\n<p>Bu qapılar bir tağlı sistemdən ibarətdir. A&ccedil;ıldığı zaman tavana paralel dayanır. İstifadə baxımından uzun&ouml;m&uuml;rl&uuml; hesab olunan bu qapıların mexaniki hissələri zaman ke&ccedil;dikcə paslanmır.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-darvazalar-avtomatik-demir-darvazalar\">Avtomatik Dəmir Darvazalar</a></h3>\r\n\r\n<p>Avtomatik darvazalar sizin və ailənizin rahatlığının təmin olunmasına istiqamətlənmiş m&uuml;asir sistemlərdən biridir. Siz bu qurğunu &ouml;z evinizin girişində quraşdırmaqla bir &ccedil;ox bezdirici əməliyyatların icrasından xilas olacaqsınız. Belə ki, artıq siz girişə yaxınlaşarkən uzaqdan idarə etmə vasitəsilə qapıların a&ccedil;ılıb bağlanmasını təşkil edə bilərsiniz. Siz bu sistemi quraşdırmaqla həm də əmlakınızın və yaxınlarınızın təhl&uuml;kəsizliyini y&uuml;ksək səviyyədə təşkil etmiş olursunuz. Bu tip konstruksiyalar daha uzun&ouml;m&uuml;rl&uuml;d&uuml;r və daha tez a&ccedil;ılıb - bağlanma imkanı yaradır. Bizim şirkətimiz artıq uzun illərdir ki, &nbsp;bu sahədə fəaliyyət g&ouml;stərir və b&uuml;t&uuml;n təcr&uuml;bəsiylə birlikdə sizə xidmət vəd edir.</p>\r\n', '<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-darvazalar-90-derece-acilan-darvazalar\">90 Dərəcə A&ccedil;ılan Darvazalar</a></h3>\r\n\r\n<p>90 dərəcə a&ccedil;ılan və ya başqa adı ilə iki tağlı darvazalar zaman ke&ccedil;dikcə he&ccedil; bir şəkildə m&uuml;xtəlif deformasiyalara uğramır. Bunun ən başlıca səbəbi onların a&ccedil;ılıb - bağlanma mexanizmidir.</p>\r\n\r\n<p>Bu mexanizmlərin cəlbedici x&uuml;susiyyətlərindən biri də onların m&ouml;vcud darvazalara belə quraşdırılmağının m&uuml;mk&uuml;n olmasıdır. Təhl&uuml;kəsizlik baxımından da olduqca yararlıdır.</p>\r\n\r\n<p>İki tağlı mexanizimlər avropa istehsalıdır. Paslanmaya və digər aşınmalara olduqca d&ouml;z&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-darvazalar-yana-acilan-darvazalar\">Yana A&ccedil;ılan Darvazalar</a></h3>\r\n\r\n<p>Yana a&ccedil;ılan qapılar y&uuml;ksək komfort və səmərəlilik təmin edir. Bu qapılar rahat a&ccedil;ılıb - bağlanma ilə yanaşı təhl&uuml;kəsizlik baxımından da olduqca yararlıdır.</p>\r\n\r\n<p>Digərləri kimi bu qapılar da uzaqdan idarəetmə vasitəsilə sadəcə bir d&uuml;yməyə sıxmaqla a&ccedil;ılır.</p>\r\n\r\n<p>Bu c&uuml;r avtomatik qapıların mexaniki hissələri ən son texnalogiya ilə istehsal edilir. Elektrik enerjisinə qənaəti baxımından da olduqca sərfəlidir.</p>\r\n\r\n<p>Avtomatik yana s&uuml;r&uuml;şərək a&ccedil;ılan qapılar həm də m&uuml;xtəlif tipli m&uuml;əssisələrdə də quraşdırılır. Bu həm də onların intensiv a&ccedil;ılıb bağlanmaya davamlı olduğundandır.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-darvazalar-x-acilan-darvazalar\">&quot;X&quot; A&ccedil;ılan Darvazalar</a></h3>\r\n\r\n<p>&ldquo;X&rdquo; a&ccedil;ılan darvazalar amerikan tipli darvazalardır. Bu qapıların ən vacib x&uuml;susiyyəti digərlərinə g&ouml;rə daha s&uuml;rətli a&ccedil;ılıb bağlanmasıdır. &ldquo;X&rdquo; a&ccedil;ılan qapıların &uuml;zərinə eyni dizaynda personal qapısı da yerləşdirmək m&uuml;mk&uuml;nd&uuml;r.</p>\r\n\r\n<p>Bu qapılar bir tağlı sistemdən ibarətdir. A&ccedil;ıldığı zaman tavana paralel dayanır. İstifadə baxımından uzun&ouml;m&uuml;rl&uuml; hesab olunan bu qapıların mexaniki hissələri zaman ke&ccedil;dikcə paslanmır.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-darvazalar-avtomatik-demir-darvazalar\">Avtomatik Dəmir Darvazalar</a></h3>\r\n\r\n<p>Avtomatik darvazalar sizin və ailənizin rahatlığının təmin olunmasına istiqamətlənmiş m&uuml;asir sistemlərdən biridir. Siz bu qurğunu &ouml;z evinizin girişində quraşdırmaqla bir &ccedil;ox bezdirici əməliyyatların icrasından xilas olacaqsınız. Belə ki, artıq siz girişə yaxınlaşarkən uzaqdan idarə etmə vasitəsilə qapıların a&ccedil;ılıb bağlanmasını təşkil edə bilərsiniz. Siz bu sistemi quraşdırmaqla həm də əmlakınızın və yaxınlarınızın təhl&uuml;kəsizliyini y&uuml;ksək səviyyədə təşkil etmiş olursunuz. Bu tip konstruksiyalar daha uzun&ouml;m&uuml;rl&uuml;d&uuml;r və daha tez a&ccedil;ılıb - bağlanma imkanı yaradır. Bizim şirkətimiz artıq uzun illərdir ki, &nbsp;bu sahədə fəaliyyət g&ouml;stərir və b&uuml;t&uuml;n təcr&uuml;bəsiylə birlikdə sizə xidmət vəd edir.</p>\r\n', 'Avtomatik Darvazalar', 'Avtomatik Darvazalar', 'Avtomatik Darvazalar', 1, '2022-01-19 19:26:14', 0, 'avtomatik-darvazalar', 0, 0, '/uploads/images/category/44c0de7db0f174eb36eadarvaza.jpg'),
(20, 19, '90 Dərəcə Açılan Darvazalar', '90 Dərəcə Açılan Darvazalar', '90 Dərəcə Açılan Darvazalar', '<p>90 dərəcə a&ccedil;ılan və ya başqa adı ilə iki tağlı darvazalar zaman ke&ccedil;dikcə he&ccedil; bir şəkildə m&uuml;xtəlif deformasiyalara uğramır. Bunun ən başlıca səbəbi onların a&ccedil;ılıb - bağlanma mexanizmidir.</p>\r\n\r\n<p>Bu mexanizmlərin cəlbedici x&uuml;susiyyətlərindən biri də onların m&ouml;vcud darvazalara belə quraşdırılmağının m&uuml;mk&uuml;n olmasıdır. Təhl&uuml;kəsizlik baxımından da olduqca yararlıdır.</p>\r\n\r\n<p>İki tağlı mexanizimlər avropa istehsalıdır. Paslanmaya və digər aşınmalara olduqca d&ouml;z&uuml;ml&uuml;d&uuml;r.</p>\r\n', '<p>90 dərəcə a&ccedil;ılan və ya başqa adı ilə iki tağlı darvazalar zaman ke&ccedil;dikcə he&ccedil; bir şəkildə m&uuml;xtəlif deformasiyalara uğramır. Bunun ən başlıca səbəbi onların a&ccedil;ılıb - bağlanma mexanizmidir.</p>\r\n\r\n<p>Bu mexanizmlərin cəlbedici x&uuml;susiyyətlərindən biri də onların m&ouml;vcud darvazalara belə quraşdırılmağının m&uuml;mk&uuml;n olmasıdır. Təhl&uuml;kəsizlik baxımından da olduqca yararlıdır.</p>\r\n\r\n<p>İki tağlı mexanizimlər avropa istehsalıdır. Paslanmaya və digər aşınmalara olduqca d&ouml;z&uuml;ml&uuml;d&uuml;r.</p>\r\n', '<p>90 dərəcə a&ccedil;ılan və ya başqa adı ilə iki tağlı darvazalar zaman ke&ccedil;dikcə he&ccedil; bir şəkildə m&uuml;xtəlif deformasiyalara uğramır. Bunun ən başlıca səbəbi onların a&ccedil;ılıb - bağlanma mexanizmidir.</p>\r\n\r\n<p>Bu mexanizmlərin cəlbedici x&uuml;susiyyətlərindən biri də onların m&ouml;vcud darvazalara belə quraşdırılmağının m&uuml;mk&uuml;n olmasıdır. Təhl&uuml;kəsizlik baxımından da olduqca yararlıdır.</p>\r\n\r\n<p>İki tağlı mexanizimlər avropa istehsalıdır. Paslanmaya və digər aşınmalara olduqca d&ouml;z&uuml;ml&uuml;d&uuml;r.</p>\r\n', '90 Dərəcə Açılan Darvazalar', '90 Dərəcə Açılan Darvazalar', '90 Dərəcə Açılan Darvazalar', 1, '2022-01-19 19:26:48', 0, 'avtomatik-darvazalar-90-derece-acilan-darvazalar', 0, 0, '/uploads/images/category/a9278fd115-Avtomatik-darvazalar-90-derece-acilan-darvazalar.jpg'),
(21, 19, 'Yana Açılan Darvazalar', 'Yana Açılan Darvazalar', 'Yana Açılan Darvazalar', '<p>Yana a&ccedil;ılan qapılar y&uuml;ksək komfort və səmərəlilik təmin edir. Bu qapılar rahat a&ccedil;ılıb - bağlanma ilə yanaşı təhl&uuml;kəsizlik baxımından da olduqca yararlıdır.</p>\r\n\r\n<p>Digərləri kimi bu qapılar da uzaqdan idarəetmə vasitəsilə sadəcə bir d&uuml;yməyə sıxmaqla a&ccedil;ılır.</p>\r\n\r\n<p>Bu c&uuml;r avtomatik qapıların mexaniki hissələri ən son texnalogiya ilə istehsal edilir. Elektrik enerjisinə qənaəti baxımından da olduqca sərfəlidir.</p>\r\n\r\n<p>Avtomatik yana s&uuml;r&uuml;şərək a&ccedil;ılan qapılar həm də m&uuml;xtəlif tipli m&uuml;əssisələrdə də quraşdırılır. Bu həm də onların intensiv a&ccedil;ılıb bağlanmaya davamlı olduğundandır.</p>\r\n', '<p>Yana a&ccedil;ılan qapılar y&uuml;ksək komfort və səmərəlilik təmin edir. Bu qapılar rahat a&ccedil;ılıb - bağlanma ilə yanaşı təhl&uuml;kəsizlik baxımından da olduqca yararlıdır.</p>\r\n\r\n<p>Digərləri kimi bu qapılar da uzaqdan idarəetmə vasitəsilə sadəcə bir d&uuml;yməyə sıxmaqla a&ccedil;ılır.</p>\r\n\r\n<p>Bu c&uuml;r avtomatik qapıların mexaniki hissələri ən son texnalogiya ilə istehsal edilir. Elektrik enerjisinə qənaəti baxımından da olduqca sərfəlidir.</p>\r\n\r\n<p>Avtomatik yana s&uuml;r&uuml;şərək a&ccedil;ılan qapılar həm də m&uuml;xtəlif tipli m&uuml;əssisələrdə də quraşdırılır. Bu həm də onların intensiv a&ccedil;ılıb bağlanmaya davamlı olduğundandır.</p>\r\n', '<p>Yana a&ccedil;ılan qapılar y&uuml;ksək komfort və səmərəlilik təmin edir. Bu qapılar rahat a&ccedil;ılıb - bağlanma ilə yanaşı təhl&uuml;kəsizlik baxımından da olduqca yararlıdır.</p>\r\n\r\n<p>Digərləri kimi bu qapılar da uzaqdan idarəetmə vasitəsilə sadəcə bir d&uuml;yməyə sıxmaqla a&ccedil;ılır.</p>\r\n\r\n<p>Bu c&uuml;r avtomatik qapıların mexaniki hissələri ən son texnalogiya ilə istehsal edilir. Elektrik enerjisinə qənaəti baxımından da olduqca sərfəlidir.</p>\r\n\r\n<p>Avtomatik yana s&uuml;r&uuml;şərək a&ccedil;ılan qapılar həm də m&uuml;xtəlif tipli m&uuml;əssisələrdə də quraşdırılır. Bu həm də onların intensiv a&ccedil;ılıb bağlanmaya davamlı olduğundandır.</p>\r\n', 'Yana Açılan Darvazalar', 'Yana Açılan Darvazalar', 'Yana Açılan Darvazalar', 1, '2022-01-19 19:27:04', 0, 'avtomatik-darvazalar-yana-acilan-darvazalar', 0, 0, '/uploads/images/category/e56e63bc19-Avtomatik-darvazalar-yana-acilan-darvazalar.jpg'),
(22, 19, '\"X\" Açılan Darvazalar', '\"X\" Açılan Darvazalar', '\"X\" Açılan Darvazalar', '<p>&ldquo;X&rdquo; a&ccedil;ılan darvazalar amerikan tipli darvazalardır. Bu qapıların ən vacib x&uuml;susiyyəti digərlərinə g&ouml;rə daha s&uuml;rətli a&ccedil;ılıb bağlanmasıdır. &ldquo;X&rdquo; a&ccedil;ılan qapıların &uuml;zərinə eyni dizaynda personal qapısı da yerləşdirmək m&uuml;mk&uuml;nd&uuml;r.</p>\r\n\r\n<p>Bu qapılar bir tağlı sistemdən ibarətdir. A&ccedil;ıldığı zaman tavana paralel dayanır. İstifadə baxımından uzun&ouml;m&uuml;rl&uuml; hesab olunan bu qapıların mexaniki hissələri zaman ke&ccedil;dikcə paslanmır.</p>\r\n', '<p>&ldquo;X&rdquo; a&ccedil;ılan darvazalar amerikan tipli darvazalardır. Bu qapıların ən vacib x&uuml;susiyyəti digərlərinə g&ouml;rə daha s&uuml;rətli a&ccedil;ılıb bağlanmasıdır. &ldquo;X&rdquo; a&ccedil;ılan qapıların &uuml;zərinə eyni dizaynda personal qapısı da yerləşdirmək m&uuml;mk&uuml;nd&uuml;r.</p>\r\n\r\n<p>Bu qapılar bir tağlı sistemdən ibarətdir. A&ccedil;ıldığı zaman tavana paralel dayanır. İstifadə baxımından uzun&ouml;m&uuml;rl&uuml; hesab olunan bu qapıların mexaniki hissələri zaman ke&ccedil;dikcə paslanmır.</p>\r\n', '<p>&ldquo;X&rdquo; a&ccedil;ılan darvazalar amerikan tipli darvazalardır. Bu qapıların ən vacib x&uuml;susiyyəti digərlərinə g&ouml;rə daha s&uuml;rətli a&ccedil;ılıb bağlanmasıdır. &ldquo;X&rdquo; a&ccedil;ılan qapıların &uuml;zərinə eyni dizaynda personal qapısı da yerləşdirmək m&uuml;mk&uuml;nd&uuml;r.</p>\r\n\r\n<p>Bu qapılar bir tağlı sistemdən ibarətdir. A&ccedil;ıldığı zaman tavana paralel dayanır. İstifadə baxımından uzun&ouml;m&uuml;rl&uuml; hesab olunan bu qapıların mexaniki hissələri zaman ke&ccedil;dikcə paslanmır.</p>\r\n', 'x', 'x', 'x', 1, '2022-01-19 19:27:23', 0, 'avtomatik-darvazalar-x-acilan-darvazalar', 0, 0, '/uploads/images/category/e218fa8aae-Avtomatik-darvazalar-x-acilan-darvazalar.jpg'),
(23, 19, 'Avtomatik Dəmir Darvazalar', 'Avtomatik Dəmir Darvazalar', 'Avtomatik Dəmir Darvazalar', '<p>Avtomatik darvazalar sizin və ailənizin rahatlığının təmin olunmasına istiqamətlənmiş m&uuml;asir sistemlərdən biridir. Siz bu qurğunu &ouml;z evinizin girişində quraşdırmaqla bir &ccedil;ox bezdirici əməliyyatların icrasından xilas olacaqsınız. Belə ki, artıq siz girişə yaxınlaşarkən uzaqdan idarə etmə vasitəsilə qapıların a&ccedil;ılıb bağlanmasını təşkil edə bilərsiniz. Siz bu sistemi quraşdırmaqla həm də əmlakınızın və yaxınlarınızın təhl&uuml;kəsizliyini y&uuml;ksək səviyyədə təşkil etmiş olursunuz. Bu tip konstruksiyalar daha uzun&ouml;m&uuml;rl&uuml;d&uuml;r və daha tez a&ccedil;ılıb - bağlanma imkanı yaradır. Bizim şirkətimiz artıq uzun illərdir ki,&nbsp; bu sahədə fəaliyyət g&ouml;stərir və b&uuml;t&uuml;n təcr&uuml;bəsiylə birlikdə sizə xidmət vəd edir.</p>\r\n', '<p>Avtomatik darvazalar sizin və ailənizin rahatlığının təmin olunmasına istiqamətlənmiş m&uuml;asir sistemlərdən biridir. Siz bu qurğunu &ouml;z evinizin girişində quraşdırmaqla bir &ccedil;ox bezdirici əməliyyatların icrasından xilas olacaqsınız. Belə ki, artıq siz girişə yaxınlaşarkən uzaqdan idarə etmə vasitəsilə qapıların a&ccedil;ılıb bağlanmasını təşkil edə bilərsiniz. Siz bu sistemi quraşdırmaqla həm də əmlakınızın və yaxınlarınızın təhl&uuml;kəsizliyini y&uuml;ksək səviyyədə təşkil etmiş olursunuz. Bu tip konstruksiyalar daha uzun&ouml;m&uuml;rl&uuml;d&uuml;r və daha tez a&ccedil;ılıb - bağlanma imkanı yaradır. Bizim şirkətimiz artıq uzun illərdir ki,&nbsp; bu sahədə fəaliyyət g&ouml;stərir və b&uuml;t&uuml;n təcr&uuml;bəsiylə birlikdə sizə xidmət vəd edir.</p>\r\n', '<p>Avtomatik darvazalar sizin və ailənizin rahatlığının təmin olunmasına istiqamətlənmiş m&uuml;asir sistemlərdən biridir. Siz bu qurğunu &ouml;z evinizin girişində quraşdırmaqla bir &ccedil;ox bezdirici əməliyyatların icrasından xilas olacaqsınız. Belə ki, artıq siz girişə yaxınlaşarkən uzaqdan idarə etmə vasitəsilə qapıların a&ccedil;ılıb bağlanmasını təşkil edə bilərsiniz. Siz bu sistemi quraşdırmaqla həm də əmlakınızın və yaxınlarınızın təhl&uuml;kəsizliyini y&uuml;ksək səviyyədə təşkil etmiş olursunuz. Bu tip konstruksiyalar daha uzun&ouml;m&uuml;rl&uuml;d&uuml;r və daha tez a&ccedil;ılıb - bağlanma imkanı yaradır. Bizim şirkətimiz artıq uzun illərdir ki,&nbsp; bu sahədə fəaliyyət g&ouml;stərir və b&uuml;t&uuml;n təcr&uuml;bəsiylə birlikdə sizə xidmət vəd edir.</p>\r\n', 'Avtomatik Dəmir Darvazalar', 'Avtomatik Dəmir Darvazalar', 'Avtomatik Dəmir Darvazalar', 1, '2022-01-19 19:27:37', 0, 'avtomatik-darvazalar-avtomatik-demir-darvazalar', 0, 0, '/uploads/images/category/25210e7dd0-Avtomatik-darvazalar-avtomatik-demir-darvazalar.jpg'),
(24, 0, 'Avtomatik Baryer Sistemləri', 'Avtomatik Baryer Sistemləri', 'Avtomatik Baryer Sistemləri', '<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-baryer-sistemleri-slaqbaumlar\">Şlaqbaumlar</a></h3>\r\n\r\n<p>Şlaqbaum nəqliyyat vasitələrinin qapalı əraziyə girişinin qarşısının alınması və tənzimlənməsi &uuml;&ccedil;&uuml;n istifadə olunan qurğudur. Bu qurğu m&uuml;xtəlif materialda ola bilər ki, bunlardan ən ən &ccedil;ox istifadə olunanı taxta və metaldır.</p>\r\n\r\n<p>Şlaqbaumlar ərazinin girişdən muhafizəsi &uuml;&ccedil;&uuml;n nəzərdə tutulur. Şlaqbaumlar m&uuml;xtəlif anbarların, ofis mərkəzlərinin, idman komplekslərinin, m&uuml;əssisələrin, ticarət və əyləncə mərkəzlərinin, aeroportların, yaşayiş komplekslərinin və digər bir &ccedil;ox qapalı ərazilərin girişlərində istifadə olunur.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-baryer-sistemleri-parking-sistemleri\">Parking Sistemləri</a></h3>\r\n\r\n<p>Hal hazıki d&ouml;vrdə parking sistemləri istənilən tip &ouml;zəl ərazilər &uuml;&ccedil;&uuml;n qa&ccedil;ınılmaz bir ehtiyac halını almışdır. Avtoparklara olan ehtiyacın artdığı bir zamanda bu ərazilərin idarəedici heyyəti m&uuml;ştərilərə daha keyfiyyətli xidmət gəstərmək &uuml;&ccedil;&uuml;n səy g&ouml;stərirlər. Bu sistemlərin avtomatlaşdırılması həm bu sahədən gələn gəlirin artırılmasına həmdə bu prosesə nəzarəti g&uuml;cləndiməyə imkan verir. Şirkətimiz bu sahədə sizə geniş se&ccedil;im təqdim edir.</p>\r\n', '<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-baryer-sistemleri-slaqbaumlar\">Şlaqbaumlar</a></h3>\r\n\r\n<p>Şlaqbaum nəqliyyat vasitələrinin qapalı əraziyə girişinin qarşısının alınması və tənzimlənməsi &uuml;&ccedil;&uuml;n istifadə olunan qurğudur. Bu qurğu m&uuml;xtəlif materialda ola bilər ki, bunlardan ən ən &ccedil;ox istifadə olunanı taxta və metaldır.</p>\r\n\r\n<p>Şlaqbaumlar ərazinin girişdən muhafizəsi &uuml;&ccedil;&uuml;n nəzərdə tutulur. Şlaqbaumlar m&uuml;xtəlif anbarların, ofis mərkəzlərinin, idman komplekslərinin, m&uuml;əssisələrin, ticarət və əyləncə mərkəzlərinin, aeroportların, yaşayiş komplekslərinin və digər bir &ccedil;ox qapalı ərazilərin girişlərində istifadə olunur.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-baryer-sistemleri-parking-sistemleri\">Parking Sistemləri</a></h3>\r\n\r\n<p>Hal hazıki d&ouml;vrdə parking sistemləri istənilən tip &ouml;zəl ərazilər &uuml;&ccedil;&uuml;n qa&ccedil;ınılmaz bir ehtiyac halını almışdır. Avtoparklara olan ehtiyacın artdığı bir zamanda bu ərazilərin idarəedici heyyəti m&uuml;ştərilərə daha keyfiyyətli xidmət gəstərmək &uuml;&ccedil;&uuml;n səy g&ouml;stərirlər. Bu sistemlərin avtomatlaşdırılması həm bu sahədən gələn gəlirin artırılmasına həmdə bu prosesə nəzarəti g&uuml;cləndiməyə imkan verir. Şirkətimiz bu sahədə sizə geniş se&ccedil;im təqdim edir.</p>\r\n', '<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-baryer-sistemleri-slaqbaumlar\">Şlaqbaumlar</a></h3>\r\n\r\n<p>Şlaqbaum nəqliyyat vasitələrinin qapalı əraziyə girişinin qarşısının alınması və tənzimlənməsi &uuml;&ccedil;&uuml;n istifadə olunan qurğudur. Bu qurğu m&uuml;xtəlif materialda ola bilər ki, bunlardan ən ən &ccedil;ox istifadə olunanı taxta və metaldır.</p>\r\n\r\n<p>Şlaqbaumlar ərazinin girişdən muhafizəsi &uuml;&ccedil;&uuml;n nəzərdə tutulur. Şlaqbaumlar m&uuml;xtəlif anbarların, ofis mərkəzlərinin, idman komplekslərinin, m&uuml;əssisələrin, ticarət və əyləncə mərkəzlərinin, aeroportların, yaşayiş komplekslərinin və digər bir &ccedil;ox qapalı ərazilərin girişlərində istifadə olunur.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/avtomatik-baryer-sistemleri-parking-sistemleri\">Parking Sistemləri</a></h3>\r\n\r\n<p>Hal hazıki d&ouml;vrdə parking sistemləri istənilən tip &ouml;zəl ərazilər &uuml;&ccedil;&uuml;n qa&ccedil;ınılmaz bir ehtiyac halını almışdır. Avtoparklara olan ehtiyacın artdığı bir zamanda bu ərazilərin idarəedici heyyəti m&uuml;ştərilərə daha keyfiyyətli xidmət gəstərmək &uuml;&ccedil;&uuml;n səy g&ouml;stərirlər. Bu sistemlərin avtomatlaşdırılması həm bu sahədən gələn gəlirin artırılmasına həmdə bu prosesə nəzarəti g&uuml;cləndiməyə imkan verir. Şirkətimiz bu sahədə sizə geniş se&ccedil;im təqdim edir.</p>\r\n', 'Avtomatik Baryer Sistemləri', 'Avtomatik Baryer Sistemləri', 'Avtomatik Baryer Sistemləri', 1, '2022-01-19 19:28:01', 0, 'avtomatik-baryer-sistemleri', 0, 0, '/uploads/images/category/ee8601b72773ab3fb7c8bariyer.jpg'),
(25, 24, 'Şlaqbaumlar', 'Şlaqbaumlar', 'Şlaqbaumlar', '<p>Şlaqbaum nəqliyyat vasitələrinin qapalı əraziyə girişinin qarşısının alınması və tənzimlənməsi &uuml;&ccedil;&uuml;n istifadə olunan qurğudur. Bu qurğu m&uuml;xtəlif materialda ola bilər ki, bunlardan ən ən &ccedil;ox istifadə olunanı taxta və metaldır.</p>\r\n\r\n<p>Şlaqbaumlar ərazinin girişdən muhafizəsi &uuml;&ccedil;&uuml;n nəzərdə tutulur. Şlaqbaumlar m&uuml;xtəlif anbarların, ofis mərkəzlərinin, idman komplekslərinin, m&uuml;əssisələrin, ticarət və əyləncə mərkəzlərinin, aeroportların, yaşayiş komplekslərinin və digər bir &ccedil;ox qapalı ərazilərin girişlərində istifadə olunur.</p>\r\n', '<p>Şlaqbaum nəqliyyat vasitələrinin qapalı əraziyə girişinin qarşısının alınması və tənzimlənməsi &uuml;&ccedil;&uuml;n istifadə olunan qurğudur. Bu qurğu m&uuml;xtəlif materialda ola bilər ki, bunlardan ən ən &ccedil;ox istifadə olunanı taxta və metaldır.</p>\r\n\r\n<p>Şlaqbaumlar ərazinin girişdən muhafizəsi &uuml;&ccedil;&uuml;n nəzərdə tutulur. Şlaqbaumlar m&uuml;xtəlif anbarların, ofis mərkəzlərinin, idman komplekslərinin, m&uuml;əssisələrin, ticarət və əyləncə mərkəzlərinin, aeroportların, yaşayiş komplekslərinin və digər bir &ccedil;ox qapalı ərazilərin girişlərində istifadə olunur.</p>\r\n', '<p>Şlaqbaum nəqliyyat vasitələrinin qapalı əraziyə girişinin qarşısının alınması və tənzimlənməsi &uuml;&ccedil;&uuml;n istifadə olunan qurğudur. Bu qurğu m&uuml;xtəlif materialda ola bilər ki, bunlardan ən ən &ccedil;ox istifadə olunanı taxta və metaldır.</p>\r\n\r\n<p>Şlaqbaumlar ərazinin girişdən muhafizəsi &uuml;&ccedil;&uuml;n nəzərdə tutulur. Şlaqbaumlar m&uuml;xtəlif anbarların, ofis mərkəzlərinin, idman komplekslərinin, m&uuml;əssisələrin, ticarət və əyləncə mərkəzlərinin, aeroportların, yaşayiş komplekslərinin və digər bir &ccedil;ox qapalı ərazilərin girişlərində istifadə olunur.</p>\r\n', 'Şlaqbaumlar', 'Şlaqbaumlar', 'Şlaqbaumlar', 1, '2022-01-19 19:28:29', 0, 'avtomatik-baryer-sistemleri-slaqbaumlar', 0, 0, '/uploads/images/category/908c5ba078-Avtomatik-baryer-sistemleri-slaqbaumlar.jpg'),
(26, 24, 'Parking Sistemləri', 'Parking Sistemləri', 'Parking Sistemləri', '<p>Hal hazıki d&ouml;vrdə parking sistemləri istənilən tip &ouml;zəl ərazilər &uuml;&ccedil;&uuml;n qa&ccedil;ınılmaz bir ehtiyac halını almışdır. Avtoparklara olan ehtiyacın artdığı bir zamanda bu ərazilərin idarəedici heyyəti m&uuml;ştərilərə daha keyfiyyətli xidmət gəstərmək &uuml;&ccedil;&uuml;n səy g&ouml;stərirlər. Bu sistemlərin avtomatlaşdırılması həm bu sahədən gələn gəlirin artırılmasına həmdə bu prosesə nəzarəti g&uuml;cləndiməyə imkan verir. Şirkətimiz bu sahədə sizə geniş se&ccedil;im təqdim edir.</p>\r\n', '<p>Hal hazıki d&ouml;vrdə parking sistemləri istənilən tip &ouml;zəl ərazilər &uuml;&ccedil;&uuml;n qa&ccedil;ınılmaz bir ehtiyac halını almışdır. Avtoparklara olan ehtiyacın artdığı bir zamanda bu ərazilərin idarəedici heyyəti m&uuml;ştərilərə daha keyfiyyətli xidmət gəstərmək &uuml;&ccedil;&uuml;n səy g&ouml;stərirlər. Bu sistemlərin avtomatlaşdırılması həm bu sahədən gələn gəlirin artırılmasına həmdə bu prosesə nəzarəti g&uuml;cləndiməyə imkan verir. Şirkətimiz bu sahədə sizə geniş se&ccedil;im təqdim edir.</p>\r\n', '<p>Hal hazıki d&ouml;vrdə parking sistemləri istənilən tip &ouml;zəl ərazilər &uuml;&ccedil;&uuml;n qa&ccedil;ınılmaz bir ehtiyac halını almışdır. Avtoparklara olan ehtiyacın artdığı bir zamanda bu ərazilərin idarəedici heyyəti m&uuml;ştərilərə daha keyfiyyətli xidmət gəstərmək &uuml;&ccedil;&uuml;n səy g&ouml;stərirlər. Bu sistemlərin avtomatlaşdırılması həm bu sahədən gələn gəlirin artırılmasına həmdə bu prosesə nəzarəti g&uuml;cləndiməyə imkan verir. Şirkətimiz bu sahədə sizə geniş se&ccedil;im təqdim edir.</p>\r\n', 'Parking Sistemləri', 'Parking Sistemləri', 'Parking Sistemləri', 1, '2022-01-19 19:28:42', 0, 'avtomatik-baryer-sistemleri-parking-sistemleri', 0, 0, '0'),
(27, 0, 'Şüşə və Fasad İşləri', 'Şüşə və Fasad İşləri', 'Şüşə və Fasad İşləri', '<h3><a href=\"https://boomerang.az/mehsullar/suse-ve-fasad-isleri-daxili-arakesmeler\">Daxili Arakəsmələr</a></h3>\r\n\r\n<p>Ofislərdə, kafe və restoranlarda quraşdırılan bu sistemlər işin səmərəliliyinin artırılmasına ximət edir. Bu arakəsmələrin quraşdırılması ətraf səslərin qarşısının alınmasında da b&ouml;y&uuml;k rol oynayır. Daxili ş&uuml;şə arakəsmələr istənilən dizaynda və rəngdə quraşdırılır.</p>\r\n\r\n<p>Bundan başqa onlar a&ccedil;ılıb - bağlanan və yaxud da sabit n&ouml;vlər də ola bilir. Şirkətimiz bu arakəsmələri sizə m&uuml;xtəlif qalınlıqlarda olmaqla yanaşı həm də profilsiz və m&uuml;xtəlif formalı profillər ilə də &nbsp;təklif edir.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/suse-ve-fasad-isleri-suse-qapilar\">Ş&uuml;şə Qapılar</a></h3>\r\n\r\n<p>Ş&uuml;şə qapılar ofislərdə, evlərdə dizaynın unikallığının artırılması &uuml;&ccedil;&uuml;n ən &ccedil;ox istifadə olunan qapılardandır. Bele ki, bu qapılar quraşdırıldıqda məkanın genişliyinin itirilməsi &nbsp;və digər bir &ccedil;ox vacib məqamlar istisna edilir. &nbsp;Bu qapılar yana a&ccedil;ılan tərzdə də istifadəyə yararlıdır. Lakin bəzən onların yana a&ccedil;ılması &uuml;&ccedil;&uuml;n məkanda lazımi qədər yer olmur. Buna g&ouml;rə də bir &ccedil;ox hallarda onların standart variantlarına tələb daha &ccedil;ox olur.</p>\r\n\r\n<p>Siz bu qapıları həm də evininiz hamamında və geyinmə otağında da quraşdıra bilərsiniz. Bu zaman isə digər qapılara g&ouml;rə daha uzun&ouml;m&uuml;rl&uuml; nəticə əldə etmiş olacaqsınız.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/suse-ve-fasad-isleri-cebhe-sistemleri\">Cəbhə Sistemləri</a></h3>\r\n\r\n<p>&Ccedil;&ouml;l cəbhə sistemləri m&uuml;asir d&ouml;vrdə bir &ccedil;ox binalarda rast gəldiyimiz bir sistemdir. Onların belə geniş şəkildə istifadəsi he&ccedil; də təəcc&uuml;bl&uuml; deyildir. &Ccedil;&uuml;nki tətbiq edildiyi binaları digərlərindən xarici g&ouml;r&uuml;n&uuml;ş&uuml; ilə kəskin şəkildə fərqləndirir. Bunların istifadəsi zamanı həmdə binanın &uuml;mumi y&uuml;k&uuml;n&uuml;n azalması təmin edilir.</p>\r\n\r\n<p>&Ccedil;&ouml;l cəbhə sistemləri nəinki binanın xarici g&ouml;r&uuml;n&uuml;ş&uuml;n&uuml; g&ouml;zəlləşdirir, həm də bina daxilindən əvəzolunmaz şəhər mənzərəsinin &uuml;zə &ccedil;ıxmasına səbəb olur. Bu sistemlərin tətbiq edilməsi binalarda daxili sahənin genişliyinin qorunub saxlanılması m&ouml;vzusunda da &ouml;z m&uuml;sbət təsirini g&ouml;stərir.</p>\r\n', '<h3><a href=\"https://boomerang.az/mehsullar/suse-ve-fasad-isleri-daxili-arakesmeler\">Daxili Arakəsmələr</a></h3>\r\n\r\n<p>Ofislərdə, kafe və restoranlarda quraşdırılan bu sistemlər işin səmərəliliyinin artırılmasına ximət edir. Bu arakəsmələrin quraşdırılması ətraf səslərin qarşısının alınmasında da b&ouml;y&uuml;k rol oynayır. Daxili ş&uuml;şə arakəsmələr istənilən dizaynda və rəngdə quraşdırılır.</p>\r\n\r\n<p>Bundan başqa onlar a&ccedil;ılıb - bağlanan və yaxud da sabit n&ouml;vlər də ola bilir. Şirkətimiz bu arakəsmələri sizə m&uuml;xtəlif qalınlıqlarda olmaqla yanaşı həm də profilsiz və m&uuml;xtəlif formalı profillər ilə də &nbsp;təklif edir.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/suse-ve-fasad-isleri-suse-qapilar\">Ş&uuml;şə Qapılar</a></h3>\r\n\r\n<p>Ş&uuml;şə qapılar ofislərdə, evlərdə dizaynın unikallığının artırılması &uuml;&ccedil;&uuml;n ən &ccedil;ox istifadə olunan qapılardandır. Bele ki, bu qapılar quraşdırıldıqda məkanın genişliyinin itirilməsi &nbsp;və digər bir &ccedil;ox vacib məqamlar istisna edilir. &nbsp;Bu qapılar yana a&ccedil;ılan tərzdə də istifadəyə yararlıdır. Lakin bəzən onların yana a&ccedil;ılması &uuml;&ccedil;&uuml;n məkanda lazımi qədər yer olmur. Buna g&ouml;rə də bir &ccedil;ox hallarda onların standart variantlarına tələb daha &ccedil;ox olur.</p>\r\n\r\n<p>Siz bu qapıları həm də evininiz hamamında və geyinmə otağında da quraşdıra bilərsiniz. Bu zaman isə digər qapılara g&ouml;rə daha uzun&ouml;m&uuml;rl&uuml; nəticə əldə etmiş olacaqsınız.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/suse-ve-fasad-isleri-cebhe-sistemleri\">Cəbhə Sistemləri</a></h3>\r\n\r\n<p>&Ccedil;&ouml;l cəbhə sistemləri m&uuml;asir d&ouml;vrdə bir &ccedil;ox binalarda rast gəldiyimiz bir sistemdir. Onların belə geniş şəkildə istifadəsi he&ccedil; də təəcc&uuml;bl&uuml; deyildir. &Ccedil;&uuml;nki tətbiq edildiyi binaları digərlərindən xarici g&ouml;r&uuml;n&uuml;ş&uuml; ilə kəskin şəkildə fərqləndirir. Bunların istifadəsi zamanı həmdə binanın &uuml;mumi y&uuml;k&uuml;n&uuml;n azalması təmin edilir.</p>\r\n\r\n<p>&Ccedil;&ouml;l cəbhə sistemləri nəinki binanın xarici g&ouml;r&uuml;n&uuml;ş&uuml;n&uuml; g&ouml;zəlləşdirir, həm də bina daxilindən əvəzolunmaz şəhər mənzərəsinin &uuml;zə &ccedil;ıxmasına səbəb olur. Bu sistemlərin tətbiq edilməsi binalarda daxili sahənin genişliyinin qorunub saxlanılması m&ouml;vzusunda da &ouml;z m&uuml;sbət təsirini g&ouml;stərir.</p>\r\n', '<h3><a href=\"https://boomerang.az/mehsullar/suse-ve-fasad-isleri-daxili-arakesmeler\">Daxili Arakəsmələr</a></h3>\r\n\r\n<p>Ofislərdə, kafe və restoranlarda quraşdırılan bu sistemlər işin səmərəliliyinin artırılmasına ximət edir. Bu arakəsmələrin quraşdırılması ətraf səslərin qarşısının alınmasında da b&ouml;y&uuml;k rol oynayır. Daxili ş&uuml;şə arakəsmələr istənilən dizaynda və rəngdə quraşdırılır.</p>\r\n\r\n<p>Bundan başqa onlar a&ccedil;ılıb - bağlanan və yaxud da sabit n&ouml;vlər də ola bilir. Şirkətimiz bu arakəsmələri sizə m&uuml;xtəlif qalınlıqlarda olmaqla yanaşı həm də profilsiz və m&uuml;xtəlif formalı profillər ilə də &nbsp;təklif edir.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/suse-ve-fasad-isleri-suse-qapilar\">Ş&uuml;şə Qapılar</a></h3>\r\n\r\n<p>Ş&uuml;şə qapılar ofislərdə, evlərdə dizaynın unikallığının artırılması &uuml;&ccedil;&uuml;n ən &ccedil;ox istifadə olunan qapılardandır. Bele ki, bu qapılar quraşdırıldıqda məkanın genişliyinin itirilməsi &nbsp;və digər bir &ccedil;ox vacib məqamlar istisna edilir. &nbsp;Bu qapılar yana a&ccedil;ılan tərzdə də istifadəyə yararlıdır. Lakin bəzən onların yana a&ccedil;ılması &uuml;&ccedil;&uuml;n məkanda lazımi qədər yer olmur. Buna g&ouml;rə də bir &ccedil;ox hallarda onların standart variantlarına tələb daha &ccedil;ox olur.</p>\r\n\r\n<p>Siz bu qapıları həm də evininiz hamamında və geyinmə otağında da quraşdıra bilərsiniz. Bu zaman isə digər qapılara g&ouml;rə daha uzun&ouml;m&uuml;rl&uuml; nəticə əldə etmiş olacaqsınız.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/suse-ve-fasad-isleri-cebhe-sistemleri\">Cəbhə Sistemləri</a></h3>\r\n\r\n<p>&Ccedil;&ouml;l cəbhə sistemləri m&uuml;asir d&ouml;vrdə bir &ccedil;ox binalarda rast gəldiyimiz bir sistemdir. Onların belə geniş şəkildə istifadəsi he&ccedil; də təəcc&uuml;bl&uuml; deyildir. &Ccedil;&uuml;nki tətbiq edildiyi binaları digərlərindən xarici g&ouml;r&uuml;n&uuml;ş&uuml; ilə kəskin şəkildə fərqləndirir. Bunların istifadəsi zamanı həmdə binanın &uuml;mumi y&uuml;k&uuml;n&uuml;n azalması təmin edilir.</p>\r\n\r\n<p>&Ccedil;&ouml;l cəbhə sistemləri nəinki binanın xarici g&ouml;r&uuml;n&uuml;ş&uuml;n&uuml; g&ouml;zəlləşdirir, həm də bina daxilindən əvəzolunmaz şəhər mənzərəsinin &uuml;zə &ccedil;ıxmasına səbəb olur. Bu sistemlərin tətbiq edilməsi binalarda daxili sahənin genişliyinin qorunub saxlanılması m&ouml;vzusunda da &ouml;z m&uuml;sbət təsirini g&ouml;stərir.</p>\r\n', 'Şüşə və Fasad İşləri', 'Şüşə və Fasad İşləri', 'Şüşə və Fasad İşləri', 1, '2022-01-19 19:29:23', 0, 'suse-ve-fasad-isleri', 0, 0, '/uploads/images/category/65a05c21c1d598f797bbsuse-fasad.jpg'),
(28, 27, 'Daxili Arakəsmələr', 'Daxili Arakəsmələr', 'Daxili Arakəsmələr', '<p>Ofislərdə, kafe və restoranlarda quraşdırılan bu sistemlər işin səmərəliliyinin artırılmasına ximət edir. Bu arakəsmələrin quraşdırılması ətraf səslərin qarşısının alınmasında da b&ouml;y&uuml;k rol oynayır. Daxili ş&uuml;şə arakəsmələr istənilən dizaynda və rəngdə quraşdırılır.</p>\r\n\r\n<p>Bundan başqa onlar a&ccedil;ılıb - bağlanan və yaxud da sabit n&ouml;vlər də ola bilir. Şirkətimiz bu arakəsmələri sizə m&uuml;xtəlif qalınlıqlarda olmaqla yanaşı həm də profilsiz və m&uuml;xtəlif formalı profillər ilə də &nbsp;təklif edir.</p>\r\n', '<p>Ofislərdə, kafe və restoranlarda quraşdırılan bu sistemlər işin səmərəliliyinin artırılmasına ximət edir. Bu arakəsmələrin quraşdırılması ətraf səslərin qarşısının alınmasında da b&ouml;y&uuml;k rol oynayır. Daxili ş&uuml;şə arakəsmələr istənilən dizaynda və rəngdə quraşdırılır.</p>\r\n\r\n<p>Bundan başqa onlar a&ccedil;ılıb - bağlanan və yaxud da sabit n&ouml;vlər də ola bilir. Şirkətimiz bu arakəsmələri sizə m&uuml;xtəlif qalınlıqlarda olmaqla yanaşı həm də profilsiz və m&uuml;xtəlif formalı profillər ilə də &nbsp;təklif edir.</p>\r\n', '<p>Ofislərdə, kafe və restoranlarda quraşdırılan bu sistemlər işin səmərəliliyinin artırılmasına ximət edir. Bu arakəsmələrin quraşdırılması ətraf səslərin qarşısının alınmasında da b&ouml;y&uuml;k rol oynayır. Daxili ş&uuml;şə arakəsmələr istənilən dizaynda və rəngdə quraşdırılır.</p>\r\n\r\n<p>Bundan başqa onlar a&ccedil;ılıb - bağlanan və yaxud da sabit n&ouml;vlər də ola bilir. Şirkətimiz bu arakəsmələri sizə m&uuml;xtəlif qalınlıqlarda olmaqla yanaşı həm də profilsiz və m&uuml;xtəlif formalı profillər ilə də &nbsp;təklif edir.</p>\r\n', 'Daxili Arakəsmələr', 'Daxili Arakəsmələr', 'Daxili Arakəsmələr', 1, '2022-01-19 19:29:44', 0, 'suse-ve-fasad-isleri-daxili-arakesmeler', 0, 0, '/uploads/images/category/3fb9ee1608-Suse-ve-fasad-isleri-daxili-arakesmeler.jpg'),
(29, 27, 'Şüşə Qapılar', 'Şüşə Qapılar', 'Şüşə Qapılar', '<p>Ş&uuml;şə qapılar ofislərdə, evlərdə dizaynın unikallığının artırılması &uuml;&ccedil;&uuml;n ən &ccedil;ox istifadə olunan qapılardandır. Bele ki, bu qapılar quraşdırıldıqda məkanın genişliyinin itirilməsi&nbsp; və digər bir &ccedil;ox vacib məqamlar istisna edilir.&nbsp; Bu qapılar yana a&ccedil;ılan tərzdə də istifadəyə yararlıdır. Lakin bəzən onların yana a&ccedil;ılması &uuml;&ccedil;&uuml;n məkanda lazımi qədər yer olmur. Buna g&ouml;rə də bir &ccedil;ox hallarda onların standart variantlarına tələb daha &ccedil;ox olur.</p>\r\n\r\n<p>Siz bu qapıları həm də evininiz hamamında və geyinmə otağında da quraşdıra bilərsiniz. Bu zaman isə digər qapılara g&ouml;rə daha uzun&ouml;m&uuml;rl&uuml; nəticə əldə etmiş olacaqsınız.</p>\r\n', '<p>Ş&uuml;şə qapılar ofislərdə, evlərdə dizaynın unikallığının artırılması &uuml;&ccedil;&uuml;n ən &ccedil;ox istifadə olunan qapılardandır. Bele ki, bu qapılar quraşdırıldıqda məkanın genişliyinin itirilməsi&nbsp; və digər bir &ccedil;ox vacib məqamlar istisna edilir.&nbsp; Bu qapılar yana a&ccedil;ılan tərzdə də istifadəyə yararlıdır. Lakin bəzən onların yana a&ccedil;ılması &uuml;&ccedil;&uuml;n məkanda lazımi qədər yer olmur. Buna g&ouml;rə də bir &ccedil;ox hallarda onların standart variantlarına tələb daha &ccedil;ox olur.</p>\r\n\r\n<p>Siz bu qapıları həm də evininiz hamamında və geyinmə otağında da quraşdıra bilərsiniz. Bu zaman isə digər qapılara g&ouml;rə daha uzun&ouml;m&uuml;rl&uuml; nəticə əldə etmiş olacaqsınız.</p>\r\n', '<p>Ş&uuml;şə qapılar ofislərdə, evlərdə dizaynın unikallığının artırılması &uuml;&ccedil;&uuml;n ən &ccedil;ox istifadə olunan qapılardandır. Bele ki, bu qapılar quraşdırıldıqda məkanın genişliyinin itirilməsi&nbsp; və digər bir &ccedil;ox vacib məqamlar istisna edilir.&nbsp; Bu qapılar yana a&ccedil;ılan tərzdə də istifadəyə yararlıdır. Lakin bəzən onların yana a&ccedil;ılması &uuml;&ccedil;&uuml;n məkanda lazımi qədər yer olmur. Buna g&ouml;rə də bir &ccedil;ox hallarda onların standart variantlarına tələb daha &ccedil;ox olur.</p>\r\n\r\n<p>Siz bu qapıları həm də evininiz hamamında və geyinmə otağında da quraşdıra bilərsiniz. Bu zaman isə digər qapılara g&ouml;rə daha uzun&ouml;m&uuml;rl&uuml; nəticə əldə etmiş olacaqsınız.</p>\r\n', 'Şüşə Qapılar', 'Şüşə Qapılar', 'Şüşə Qapılar', 1, '2022-01-19 19:29:58', 0, 'suse-ve-fasad-isleri-suse-qapilar', 0, 0, '/uploads/images/category/0ccefadd4d-Suse-ve-fasad-isleri-suse-qapilar.jpg'),
(30, 27, 'Cəbhə Sistemləri', 'Cəbhə Sistemləri', 'Cəbhə Sistemləri', '<p>&Ccedil;&ouml;l cəbhə sistemləri m&uuml;asir d&ouml;vrdə bir &ccedil;ox binalarda rast gəldiyimiz bir sistemdir. Onların belə geniş şəkildə istifadəsi he&ccedil; də təəcc&uuml;bl&uuml; deyildir. &Ccedil;&uuml;nki tətbiq edildiyi binaları digərlərindən xarici g&ouml;r&uuml;n&uuml;ş&uuml; ilə kəskin şəkildə fərqləndirir. Bunların istifadəsi zamanı həmdə binanın &uuml;mumi y&uuml;k&uuml;n&uuml;n azalması təmin edilir.</p>\r\n\r\n<p>&Ccedil;&ouml;l cəbhə sistemləri nəinki binanın xarici g&ouml;r&uuml;n&uuml;ş&uuml;n&uuml; g&ouml;zəlləşdirir, həm də bina daxilindən əvəzolunmaz şəhər mənzərəsinin &uuml;zə &ccedil;ıxmasına səbəb olur. Bu sistemlərin tətbiq edilməsi binalarda daxili sahənin genişliyinin qorunub saxlanılması m&ouml;vzusunda da &ouml;z m&uuml;sbət təsirini g&ouml;stərir.</p>\r\n', '<p>&Ccedil;&ouml;l cəbhə sistemləri m&uuml;asir d&ouml;vrdə bir &ccedil;ox binalarda rast gəldiyimiz bir sistemdir. Onların belə geniş şəkildə istifadəsi he&ccedil; də təəcc&uuml;bl&uuml; deyildir. &Ccedil;&uuml;nki tətbiq edildiyi binaları digərlərindən xarici g&ouml;r&uuml;n&uuml;ş&uuml; ilə kəskin şəkildə fərqləndirir. Bunların istifadəsi zamanı həmdə binanın &uuml;mumi y&uuml;k&uuml;n&uuml;n azalması təmin edilir.</p>\r\n\r\n<p>&Ccedil;&ouml;l cəbhə sistemləri nəinki binanın xarici g&ouml;r&uuml;n&uuml;ş&uuml;n&uuml; g&ouml;zəlləşdirir, həm də bina daxilindən əvəzolunmaz şəhər mənzərəsinin &uuml;zə &ccedil;ıxmasına səbəb olur. Bu sistemlərin tətbiq edilməsi binalarda daxili sahənin genişliyinin qorunub saxlanılması m&ouml;vzusunda da &ouml;z m&uuml;sbət təsirini g&ouml;stərir.</p>\r\n', '<p>&Ccedil;&ouml;l cəbhə sistemləri m&uuml;asir d&ouml;vrdə bir &ccedil;ox binalarda rast gəldiyimiz bir sistemdir. Onların belə geniş şəkildə istifadəsi he&ccedil; də təəcc&uuml;bl&uuml; deyildir. &Ccedil;&uuml;nki tətbiq edildiyi binaları digərlərindən xarici g&ouml;r&uuml;n&uuml;ş&uuml; ilə kəskin şəkildə fərqləndirir. Bunların istifadəsi zamanı həmdə binanın &uuml;mumi y&uuml;k&uuml;n&uuml;n azalması təmin edilir.</p>\r\n\r\n<p>&Ccedil;&ouml;l cəbhə sistemləri nəinki binanın xarici g&ouml;r&uuml;n&uuml;ş&uuml;n&uuml; g&ouml;zəlləşdirir, həm də bina daxilindən əvəzolunmaz şəhər mənzərəsinin &uuml;zə &ccedil;ıxmasına səbəb olur. Bu sistemlərin tətbiq edilməsi binalarda daxili sahənin genişliyinin qorunub saxlanılması m&ouml;vzusunda da &ouml;z m&uuml;sbət təsirini g&ouml;stərir.</p>\r\n', 'Cəbhə Sistemləri', 'Cəbhə Sistemləri', 'Cəbhə Sistemləri', 1, '2022-01-19 19:30:14', 0, 'suse-ve-fasad-isleri-cebhe-sistemleri', 0, 0, '/uploads/images/category/177dc8538c-Suse-ve-fasad-isleri-cebhe-sistemleri.jpg'),
(31, 0, 'Servis və Quraşdırma', 'Servis və Quraşdırma', 'Servis və Quraşdırma', '<h3><a href=\"https://boomerang.az/mehsullar/servis-ve-qurasdirma-qapilarin-servisi-ve-qurasdirilmasi\">Qapıların Servisi və Quraşdırılması</a></h3>\r\n\r\n<p>&quot;Boomerang&quot; şirkəti olaraq qapıların servisini və quraşdırılmasını təşkil edirik. Bundan əlavə m&ouml;vcud qapılara avtomatika quraşdırmaq da xidmət sahəmizə daxildir. Quraşdırdığımız qapıların servisinin təşkili başlıca məqamlardandır ki, bunun y&uuml;ksək səviyyədə aparılması əsas hədəflərimizdəndir.</p>\r\n\r\n<p>İstər sənaye istərsə də fotoselli və digər b&uuml;t&uuml;n n&ouml;v avtomatik qapıların quraşdırılması təcr&uuml;bəli və ixtisaslaşmış ustalar tərəfindən həyata ke&ccedil;irilir. Bu zaman hər bir xırda məqam belə nəzərdə alınır ki, bu da hər bir detalın uzun&ouml;m&uuml;rl&uuml;l&uuml;y&uuml;n&uuml;n və davamlılığının təşkilinə istiqamətlənmişdir.</p>\r\n\r\n<p>Quraşdırılma zamanı hər bir işin m&uuml;təmadi və ardıcıl aparılması əsas şərtlərdəndir. Belə olduğu halda sonda maksimum nəticə əldə etmək olur.</p>\r\n\r\n<p>Şirkətimiz qapıların quraşdırılmasını nəinki Bakıda, rayonlarda da təşkil edir.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/servis-ve-qurasdirma-slaqbaumlarin-servisi-ve-qurasdirilmasi\">Şlaqbaumların Servisi və Quraşdırılması</a></h3>\r\n\r\n<p>Şlaqbaumların quraşdırılması zamanı bir &ccedil;ox amillər nəzərə alınmalıdır. Bu amillər şlaqbaumların quraşdırıldıqdan sonra istifadəsi zamanı bir məqamları tarazlaşdırır. Belə ki, hər şeydən əvvəl avadanlığın işləmə intensivliyi nəzərə alınmalıdır. Bu isə yaşayış komplekslərinə və ya biznes mərkəzlərinə g&ouml;rə dəyişir. Şlaqbaumların uzun&ouml;m&uuml;rl&uuml; istifasi &uuml;&ccedil;&uuml;n onun quraşdırıldığı ərazi əvvəlcədən uyğunlaşdırılmalıdır.</p>\r\n\r\n<p>Şirkətimiz bu avadanlıqların y&uuml;ksək səviyyədə və texnaloji tərəqqidən maksimum istifadə ilə quraşdırılmasını və servisini təklif edir.</p>\r\n\r\n<p>Bizim təklif etdiyimiz baryer sistemləri və onların mexaniki hissələri ixtisaslaşmış şirkətlərin məhsullarıdır. Və b&uuml;t&uuml;n məhsullarımıza zəmanətlidir.</p>\r\n', '<h3><a href=\"https://boomerang.az/mehsullar/servis-ve-qurasdirma-qapilarin-servisi-ve-qurasdirilmasi\">Qapıların Servisi və Quraşdırılması</a></h3>\r\n\r\n<p>&quot;Boomerang&quot; şirkəti olaraq qapıların servisini və quraşdırılmasını təşkil edirik. Bundan əlavə m&ouml;vcud qapılara avtomatika quraşdırmaq da xidmət sahəmizə daxildir. Quraşdırdığımız qapıların servisinin təşkili başlıca məqamlardandır ki, bunun y&uuml;ksək səviyyədə aparılması əsas hədəflərimizdəndir.</p>\r\n\r\n<p>İstər sənaye istərsə də fotoselli və digər b&uuml;t&uuml;n n&ouml;v avtomatik qapıların quraşdırılması təcr&uuml;bəli və ixtisaslaşmış ustalar tərəfindən həyata ke&ccedil;irilir. Bu zaman hər bir xırda məqam belə nəzərdə alınır ki, bu da hər bir detalın uzun&ouml;m&uuml;rl&uuml;l&uuml;y&uuml;n&uuml;n və davamlılığının təşkilinə istiqamətlənmişdir.</p>\r\n\r\n<p>Quraşdırılma zamanı hər bir işin m&uuml;təmadi və ardıcıl aparılması əsas şərtlərdəndir. Belə olduğu halda sonda maksimum nəticə əldə etmək olur.</p>\r\n\r\n<p>Şirkətimiz qapıların quraşdırılmasını nəinki Bakıda, rayonlarda da təşkil edir.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/servis-ve-qurasdirma-slaqbaumlarin-servisi-ve-qurasdirilmasi\">Şlaqbaumların Servisi və Quraşdırılması</a></h3>\r\n\r\n<p>Şlaqbaumların quraşdırılması zamanı bir &ccedil;ox amillər nəzərə alınmalıdır. Bu amillər şlaqbaumların quraşdırıldıqdan sonra istifadəsi zamanı bir məqamları tarazlaşdırır. Belə ki, hər şeydən əvvəl avadanlığın işləmə intensivliyi nəzərə alınmalıdır. Bu isə yaşayış komplekslərinə və ya biznes mərkəzlərinə g&ouml;rə dəyişir. Şlaqbaumların uzun&ouml;m&uuml;rl&uuml; istifasi &uuml;&ccedil;&uuml;n onun quraşdırıldığı ərazi əvvəlcədən uyğunlaşdırılmalıdır.</p>\r\n\r\n<p>Şirkətimiz bu avadanlıqların y&uuml;ksək səviyyədə və texnaloji tərəqqidən maksimum istifadə ilə quraşdırılmasını və servisini təklif edir.</p>\r\n\r\n<p>Bizim təklif etdiyimiz baryer sistemləri və onların mexaniki hissələri ixtisaslaşmış şirkətlərin məhsullarıdır. Və b&uuml;t&uuml;n məhsullarımıza zəmanətlidir.</p>\r\n', '<h3><a href=\"https://boomerang.az/mehsullar/servis-ve-qurasdirma-qapilarin-servisi-ve-qurasdirilmasi\">Qapıların Servisi və Quraşdırılması</a></h3>\r\n\r\n<p>&quot;Boomerang&quot; şirkəti olaraq qapıların servisini və quraşdırılmasını təşkil edirik. Bundan əlavə m&ouml;vcud qapılara avtomatika quraşdırmaq da xidmət sahəmizə daxildir. Quraşdırdığımız qapıların servisinin təşkili başlıca məqamlardandır ki, bunun y&uuml;ksək səviyyədə aparılması əsas hədəflərimizdəndir.</p>\r\n\r\n<p>İstər sənaye istərsə də fotoselli və digər b&uuml;t&uuml;n n&ouml;v avtomatik qapıların quraşdırılması təcr&uuml;bəli və ixtisaslaşmış ustalar tərəfindən həyata ke&ccedil;irilir. Bu zaman hər bir xırda məqam belə nəzərdə alınır ki, bu da hər bir detalın uzun&ouml;m&uuml;rl&uuml;l&uuml;y&uuml;n&uuml;n və davamlılığının təşkilinə istiqamətlənmişdir.</p>\r\n\r\n<p>Quraşdırılma zamanı hər bir işin m&uuml;təmadi və ardıcıl aparılması əsas şərtlərdəndir. Belə olduğu halda sonda maksimum nəticə əldə etmək olur.</p>\r\n\r\n<p>Şirkətimiz qapıların quraşdırılmasını nəinki Bakıda, rayonlarda da təşkil edir.</p>\r\n\r\n<h3><a href=\"https://boomerang.az/mehsullar/servis-ve-qurasdirma-slaqbaumlarin-servisi-ve-qurasdirilmasi\">Şlaqbaumların Servisi və Quraşdırılması</a></h3>\r\n\r\n<p>Şlaqbaumların quraşdırılması zamanı bir &ccedil;ox amillər nəzərə alınmalıdır. Bu amillər şlaqbaumların quraşdırıldıqdan sonra istifadəsi zamanı bir məqamları tarazlaşdırır. Belə ki, hər şeydən əvvəl avadanlığın işləmə intensivliyi nəzərə alınmalıdır. Bu isə yaşayış komplekslərinə və ya biznes mərkəzlərinə g&ouml;rə dəyişir. Şlaqbaumların uzun&ouml;m&uuml;rl&uuml; istifasi &uuml;&ccedil;&uuml;n onun quraşdırıldığı ərazi əvvəlcədən uyğunlaşdırılmalıdır.</p>\r\n\r\n<p>Şirkətimiz bu avadanlıqların y&uuml;ksək səviyyədə və texnaloji tərəqqidən maksimum istifadə ilə quraşdırılmasını və servisini təklif edir.</p>\r\n\r\n<p>Bizim təklif etdiyimiz baryer sistemləri və onların mexaniki hissələri ixtisaslaşmış şirkətlərin məhsullarıdır. Və b&uuml;t&uuml;n məhsullarımıza zəmanətlidir.</p>\r\n', 'Servis və Quraşdırma', 'Servis və Quraşdırma', 'Servis və Quraşdırma', 1, '2022-01-19 19:31:29', 0, 'servis-ve-qurasdirma', 0, 0, '/uploads/images/category/c5c04089f63163d3e2e6servis.jpg');
INSERT INTO `category` (`id`, `parent`, `title_az`, `title_en`, `title_ru`, `description_az`, `description_en`, `description_ru`, `keywords_az`, `keywords_en`, `keywords_ru`, `status`, `created_at`, `is_deleted`, `slug`, `view`, `rank`, `image`) VALUES
(32, 31, 'Qapıların Servisi və Quraşdırılması', 'Qapıların Servisi və Quraşdırılması', 'Qapıların Servisi və Quraşdırılması', '<p>&quot;Boomerang&quot; şirkəti olaraq qapıların servisini və quraşdırılmasını təşkil edirik. Bundan əlavə m&ouml;vcud qapılara avtomatika quraşdırmaq da xidmət sahəmizə daxildir. Quraşdırdığımız qapıların servisinin təşkili başlıca məqamlardandır ki, bunun y&uuml;ksək səviyyədə aparılması əsas hədəflərimizdəndir.</p>\r\n\r\n<p>İstər sənaye istərsə də fotoselli və digər b&uuml;t&uuml;n n&ouml;v avtomatik qapıların quraşdırılması təcr&uuml;bəli və ixtisaslaşmış ustalar tərəfindən həyata ke&ccedil;irilir. Bu zaman hər bir xırda məqam belə nəzərdə alınır ki, bu da hər bir detalın uzun&ouml;m&uuml;rl&uuml;l&uuml;y&uuml;n&uuml;n və davamlılığının təşkilinə istiqamətlənmişdir.</p>\r\n\r\n<p>Quraşdırılma zamanı hər bir işin m&uuml;təmadi və ardıcıl aparılması əsas şərtlərdəndir. Belə olduğu halda sonda maksimum nəticə əldə etmək olur.</p>\r\n\r\n<p>Şirkətimiz qapıların quraşdırılmasını nəinki Bakıda, rayonlarda da təşkil edir.</p>\r\n', '<p>&quot;Boomerang&quot; şirkəti olaraq qapıların servisini və quraşdırılmasını təşkil edirik. Bundan əlavə m&ouml;vcud qapılara avtomatika quraşdırmaq da xidmət sahəmizə daxildir. Quraşdırdığımız qapıların servisinin təşkili başlıca məqamlardandır ki, bunun y&uuml;ksək səviyyədə aparılması əsas hədəflərimizdəndir.</p>\r\n\r\n<p>İstər sənaye istərsə də fotoselli və digər b&uuml;t&uuml;n n&ouml;v avtomatik qapıların quraşdırılması təcr&uuml;bəli və ixtisaslaşmış ustalar tərəfindən həyata ke&ccedil;irilir. Bu zaman hər bir xırda məqam belə nəzərdə alınır ki, bu da hər bir detalın uzun&ouml;m&uuml;rl&uuml;l&uuml;y&uuml;n&uuml;n və davamlılığının təşkilinə istiqamətlənmişdir.</p>\r\n\r\n<p>Quraşdırılma zamanı hər bir işin m&uuml;təmadi və ardıcıl aparılması əsas şərtlərdəndir. Belə olduğu halda sonda maksimum nəticə əldə etmək olur.</p>\r\n\r\n<p>Şirkətimiz qapıların quraşdırılmasını nəinki Bakıda, rayonlarda da təşkil edir.</p>\r\n', '<p>&quot;Boomerang&quot; şirkəti olaraq qapıların servisini və quraşdırılmasını təşkil edirik. Bundan əlavə m&ouml;vcud qapılara avtomatika quraşdırmaq da xidmət sahəmizə daxildir. Quraşdırdığımız qapıların servisinin təşkili başlıca məqamlardandır ki, bunun y&uuml;ksək səviyyədə aparılması əsas hədəflərimizdəndir.</p>\r\n\r\n<p>İstər sənaye istərsə də fotoselli və digər b&uuml;t&uuml;n n&ouml;v avtomatik qapıların quraşdırılması təcr&uuml;bəli və ixtisaslaşmış ustalar tərəfindən həyata ke&ccedil;irilir. Bu zaman hər bir xırda məqam belə nəzərdə alınır ki, bu da hər bir detalın uzun&ouml;m&uuml;rl&uuml;l&uuml;y&uuml;n&uuml;n və davamlılığının təşkilinə istiqamətlənmişdir.</p>\r\n\r\n<p>Quraşdırılma zamanı hər bir işin m&uuml;təmadi və ardıcıl aparılması əsas şərtlərdəndir. Belə olduğu halda sonda maksimum nəticə əldə etmək olur.</p>\r\n\r\n<p>Şirkətimiz qapıların quraşdırılmasını nəinki Bakıda, rayonlarda da təşkil edir.</p>\r\n', 'Qapıların Servisi və Quraşdırılması', 'Qapıların Servisi və Quraşdırılması', 'Qapıların Servisi və Quraşdırılması', 1, '2022-01-19 19:31:58', 0, 'servis-ve-qurasdirma-qapilarin-servisi-ve-qurasdirilmasi', 0, 0, '/uploads/images/category/a5593b6317-Servis-ve-qurasdirma-qapilarin-servisi-ve-qurasdirilmasi.jpg'),
(33, 31, 'Şlaqbaumların Servisi və Quraşdırılması', 'Şlaqbaumların Servisi və Quraşdırılması', 'Şlaqbaumların Servisi və Quraşdırılması', '<p>Şlaqbaumların quraşdırılması zamanı bir &ccedil;ox amillər nəzərə alınmalıdır. Bu amillər şlaqbaumların quraşdırıldıqdan sonra istifadəsi zamanı bir məqamları tarazlaşdırır. Belə ki, hər şeydən əvvəl avadanlığın işləmə intensivliyi nəzərə alınmalıdır. Bu isə yaşayış komplekslərinə və ya biznes mərkəzlərinə g&ouml;rə dəyişir. Şlaqbaumların uzun&ouml;m&uuml;rl&uuml; istifasi &uuml;&ccedil;&uuml;n onun quraşdırıldığı ərazi əvvəlcədən uyğunlaşdırılmalıdır.</p>\r\n\r\n<p>Şirkətimiz bu avadanlıqların y&uuml;ksək səviyyədə və texnaloji tərəqqidən maksimum istifadə ilə quraşdırılmasını və servisini təklif edir.</p>\r\n\r\n<p>Bizim təklif etdiyimiz baryer sistemləri və onların mexaniki hissələri ixtisaslaşmış şirkətlərin məhsullarıdır. Və b&uuml;t&uuml;n məhsullarımıza zəmanətlidir.</p>\r\n', '<p>Şlaqbaumların quraşdırılması zamanı bir &ccedil;ox amillər nəzərə alınmalıdır. Bu amillər şlaqbaumların quraşdırıldıqdan sonra istifadəsi zamanı bir məqamları tarazlaşdırır. Belə ki, hər şeydən əvvəl avadanlığın işləmə intensivliyi nəzərə alınmalıdır. Bu isə yaşayış komplekslərinə və ya biznes mərkəzlərinə g&ouml;rə dəyişir. Şlaqbaumların uzun&ouml;m&uuml;rl&uuml; istifasi &uuml;&ccedil;&uuml;n onun quraşdırıldığı ərazi əvvəlcədən uyğunlaşdırılmalıdır.</p>\r\n\r\n<p>Şirkətimiz bu avadanlıqların y&uuml;ksək səviyyədə və texnaloji tərəqqidən maksimum istifadə ilə quraşdırılmasını və servisini təklif edir.</p>\r\n\r\n<p>Bizim təklif etdiyimiz baryer sistemləri və onların mexaniki hissələri ixtisaslaşmış şirkətlərin məhsullarıdır. Və b&uuml;t&uuml;n məhsullarımıza zəmanətlidir.</p>\r\n', '<p>Şlaqbaumların quraşdırılması zamanı bir &ccedil;ox amillər nəzərə alınmalıdır. Bu amillər şlaqbaumların quraşdırıldıqdan sonra istifadəsi zamanı bir məqamları tarazlaşdırır. Belə ki, hər şeydən əvvəl avadanlığın işləmə intensivliyi nəzərə alınmalıdır. Bu isə yaşayış komplekslərinə və ya biznes mərkəzlərinə g&ouml;rə dəyişir. Şlaqbaumların uzun&ouml;m&uuml;rl&uuml; istifasi &uuml;&ccedil;&uuml;n onun quraşdırıldığı ərazi əvvəlcədən uyğunlaşdırılmalıdır.</p>\r\n\r\n<p>Şirkətimiz bu avadanlıqların y&uuml;ksək səviyyədə və texnaloji tərəqqidən maksimum istifadə ilə quraşdırılmasını və servisini təklif edir.</p>\r\n\r\n<p>Bizim təklif etdiyimiz baryer sistemləri və onların mexaniki hissələri ixtisaslaşmış şirkətlərin məhsullarıdır. Və b&uuml;t&uuml;n məhsullarımıza zəmanətlidir.</p>\r\n', 'Şlaqbaumların Servisi və Quraşdırılması', 'Şlaqbaumların Servisi və Quraşdırılması', 'Şlaqbaumların Servisi və Quraşdırılması', 1, '2022-01-19 19:32:19', 0, 'servis-ve-qurasdirma-slaqbaumlarin-servisi-ve-qurasdirilmasi', 0, 0, '/uploads/images/category/170aca5cad-Servis-ve-qurasdirma-slaqbaumlarin-servisi-ve-qurasdirilmasi.jpg');

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
(1, 'Qara Qarayev, Tofiq Abbasov 35', 'Qara Qarayev, Tofiq Abbasov 35', 'Qara Qarayev, Tofiq Abbasov 35', '', '+994 50 450 01 07', '+994 50 450 01 07', '+994 51 340 55 15', '+994 00 000 00 00 ', 'info@boomerang.az');

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
(1, 'services_home', 'Sizin üçün Xidmətlər', 'Services for You', 'Услуги для Вас', '<p>Darvazaların, qarajların, anbar və marketlərin qapılarının avtomatik olaraq a&ccedil;ılıb bağlanması şirkətimizin siz m&uuml;ştərilərimizə təklif etdiyi xidmətlərdən yalnız bir ne&ccedil;əsidir. Bizim əsas məqsədimiz və amalımız sizin etibarınızı qazanmaq və z&ouml;vq&uuml;n&uuml;z&uuml; oxşamaqdır.</p>\r\n', '<p>Darvazaların, qarajların, anbar və marketlərin qapılarının avtomatik olaraq a&ccedil;ılıb bağlanması şirkətimizin siz m&uuml;ştərilərimizə təklif etdiyi xidmətlərdən yalnız bir ne&ccedil;əsidir. Bizim əsas məqsədimiz və amalımız sizin etibarınızı qazanmaq və z&ouml;vq&uuml;n&uuml;z&uuml; oxşamaqdır.</p>\r\n', '<p>Darvazaların, qarajların, anbar və marketlərin qapılarının avtomatik olaraq a&ccedil;ılıb bağlanması şirkətimizin siz m&uuml;ştərilərimizə təklif etdiyi xidmətlərdən yalnız bir ne&ccedil;əsidir. Bizim əsas məqsədimiz və amalımız sizin etibarınızı qazanmaq və z&ouml;vq&uuml;n&uuml;z&uuml; oxşamaqdır.</p>\r\n'),
(9, 'send_msg_contact', 'Bizə Mesaj Yazın', 'Write Us a Message', 'Напишите Нам Сообщение', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo</p>\r\n', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo</p>\r\n', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo</p>\r\n'),
(10, 'subscribe_home', 'Abunə olun', 'Subscribe', 'Подписаться', '<p>Ən son yenilikləri&nbsp;imeyl vasitəsilə əldə edin. İstənilən vaxt abunəliyi&nbsp;ləğv edə bilərsiniz.</p>\r\n', '<p>Get the latest updates via email. Any time you may unsubscribe</p>\r\n', '<p>Получите последние обновления с помощью почты. В любое время вы можете отказаться от подписки.</p>\r\n');

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
(34, '/uploads/gallery/category/a90029a139-61ead9151e121.jpg', 9, 'category'),
(35, '/uploads/gallery/category/fd131eba33-61ead9153351f.jpg', 9, 'category'),
(36, '/uploads/gallery/category/4e8533dcd7-61ead9161b846.jpg', 9, 'category'),
(37, '/uploads/gallery/category/4880f008f5-61ead91625523.jpg', 9, 'category'),
(38, '/uploads/gallery/category/c364d59286-61ead9169e458.jpg', 9, 'category'),
(39, '/uploads/gallery/category/2624b4769a-61ead9299127a.jpg', 10, 'category'),
(40, '/uploads/gallery/category/4e95f62ac6-61ead929a4669.jpg', 10, 'category'),
(41, '/uploads/gallery/category/e4a9793c5c-61ead929cb26c.jpg', 10, 'category'),
(42, '/uploads/gallery/category/22e9705cf6-61ead929dd36f.jpg', 10, 'category'),
(43, '/uploads/gallery/category/5cfb9d2608-61ead93e5309d.jpg', 11, 'category'),
(44, '/uploads/gallery/category/6b56156d6d-61ead93e56e4e.jpg', 11, 'category'),
(45, '/uploads/gallery/category/0d1c78ec0b-61ead93e9ca6a.jpg', 11, 'category'),
(46, '/uploads/gallery/category/e3e3c5fdcc-61ead93e9e19b.jpg', 11, 'category'),
(47, '/uploads/gallery/category/5163b6f35a-61ead93ec0bc0.jpg', 11, 'category'),
(48, '/uploads/gallery/category/1a7c19f217-61ead95223783.jpg', 12, 'category'),
(49, '/uploads/gallery/category/3e376c9620-61ead95227054.jpg', 12, 'category'),
(50, '/uploads/gallery/category/2861dec1d5-61ead9524ccff.jpg', 12, 'category'),
(51, '/uploads/gallery/category/fe62e09187-61ead9525515c.jpg', 12, 'category'),
(52, '/uploads/gallery/category/e6f1d67c79-61ead9526c5c3.jpg', 12, 'category'),
(53, '/uploads/gallery/category/4aa1d45fd8-61ead9ec7493f.jpg', 14, 'category'),
(54, '/uploads/gallery/category/9f66c7ec47-61eada891da29.jpg', 32, 'category'),
(55, '/uploads/gallery/category/12a2fb2912-61eada89274ce.jpg', 32, 'category'),
(56, '/uploads/gallery/category/3d5a3c1285-61eada89425b3.jpg', 32, 'category'),
(57, '/uploads/gallery/category/5d7c7df49d-61eada89587ef.jpg', 32, 'category'),
(58, '/uploads/gallery/category/6df698a720-61eada896d040.jpg', 32, 'category'),
(59, '/uploads/gallery/category/be9e327694-61eadaabe3b97.jpg', 33, 'category'),
(60, '/uploads/gallery/category/c8390129e5-61eadaabeebbf.jpg', 33, 'category'),
(61, '/uploads/gallery/category/258b0bc357-61eadaac1f6c7.jpg', 33, 'category'),
(62, '/uploads/gallery/category/0b00c87534-61eadaac46507.jpg', 33, 'category'),
(63, '/uploads/gallery/category/11f0d7842f-61eadacb7e5c2.jpg', 29, 'category'),
(64, '/uploads/gallery/category/72619b55fc-61eadacb89e74.jpg', 29, 'category'),
(65, '/uploads/gallery/category/f715a9da88-61eadacbbb394.jpg', 29, 'category'),
(66, '/uploads/gallery/category/e37cfe8959-61eadacbd7828.jpg', 29, 'category'),
(67, '/uploads/gallery/category/4f1e8897cf-61eadacc00491.jpg', 29, 'category'),
(68, '/uploads/gallery/category/cffdb1e39e-61eadacc17361.jpg', 29, 'category'),
(69, '/uploads/gallery/category/e9a3f1f7cc-61eadae6ce14f.jpg', 30, 'category'),
(70, '/uploads/gallery/category/a9dfb23686-61eadae6d0e3c.jpg', 30, 'category'),
(71, '/uploads/gallery/category/81ce4b795d-61eadae70c3ec.jpg', 30, 'category'),
(72, '/uploads/gallery/category/6db1fdc55c-61eadae70d6cc.jpg', 30, 'category'),
(73, '/uploads/gallery/category/d0cbf6a222-61eadae73a8c3.jpg', 30, 'category'),
(74, '/uploads/gallery/category/b30aeea0e9-61eadae75bbdc.jpg', 30, 'category'),
(75, '/uploads/gallery/category/b8c979b7b8-61eadae76dcde.jpg', 30, 'category'),
(76, '/uploads/gallery/category/01ce419582-61eadafcb6245.jpg', 28, 'category'),
(77, '/uploads/gallery/category/6cfb4c2bc1-61eadafcbd055.jpg', 28, 'category'),
(78, '/uploads/gallery/category/c6703b4eb2-61eadafcdfce5.jpg', 28, 'category'),
(79, '/uploads/gallery/category/2b9c6f45b1-61eadafceacbb.jpg', 28, 'category'),
(80, '/uploads/gallery/category/c03f57d358-61eadafd1b7e9.jpg', 28, 'category'),
(81, '/uploads/gallery/category/bad0d18552-61eadafd26d20.jpg', 28, 'category'),
(82, '/uploads/gallery/category/6900cf4842-61eadb1fb6efd.jpg', 26, 'category'),
(83, '/uploads/gallery/category/8afc392e96-61eadb1fc9de1.jpg', 26, 'category'),
(84, '/uploads/gallery/category/287a1bbfa6-61eadb1ff2df4.jpg', 26, 'category'),
(85, '/uploads/gallery/category/3388cdcf88-61eadb2020fb5.jpg', 26, 'category'),
(86, '/uploads/gallery/category/616e31128b-61eadb3155b65.jpg', 25, 'category'),
(87, '/uploads/gallery/category/4580882859-61eadb3157835.jpg', 25, 'category'),
(88, '/uploads/gallery/category/e63615e35e-61eadb317f58d.jpg', 25, 'category'),
(89, '/uploads/gallery/category/491cf17dfc-61eadb318bcfd.jpg', 25, 'category'),
(90, '/uploads/gallery/category/ce1fcf6a73-61eadb31b1cff.jpg', 25, 'category'),
(91, '/uploads/gallery/projects/1f937cf375-61fcc536f24d5.jpg', 16, 'projects'),
(92, '/uploads/gallery/projects/e19cc80f24-61fcc5370df48.jpg', 16, 'projects'),
(93, '/uploads/gallery/projects/ab17e5a241-61fcc5377ffc8.jpg', 16, 'projects'),
(94, '/uploads/gallery/projects/ab17e5a241-61fcc5379a550.jpg', 16, 'projects'),
(95, '/uploads/gallery/projects/ab17e5a241-61fcc537e50be.jpg', 16, 'projects'),
(96, '/uploads/gallery/projects/e80cd66bde-61fcc53809fa8.jpg', 16, 'projects'),
(97, '/uploads/gallery/projects/ae9b912ee7-61fcc5386886e.jpg', 16, 'projects'),
(98, '/uploads/gallery/projects/e80cd66bde-61fcc53882cd6.jpg', 16, 'projects'),
(99, '/uploads/gallery/projects/ae9b912ee7-61fcc538c9830.jpg', 16, 'projects'),
(100, '/uploads/gallery/projects/6e16c20172-61fcc87db0339.jpg', 17, 'projects'),
(101, '/uploads/gallery/projects/c84882573c-61fcc87db75cd.jpg', 17, 'projects'),
(102, '/uploads/gallery/projects/b912a64486-61fcc87e239ab.jpg', 17, 'projects'),
(103, '/uploads/gallery/projects/30e92cf196-61fcc87e3cdc9.jpg', 17, 'projects'),
(104, '/uploads/gallery/projects/f564e10da3-61fcc8fb3a6b2.jpg', 18, 'projects'),
(105, '/uploads/gallery/projects/db25a1b8db-61fcc8fb5701d.jpg', 18, 'projects'),
(106, '/uploads/gallery/projects/72a45e86bd-61fcc8fb98d3e.jpg', 18, 'projects'),
(107, '/uploads/gallery/projects/72a45e86bd-61fcc8fbb5d6a.jpg', 18, 'projects'),
(108, '/uploads/gallery/projects/061a1867ee-61fcc8fc67b8f.jpg', 18, 'projects'),
(109, '/uploads/gallery/projects/c6888c8b5c-61fcc8fc81da0.jpg', 18, 'projects'),
(110, '/uploads/gallery/projects/c6888c8b5c-61fcc8fccf782.jpg', 18, 'projects'),
(111, '/uploads/gallery/projects/25c87e05f8-61fcc98f529c9.jpg', 19, 'projects'),
(112, '/uploads/gallery/projects/00ad916c3b-61fcc98f6c1f5.jpg', 19, 'projects'),
(113, '/uploads/gallery/projects/00ad916c3b-61fcc98fc97e1.jpg', 19, 'projects'),
(114, '/uploads/gallery/projects/58298522eb-61fcc98fe9aac.jpg', 19, 'projects'),
(115, '/uploads/gallery/projects/f81d9b1b26-61fcc99037227.jpg', 19, 'projects'),
(116, '/uploads/gallery/projects/b197899c4d-61fcc99067846.jpg', 19, 'projects'),
(117, '/uploads/gallery/projects/b197899c4d-61fcc99098561.jpg', 19, 'projects'),
(118, '/uploads/gallery/projects/b197899c4d-61fcc990b9c5c.jpg', 19, 'projects'),
(119, '/uploads/gallery/projects/f33d2eea19-61fcc99107b8b.jpg', 19, 'projects'),
(120, '/uploads/gallery/projects/2827e3ad7a-61fcc99136ac8.jpg', 19, 'projects'),
(121, '/uploads/gallery/projects/e29e29b736-61fcc9df37637.jpg', 20, 'projects'),
(122, '/uploads/gallery/projects/43a6085866-61fcc9df50fc0.jpg', 20, 'projects'),
(123, '/uploads/gallery/projects/6903494079-61fcca60a9684.jpg', 21, 'projects'),
(124, '/uploads/gallery/projects/63f697e1cc-61fcca60cd305.jpg', 21, 'projects');

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
(1, 'fas fa-users', 'Müştərilər', 'Customers', 'Клиенты', 231, '+'),
(2, 'far fa-calendar-check', 'Layihələr', 'Projects', 'Проекты', 29, '+'),
(3, 'fas fa-award', 'Mükafatlar', 'Awards', 'Награды', 11, ''),
(4, 'fas fa-user', 'Partnyorlar', 'Partners', 'Партнеры', 33, '+');

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

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `keyword`, `value_az`, `value_en`, `value_ru`) VALUES
(1, 'contact_word', 'Əlaqə', 'Contact', 'Контакт'),
(2, 'order', 'Sifariş Edin', 'Order', 'Заказ'),
(3, 'call_us', 'Zəng Edin', 'Call Us', 'Позвоните Нам'),
(4, 'choose_services', 'Xidmət Seçin', 'Choose Services', 'Выберите Услуги'),
(5, 'send_msg', 'Mesaj Göndərin', 'Send Message', 'Отправить Сообщение'),
(6, 'your_message', 'Mesajınız', 'Your Message', 'Сообщение'),
(7, 'email_address', 'E-Poçt Ünvanı', 'Email Address', 'Адрес Э-Почты'),
(8, 'phone_number', 'Telefon Nömrəsi', 'Phone Number', 'Телефонный Номер'),
(9, 'full_name', 'Tam Ad', 'Full Name', 'Полное Имя'),
(10, 'home_word', 'Ana Səhifə', 'Home', 'Главная'),
(11, 'service_details_word', 'Xidmət Detalları', 'Service Details', 'Детали Услуги'),
(12, 'search_word', 'Axtarış', 'Search', 'Поиск'),
(13, 'search_here', 'Burada Axtarın', 'Search here', 'Поищи Здесь'),
(14, 'services_word', 'Xidmətlər', 'Services', 'Услуги'),
(15, 'projects_word', 'Layihələr', 'Projects', 'Проекты'),
(16, 'recent_news', 'Son Xəbərlər', 'Recent News', 'Свежие Новости'),
(17, 'read_more', 'DAHA ÇOX', 'READ MORE', 'БОЛЕЕ'),
(18, 'useful_links', 'Faydalı Keçidlər', 'Useful Links', 'Полезные Ссылки'),
(19, 'our_address', 'Bizim Ünvan', 'Our Address', 'Наш Адресс'),
(20, 'our_email', 'Bizim İmeyl', 'Our Email', 'Наша Э-Почта'),
(21, 'our_phone', 'Telefon Nömrəmiz', 'Our Phone Number', 'Наш Номер Телефона'),
(22, 'contact_home', 'Salınız var? Kömək Etməkdən Məmnunluq Duyarıq!', 'Do You Have Any Questions? We’ll Be Happy To Assist!', 'Есть Вопросы? Будем Рады Помочь!'),
(23, 'client_home', 'Müştərilərimiz Deyir...', 'What our clients say...', 'Что Говорят Наши Клиенты...'),
(24, 'blog_home', 'Baxışımız və Məqalələrimiz', 'Our Insights & Articles', 'Наши Идеи и Статьи'),
(25, 'contact_us', 'Bizimlə Əlaqə Saxlayın', 'Contact Us', 'Связаться с Нами'),
(26, 'get_in_touch', 'Əlaqədə Qalın', 'Get In Touch', 'Связаться'),
(27, 'products_home', 'Məhsullar', 'Products', 'Продукты'),
(28, 'share_word', 'Paylaşın', 'Share', 'Поделиться'),
(29, 'tags_word', 'Əlaqədar Teqlər', 'Related Tags', 'Связанные Теги'),
(30, 'read_more_inf', 'Ətraflı Məlumat Alın', 'Learn More', 'Выучить Больше'),
(31, 'spare_parts', 'Ehtiyat Hissələri', 'Spare Parts', 'Запасные Части'),
(32, 'see_all', 'Daha Çox', 'See All', 'Более'),
(33, 'date_word', 'Tarix', 'Date', 'Дата'),
(34, 'name_word', 'Name', 'Name', 'Name'),
(35, 'home_word', 'Ana səhifə', 'Home', 'Главная Страница');

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
(1, 'Ana Səhifə', 'Home', 'Главная', '/', 1, 0),
(2, 'Haqqımızda', 'About Us', 'О Нас', 'haqqimizda', 1, 1),
(3, 'Xidmətlər', 'Services', 'Услуги', 'xidmetler', 1, 2),
(4, 'Layihələr', 'Projects', 'Проекты', 'layiheler', 1, 3),
(5, 'Məhsullar', 'Products', 'Продукты', 'mehsullar', 1, 4),
(6, 'Bloq', 'Blog', 'Блог', 'bloq', 1, 5),
(7, 'Əlaqə', 'Contact', 'Контакт', 'elaqe', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `service_id`, `service_name`, `fullname`, `email`, `phone`, `message`, `date`, `status`) VALUES
(7, 3, 'PLANNING & PROJECTS', 'Oruc Seyidov', 'seyidovoruc@gmail.com', '', 'sdfsdf', '2022-01-15', 0),
(8, 3, 'PLANNING & PROJECTS', 'Oruc Seyidov', 'seyidovoruc@gmail.com', '', 'sdfsdf', '2022-01-15', 0),
(9, 4, 'REPLACE ACCESSORIES', 'Oruc Seyidov', 'seyidovoruc@gmail.com', '', 'rgfdfgdf', '2022-01-15', 0),
(10, 5, 'DOOR MAINTENANCE REPAIR', 'Oruc Seyidov', 'seyidovoruc@gmail.com', '', 'dsfsdf', '2022-01-15', 0);

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
(1, 'test@asas.as', '2020-06-30 00:51:13'),
(2, 'test@mail.com', '2022-01-17 17:46:39'),
(3, 'yxedice1@gmail.com', '2022-01-17 17:46:45'),
(5, 'qwerty@ytr3FvTcmbBv68Zun03kMP3ewq.com', '2022-01-26 04:15:35');

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
(1, 'Orxan Balayev', '/assets/images/Secsion/imgtestimonio3.jpg', '<p>Artıq iş yerimiz daha fərah hala gəldi. Daxili ş&uuml;şə arakəsmələr ofisimizə yeni ab-hava qatdı. Peşəkarlardan da ancaq bunu g&ouml;zləmək olardı. &quot;Boomerang&quot;a heyyətimiz adından dərin təşəkk&uuml;r edirəm. &Ccedil;ox sağ olun.</p>\r\n'),
(2, 'Rəvan Atakişiyev', '/uploads/images/opinions/6ef112f5e6001.jpg', '<p>Yeni a&ccedil;ılan ofisimizdə dairəvi qapıların y&uuml;ksək səviyyədə quraşdırılmasını həyata ke&ccedil;irdikləri &uuml;&ccedil;&uuml;n &quot;Boomerang&quot; şirkətinin b&uuml;t&uuml;n iş&ccedil;i heyyətinə dərin minnətdarlığımı bildirirəm. G&ouml;zlədiyimdən daha artıq nəticə əldə etdim. Var olun.</p>\r\n');

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
(16, 'Layihə 1', 'Layihə 1', 'Layihə 1', '<p>Layihə 1</p>\r\n', '<p>Layihə 1</p>\r\n', '<p>Layihə 1</p>\r\n', 'Layihə 1', 'Layihə 1', 'Layihə 1', '2021-11-11', 1, 0, '2022-02-02 04:30:53', 'layihe-1', 0, '/uploads/images/projects/20803cc18a-Layihe-1.jpg'),
(17, 'Layihə 2', 'Layihə 2', 'Layihə 2', '<p>Layihə 2</p>\r\n', '<p>Layihə 2</p>\r\n', '<p>Layihə 2</p>\r\n', 'Layihə 2', 'Layihə 2', 'Layihə 2', '2020-05-20', 1, 0, '2022-02-02 04:35:54', 'layihe-2', 0, '/uploads/images/projects/920aac0076-Layihe-2.jpg'),
(18, 'Layihə 3', 'Layihə 3', 'Layihə 3', '<p>Layihə 3</p>\r\n', '<p>Layihə 3</p>\r\n', '<p>Layihə 3</p>\r\n', 'Layihə 3', 'Layihə 3', 'Layihə 3', '2020-07-16', 1, 0, '2022-02-02 04:37:45', 'layihe-3', 0, '/uploads/images/projects/89975b9582-Layihe-3.jpg'),
(19, 'Layihə 4', 'Layihə 4', 'Layihə 4', '<p>Layihə 4</p>\r\n', '<p>Layihə 4</p>\r\n', '<p>Layihə 4</p>\r\n', 'Layihə 4', 'Layihə 4', 'Layihə 4', '2021-11-25', 1, 0, '2022-02-02 04:39:38', 'layihe-4', 0, '/uploads/images/projects/7ac4c8e54f-Layihe-4.jpg'),
(20, 'Layihə 5', 'Layihə 5', 'Layihə 5', '<p>Layihə 5</p>\r\n', '<p>Layihə 5</p>\r\n', '<p>Layihə 5</p>\r\n', 'Layihə 5', 'Layihə 5', 'Layihə 5', '2020-06-17', 1, 0, '2022-02-02 04:41:21', 'layihe-5', 0, '/uploads/images/projects/00a29373b5-Layihe-5.jpg'),
(21, 'Layihə 6', 'Layihə 6', 'Layihə 6', '<p>Layihə 6</p>\r\n', '<p>Layihə 6</p>\r\n', '<p>Layihə 6</p>\r\n', 'Layihə 6', 'Layihə 6', 'Layihə 6', '2019-10-23', 1, 0, '2022-02-02 04:43:08', 'layihe-6', 0, '/uploads/images/projects/746e085d7c-Layihe-6.jpg');

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
(1, 'haqqimizda', 'Haqqımızda', 'About', 'About', 'Haqqımızda', 'About', 'About', 'Haqqımızda', 'About', 'About', '/uploads/images/seo_settings/f20e31b3aeimgheader.jpg'),
(11, 'elaqe', 'Əlaqə', 'Contact', 'Contact', 'Əlaqə', 'Contact', 'Contact', 'Əlaqə', 'Contact', 'Contact', '/uploads/images/seo_settings/ca806b4761bannersdsddssd.jpg/uploads/images/seo_settings/f20e31b3aeimgheader.jpg'),
(12, 'layiheler', 'Layihələr', 'Projects', 'Projects', 'Layihələr', 'Projects', 'Projects', 'Layihələr', 'Projects', 'Projects', '/uploads/images/seo_settings/f20e31b3aeimgheader.jpg'),
(13, 'mehsullar', 'Məhsullar', 'Products', 'Products', 'Məhsullar', 'Products', 'Products', 'Məhsullar', 'Products', 'Products', '/uploads/images/seo_settings/f20e31b3aeimgheader.jpg'),
(14, 'xidmetler', 'Xidmətlər', 'Services', 'Services', 'Xidmətlər', 'Services', 'Services', 'Xidmətlər', 'Services', 'Services', '/uploads/images/seo_settings/f20e31b3aeimgheader.jpg'),
(15, 'bloq', 'Bloq', 'Blog', 'Blog', 'Bloq', 'Blog', 'Blog', 'Bloq', 'Blog', 'Blog', '/uploads/images/seo_settings/f20e31b3aeimgheader.jpg'),
(16, 'ehtiyat-hisseleri', 'Ehtiyat hissələri', 'Spare Parts', 'Spare Parts', 'Ehtiyat hissələri', 'Spare Parts', 'Spare Parts', 'Ehtiyat hissələri', 'Spare Parts', 'Spare Parts', '/uploads/images/seo_settings/f20e31b3aeimgheader.jpg');

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
  `keywords_az` varchar(1500) NOT NULL,
  `keywords_en` varchar(1500) NOT NULL,
  `keywords_ru` varchar(1500) NOT NULL,
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

INSERT INTO `services` (`id`, `title_az`, `title_en`, `title_ru`, `description_az`, `description_en`, `description_ru`, `keywords_az`, `keywords_en`, `keywords_ru`, `created_at`, `is_deleted`, `status`, `slug`, `view`, `icon`, `image`) VALUES
(1, 'EV QAPILARI', 'EV QAPILARI', 'EV QAPILARI', '<p>&Ouml;z evinizin qapılarının istənilən forma və dizaynda hazırlanmasını şirkətimizə həvalə edə bilərsiniz. Biz sizə bu işdə y&uuml;ksək səviyyədə xidmət gostərəcəyik. Belə ki, qapıların hazırlanmasında istifadə etdiyimiz məhsulların və materialların keyfiyyətinə tam zəmanət veririk ki, bu materiallar da avropanin tanınmış şirkətlərinin məhsullarıdır.</p>\r\n', '<p>&Ouml;z evinizin qapılarının istənilən forma və dizaynda hazırlanmasını şirkətimizə həvalə edə bilərsiniz. Biz sizə bu işdə y&uuml;ksək səviyyədə xidmət gostərəcəyik. Belə ki, qapıların hazırlanmasında istifadə etdiyimiz məhsulların və materialların keyfiyyətinə tam zəmanət veririk ki, bu materiallar da avropanin tanınmış şirkətlərinin məhsullarıdır.</p>\r\n', '<p>&Ouml;z evinizin qapılarının istənilən forma və dizaynda hazırlanmasını şirkətimizə həvalə edə bilərsiniz. Biz sizə bu işdə y&uuml;ksək səviyyədə xidmət gostərəcəyik. Belə ki, qapıların hazırlanmasında istifadə etdiyimiz məhsulların və materialların keyfiyyətinə tam zəmanət veririk ki, bu materiallar da avropanin tanınmış şirkətlərinin məhsullarıdır.</p>\r\n', 'EV QAPILARI', 'EV QAPILARI', 'EV QAPILARI', '2022-01-07 11:48:00', 0, 1, 'windows-services', 0, '/uploads/images/services/37c1ed8182evqa.png', '/uploads/images/services/0a4731d834qap.jpg'),
(2, 'AVTOMATİK JALÜZLƏR', 'AVTOMATİK JALÜZLƏR', 'AVTOMATİK JALÜZLƏR', '<p>Jal&uuml;zlərə və pərdələrə avtomatika quraşdırmaqla siz onların istismarında komfortluq səviyyəsini artıra bilərsiniz. Bu isə onlara daha g&ouml;zəl və prestijli g&ouml;r&uuml;n&uuml;ş verəcəkdir. Artıq &nbsp;siz hər dəfə jal&uuml;zləri a&ccedil;ıb bağlamaq və ya bu yolla otağın işıqlandırılmasını təmin etmək &uuml;&ccedil;&uuml;n&nbsp; işinizdən ayrılmayacaqsınız. Bu sistem sizə bu işi uzaqdan idarəetmə cihazı ilə yerinə yetirməyə k&ouml;mək edecək.</p>\r\n', '<p>Jal&uuml;zlərə və pərdələrə avtomatika quraşdırmaqla siz onların istismarında komfortluq səviyyəsini artıra bilərsiniz. Bu isə onlara daha g&ouml;zəl və prestijli g&ouml;r&uuml;n&uuml;ş verəcəkdir. Artıq &nbsp;siz hər dəfə jal&uuml;zləri a&ccedil;ıb bağlamaq və ya bu yolla otağın işıqlandırılmasını təmin etmək &uuml;&ccedil;&uuml;n&nbsp; işinizdən ayrılmayacaqsınız. Bu sistem sizə bu işi uzaqdan idarəetmə cihazı ilə yerinə yetirməyə k&ouml;mək edecək.</p>\r\n', '<p>Jal&uuml;zlərə və pərdələrə avtomatika quraşdırmaqla siz onların istismarında komfortluq səviyyəsini artıra bilərsiniz. Bu isə onlara daha g&ouml;zəl və prestijli g&ouml;r&uuml;n&uuml;ş verəcəkdir. Artıq &nbsp;siz hər dəfə jal&uuml;zləri a&ccedil;ıb bağlamaq və ya bu yolla otağın işıqlandırılmasını təmin etmək &uuml;&ccedil;&uuml;n&nbsp; işinizdən ayrılmayacaqsınız. Bu sistem sizə bu işi uzaqdan idarəetmə cihazı ilə yerinə yetirməyə k&ouml;mək edecək.</p>\r\n', 'AVTOMATİK JALÜZLƏR', 'AVTOMATİK JALÜZLƏR', 'AVTOMATİK JALÜZLƏR', '2022-01-07 11:49:20', 0, 1, 'doors-services', 0, '/uploads/images/services/55dd80deb6jaluz.png', '/uploads/images/services/66fb8b62a3jall.jpg'),
(3, 'AVTOMATİK DARVAZALAR', 'AVTOMATİK DARVAZALAR', 'AVTOMATİK DARVAZALAR', '<p>Avtomatik darvazalar sizin və ailənizin rahatlığının təmin olunmasına istiqamətlənmiş m&uuml;asir sistemlərdən biridir. Siz bu qurğunu &ouml;z evinizin girişində quraşdırmaqla bir &ccedil;ox bezdirici əməliyyatların icrasından xilas olacaqsınız. Belə ki, artıq siz girişə yaxınlaşarkən uzaqdan idarə etmə vasitəsilə qapıların a&ccedil;ılıb bağlanmasını təşkil edə bilərsiniz. Siz bu sistemi quraşdırmaqla həm də əmlakınızın və yaxınlarınızın təhl&uuml;kəsizliyini y&uuml;ksək səviyyədə təşkil etmiş olursunuz. Bu tip konstruksiyalar daha uzun&ouml;m&uuml;rl&uuml;d&uuml;r və daha tez a&ccedil;ılıb - bağlanma imkanı yaradır. Bizim şirkətimiz artıq uzun illərdir ki,&nbsp; bu sahədə fəaliyyət g&ouml;stərir və b&uuml;t&uuml;n təcr&uuml;bəsiylə birlikdə sizə xidmət vəd edir.</p>\r\n', '<p>Avtomatik darvazalar sizin və ailənizin rahatlığının təmin olunmasına istiqamətlənmiş m&uuml;asir sistemlərdən biridir. Siz bu qurğunu &ouml;z evinizin girişində quraşdırmaqla bir &ccedil;ox bezdirici əməliyyatların icrasından xilas olacaqsınız. Belə ki, artıq siz girişə yaxınlaşarkən uzaqdan idarə etmə vasitəsilə qapıların a&ccedil;ılıb bağlanmasını təşkil edə bilərsiniz. Siz bu sistemi quraşdırmaqla həm də əmlakınızın və yaxınlarınızın təhl&uuml;kəsizliyini y&uuml;ksək səviyyədə təşkil etmiş olursunuz. Bu tip konstruksiyalar daha uzun&ouml;m&uuml;rl&uuml;d&uuml;r və daha tez a&ccedil;ılıb - bağlanma imkanı yaradır. Bizim şirkətimiz artıq uzun illərdir ki,&nbsp; bu sahədə fəaliyyət g&ouml;stərir və b&uuml;t&uuml;n təcr&uuml;bəsiylə birlikdə sizə xidmət vəd edir.</p>\r\n', '<p>Avtomatik darvazalar sizin və ailənizin rahatlığının təmin olunmasına istiqamətlənmiş m&uuml;asir sistemlərdən biridir. Siz bu qurğunu &ouml;z evinizin girişində quraşdırmaqla bir &ccedil;ox bezdirici əməliyyatların icrasından xilas olacaqsınız. Belə ki, artıq siz girişə yaxınlaşarkən uzaqdan idarə etmə vasitəsilə qapıların a&ccedil;ılıb bağlanmasını təşkil edə bilərsiniz. Siz bu sistemi quraşdırmaqla həm də əmlakınızın və yaxınlarınızın təhl&uuml;kəsizliyini y&uuml;ksək səviyyədə təşkil etmiş olursunuz. Bu tip konstruksiyalar daha uzun&ouml;m&uuml;rl&uuml;d&uuml;r və daha tez a&ccedil;ılıb - bağlanma imkanı yaradır. Bizim şirkətimiz artıq uzun illərdir ki,&nbsp; bu sahədə fəaliyyət g&ouml;stərir və b&uuml;t&uuml;n təcr&uuml;bəsiylə birlikdə sizə xidmət vəd edir.</p>\r\n', 'AVTOMATİK DARVAZALAR', 'AVTOMATİK DARVAZALAR', 'AVTOMATİK DARVAZALAR', '2022-01-07 11:50:24', 0, 1, 'planning-and-projects', 0, '/uploads/images/services/5cc908a27adarvaza.png', '/uploads/images/services/c884f4a0eaavtodar.jpg'),
(4, 'DAİRƏVİ QAPILAR', 'DAİRƏVİ QAPILAR', 'DAİRƏVİ QAPILAR', '<p>Son d&ouml;vrlərdə x&uuml;susi orjinallığı ilə fərqlənən və qeyri standart &uuml;slubda olan girişlər məşhurluq qazanmışdır. Dairəvi qapılar da bunlardan biridir. Bu qapılar&nbsp; m&uuml;xtəlif materiallardan hazırlanır, istənilən &uuml;slubda və istənilən interyerə uyğun təşkil olunur. Dairəvi qapılar bir &ccedil;ox &uuml;st&uuml;n x&uuml;susiyyətləri ilə digərlərindən fərqlənir. Bu qapılar istismarda olduqca səmərəlidir. Belə ki, bu qapıların istifadə edildiyi yerlərdə i&ccedil;əridə tənzimlənmiş hava &ccedil;&ouml;lə axın etmir. Bu da &ouml;z n&ouml;vbəsində bu vəya digər tanzimləmələr &uuml;&ccedil;&uuml;n ayrılan vəsaitə qənaət imkanı yaradır. İstənilən binada elektrik kəsintisi halları istisna deyildir. Hətta bu hallarda belə dairəvi qapılar bir ne&ccedil;ə saat işləyə bilər. Səssiz işləmə x&uuml;susiyyəti ilə fərqlənən bu qapılar binanın daxili qəza sistemi ilə də birləşdirilə bilər. B&uuml;t&uuml;n bu sayılan &uuml;st&uuml;nl&uuml;klər qonaqların və personalın rahatlığını , ən əsası isə həyat təhl&uuml;kəsizliyini təmin edir.</p>\r\n', '<p>Son d&ouml;vrlərdə x&uuml;susi orjinallığı ilə fərqlənən və qeyri standart &uuml;slubda olan girişlər məşhurluq qazanmışdır. Dairəvi qapılar da bunlardan biridir. Bu qapılar&nbsp; m&uuml;xtəlif materiallardan hazırlanır, istənilən &uuml;slubda və istənilən interyerə uyğun təşkil olunur. Dairəvi qapılar bir &ccedil;ox &uuml;st&uuml;n x&uuml;susiyyətləri ilə digərlərindən fərqlənir. Bu qapılar istismarda olduqca səmərəlidir. Belə ki, bu qapıların istifadə edildiyi yerlərdə i&ccedil;əridə tənzimlənmiş hava &ccedil;&ouml;lə axın etmir. Bu da &ouml;z n&ouml;vbəsində bu vəya digər tanzimləmələr &uuml;&ccedil;&uuml;n ayrılan vəsaitə qənaət imkanı yaradır. İstənilən binada elektrik kəsintisi halları istisna deyildir. Hətta bu hallarda belə dairəvi qapılar bir ne&ccedil;ə saat işləyə bilər. Səssiz işləmə x&uuml;susiyyəti ilə fərqlənən bu qapılar binanın daxili qəza sistemi ilə də birləşdirilə bilər. B&uuml;t&uuml;n bu sayılan &uuml;st&uuml;nl&uuml;klər qonaqların və personalın rahatlığını , ən əsası isə həyat təhl&uuml;kəsizliyini təmin edir.</p>\r\n', '<p>Son d&ouml;vrlərdə x&uuml;susi orjinallığı ilə fərqlənən və qeyri standart &uuml;slubda olan girişlər məşhurluq qazanmışdır. Dairəvi qapılar da bunlardan biridir. Bu qapılar&nbsp; m&uuml;xtəlif materiallardan hazırlanır, istənilən &uuml;slubda və istənilən interyerə uyğun təşkil olunur. Dairəvi qapılar bir &ccedil;ox &uuml;st&uuml;n x&uuml;susiyyətləri ilə digərlərindən fərqlənir. Bu qapılar istismarda olduqca səmərəlidir. Belə ki, bu qapıların istifadə edildiyi yerlərdə i&ccedil;əridə tənzimlənmiş hava &ccedil;&ouml;lə axın etmir. Bu da &ouml;z n&ouml;vbəsində bu vəya digər tanzimləmələr &uuml;&ccedil;&uuml;n ayrılan vəsaitə qənaət imkanı yaradır. İstənilən binada elektrik kəsintisi halları istisna deyildir. Hətta bu hallarda belə dairəvi qapılar bir ne&ccedil;ə saat işləyə bilər. Səssiz işləmə x&uuml;susiyyəti ilə fərqlənən bu qapılar binanın daxili qəza sistemi ilə də birləşdirilə bilər. B&uuml;t&uuml;n bu sayılan &uuml;st&uuml;nl&uuml;klər qonaqların və personalın rahatlığını , ən əsası isə həyat təhl&uuml;kəsizliyini təmin edir.</p>\r\n', 'DAİRƏVİ QAPILAR', 'DAİRƏVİ QAPILAR', 'DAİRƏVİ QAPILAR', '2022-01-07 11:52:18', 0, 1, 'replace-accessories', 0, '/uploads/images/services/a76142b8e5dairevi.png', '/uploads/images/services/2e33c1a818dar.jpg'),
(5, 'AVTOMATİK BARYER SİSTEMLƏRİ', 'AVTOMATİK BARYER SİSTEMLƏRİ', 'AVTOMATİK BARYER SİSTEMLƏRİ', '<p>Şlaqbaumlar</p>\r\n\r\n<p>Şlaqbaum nəqliyyat vasitələrinin qapalı əraziyə girişinin qarşısının alınması və tənzimlənməsi &uuml;&ccedil;&uuml;n istifadə olunan qurğudur. Bu qurğu m&uuml;xtəlif materialda ola bilər ki, bunlardan ən ən &ccedil;ox istifadə olunanı taxta və metaldır.</p>\r\n\r\n<p>Şlaqbaumlar ərazinin girişdən muhafizəsi &uuml;&ccedil;&uuml;n nəzərdə tutulur. Şlaqbaumlar m&uuml;xtəlif anbarların, ofis mərkəzlərinin, idman komplekslərinin, m&uuml;əssisələrin, ticarət və əyləncə mərkəzlərinin, aeroportların, yaşayiş komplekslərinin və digər bir &ccedil;ox qapalı ərazilərin girişlərində istifadə olunur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Parking sistemləri və avtomatlaşdırılması</p>\r\n\r\n<p>Hal hazıki d&ouml;vrdə parking sistemləri istənilən tip &ouml;zəl ərazilər &uuml;&ccedil;&uuml;n qa&ccedil;ınılmaz bir ehtiyac halını almışdır. Avtoparklara olan ehtiyacın artdığı bir zamanda bu ərazilərin idarəedici heyyəti m&uuml;ştərilərə daha keyfiyyətli xidmət gəstərmək &uuml;&ccedil;&uuml;n səy g&ouml;stərirlər. Bu sistemlərin avtomatlaşdırılması həm bu sahədən gələn gəlirin artırılmasına həmdə bu prosesə nəzarəti g&uuml;cləndiməyə imkan verir. Şirkətimiz bu sahədə sizə geniş se&ccedil;im təqdim edir.</p>\r\n', '<p>Şlaqbaumlar</p>\r\n\r\n<p>Şlaqbaum nəqliyyat vasitələrinin qapalı əraziyə girişinin qarşısının alınması və tənzimlənməsi &uuml;&ccedil;&uuml;n istifadə olunan qurğudur. Bu qurğu m&uuml;xtəlif materialda ola bilər ki, bunlardan ən ən &ccedil;ox istifadə olunanı taxta və metaldır.</p>\r\n\r\n<p>Şlaqbaumlar ərazinin girişdən muhafizəsi &uuml;&ccedil;&uuml;n nəzərdə tutulur. Şlaqbaumlar m&uuml;xtəlif anbarların, ofis mərkəzlərinin, idman komplekslərinin, m&uuml;əssisələrin, ticarət və əyləncə mərkəzlərinin, aeroportların, yaşayiş komplekslərinin və digər bir &ccedil;ox qapalı ərazilərin girişlərində istifadə olunur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Parking sistemləri və avtomatlaşdırılması</p>\r\n\r\n<p>Hal hazıki d&ouml;vrdə parking sistemləri istənilən tip &ouml;zəl ərazilər &uuml;&ccedil;&uuml;n qa&ccedil;ınılmaz bir ehtiyac halını almışdır. Avtoparklara olan ehtiyacın artdığı bir zamanda bu ərazilərin idarəedici heyyəti m&uuml;ştərilərə daha keyfiyyətli xidmət gəstərmək &uuml;&ccedil;&uuml;n səy g&ouml;stərirlər. Bu sistemlərin avtomatlaşdırılması həm bu sahədən gələn gəlirin artırılmasına həmdə bu prosesə nəzarəti g&uuml;cləndiməyə imkan verir. Şirkətimiz bu sahədə sizə geniş se&ccedil;im təqdim edir.</p>\r\n', '<p>Şlaqbaumlar</p>\r\n\r\n<p>Şlaqbaum nəqliyyat vasitələrinin qapalı əraziyə girişinin qarşısının alınması və tənzimlənməsi &uuml;&ccedil;&uuml;n istifadə olunan qurğudur. Bu qurğu m&uuml;xtəlif materialda ola bilər ki, bunlardan ən ən &ccedil;ox istifadə olunanı taxta və metaldır.</p>\r\n\r\n<p>Şlaqbaumlar ərazinin girişdən muhafizəsi &uuml;&ccedil;&uuml;n nəzərdə tutulur. Şlaqbaumlar m&uuml;xtəlif anbarların, ofis mərkəzlərinin, idman komplekslərinin, m&uuml;əssisələrin, ticarət və əyləncə mərkəzlərinin, aeroportların, yaşayiş komplekslərinin və digər bir &ccedil;ox qapalı ərazilərin girişlərində istifadə olunur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Parking sistemləri və avtomatlaşdırılması</p>\r\n\r\n<p>Hal hazıki d&ouml;vrdə parking sistemləri istənilən tip &ouml;zəl ərazilər &uuml;&ccedil;&uuml;n qa&ccedil;ınılmaz bir ehtiyac halını almışdır. Avtoparklara olan ehtiyacın artdığı bir zamanda bu ərazilərin idarəedici heyyəti m&uuml;ştərilərə daha keyfiyyətli xidmət gəstərmək &uuml;&ccedil;&uuml;n səy g&ouml;stərirlər. Bu sistemlərin avtomatlaşdırılması həm bu sahədən gələn gəlirin artırılmasına həmdə bu prosesə nəzarəti g&uuml;cləndiməyə imkan verir. Şirkətimiz bu sahədə sizə geniş se&ccedil;im təqdim edir.</p>\r\n', 'AVTOMATİK BARYER SİSTEMLƏRİ', 'AVTOMATİK BARYER SİSTEMLƏRİ', 'AVTOMATİK BARYER SİSTEMLƏRİ', '2022-01-07 11:53:41', 0, 1, 'door-maintenance-repair', 0, '/uploads/images/services/b184fb5c15barier.png', '/uploads/images/services/be06a025d7slaq.jpg'),
(6, 'AVTOMATİK FOTOSEL QAPILAR', 'AVTOMATİK FOTOSEL QAPILAR', 'AVTOMATİK FOTOSEL QAPILAR', '<p>Fotoselli avtomatik s&uuml;r&uuml;şmə qapıları istənilən məkanda girişin rahatlığını və səmərəliliyini təmin etmək &uuml;&ccedil;&uuml;n b&ouml;y&uuml;k rol oynayır. Son vaxtlar bir &ccedil;ox m&uuml;xtəlif təyinatlı iş yerlərində geniş istifadə edilir. Bu ona g&ouml;rədir ki, fotoselli qapılar bir &ccedil;ox &uuml;st&uuml;nl&uuml;klərinə g&ouml;rə digərlərindən fərqlənir. Təmasda olmadan a&ccedil;ılma &uuml;st&uuml;nl&uuml;y&uuml;nə malik olan bu qapılar i&ccedil;əridə olan tənzimlənmiş havanın &ccedil;&ouml;lə axın etməsinin də qarşısını alır. Avtomatik s&uuml;r&uuml;şmə qapıları m&uuml;xtəlif tiplərə b&ouml;l&uuml;n&uuml;r ki, bu da ke&ccedil;idin maksimumluğunu təmin etmə və ya tarazlaşdırma imkanı yaradır. Bu qapılar dizayn m&uuml;xtəlifliyində he&ccedil; bir sərhəd tanımır. Fotoselli qapılarda səssiz a&ccedil;ılıb bağlanma, istilik və səs izolyasiyası kimi x&uuml;suyyətləri də nəzərə almaq lazımdır. Siz bu tip qapılara həm də giriş təhl&uuml;kəsizliyi kimi x&uuml;susiyyətlər də artıra bilərsiniz ki, bu halda girişdən istifadə etməzdən əvvəl barmaq izi, şifrə və yaxud da kart istifadəsi zərurəti yaradacaqsınız. Biz sizə fotoselli avtomatik qapıları m&uuml;xtəlif ş&uuml;şə n&ouml;vləri ilə təklif edirik.</p>\r\n', '<p>Fotoselli avtomatik s&uuml;r&uuml;şmə qapıları istənilən məkanda girişin rahatlığını və səmərəliliyini təmin etmək &uuml;&ccedil;&uuml;n b&ouml;y&uuml;k rol oynayır. Son vaxtlar bir &ccedil;ox m&uuml;xtəlif təyinatlı iş yerlərində geniş istifadə edilir. Bu ona g&ouml;rədir ki, fotoselli qapılar bir &ccedil;ox &uuml;st&uuml;nl&uuml;klərinə g&ouml;rə digərlərindən fərqlənir. Təmasda olmadan a&ccedil;ılma &uuml;st&uuml;nl&uuml;y&uuml;nə malik olan bu qapılar i&ccedil;əridə olan tənzimlənmiş havanın &ccedil;&ouml;lə axın etməsinin də qarşısını alır. Avtomatik s&uuml;r&uuml;şmə qapıları m&uuml;xtəlif tiplərə b&ouml;l&uuml;n&uuml;r ki, bu da ke&ccedil;idin maksimumluğunu təmin etmə və ya tarazlaşdırma imkanı yaradır. Bu qapılar dizayn m&uuml;xtəlifliyində he&ccedil; bir sərhəd tanımır. Fotoselli qapılarda səssiz a&ccedil;ılıb bağlanma, istilik və səs izolyasiyası kimi x&uuml;suyyətləri də nəzərə almaq lazımdır. Siz bu tip qapılara həm də giriş təhl&uuml;kəsizliyi kimi x&uuml;susiyyətlər də artıra bilərsiniz ki, bu halda girişdən istifadə etməzdən əvvəl barmaq izi, şifrə və yaxud da kart istifadəsi zərurəti yaradacaqsınız. Biz sizə fotoselli avtomatik qapıları m&uuml;xtəlif ş&uuml;şə n&ouml;vləri ilə təklif edirik.</p>\r\n', '<p>Fotoselli avtomatik s&uuml;r&uuml;şmə qapıları istənilən məkanda girişin rahatlığını və səmərəliliyini təmin etmək &uuml;&ccedil;&uuml;n b&ouml;y&uuml;k rol oynayır. Son vaxtlar bir &ccedil;ox m&uuml;xtəlif təyinatlı iş yerlərində geniş istifadə edilir. Bu ona g&ouml;rədir ki, fotoselli qapılar bir &ccedil;ox &uuml;st&uuml;nl&uuml;klərinə g&ouml;rə digərlərindən fərqlənir. Təmasda olmadan a&ccedil;ılma &uuml;st&uuml;nl&uuml;y&uuml;nə malik olan bu qapılar i&ccedil;əridə olan tənzimlənmiş havanın &ccedil;&ouml;lə axın etməsinin də qarşısını alır. Avtomatik s&uuml;r&uuml;şmə qapıları m&uuml;xtəlif tiplərə b&ouml;l&uuml;n&uuml;r ki, bu da ke&ccedil;idin maksimumluğunu təmin etmə və ya tarazlaşdırma imkanı yaradır. Bu qapılar dizayn m&uuml;xtəlifliyində he&ccedil; bir sərhəd tanımır. Fotoselli qapılarda səssiz a&ccedil;ılıb bağlanma, istilik və səs izolyasiyası kimi x&uuml;suyyətləri də nəzərə almaq lazımdır. Siz bu tip qapılara həm də giriş təhl&uuml;kəsizliyi kimi x&uuml;susiyyətlər də artıra bilərsiniz ki, bu halda girişdən istifadə etməzdən əvvəl barmaq izi, şifrə və yaxud da kart istifadəsi zərurəti yaradacaqsınız. Biz sizə fotoselli avtomatik qapıları m&uuml;xtəlif ş&uuml;şə n&ouml;vləri ilə təklif edirik.</p>\r\n', 'AVTOMATİK FOTOSEL QAPILAR', 'AVTOMATİK FOTOSEL QAPILAR', 'AVTOMATİK FOTOSEL QAPILAR', '2022-01-07 11:55:14', 0, 1, 'icon flaticon-door-5-61e9a7c52f514', 0, '/uploads/images/services/cfa0fba012fotosel.png', '/uploads/images/services/db2e325d33se4r.jpg');

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
  `header_image` varchar(1000) NOT NULL,
  `footer_image` varchar(1000) NOT NULL,
  `favicon` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_title_az`, `site_title_en`, `site_title_ru`, `description_az`, `description_en`, `description_ru`, `tags_az`, `tags_en`, `tags_ru`, `site_status`, `header_image`, `footer_image`, `favicon`) VALUES
(1, 'Boomerang Avtomatik Qapılar', 'Boomerang Avtomatik Qapılar', 'Boomerang Avtomatik Qapılar', '<p>Darvazaların, qarajların, anbar və marketlərin qapılarının avtomatik olaraq a&ccedil;ılıb bağlanması şirkətimizin siz m&uuml;ştərilərimizə təklif etdiyi xidmətlərdən yalnız bir ne&ccedil;əsidir. Bizim əsas məqsədimiz və amalımız sizin etibarınızı qazanmaq və z&ouml;vq&uuml;n&uuml;z&uuml; oxşamaqdır.</p>\r\n', '<p>Darvazaların, qarajların, anbar və marketlərin qapılarının avtomatik olaraq a&ccedil;ılıb bağlanması şirkətimizin siz m&uuml;ştərilərimizə təklif etdiyi xidmətlərdən yalnız bir ne&ccedil;əsidir. Bizim əsas məqsədimiz və amalımız sizin etibarınızı qazanmaq və z&ouml;vq&uuml;n&uuml;z&uuml; oxşamaqdır.</p>\r\n', '<p>Darvazaların, qarajların, anbar və marketlərin qapılarının avtomatik olaraq a&ccedil;ılıb bağlanması şirkətimizin siz m&uuml;ştərilərimizə təklif etdiyi xidmətlərdən yalnız bir ne&ccedil;əsidir. Bizim əsas məqsədimiz və amalımız sizin etibarınızı qazanmaq və z&ouml;vq&uuml;n&uuml;z&uuml; oxşamaqdır.</p>\r\n', 'Avtomatik Fotosel Və Dönər Qapılar,Fotosel Qapılar,Dönər Qapılar,Yarımdairəvi Qapılar,Hermetik Və Xəstəxana Qapıları,Avtomatik Seksiyonal Qapılar,Qaraj Qapıları,Sənaye Qapıları,Avtomatik Jalüz Qapılar,Avtomatik Pəncərə Jalüzləri,Jalüz Darvazalar,Avtomatik Darvazalar,90 Dərəcə Açılan Darvazalar,Yana Açılan Darvazalar', 'Avtomatik Fotosel Və Dönər Qapılar,Fotosel Qapılar,Dönər Qapılar,Yarımdairəvi Qapılar,Hermetik Və Xəstəxana Qapıları,Avtomatik Seksiyonal Qapılar,Qaraj Qapıları,Sənaye Qapıları,Avtomatik Jalüz Qapılar,Avtomatik Pəncərə Jalüzləri,Jalüz Darvazalar,Avtomatik Darvazalar,90 Dərəcə Açılan Darvazalar,Yana Açılan Darvazalar', 'Avtomatik Fotosel Və Dönər Qapılar,Fotosel Qapılar,Dönər Qapılar,Yarımdairəvi Qapılar,Hermetik Və Xəstəxana Qapıları,Avtomatik Seksiyonal Qapılar,Qaraj Qapıları,Sənaye Qapıları,Avtomatik Jalüz Qapılar,Avtomatik Pəncərə Jalüzləri,Jalüz Darvazalar,Avtomatik Darvazalar,90 Dərəcə Açılan Darvazalar,Yana Açılan Darvazalar', 1, '/uploads/images/statics/21f6badf3a-Boomerang-avtomatik-qapilar.png', '/uploads/images/statics/89ca761b6f-Boomerang-avtomatik-qapilar.png', '/uploads/images/statics/dfec2cc572-Favicon.png');

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
(1, 'Yarımdaİrəvİ Qapılar', 'Yarımdaİrəvİ Qapılar', 'Yarımdaİrəvİ Qapılar', '<p>Səssiz işləmə x&uuml;susiyyəti ilə fərqlənən bu qapılar binanın daxili qəza sistemi ilə də birləşdirilə bilər.<br />\r\nB&uuml;t&uuml;n bu sayılan &uuml;st&uuml;nl&uuml;klər qonaqların və personalın rahatlığını , ən əsası isə həyat təhl&uuml;kəsizliyini təmin edir.</p>\r\n', '<p>Səssiz işləmə x&uuml;susiyyəti ilə fərqlənən bu qapılar binanın daxili qəza sistemi ilə də birləşdirilə bilər.<br />\r\nB&uuml;t&uuml;n bu sayılan &uuml;st&uuml;nl&uuml;klər qonaqların və personalın rahatlığını , ən əsası isə həyat təhl&uuml;kəsizliyini təmin edir.</p>\r\n', '<p>Səssiz işləmə x&uuml;susiyyəti ilə fərqlənən bu qapılar binanın daxili qəza sistemi ilə də birləşdirilə bilər.<br />\r\nB&uuml;t&uuml;n bu sayılan &uuml;st&uuml;nl&uuml;klər qonaqların və personalın rahatlığını , ən əsası isə həyat təhl&uuml;kəsizliyini təmin edir.</p>\r\n', 'https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-yarimdairevi-qapilar', 1, 1, 1, '/uploads/images/slider/70d1b4b195-Yarimdairevi-qapilar.jpg'),
(2, 'Fotosel Qapılar', 'Fotosel Qapılar', 'Fotosel Qapılar', '<p>Təmasda olmadan a&ccedil;ılma &uuml;st&uuml;nl&uuml;y&uuml;nə malik olan bu qapılar i&ccedil;əridə olan tənzimlənmiş havanın &ccedil;&ouml;lə axın etməsinin də qarşısını alır.</p>\r\n', '<p>Təmasda olmadan a&ccedil;ılma &uuml;st&uuml;nl&uuml;y&uuml;nə malik olan bu qapılar i&ccedil;əridə olan tənzimlənmiş havanın &ccedil;&ouml;lə axın etməsinin də qarşısını alır.</p>\r\n', '<p>Təmasda olmadan a&ccedil;ılma &uuml;st&uuml;nl&uuml;y&uuml;nə malik olan bu qapılar i&ccedil;əridə olan tənzimlənmiş havanın &ccedil;&ouml;lə axın etməsinin də qarşısını alır.</p>\r\n', 'https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar-fotosel-qapilar', 1, 1, 0, '/uploads/images/slider/9f5242a267-Avtomatik-seksiyonalbrqaraj-qapilari.jpg'),
(3, 'Avtomatİk Fotosel<br/>Və Dönər Qapılar', 'Avtomatİk Fotosel<br/>Və Dönər Qapılar', 'Avtomatİk Fotosel<br/>Və Dönər Qapılar', '<p>Avtomatik d&ouml;nər qapılar son zamanlar ticari obyektlərdə, biznes mərkəzlərində, idarələrdə geniş istifadə olunan bir giriş vasitəsidir.</p>\r\n', '<p>Avtomatik d&ouml;nər qapılar son zamanlar ticari obyektlərdə, biznes mərkəzlərində, idarələrdə geniş istifadə olunan bir giriş vasitəsidir.</p>\r\n', '<p>Avtomatik d&ouml;nər qapılar son zamanlar ticari obyektlərdə, biznes mərkəzlərində, idarələrdə geniş istifadə olunan bir giriş vasitəsidir.</p>\r\n', 'https://boomerang.az/mehsullar/avtomatik-fotosel-ve-doner-qapilar', 1, 1, 2, '/uploads/images/slider/274150d0dd-The-successful-business.jpg');

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
(7, 'WhatsApp', 'fab fa-whatsapp', 'https://wa.me/+994504500107');

-- --------------------------------------------------------

--
-- Table structure for table `spare_parts`
--

CREATE TABLE `spare_parts` (
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
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `slug` varchar(500) NOT NULL,
  `image` varchar(1500) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spare_parts`
--

INSERT INTO `spare_parts` (`id`, `title_az`, `title_en`, `title_ru`, `description_az`, `description_en`, `description_ru`, `keywords_az`, `keywords_en`, `keywords_ru`, `is_deleted`, `created_at`, `slug`, `image`, `status`) VALUES
(3, '001', '001', '001', '<p>001</p>\r\n', '<p>001</p>\r\n', '<p>001</p>\r\n', '001', '001', '001', 0, '2022-01-31 12:06:28', '001', '/uploads/images/spare_parts/7fa213fc01-001.jpg', 1),
(4, '002', '002', '002', '<p>002</p>\r\n', '<p>002</p>\r\n', '<p>002</p>\r\n', '002', '002', '002', 0, '2022-01-31 12:06:56', '002', '/uploads/images/spare_parts/969c8d6e33-002.jpg', 1),
(5, '003', '003', '003', '<p>003</p>\r\n', '<p>003</p>\r\n', '<p>003</p>\r\n', '003', '003', '003', 0, '2022-01-31 12:07:12', '003', '/uploads/images/spare_parts/082d26bccb-003.jpg', 1),
(6, '004', '004', '004', '<p>004</p>\r\n', '<p>004</p>\r\n', '<p>004</p>\r\n', '004', '004', '004', 0, '2022-01-31 12:07:27', '004', '/uploads/images/spare_parts/eb18395a2c-004.jpg', 1),
(7, '005', '005', '005', '<p>005</p>\r\n', '<p>005</p>\r\n', '<p>005</p>\r\n', '005', '005', '005', 0, '2022-01-31 12:07:42', '005', '/uploads/images/spare_parts/693db938e7-005.jpg', 1),
(8, '006', '006', '006', '<p>006</p>\r\n', '<p>006</p>\r\n', '<p>006</p>\r\n', '006', '006', '006', 0, '2022-01-31 12:08:00', '006', '/uploads/images/spare_parts/167ede6b2e-006.jpg', 1),
(9, '007', '007', '007', '<p>007</p>\r\n', '<p>007</p>\r\n', '<p>007</p>\r\n', '007', '007', '007', 0, '2022-01-31 12:08:42', '007', '/uploads/images/spare_parts/46648be088-007.jpg', 1),
(10, '008', '008', '008', '<p>008</p>\r\n', '<p>008</p>\r\n', '<p>008</p>\r\n', '008', '008', '008', 0, '2022-01-31 12:08:59', '008', '/uploads/images/spare_parts/aba89fbe68-008.jpg', 1),
(11, '009', '009', '009', '<p>009</p>\r\n', '<p>009</p>\r\n', '<p>009</p>\r\n', '009', '009', '009', 0, '2022-01-31 12:09:16', '009', '/uploads/images/spare_parts/aee6101271-009.jpg', 1),
(12, '010', '010', '010', '<p>010</p>\r\n', '<p>010</p>\r\n', '<p>010</p>\r\n', '010', '010', '010', 0, '2022-01-31 12:09:42', '010', '/uploads/images/spare_parts/bfb159053e-010.jpg', 1),
(13, '011', '011', '011', '<p>011</p>\r\n', '<p>011</p>\r\n', '<p>011</p>\r\n', '011', '011', '011', 0, '2022-01-31 12:09:56', '011', '/uploads/images/spare_parts/ff0bb45e55-011.jpg', 1),
(14, '012', '012', '012', '<p>012</p>\r\n', '<p>012</p>\r\n', '<p>012</p>\r\n', '012', '012', '012', 0, '2022-01-31 12:10:12', '012', '/uploads/images/spare_parts/7863f85efc-012.jpg', 1),
(15, '013', '013', '013', '<p>013</p>\r\n', '<p>013</p>\r\n', '<p>013</p>\r\n', '013', '013', '013', 0, '2022-01-31 12:11:09', '013', '/uploads/images/spare_parts/3e18d2e865-013.jpg', 1),
(16, '014', '014', '014', '<p>014</p>\r\n', '<p>014</p>\r\n', '<p>014</p>\r\n', '014', '014', '014', 0, '2022-01-31 12:11:24', '014', '/uploads/images/spare_parts/926605c6dd-014.jpg', 1),
(17, '015', '015', '015', '<p>015</p>\r\n', '<p>015</p>\r\n', '<p>015</p>\r\n', '015', '015', '015', 0, '2022-01-31 12:11:42', '015', '/uploads/images/spare_parts/d8a4127a0c-015.jpg', 1),
(18, '016', '016', '016', '<p>016</p>\r\n', '<p>016</p>\r\n', '<p>016</p>\r\n', '016', '016', '016', 0, '2022-01-31 12:11:59', '016', '/uploads/images/spare_parts/977854b899-016.jpg', 1),
(19, '017', '017', '017', '<p>017</p>\r\n', '<p>017</p>\r\n', '<p>017</p>\r\n', '017', '017', '017', 0, '2022-01-31 12:12:17', '017', '/uploads/images/spare_parts/0b536536e6-017.jpg', 1),
(20, '018', '018', '018', '<p>018</p>\r\n', '<p>018</p>\r\n', '<p>018</p>\r\n', '018', '018', '018', 0, '2022-01-31 12:12:36', '018', '/uploads/images/spare_parts/5b4a4cf60d-018.jpg', 1),
(21, '019', '019', '019', '<p>019</p>\r\n', '<p>019</p>\r\n', '<p>019</p>\r\n', '019', '019', '019', 0, '2022-01-31 12:12:52', '019', '/uploads/images/spare_parts/ec8c53d8b6-019.jpg', 1),
(22, '020', '020', '020', '<p>020</p>\r\n', '<p>020</p>\r\n', '<p>020</p>\r\n', '020', '020', '020', 0, '2022-01-31 12:13:17', '020', '/uploads/images/spare_parts/73d4317add-020.jpg', 1),
(23, '021', '021', '021', '<p>021</p>\r\n', '<p>021</p>\r\n', '<p>021</p>\r\n', '021', '021', '021', 0, '2022-01-31 12:13:36', '021', '/uploads/images/spare_parts/737759806a-021.jpg', 1),
(24, '022', '022', '022', '<p>022</p>\r\n', '<p>022</p>\r\n', '<p>022</p>\r\n', '022', '022', '022', 0, '2022-01-31 12:14:01', '022', '/uploads/images/spare_parts/eab228dad7-022.jpg', 1),
(25, '023', '023', '023', '<p>023</p>\r\n', '<p>023</p>\r\n', '<p>023</p>\r\n', '023', '023', '023', 0, '2022-01-31 12:14:16', '023', '/uploads/images/spare_parts/a81f4b8292-023.jpg', 1),
(26, '024', '024', '024', '<p>024</p>\r\n', '<p>024</p>\r\n', '<p>024</p>\r\n', '024', '024', '024', 0, '2022-01-31 12:14:43', '024', '/uploads/images/spare_parts/46397aa92b-024.jpg', 1),
(27, '025', '025', '025', '<p>025</p>\r\n', '<p>025</p>\r\n', '<p>025</p>\r\n', '025', '025', '025', 0, '2022-01-31 12:15:01', '025', '/uploads/images/spare_parts/7c8d818864-025.jpg', 1),
(28, '026', '026', '026', '<p>026</p>\r\n', '<p>026</p>\r\n', '<p>026</p>\r\n', '026', '026', '026', 0, '2022-01-31 12:15:26', '026', '/uploads/images/spare_parts/ef302d6901-026.jpg', 1),
(29, '027', '027', '027', '<p>027</p>\r\n', '<p>027</p>\r\n', '<p>027</p>\r\n', '027', '027', '027', 0, '2022-01-31 12:15:46', '027', '/uploads/images/spare_parts/5af4fa5952-027.jpg', 1),
(30, '028', '028', '028', '<p>028</p>\r\n', '<p>028</p>\r\n', '<p>028</p>\r\n', '028', '028', '028', 0, '2022-01-31 12:16:03', '028', '/uploads/images/spare_parts/2ce3cc771f-028.jpg', 1),
(31, '029', '029', '029', '<p>029</p>\r\n', '<p>029</p>\r\n', '<p>029</p>\r\n', '029', '029', '029', 0, '2022-01-31 12:16:21', '029', '/uploads/images/spare_parts/582a13f865-029.jpg', 1),
(32, '030', '030', '030', '<p>030</p>\r\n', '<p>030</p>\r\n', '<p>030</p>\r\n', '030', '030', '030', 0, '2022-01-31 12:16:48', '030', '/uploads/images/spare_parts/22ea302474-030.jpg', 1),
(33, '031', '031', '031', '<p>031</p>\r\n', '<p>031</p>\r\n', '<p>031</p>\r\n', '031', '031', '031', 0, '2022-01-31 12:17:04', '031', '/uploads/images/spare_parts/d0cd6f0615-031.jpg', 1),
(34, '032', '032', '032', '<p>032</p>\r\n', '<p>032</p>\r\n', '<p>032</p>\r\n', '032', '032', '032', 0, '2022-01-31 12:17:25', '032', '/uploads/images/spare_parts/e3daf0b3bc-032.jpg', 1),
(35, '033', '033', '033', '<p>033</p>\r\n', '<p>033</p>\r\n', '<p>033</p>\r\n', '033', '033', '033', 0, '2022-01-31 12:17:44', '033', '/uploads/images/spare_parts/19cc91133b-033.jpg', 1),
(36, '034', '034', '034', '<p>034</p>\r\n', '<p>034</p>\r\n', '<p>034</p>\r\n', '034', '034', '034', 0, '2022-01-31 12:18:17', '034', '/uploads/images/spare_parts/745471fea5-034.jpg', 1),
(37, '035', '035', '035', '<p>035</p>\r\n', '<p>035</p>\r\n', '<p>035</p>\r\n', '035', '035', '035', 0, '2022-01-31 12:18:38', '035', '/uploads/images/spare_parts/b1cd1f50d5-035.jpg', 1),
(38, '036', '036', '036', '<p>036</p>\r\n', '<p>036</p>\r\n', '<p>036</p>\r\n', '036', '036', '036', 0, '2022-01-31 12:19:13', '036', '/uploads/images/spare_parts/364abdf740-036.jpg', 1),
(39, '037', '037', '037', '<p>037</p>\r\n', '<p>037</p>\r\n', '<p>037</p>\r\n', '037', '037', '037', 0, '2022-01-31 12:19:29', '037', '/uploads/images/spare_parts/48235550e6-037.jpg', 1),
(40, '038', '038', '038', '<p>038</p>\r\n', '<p>038</p>\r\n', '<p>038</p>\r\n', '038', '038', '038', 0, '2022-01-31 12:20:31', '038', '/uploads/images/spare_parts/964240b1f3-038.jpg', 1),
(41, '039', '039', '039', '<p>039</p>\r\n', '<p>039</p>\r\n', '<p>039</p>\r\n', '039', '039', '039', 0, '2022-01-31 12:20:49', '039', '/uploads/images/spare_parts/8c5d669f7d-039.jpg', 1),
(42, '040', '040', '040', '<p>040</p>\r\n', '<p>040</p>\r\n', '<p>040</p>\r\n', '040', '040', '040', 0, '2022-01-31 12:21:08', '040', '/uploads/images/spare_parts/32f353d1ae-040.jpg', 1),
(43, '041', '041', '041', '<p>041</p>\r\n', '<p>041</p>\r\n', '<p>041</p>\r\n', '041', '041', '041', 0, '2022-01-31 12:22:04', '041', '/uploads/images/spare_parts/a9830f036e-041.jpg', 1),
(44, '042', '042', '042', '<p>042</p>\r\n', '<p>042</p>\r\n', '<p>042</p>\r\n', '042', '042', '042', 0, '2022-01-31 12:22:31', '042', '/uploads/images/spare_parts/90276ed5ca-042.jpg', 1),
(45, '043', '043', '043', '<p>043</p>\r\n', '<p>043</p>\r\n', '<p>043</p>\r\n', '043', '043', '043', 0, '2022-01-31 12:22:50', '043', '/uploads/images/spare_parts/f09a111f43-043.jpg', 1),
(46, '044', '044', '044', '<p>044</p>\r\n', '<p>044</p>\r\n', '<p>044</p>\r\n', '044', '044', '044', 0, '2022-01-31 12:23:14', '044', '/uploads/images/spare_parts/e10aae1a2d-044.jpg', 1),
(47, '045', '045', '045', '<p>045</p>\r\n', '<p>045</p>\r\n', '<p>045</p>\r\n', '045', '045', '045', 0, '2022-01-31 12:23:33', '045', '/uploads/images/spare_parts/203a634a83-045.jpg', 1),
(48, '046', '046', '046', '<p>046</p>\r\n', '<p>046</p>\r\n', '<p>046</p>\r\n', '046', '046', '046', 0, '2022-01-31 12:23:50', '046', '/uploads/images/spare_parts/e5993b955e-046.jpg', 1),
(49, '047', '047', '047', '<p>047</p>\r\n', '<p>047</p>\r\n', '<p>047</p>\r\n', '047', '047', '047', 0, '2022-01-31 12:24:08', '047', '/uploads/images/spare_parts/738553b15c-047.jpg', 1),
(50, '048', '048', '048', '<p>048</p>\r\n', '<p>048</p>\r\n', '<p>048</p>\r\n', '048', '048', '048', 0, '2022-01-31 12:24:31', '048', '/uploads/images/spare_parts/2bd33a7b9f-048.jpg', 1),
(51, '049', '049', '049', '<p>049</p>\r\n', '<p>049</p>\r\n', '<p>049</p>\r\n', '049', '049', '049', 0, '2022-01-31 12:24:46', '049', '/uploads/images/spare_parts/e860decbd8-049.jpg', 1),
(52, '050', '050', '050', '<p>050</p>\r\n', '<p>050</p>\r\n', '<p>050</p>\r\n', '050', '050', '050', 0, '2022-01-31 12:25:22', '050', '/uploads/images/spare_parts/cc64049f78-050.jpg', 1),
(53, '051', '051', '051', '<p>051</p>\r\n', '<p>051</p>\r\n', '<p>051</p>\r\n', '051', '051', '051', 0, '2022-01-31 12:27:35', '051', '/uploads/images/spare_parts/f146847d32-051.jpg', 1),
(54, '052', '052', '052', '<p>052</p>\r\n', '<p>052</p>\r\n', '<p>052</p>\r\n', '052', '052', '052', 0, '2022-01-31 12:27:51', '052', '/uploads/images/spare_parts/9555dfce98-052.jpg', 1),
(55, '053', '053', '053', '<p>053</p>\r\n', '<p>053</p>\r\n', '<p>053</p>\r\n', '053', '053', '053', 0, '2022-01-31 12:28:06', '053', '/uploads/images/spare_parts/dc4b95b00a-053.jpg', 1),
(56, '054', '054', '054', '<p>054</p>\r\n', '<p>054</p>\r\n', '<p>054</p>\r\n', '054', '054', '054', 0, '2022-01-31 12:28:20', '054', '/uploads/images/spare_parts/b70416d7e5-054.jpg', 1),
(57, '055', '055', '055', '<p>055</p>\r\n', '<p>055</p>\r\n', '<p>055</p>\r\n', '055', '055', '055', 0, '2022-01-31 12:28:36', '055', '/uploads/images/spare_parts/d5749876a4-055.jpg', 1),
(58, '056', '056', '056', '<p>056</p>\r\n', '<p>056</p>\r\n', '<p>056</p>\r\n', '056', '056', '056', 0, '2022-01-31 12:29:37', '056', '/uploads/images/spare_parts/38d2d053c8-056.jpg', 1),
(59, '057', '057', '057', '<p>057</p>\r\n', '<p>057</p>\r\n', '<p>057</p>\r\n', '057', '057', '057', 0, '2022-01-31 12:29:56', '057', '/uploads/images/spare_parts/420e51d14e-057.jpg', 1),
(60, '058', '058', '058', '<p>058</p>\r\n', '<p>058</p>\r\n', '<p>058</p>\r\n', '058', '058', '058', 0, '2022-01-31 12:30:18', '058', '/uploads/images/spare_parts/a31bd7a49d-058.jpg', 1),
(61, '059', '059', '059', '<p>059</p>\r\n', '<p>059</p>\r\n', '<p>059</p>\r\n', '059', '059', '059', 0, '2022-01-31 12:30:36', '059', '/uploads/images/spare_parts/62be3d8fd7-059.jpg', 1),
(62, '060', '060', '060', '<p>060</p>\r\n', '<p>060</p>\r\n', '<p>060</p>\r\n', '060', '060', '060', 0, '2022-01-31 12:31:21', '060', '/uploads/images/spare_parts/9f7b6be823-060.jpg', 1),
(63, '061', '061', '061', '<p>061</p>\r\n', '<p>061</p>\r\n', '<p>061</p>\r\n', '061', '061', '061', 0, '2022-01-31 12:32:48', '061', '/uploads/images/spare_parts/7b76ffd1db-061.jpg', 1),
(64, '062', '062', '062', '<p>062</p>\r\n', '<p>062</p>\r\n', '<p>062</p>\r\n', '062', '062', '062', 0, '2022-01-31 12:33:05', '062', '/uploads/images/spare_parts/431ee5c8dc-062.jpg', 1),
(65, '063', '063', '063', '<p>063</p>\r\n', '<p>063</p>\r\n', '<p>063</p>\r\n', '063', '063', '063', 0, '2022-01-31 12:33:25', '063', '/uploads/images/spare_parts/79e6964109-063.jpg', 1),
(66, '064', '064', '064', '<p>064</p>\r\n', '<p>064</p>\r\n', '<p>064</p>\r\n', '064', '064', '064', 0, '2022-01-31 12:43:33', '064', '/uploads/images/spare_parts/a1afcbbeac-064.jpg', 1),
(67, '065', '065', '065', '<p>065</p>\r\n', '<p>065</p>\r\n', '<p>065</p>\r\n', '065', '065', '065', 0, '2022-01-31 12:43:53', '065', '/uploads/images/spare_parts/d82d6f5b5d-065.jpg', 1),
(68, '066', '066', '066', '<p>066</p>\r\n', '<p>066</p>\r\n', '<p>066</p>\r\n', '066', '066', '066', 0, '2022-01-31 12:44:21', '066', '/uploads/images/spare_parts/d03256a09a-066.jpg', 1),
(69, '067', '067', '067', '<p>067</p>\r\n', '<p>067</p>\r\n', '<p>067</p>\r\n', '067', '067', '067', 0, '2022-01-31 12:44:48', '067', '/uploads/images/spare_parts/07d0c937f6-067.jpg', 1),
(70, '068', '068', '068', '<p>068</p>\r\n', '<p>068</p>\r\n', '<p>068</p>\r\n', '068', '068', '068', 0, '2022-01-31 12:45:12', '068', '/uploads/images/spare_parts/e3eff9c96f-068.jpg', 1),
(71, '069', '069', '069', '<p>069</p>\r\n', '<p>069</p>\r\n', '<p>069</p>\r\n', '069', '069', '069', 0, '2022-01-31 12:45:38', '069', '/uploads/images/spare_parts/2c45b238c9-069.jpg', 1),
(72, '070', '070', '070', '<p>070</p>\r\n', '<p>070</p>\r\n', '<p>070</p>\r\n', '070', '070', '070', 0, '2022-01-31 12:46:35', '070', '/uploads/images/spare_parts/254b9b3053-070.jpg', 1),
(73, '071', '071', '071', '<p>071</p>\r\n', '<p>071</p>\r\n', '<p>071</p>\r\n', '071', '071', '071', 0, '2022-01-31 12:47:21', '071', '/uploads/images/spare_parts/9f6e99d679-071.jpg', 1),
(74, '072', '072', '072', '<p>072</p>\r\n', '<p>072</p>\r\n', '<p>072</p>\r\n', '072', '072', '072', 0, '2022-01-31 12:47:38', '072', '/uploads/images/spare_parts/b1650ce109-072.jpg', 1),
(75, '073', '073', '073', '<p>073</p>\r\n', '<p>073</p>\r\n', '<p>073</p>\r\n', '073', '073', '073', 0, '2022-01-31 12:47:56', '073', '/uploads/images/spare_parts/4afe6a2d94-073.jpg', 1),
(76, '074', '074', '074', '<p>074</p>\r\n', '<p>074</p>\r\n', '<p>074</p>\r\n', '074', '074', '074', 0, '2022-01-31 12:48:17', '074', '/uploads/images/spare_parts/65816321c1-074.jpg', 1),
(77, '075', '075', '075', '<p>075</p>\r\n', '<p>075</p>\r\n', '<p>075</p>\r\n', '075', '075', '075', 0, '2022-01-31 12:48:51', '075', '/uploads/images/spare_parts/02a0849b7d-075.jpg', 1),
(78, '076', '076', '076', '<p>076</p>\r\n', '<p>076</p>\r\n', '<p>076</p>\r\n', '076', '076', '076', 0, '2022-01-31 12:49:14', '076', '/uploads/images/spare_parts/5037b18f71-076.jpg', 1),
(79, '077', '077', '077', '<p>077</p>\r\n', '<p>077</p>\r\n', '<p>077</p>\r\n', '077', '077', '077', 0, '2022-01-31 12:49:56', '077', '/uploads/images/spare_parts/aeb4282d8c-077.jpg', 1),
(80, '078', '078', '078', '<p>078</p>\r\n', '<p>078</p>\r\n', '<p>078</p>\r\n', '078', '078', '078', 0, '2022-01-31 12:50:15', '078', '/uploads/images/spare_parts/0d88febdb9-078.jpg', 1),
(81, '079', '079', '079', '<p>079</p>\r\n', '<p>079</p>\r\n', '<p>079</p>\r\n', '079', '079', '079', 0, '2022-01-31 12:50:30', '079', '/uploads/images/spare_parts/f96504db32-079.jpg', 1),
(82, '080', '080', '080', '<p>080</p>\r\n', '<p>080</p>\r\n', '<p>080</p>\r\n', '080', '080', '080', 0, '2022-01-31 12:50:44', '080', '/uploads/images/spare_parts/9738c1680c-080.jpg', 1),
(83, '081', '081', '081', '<p>081</p>\r\n', '<p>081</p>\r\n', '<p>081</p>\r\n', '081', '081', '081', 0, '2022-01-31 12:51:14', '081', '/uploads/images/spare_parts/c8cbec8234-081.jpg', 1),
(84, '082', '082', '082', '<p>082</p>\r\n', '<p>082</p>\r\n', '<p>082</p>\r\n', '082', '082', '082', 0, '2022-01-31 12:51:33', '082', '/uploads/images/spare_parts/feefc241ef-082.jpg', 1),
(85, '083', '083', '083', '<p>083</p>\r\n', '<p>083</p>\r\n', '<p>083</p>\r\n', '083', '083', '083', 0, '2022-01-31 12:51:47', '083', '/uploads/images/spare_parts/3b2a4c3db7-083.jpg', 1),
(86, '084', '084', '084', '<p>084</p>\r\n', '<p>084</p>\r\n', '<p>084</p>\r\n', '084', '084', '084', 0, '2022-01-31 12:52:01', '084', '/uploads/images/spare_parts/904dc3d9d6-084.jpg', 1),
(87, '085', '085', '085', '<p>085</p>\r\n', '<p>085</p>\r\n', '<p>085</p>\r\n', '085', '085', '085', 0, '2022-01-31 12:52:19', '085', '/uploads/images/spare_parts/0b96aa53c0-085.jpg', 1),
(88, '086', '086', '086', '<p>086</p>\r\n', '<p>086</p>\r\n', '<p>086</p>\r\n', '086', '086', '086', 0, '2022-01-31 12:52:33', '086', '/uploads/images/spare_parts/f9ab9bdd47-086.jpg', 1),
(89, '087', '087', '087', '<p>087</p>\r\n', '<p>087</p>\r\n', '<p>087</p>\r\n', '087', '087', '087', 0, '2022-01-31 12:52:46', '087', '/uploads/images/spare_parts/5f9a8f7e54-087.jpg', 1),
(90, '088', '088', '088', '<p>088</p>\r\n', '<p>088</p>\r\n', '<p>088</p>\r\n', '088', '088', '088', 0, '2022-01-31 12:53:00', '088', '/uploads/images/spare_parts/e0737952b7-088.jpg', 1),
(91, '089', '089', '089', '<p>089</p>\r\n', '<p>089</p>\r\n', '<p>089</p>\r\n', '089', '089', '089', 0, '2022-01-31 12:53:18', '089', '/uploads/images/spare_parts/ece5d07312-089.jpg', 1),
(92, '090', '090', '090', '<p>090</p>\r\n', '<p>090</p>\r\n', '<p>090</p>\r\n', '090', '090', '090', 0, '2022-01-31 12:53:31', '090', '/uploads/images/spare_parts/15bcef5887-090.jpg', 1),
(93, '091', '091', '091', '<p>091</p>\r\n', '<p>091</p>\r\n', '<p>091</p>\r\n', '091', '091', '091', 0, '2022-01-31 12:54:21', '091', '/uploads/images/spare_parts/4c51c5f0ec-091.jpg', 1),
(94, '092', '092', '092', '<p>092</p>\r\n', '<p>092</p>\r\n', '<p>092</p>\r\n', '092', '092', '092', 0, '2022-01-31 12:54:39', '092', '/uploads/images/spare_parts/0891b40a6a-092.jpg', 1),
(95, '093', '093', '093', '<p>093</p>\r\n', '<p>093</p>\r\n', '<p>093</p>\r\n', '093', '093', '093', 0, '2022-01-31 12:54:56', '093', '/uploads/images/spare_parts/e3c1dae929-093.jpg', 1),
(96, '094', '094', '094', '<p>094</p>\r\n', '<p>094</p>\r\n', '<p>094</p>\r\n', '094', '094', '094', 0, '2022-01-31 12:55:32', '094', '/uploads/images/spare_parts/47d7f13b95-094.jpg', 1),
(97, '095', '095', '095', '<p>095</p>\r\n', '<p>095</p>\r\n', '<p>095</p>\r\n', '095', '095', '095', 0, '2022-01-31 12:55:51', '095', '/uploads/images/spare_parts/dd17e91dfe-095.jpg', 1),
(98, '096', '096', '096', '<p>096</p>\r\n', '<p>096</p>\r\n', '<p>096</p>\r\n', '096', '096', '096', 0, '2022-01-31 12:56:05', '096', '/uploads/images/spare_parts/833da3fe37-096.jpg', 1),
(99, '097', '097', '097', '<p>097</p>\r\n', '<p>097</p>\r\n', '<p>097</p>\r\n', '097', '097', '097', 0, '2022-01-31 12:56:24', '097', '/uploads/images/spare_parts/b26bb3fe97-097.jpg', 1),
(100, '098', '098', '098', '<p>098</p>\r\n', '<p>098</p>\r\n', '<p>098</p>\r\n', '098', '098', '098', 0, '2022-01-31 12:56:37', '098', '/uploads/images/spare_parts/65cc48aee4-098.jpg', 1),
(101, '099', '099', '099', '<p>099</p>\r\n', '<p>099</p>\r\n', '<p>099</p>\r\n', '099', '099', '099', 0, '2022-01-31 12:56:52', '099', '/uploads/images/spare_parts/e6bfa33c5d-099.jpg', 1),
(102, '100', '100', '100', '<p>100</p>\r\n', '<p>100</p>\r\n', '<p>100</p>\r\n', '100', '100', '100', 0, '2022-01-31 12:57:07', '100', '/uploads/images/spare_parts/cb1afbb7ef-100.jpg', 1),
(103, '101', '101', '101', '<p>101</p>\r\n', '<p>101</p>\r\n', '<p>101</p>\r\n', '101', '101', '101', 0, '2022-01-31 12:58:36', '101', '/uploads/images/spare_parts/f243a1c286-101.jpg', 1),
(104, '102', '102', '102', '<p>102</p>\r\n', '<p>102</p>\r\n', '<p>102</p>\r\n', '102', '102', '102', 0, '2022-01-31 12:58:49', '102', '/uploads/images/spare_parts/c4097da052-102.jpg', 1),
(105, '103', '103', '103', '<p>103</p>\r\n', '<p>103</p>\r\n', '<p>103</p>\r\n', '103', '103', '103', 0, '2022-01-31 12:59:06', '103', '/uploads/images/spare_parts/67205eb226-103.jpg', 1),
(106, '104', '104', '104', '<p>104</p>\r\n', '<p>104</p>\r\n', '<p>104</p>\r\n', '104', '104', '104', 0, '2022-01-31 12:59:26', '104', '/uploads/images/spare_parts/530be8f37f-104.jpg', 1),
(107, '105', '105', '105', '<p>105</p>\r\n', '<p>105</p>\r\n', '<p>105</p>\r\n', '105', '105', '105', 0, '2022-01-31 12:59:48', '105', '/uploads/images/spare_parts/71d98a8bb6-105.jpg', 1),
(108, '106', '106', '106', '<p>106</p>\r\n', '<p>106</p>\r\n', '<p>106</p>\r\n', '106', '106', '106', 0, '2022-01-31 13:00:08', '106', '/uploads/images/spare_parts/508a32b299-106.jpg', 1),
(110, '107', '107', '107', '<p>107</p>\r\n', '<p>107</p>\r\n', '<p>107</p>\r\n', '107', '107', '107', 0, '2022-01-31 13:01:43', '107', '/uploads/images/spare_parts/c1be557eb2-107.jpg', 1),
(111, '108', '108', '108', '<p>108</p>\r\n', '<p>108</p>\r\n', '<p>108</p>\r\n', '108', '108', '108', 0, '2022-01-31 13:02:21', '108', '/uploads/images/spare_parts/a8e799d21e-108.jpg', 1),
(112, '109', '109', '109', '<p>109</p>\r\n', '<p>109</p>\r\n', '<p>109</p>\r\n', '109', '109', '109', 0, '2022-01-31 13:02:38', '109', '/uploads/images/spare_parts/90abd48c7f-109.jpg', 1),
(113, '110', '110', '110', '<p>110</p>\r\n', '<p>110</p>\r\n', '<p>110</p>\r\n', '110', '110', '110', 0, '2022-01-31 13:02:54', '110', '/uploads/images/spare_parts/eefb653a2e-110.jpg', 1),
(114, '111', '111', '111', '<p>111</p>\r\n', '<p>111</p>\r\n', '<p>111</p>\r\n', '111', '111', '111', 0, '2022-01-31 13:16:57', '111', '/uploads/images/spare_parts/04f04c7dc2-111.jpg', 1),
(115, '112', '112', '112', '<p>112</p>\r\n', '<p>112</p>\r\n', '<p>112</p>\r\n', '112', '112', '112', 0, '2022-01-31 13:17:12', '112', '/uploads/images/spare_parts/cf6a560914-112.jpg', 1),
(116, '113', '113', '113', '<p>113</p>\r\n', '<p>113</p>\r\n', '<p>113</p>\r\n', '113', '113', '113', 0, '2022-01-31 13:17:26', '113', '/uploads/images/spare_parts/dda4bb7275-113.jpg', 1),
(117, '114', '114', '114', '<p>114</p>\r\n', '<p>114</p>\r\n', '<p>114</p>\r\n', '114', '114', '114', 0, '2022-01-31 13:17:41', '114', '/uploads/images/spare_parts/1dcf306236-114.jpg', 1),
(118, '115', '115', '115', '<p>115</p>\r\n', '<p>115</p>\r\n', '<p>115</p>\r\n', '115', '115', '115', 0, '2022-01-31 13:17:54', '115', '/uploads/images/spare_parts/46f7d9d449-115.jpg', 1),
(119, '116', '116', '116', '<p>116</p>\r\n', '<p>116</p>\r\n', '<p>116</p>\r\n', '116', '116', '116', 0, '2022-01-31 13:18:06', '116', '/uploads/images/spare_parts/4d4a813c30-116.jpg', 1),
(120, '117', '117', '117', '<p>117</p>\r\n', '<p>117</p>\r\n', '<p>117</p>\r\n', '117', '117', '117', 0, '2022-01-31 13:18:19', '117', '/uploads/images/spare_parts/d496b29930-117.jpg', 1),
(121, '118', '118', '118', '<p>118</p>\r\n', '<p>118</p>\r\n', '<p>118</p>\r\n', '118', '118', '118', 0, '2022-01-31 13:18:32', '118', '/uploads/images/spare_parts/6c62279428-118.jpg', 1),
(122, '119', '119', '119', '<p>119</p>\r\n', '<p>119</p>\r\n', '<p>119</p>\r\n', '119', '119', '119', 0, '2022-01-31 13:18:52', '119', '/uploads/images/spare_parts/b7870373b8-119.jpg', 1),
(123, '120', '120', '120', '<p>120</p>\r\n', '<p>120</p>\r\n', '<p>120</p>\r\n', '120', '120', '120', 0, '2022-01-31 13:19:07', '120', '/uploads/images/spare_parts/6960dd067e-120.jpg', 1),
(124, '121', '121', '121', '<p>121</p>\r\n', '<p>121</p>\r\n', '<p>121</p>\r\n', '121', '121', '121', 0, '2022-01-31 13:21:52', '121', '/uploads/images/spare_parts/c8a3155405-121.jpg', 1),
(125, '122', '122', '122', '<p>122</p>\r\n', '<p>122</p>\r\n', '<p>122</p>\r\n', '122', '122', '122', 0, '2022-01-31 13:22:24', '122', '/uploads/images/spare_parts/224bea2954-122.jpg', 1),
(126, '123', '123', '123', '<p>123</p>\r\n', '<p>123</p>\r\n', '<p>123</p>\r\n', '123', '123', '123', 0, '2022-01-31 13:22:41', '123', '/uploads/images/spare_parts/2dc9379b8f-123.jpg', 1),
(127, '124', '124', '124', '<p>124</p>\r\n', '<p>124</p>\r\n', '<p>124</p>\r\n', '124', '124', '124', 0, '2022-01-31 13:22:53', '124', '/uploads/images/spare_parts/60df1b9138-124.jpg', 1),
(128, '125', '125', '125', '<p>125</p>\r\n', '<p>125</p>\r\n', '<p>125</p>\r\n', '125', '125', '125', 0, '2022-01-31 13:23:06', '125', '/uploads/images/spare_parts/46019a717b-125.jpg', 1),
(129, '126', '126', '126', '<p>126</p>\r\n', '<p>126</p>\r\n', '<p>126</p>\r\n', '126', '126', '126', 0, '2022-01-31 13:23:26', '126', '/uploads/images/spare_parts/333c701060-126.jpg', 1),
(130, '127', '127', '127', '<p>127</p>\r\n', '<p>127</p>\r\n', '<p>127</p>\r\n', '127', '127', '127', 0, '2022-01-31 13:23:39', '127', '/uploads/images/spare_parts/cc76a5f5f1-127.jpg', 1),
(131, '128', '128', '128', '<p>128</p>\r\n', '<p>128</p>\r\n', '<p>128</p>\r\n', '128', '128', '128', 0, '2022-01-31 13:23:55', '128', '/uploads/images/spare_parts/d972bce76f-128.jpg', 1),
(132, '129', '129', '129', '<p>129</p>\r\n', '<p>129</p>\r\n', '<p>129</p>\r\n', '129', '129', '129', 0, '2022-01-31 13:24:13', '129', '/uploads/images/spare_parts/343358b405-129.jpg', 1),
(133, '130', '130', '130', '<p>130</p>\r\n', '<p>130</p>\r\n', '<p>130</p>\r\n', '130', '130', '130', 0, '2022-01-31 13:24:27', '130', '/uploads/images/spare_parts/8cfa9fa1eb-130.jpg', 1),
(134, '131', '131', '131', '<p>131</p>\r\n', '<p>131</p>\r\n', '<p>131</p>\r\n', '131', '131', '131', 0, '2022-01-31 13:25:39', '131', '/uploads/images/spare_parts/ad5a0fccdf-131.jpg', 1),
(135, '132', '132', '132', '<p>132</p>\r\n', '<p>132</p>\r\n', '<p>132</p>\r\n', '132', '132', '132', 0, '2022-01-31 13:25:52', '132', '/uploads/images/spare_parts/685d918e04-132.jpg', 1),
(136, '133', '133', '133', '<p>133</p>\r\n', '<p>133</p>\r\n', '<p>133</p>\r\n', '133', '133', '133', 0, '2022-01-31 13:26:04', '133', '/uploads/images/spare_parts/e67132f100-133.jpg', 1),
(137, '134', '134', '134', '<p>134</p>\r\n', '<p>134</p>\r\n', '<p>134</p>\r\n', '134', '134', '134', 0, '2022-01-31 13:26:23', '134', '/uploads/images/spare_parts/37c6900b05-134.jpg', 1),
(138, '135', '135', '135', '<p>135</p>\r\n', '<p>135</p>\r\n', '<p>135</p>\r\n', '135', '135', '135', 0, '2022-01-31 13:26:37', '135', '/uploads/images/spare_parts/31584a42d3-135.jpg', 1),
(139, '136', '136', '136', '<p>136</p>\r\n', '<p>136</p>\r\n', '<p>136</p>\r\n', '136', '136', '136', 0, '2022-01-31 13:26:50', '136', '/uploads/images/spare_parts/b2eba1d9f5-136.jpg', 1),
(140, '137', '137', '137', '<p>137</p>\r\n', '<p>137</p>\r\n', '<p>137</p>\r\n', '137', '137', '137', 0, '2022-01-31 13:27:06', '137', '/uploads/images/spare_parts/bc8f2ba283-137.jpg', 1),
(141, '138', '138', '138', '<p>138</p>\r\n', '<p>138</p>\r\n', '<p>138</p>\r\n', '138', '138', '138', 0, '2022-01-31 13:27:19', '138', '/uploads/images/spare_parts/a6a477185f-138.jpg', 1),
(142, '139', '139', '139', '<p>139</p>\r\n', '<p>139</p>\r\n', '<p>139</p>\r\n', '139', '139', '139', 0, '2022-01-31 13:27:36', '139', '/uploads/images/spare_parts/142d2e12d7-139.jpg', 1),
(143, '140', '140', '140', '<p>140</p>\r\n', '<p>140</p>\r\n', '<p>140</p>\r\n', '140', '140', '140', 0, '2022-01-31 13:27:52', '140', '/uploads/images/spare_parts/73ce045b35-140.jpg', 1),
(144, '141', '141', '141', '<p>141</p>\r\n', '<p>141</p>\r\n', '<p>141</p>\r\n', '141', '141', '141', 0, '2022-01-31 13:28:14', '141', '/uploads/images/spare_parts/587f20ebab-141.jpg', 1),
(145, '142', '142', '142', '<p>142</p>\r\n', '<p>142</p>\r\n', '<p>142</p>\r\n', '142', '142', '142', 0, '2022-01-31 13:28:26', '142', '/uploads/images/spare_parts/e913dc1caf-142.jpg', 1),
(146, '143', '143', '143', '<p>143</p>\r\n', '<p>143</p>\r\n', '<p>143</p>\r\n', '143', '143', '143', 0, '2022-01-31 13:28:38', '143', '/uploads/images/spare_parts/a51baaeced-143.jpg', 1),
(147, '144', '144', '144', '<p>144</p>\r\n', '<p>144</p>\r\n', '<p>144</p>\r\n', '144', '144', '144', 0, '2022-01-31 13:28:50', '144', '/uploads/images/spare_parts/c123f13637-144.jpg', 1),
(148, '145', '145', '145', '<p>145</p>\r\n', '<p>145</p>\r\n', '<p>145</p>\r\n', '145', '145', '145', 0, '2022-01-31 13:29:19', '145', '/uploads/images/spare_parts/ad6a630f05-145.jpg', 1),
(149, '146', '146', '146', '<p>146</p>\r\n', '<p>146</p>\r\n', '<p>146</p>\r\n', '146', '146', '146', 0, '2022-01-31 13:29:30', '146', '/uploads/images/spare_parts/86e629808d-146.jpg', 1),
(150, '147', '147', '147', '<p>147</p>\r\n', '<p>147</p>\r\n', '<p>147</p>\r\n', '147', '147', '147', 0, '2022-01-31 13:29:43', '147', '/uploads/images/spare_parts/df3c1cb6ec-147.jpg', 1),
(151, 'bk700k', 'bk700k', 'bk700k', '<p>bk700k</p>\r\n', '<p>bk700k</p>\r\n', '<p>bk700k</p>\r\n', 'bk700k', 'bk700k', 'bk700k', 0, '2022-01-31 13:30:43', 'bk700k', '/uploads/images/spare_parts/04225835c4-Bk700k.jpg', 1),
(152, 'bq20m', 'bq20m', 'bq20m', '<p>bq20m</p>\r\n', '<p>bq20m</p>\r\n', '<p>bq20m</p>\r\n', 'bq20m', 'bq20m', 'bq20m', 0, '2022-01-31 13:31:03', 'bq20m', '/uploads/images/spare_parts/30618ec834-Bq20m.jpg', 1),
(153, 'bq21m', 'bq21m', 'bq21m', '<p>bq21m</p>\r\n', '<p>bq21m</p>\r\n', '<p>bq21m</p>\r\n', 'bq21m', 'bq21m', 'bq21m', 0, '2022-01-31 13:31:22', 'bq21m', '/uploads/images/spare_parts/70d9efd30a-Bq21m.jpg', 1),
(154, 'bq22m', 'bq22m', 'bq22m', '<p>bq22m</p>\r\n', '<p>bq22m</p>\r\n', '<p>bq22m</p>\r\n', 'bq22m', 'bq22m', 'bq22m', 0, '2022-01-31 13:31:42', 'bq22m', '/uploads/images/spare_parts/826e86f432-Bq22m.jpg', 1),
(155, 'bq60e', 'bq60e', 'bq60e', '<p>bq60e</p>\r\n', '<p>bq60e</p>\r\n', '<p>bq60e</p>\r\n', 'bq60e', 'bq60e', 'bq60e', 0, '2022-01-31 13:32:03', 'bq60e', '/uploads/images/spare_parts/0559824444-Bq60e.jpg', 1),
(156, 'bq61e', 'bq61e', 'bq61e', '<p>bq61e</p>\r\n', '<p>bq61e</p>\r\n', '<p>bq61e</p>\r\n', 'bq61e', 'bq61e', 'bq61e', 0, '2022-01-31 13:32:22', 'bq61e', '/uploads/images/spare_parts/fed89efb49-Bq61e.jpg', 1),
(157, 'bq62e', 'bq62e', 'bq62e', '<p>bq62e</p>\r\n', '<p>bq62e</p>\r\n', '<p>bq62e</p>\r\n', 'bq62e', 'bq62e', 'bq62e', 0, '2022-01-31 13:32:38', 'bq62e', '/uploads/images/spare_parts/56e17b8204-Bq62e.jpg', 1),
(158, 'bq70k', 'bq70k', 'bq70k', '<p>bq70k</p>\r\n', '<p>bq70k</p>\r\n', '<p>bq70k</p>\r\n', 'bq70k', 'bq70k', 'bq70k', 0, '2022-01-31 13:32:55', 'bq70k', '/uploads/images/spare_parts/eee653310e-Bq70k.jpg', 1),
(159, 'bq81qq', 'bq81qq', 'bq81qq', '<p>bq81qq</p>\r\n', '<p>bq81qq</p>\r\n', '<p>bq81qq</p>\r\n', 'bq81qq', 'bq81qq', 'bq81qq', 0, '2022-01-31 13:33:19', 'bq81qq', '/uploads/images/spare_parts/5e2a7d0fd6-Bq81qq.jpg', 1),
(160, 'bq100k', 'bq100k', 'bq100k', '<p>bq100k</p>\r\n', '<p>bq100k</p>\r\n', '<p>bq100k</p>\r\n', 'bq100k', 'bq100k', 'bq100k', 0, '2022-01-31 13:33:35', 'bq100k', '/uploads/images/spare_parts/305f94146d-Bq100k.jpg', 1),
(161, 'bq101k', 'bq101k', 'bq101k', '<p>bq101k</p>\r\n', '<p>bq101k</p>\r\n', '<p>bq101k</p>\r\n', 'bq101k', 'bq101k', 'bq101k', 0, '2022-01-31 13:34:00', 'bq101k', '/uploads/images/spare_parts/f3c24b9aee-Bq101k.jpg', 1),
(162, 'bq200r', 'bq200r', 'bq200r', '<p>bq200r</p>\r\n', '<p>bq200r</p>\r\n', '<p>bq200r</p>\r\n', 'bq200r', 'bq200r', 'bq200r', 0, '2022-01-31 13:34:17', 'bq200r', '/uploads/images/spare_parts/725b4090cb-Bq200r.jpg', 1),
(163, 'bq300p', 'bq300p', 'bq300p', '<p>bq300p</p>\r\n', '<p>bq300p</p>\r\n', '<p>bq300p</p>\r\n', 'bq300p', 'bq300p', 'bq300p', 0, '2022-01-31 13:34:38', 'bq300p', '/uploads/images/spare_parts/72c4c79859-Bq300p.jpg', 1),
(164, 'bq301p', 'bq301p', 'bq301p', '<p>bq301p</p>\r\n', '<p>bq301p</p>\r\n', '<p>bq301p</p>\r\n', 'bq301p', 'bq301p', 'bq301p', 0, '2022-01-31 13:34:55', 'bq301p', '/uploads/images/spare_parts/124baf639a-Bq301p.jpg', 1),
(165, 'bq302p', 'bq302p', 'bq302p', '<p>bq302p</p>\r\n', '<p>bq302p</p>\r\n', '<p>bq302p</p>\r\n', 'bq302p', 'bq302p', 'bq302p', 0, '2022-01-31 13:35:14', 'bq302p', '/uploads/images/spare_parts/3de6386970-Bq302p.jpg', 1),
(166, 'bq303p', 'bq303p', 'bq303p', '<p>bq303p</p>\r\n', '<p>bq303p</p>\r\n', '<p>bq303p</p>\r\n', 'bq303p', 'bq303p', 'bq303p', 0, '2022-01-31 13:35:32', 'bq303p', '/uploads/images/spare_parts/6e4080970d-Bq303p.jpg', 1),
(167, 'bq304p', 'bq304p', 'bq304p', '<p>bq304p</p>\r\n', '<p>bq304p</p>\r\n', '<p>bq304p</p>\r\n', 'bq304p', 'bq304p', 'bq304p', 0, '2022-01-31 13:35:51', 'bq304p', '/uploads/images/spare_parts/ec62d47033-Bq304p.jpg', 1),
(168, 'bq305p', 'bq305p', 'bq305p', '<p>bq305p</p>\r\n', '<p>bq305p</p>\r\n', '<p>bq305p</p>\r\n', 'bq305p', 'bq305p', 'bq305p', 0, '2022-01-31 13:36:09', 'bq305p', '/uploads/images/spare_parts/00ea5e3509-Bq305p.jpg', 1),
(169, 'bq306p', 'bq306p', 'bq306p', '<p>bq306p</p>\r\n', '<p>bq306p</p>\r\n', '<p>bq306p</p>\r\n', 'bq306p', 'bq306p', 'bq306p', 0, '2022-01-31 13:36:30', 'bq306p', '/uploads/images/spare_parts/8a43f829a5-Bq306p.jpg', 1),
(170, 'bq400ko', 'bq400ko', 'bq400ko', '<p>bq400ko</p>\r\n', '<p>bq400ko</p>\r\n', '<p>bq400ko</p>\r\n', 'bq400ko', 'bq400ko', 'bq400ko', 0, '2022-01-31 13:36:50', 'bq400ko', '/uploads/images/spare_parts/53d24a88e6-Bq400ko.jpg', 1),
(171, 'bq500rs', 'bq500rs', 'bq500rs', '<p>bq500rs</p>\r\n', '<p>bq500rs</p>\r\n', '<p>bq500rs</p>\r\n', 'bq500rs', 'bq500rs', 'bq500rs', 0, '2022-01-31 13:37:09', 'bq500rs', '/uploads/images/spare_parts/9a7bb0907d-Bq500rs.jpg', 1),
(172, 'bq550es', 'bq550es', 'bq550es', '<p>bq550es</p>\r\n', '<p>bq550es</p>\r\n', '<p>bq550es</p>\r\n', 'bq550es', 'bq550es', 'bq550es', 0, '2022-01-31 13:37:28', 'bq550es', '/uploads/images/spare_parts/640256080c-Bq550es.jpg', 1),
(173, 'bq600f', 'bq600f', 'bq600f', '<p>bq600f</p>\r\n', '<p>bq600f</p>\r\n', '<p>bq600f</p>\r\n', 'bq600f', 'bq600f', 'bq600f', 0, '2022-01-31 13:37:46', 'bq600f', '/uploads/images/spare_parts/d85c3166dd-Bq600f.jpg', 1),
(174, 'bq806p', 'bq806p', 'bq806p', '<p>bq806p</p>\r\n', '<p>bq806p</p>\r\n', '<p>bq806p</p>\r\n', 'bq806p', 'bq806p', 'bq806p', 0, '2022-01-31 13:38:23', 'bq806p', '/uploads/images/spare_parts/19dec2cde4-Bq806p.jpg', 1),
(175, 'bq807p', 'bq807p', 'bq807p', '<p>bq807p</p>\r\n', '<p>bq807p</p>\r\n', '<p>bq807p</p>\r\n', 'bq807p', 'bq807p', 'bq807p', 0, '2022-01-31 13:38:45', 'bq807p', '/uploads/images/spare_parts/ce7e76d7fd-Bq807p.jpg', 1),
(176, 'bq808p', 'bq808p', 'bq808p', '<p>bq808p</p>\r\n', '<p>bq808p</p>\r\n', '<p>bq808p</p>\r\n', 'bq808p', 'bq808p', 'bq808p', 0, '2022-01-31 13:39:02', 'bq808p', '/uploads/images/spare_parts/2fb9a06dfe-Bq808p.jpg', 1),
(177, 'bq810p', 'bq810p', 'bq810p', '<p>bq810p</p>\r\n', '<p>bq810p</p>\r\n', '<p>bq810p</p>\r\n', 'bq810p', 'bq810p', 'bq810p', 0, '2022-01-31 13:39:21', 'bq810p', '/uploads/images/spare_parts/f8f70164ce-Bq810p.jpg', 1),
(178, 'bq900t', 'bq900t', 'bq900t', '<p>bq900t</p>\r\n', '<p>bq900t</p>\r\n', '<p>bq900t</p>\r\n', 'bq900t', 'bq900t', 'bq900t', 0, '2022-01-31 13:39:36', 'bq900t', '/uploads/images/spare_parts/33b22f2e8d-Bq900t.jpg', 1),
(179, 'bq901t', 'bq901t', 'bq901t', '<p>bq901t</p>\r\n', '<p>bq901t</p>\r\n', '<p>bq901t</p>\r\n', 'bq901t', 'bq901t', 'bq901t', 0, '2022-01-31 13:39:51', 'bq901t', '/uploads/images/spare_parts/665461db8e-Bq901t.jpg', 1);

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
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
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
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- Indexes for table `spare_parts`
--
ALTER TABLE `spare_parts`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `opinions`
--
ALTER TABLE `opinions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `spare_parts`
--
ALTER TABLE `spare_parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
