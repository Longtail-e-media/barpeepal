-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 05, 2025 at 10:03 AM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barpeepa_barpeepalresort`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_applicants`
--

CREATE TABLE `tbl_applicants` (
  `id` int(11) NOT NULL,
  `parent` varchar(100) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `current_address` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `position` varchar(100) NOT NULL,
  `myfile` varchar(50) NOT NULL,
  `qualification` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_applicants`
--

INSERT INTO `tbl_applicants` (`id`, `parent`, `fullname`, `current_address`, `mobile`, `phone`, `email`, `sortorder`, `position`, `myfile`, `qualification`) VALUES
(1, '', 'Swarna Shakya', 'KTM', '9849482842', '', 'swarna@longtail.info', 1, '1', 'family-fun-1.jpg', 'test'),
(2, '', 'asdasd', 'Chettrapati, Dhobichaur a', '9861369900', '', 'asdasd@gmail.com', 2, '11', '', 'asdasd'),
(3, '', 'sahas', 'Chettrapati, Dhobichaur a', '9861369900', '', 'statshakya@gmail.com', 3, '13', 'IMG-20231018-WA0009.jpg', 'testing');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_articles`
--

CREATE TABLE `tbl_articles` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT '0',
  `linksrc` tinytext NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(11) NOT NULL DEFAULT '0',
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_articles`
--

INSERT INTO `tbl_articles` (`id`, `parent_id`, `slug`, `title`, `sub_title`, `content`, `linktype`, `linksrc`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `modified_date`, `sortorder`, `homepage`, `image`, `date`, `category`) VALUES
(17, 0, 'about-us', 'About us', 'Welcome To An oasis in pokhara’s most exciting location', '<style type=\"text/css\">\r\n@media (max-width:1024px){\r\n		.about__margin-0{\r\n		margin-bottom:0 !important;\r\n	}\r\n	.about-pad-left-0{\r\n		padding-left:0;\r\n	}\r\n}</style>\r\n<div class=\"row align-items-center mb-100 about__margin-0\">\r\n	<div class=\"col-xl-6 col-lg-12\">\r\n		<div class=\"image mb-30\">\r\n			<img alt=\"about-us\" src=\"/barpeepal/userfiles/images/image-69.jpg\" width=\"100%\" /></div>\r\n	</div>\r\n	<div class=\"col-xl-6 col-lg-12\">\r\n		<div class=\"block-two style-two about-pad-left-0\">\r\n			<h2 class=\"sec-title about_title mb-4\">\r\n				An oasis in pokhara&rsquo;s most exciting location</h2>\r\n			<div class=\"text-two\" style=\"text-align: justify;\">\r\n				Situated in the heart of Lakeside, Pokhara, Bar Peepal Resort is a shelter of peace and tranquility. Spread across 10.5 ropani of land, our resort blends Nepali culture with modern comfort. Enjoy our range of facilities of well-furnished 45 rooms including a restaurant, coffee shop, infinity pool, spa, sauna, and a beautiful garden. Our friendly staff is dedicated to ensuring your stay is memorable and enjoyable.\r\n				<p class=\"mt-5\">\r\n					Our resort represents the essence of Nepali culture, built in traditional Nepali style with local materials. We provide a serene environment with stunning views and a range of amenities. Whether you&#39;re here to relax or explore, Bar Peepal Resort is your perfect home away from home. From sunrise to sunset, let the tranquility of our surroundings and the warmth of our hospitality envelop you. Come, create cherished memories at Bar Peepal Resort, where every moment is a celebration of life.</p>\r\n				<p class=\"mt-5\">\r\n					Bar Peepal Resort prides itself on its commitment to sustainability and eco-conscious practices, ensuring a harmonious relationship with the environment while delivering exceptional guest experiences.</p>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<!--<div class=\"row\">\r\n	<div class=\"col-xl-3 col-lg-6\">\r\n		<div class=\"block-thirty-nine\">\r\n			<div class=\"image\">\r\n				<img alt=\"about-us\" class=\"mb-4 mb-xl-0\" src=\"/barpeepal/userfiles/images/view(1).jpg\" width=\"100%\" /></div>\r\n			<div class=\"image-two\">\r\n				<img alt=\"about-us\" class=\"mb-4 mb-xl-0\" src=\"/barpeepal/userfiles/images/restro(1).jpg\" width=\"100%\" /></div>\r\n		</div>\r\n	</div>\r\n	<div class=\"col-lg-6\">\r\n		<p>\r\n			 </p>\r\n	</div>\r\n</div>-->\r\n<div class=\"row\">\r\n	<div class=\"col-xl-3 col-lg-6\">\r\n		<div class=\"block-thirty-nine\">\r\n			<div class=\"image\">\r\n				<img alt=\"about-us\" class=\"mb-4 mb-xl-0\" src=\"/barpeepal/userfiles/images/view(1).jpg\" width=\"100%\" /></div>\r\n			<div class=\"image-two\">\r\n				<img alt=\"about-us\" class=\"mb-4 mb-xl-0\" src=\"/barpeepal/userfiles/images/restro(1).jpg\" width=\"100%\" /></div>\r\n		</div>\r\n	</div>\r\n	<div class=\"col-lg-6\">\r\n		<div class=\"image\">\r\n			<img alt=\"about-us\" class=\"mb-4 mb-xl-0\" src=\"/barpeepal/userfiles/images/room.jpg\" width=\"100%\" /></div>\r\n	</div>\r\n	<div class=\"col-lg-3\">\r\n		<div class=\"image\">\r\n			<img alt=\"about-us\" class=\"mb-4 mb-xl-0\" src=\"/barpeepal/userfiles/images/pool(1).jpg\" width=\"100%\" /></div>\r\n	</div>\r\n</div>\r\n<!-- end content -->', 0, '', 1, 'About us', 'About us, Bar Peepal Resort, Pokhara, Hospitality, Multi-Cuisine, Restaurant, Facilities, Stunning Views, Memories, Nepali Cultural, Friendly, Sunset View, Tranquility\r\n', 'Our resort represents the essence of Nepali culture, built in traditional Nepali style with local materials. We provide a serene environment with stunning views and a range of amenities. Whether you\'re here to relax or explore, Bar Peepal Resort is y', 0, '2024-12-30 16:57:40', '2025-01-28 12:44:30', 1, 0, 0x613a313a7b693a303b733a31373a22736635564d2d61626f757475732e6a7067223b7d, '', ''),
(21, 0, 'about-us-homepage', 'about us homepage', 'about us homepage', '<div bis_size=\"{\" class=\"row align-items-end align-items-center\">\r\n	<div bis_size=\"{\" class=\"col-xl-7 col-lg-12 mb-4 mb-xl-0\">\r\n		<div bis_size=\"{\" class=\"row\">\r\n			<div bis_size=\"{\" class=\"col-xl-7 col-lg-12 pe-xl-0\">\r\n				<img alt=\"about-us\" class=\"h-100 pb-3 pb-xl-0\" src=\"/barpeepal/userfiles/images/new.jpg\" width=\"100%\" /></div>\r\n			<div bis_size=\"{\" class=\"col-xl-4 col-lg-12\">\r\n				<div bis_size=\"{\" class=\"row\">\r\n					<div bis_size=\"{\" class=\"col-lg-12 col-md-6 col-sm-12\">\r\n						<img alt=\"about-us\" bis_size=\"{\" class=\"img-fluid\" src=\"/barpeepal/userfiles/images/hp1.jpg\" /></div>\r\n					<div bis_size=\"{\" class=\"col-lg-12 col-md-6 col-sm-12\">\r\n						<img alt=\"about-us\" bis_size=\"{\" class=\"img-fluid mt-3 mt-md-0\" src=\"/barpeepal/userfiles/images/hp02.jpg\" width=\"100%\" /></div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div bis_size=\"{\" class=\"col-xl-5 col-lg-12 position-relative\">\r\n		<!-- <div class=\"sub-title text-start\">An oasis in pokhara’s most exciting location</div> -->\r\n		<h2 bis_size=\"{\" class=\"sec-title text-start mb-20 welcome-bar lh-sm pb-2\">\r\n			<span bis_size=\"{\" class=\"theme-color bar_peepal\">Welcome to an oasis in pokhara&rsquo;s most exciting location</span></h2>\r\n		<div bis_size=\"{\" class=\"text text-start\" style=\"text-align: justify;\">\r\n			Situated in the heart of Lakeside, Pokhara, Bar Peepal Resort is a shelter of peace and tranquility. Spread across 10.5 ropani of land, our resort blends Nepali culture with modern comfort. Whether you seek a peaceful retreat, an adventure-filled vacation, or a venue for your next big event, Bar Peepal Resort, Pokhara, promises an unforgettable experience that captures the essence of Nepal&rsquo;s natural beauty and cultural richness.Enjoy our range of facilities of well-furnished 45 rooms including a restaurant, coffee shop, infinity pool, spa, sauna, and a beautiful garden. Our friendly staff is dedicated to ensuring your stay memorable and enjoyable.</div>\r\n		<a bis_size=\"{\" class=\"theme-btn btn-style-one mt-3 text-center\" href=\"about-us\"><span bis_size=\"{\">Read More</span></a></div>\r\n</div>\r\n', 0, '', 1, '', '', '', 0, '2025-01-28 12:43:04', '2025-01-28 19:57:57', 2, 1, 0x613a303a7b7d, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(200) NOT NULL,
  `author` varchar(100) NOT NULL,
  `brief` text NOT NULL,
  `content` text NOT NULL,
  `blog_date` date NOT NULL,
  `archive_date` date NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `source` mediumtext NOT NULL,
  `type` int(11) NOT NULL,
  `viewcount` int(11) NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `linksrc` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `linktype` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`id`, `slug`, `title`, `author`, `brief`, `content`, `blog_date`, `archive_date`, `sortorder`, `status`, `image`, `source`, `type`, `viewcount`, `meta_keywords`, `meta_description`, `added_date`, `linksrc`, `linktype`) VALUES
(14, 'brief-on-club-himalaya', 'Brief On Club Himalaya', 'ClubHimalaya', 'A Rare Blend Of Nature And Modern Amenities and has become synonymous with Nagarkot.', '<div style=\"text-align: center;\">\r\n	<span style=\"font-size:16px;\"><cite><span style=\"font-family:comic sans ms,cursive;\">The hotel offers a rare blend of nature and modern amenities and has become synonymous with Nagarkot. Each room opens to a private balcony, where one can view the most splendid sunrise and sunsets. The interior is traditional and simple yet stylish and elegant. Club Himalaya&#39;s comfortable accommodation, cozy ambiance, delicious food and the welcoming and gracious staff creates a true &#39;comfort above the clouds&#39; experience.</span></cite></span></div>\r\n<p>\r\n	&nbsp;</p>\r\n<div class=\"row\">\r\n	<div class=\"col-md-6\">\r\n		<div style=\"text-align: justify;\">\r\n			Club Himalaya is a place to relax your mind and body, to get in touch with nature, experience Nepali hospitality, and escape the hectic demands of the city life all in the comfort of a superb resort in a magnificent setting. Club Himalaya is for high altitude adventurers a place to acclimatize; for philosophers, a place to listen to the sounds of silence; and for honeymooners, a setting to romance with nature.<br />\r\n			<br />\r\n			Resting on a single independent hill called the Windy Hill, Club Himalaya has become the pride of Nagarkot. Besides the fresh air and peaceful atmosphere, we offer you fine dining, superb facilities, outdoor activities to bring you closer to nature, and services to cover your business and conference needs We welcome you to lose yourself in its lush greenery, listen to the sounds of the silence and commune with nature high up on a ridge and enjoy our unparalleled hospitality.<br />\r\n			<br />\r\n			The hotel is managed by <a href=\"https://acehotelsnepal.com/\" target=\"_blank\">Ace Hotels &amp; Resorts:</a> a local, family owned chain of hotels with 40 years of experience in the hospitality industry.</div>\r\n	</div>\r\n	<div class=\"col-md-6\">\r\n		<img alt=\"\" src=\"/assets/userfiles/images/ch.jpg\" /></div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n<div>\r\n	<strong style=\"font-size: 15px;\">Club Himalaya Experience</strong><br />\r\n	<br />\r\n	Sitting 7200 feet above sea level on Windy Hill, Club Himalaya Nagarkot enjoys amazing views of the Himalayas. Away from the busy city, it features an indoor pool, spa treatments and a shopping arcade. There are 2 on-site restaurants and a bar.<br />\r\n	<br />\r\n	Featuring high ceilings and a private balcony, all the air-conditioned rooms are equipped with a cable TV. Beautiful mountain views can be enjoyed from all rooms. En suite bathrooms have a bathtub and free toiletries.<br />\r\n	<br />\r\n	Club Himalaya, Nagarkot is a 30-minute drive from Bhaktapur, a 45-minute drive from Tribhuvan International Airport and an hour&#39;s drive from Kathmandu. Taking a helicopter, it is just a 7-minutes&#39; ride from Tribuhavan International Airport.<br />\r\n	<br />\r\n	<div class=\"row\">\r\n		<div class=\"col-md-4\">\r\n			<img alt=\"\" src=\"/assets/userfiles/images/ch4(1).jpg\" /></div>\r\n		<div class=\"col-md-4\">\r\n			<img alt=\"\" src=\"/assets/userfiles/images/ch1.jpg\" /></div>\r\n		<div class=\"col-md-4\">\r\n			<img alt=\"\" src=\"/assets/userfiles/images/ch3(1).jpg\" /></div>\r\n	</div>\r\n	<siv><br />\r\n	Guests can relax with a massage at the spa, visit the sauna, or read a book in the library. For a day out, the hotel also provides a city shuttle service, car rentals and a tour desk.<br />\r\n	<br />\r\n	Restaurant Kantipur serves a selection of Nepali, Continental, Chinese and Indian cuisines, while drinks can be enjoyed at Bar Indrawati.<br />\r\n	<br />\r\n	32 kms or 1 hr drive from Kathmandu. 2175 mtrs or 7200 ft. above sea level (ideal for acclimatization before trekking in high altitudes or going to Tibet).<br />\r\n	<br />\r\n	Atop Windy Hills with 360 unrestricted view of Kathmandu, Lalitpur, Bhaktapur, Sankhu, Changu Narayan in the West; Mt. Annapurna in the North West; Mt. Everest in the North-East; Indrawati Valley in the East; and the Nagarkot Hill on the South.<br />\r\n	<br />\r\n	Rooms: 72, Room Types: Standard &amp; Deluxe, Check in Time: 2.00 PM, Check out Time: 12.00 Noon.</siv></div>\r\n<p>\r\n	&nbsp;</p>\r\n<div class=\"row\">\r\n	<div class=\"col-md-4\">\r\n		<img alt=\"\" src=\"/assets/userfiles/images/ch5.jpg\" /></div>\r\n	<div class=\"col-md-4\">\r\n		<img alt=\"\" src=\"/assets/userfiles/images/ch2.jpg\" /></div>\r\n	<div class=\"col-md-4\">\r\n		<img alt=\"\" src=\"/assets/userfiles/images/yoga.jpg\" /></div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '2023-09-04', '0000-00-00', 1, 1, 'hK6Gb-lobby.jpg', '', 0, 0, '', '', '2023-09-04 11:54:01', '', '0'),
(15, 'excursions-to-nearby-places', 'Excursions to nearby places', 'ClubHimalaya', ' Club Himalaya is a part of The ACE Hotels, a home-grown, local hospitality brand with world-class standards and over 40 years of experience.', '<p>\r\n	Club Himalaya is a part of The ACE Hotels, a home-grown, local hospitality brand with world-class standards and over 40 years of experience.</p>\r\n', '2023-09-04', '0000-00-00', 2, 1, 'eOE5n-interest.jpg', '', 0, 0, '', '', '2023-09-04 11:54:38', '', '0'),
(16, 'places-of-interest', 'Places-of-interest', 'ClubHimalaya', 'Club Himalaya is a part of The ACE Hotels, a home-grown, local hospitality brand with world-class standards and over 40 years of experience.', '<div style=\"color: rgb(204, 204, 204); background-color: rgb(31, 31, 31); font-family: Consolas, &quot;Courier New&quot;, monospace; font-size: 14px; line-height: 19px; white-space: pre;\">\r\n	Club Himalaya is a part of The ACE Hotels, a home-grown, local hospitality brand with world-class standards and over 40 years of experience.</div>\r\n', '2023-09-04', '0000-00-00', 3, 1, 'tF8Jz-place.jpg', '', 0, 0, '', '', '2023-09-04 11:55:59', '', '0'),
(17, 'test-1', 'test 1', 'ClubHimalaya', 'random stuff ', '<p>\r\n	random stuff</p>\r\n', '2023-09-04', '0000-00-00', 4, 1, 'fwebZ-lobby.jpg', '', 0, 0, '', '', '2023-09-04 11:56:28', '', '0'),
(18, 'qwseasdas', 'qwseasdas', 'ClubHimalaya', 'asdasd', '<p>\r\n	asdasdasd</p>\r\n', '2023-09-04', '0000-00-00', 5, 1, 'bZ2J8-interest.jpg', '', 0, 0, '', '', '2023-09-04 12:25:01', '', '0'),
(19, 'nagarkot-nepal', 'Nagarkot Nepal ', 'Club Himalaya', 'Nagarkot thrills visitors with its unrestricted view of the mountain range from Annapurna in the west to the mighty Everest in the East.', '<h2>\r\n	Escape the chaos of Kathmandu</h2>\r\n<div style=\"text-align: justify;\">\r\n	Nagarkot is located 32 kms, east of Kathmandu <a href=\"https://www.google.com.np/maps/place/Club+Himalaya,+Nagarkot+Resort/@27.7168054,85.5183755,17z/data=!3m1!4b1!4m5!3m4!1s0x39eb0681e69f4d5f:0xd75300924c37f8c7!8m2!3d27.7168054!4d85.5205642\" target=\"_blank\">(see map)</a>, Nepal. Nagarkot thrills visitors with its unrestricted view of the mountain range from Annapurna in the west to the mighty Everest in the East.The hotel is a 30-minute drive from Bhaktapur, a 45-minute drive from Tribhuvan International Airport and an hour&rsquo;s drive from Kathmandu. Taking a helicopter, it is just a 7-minutes&rsquo; ride from Tribuhavan International Airport.</div>\r\n<div style=\"text-align: justify;\">\r\n	&nbsp;</div>\r\n<div style=\"text-align: justify;\">\r\n	Historically, Nagarkot was a place for the royals of Nepal to escape the scorching heat of summer and a hectic city life. In the 60&rsquo;s explorers would battle the shivering winds and sleepless nights to see the stupendous sunrise and sunsets. Today, still people from all over World, from different walks of life, travel to Nagarkot, to enjoy the picturesque rural scenery of terraced rice fields, green pastures, the sunrise and sunsets; but all in the comforts of a world renowned hotel- Club Himalaya.<br />\r\n	&nbsp;</div>\r\n<div class=\"row\">\r\n	<div class=\"col-md-6\">\r\n		<ul list-style-type:=\"\">\r\n			<li>\r\n				7200 ft above sea level : ideal for acclimatization if you are going to high altitude treks or to Tibet or Bhutan .</li>\r\n			<li>\r\n				Summer (May-September) : Nagarkot is windy throughout the year and is 7 Deg C cooler than Kathmandu in summers</li>\r\n			<li>\r\n				Himalayan View : One can view Mt Everest on the North &ndash; East to the Annapurna in the North- West with a maximum range of the Himalayan peaks.</li>\r\n			<li>\r\n				Full of legends &amp; History :<br />\r\n				<br />\r\n				Birth of the world &ndash; Mahadev Pokhari<br />\r\n				Birth of Kathmandu &ndash; Manjushree gufa<br />\r\n				Unification of Nepal &ndash; Prithivi Narayan Shah &amp; his Fort<br />\r\n				Summer Palace of the Ranas &ndash; Bhangeri Durbar<br />\r\n				Sun Risies &amp; Sets with hashish &ndash; The Hippie era<br />\r\n				&nbsp;</li>\r\n			<li style=\"text-align: justify;\">\r\n				So near, yet so far away from the hustle and bustle of caotic Kathmandu</li>\r\n			<li style=\"text-align: justify;\">\r\n				Near the international airport (25km/45minutes) ideal to relax and recover*recoup from jet lag before starting a hectic tour or trekking.</li>\r\n			<li style=\"text-align: justify;\">\r\n				Village walks to experience rural Nepal &ndash; Tamang, Newar, Chhetri &amp; Bahun villages within walking distance.</li>\r\n			<li style=\"text-align: justify;\">\r\n				Nagarkot now a tourist hub with many hotels and restaurants to choose from.</li>\r\n			<li style=\"text-align: justify;\">\r\n				Forest walks to see the flora and fauna o the hills as well as bird watching.</li>\r\n			<li style=\"text-align: justify;\">\r\n				Club Himalaya is the jewel on the crown of Nagarkot.</li>\r\n			<li style=\"text-align: justify;\">\r\n				Mountain biking or hiking to Changunarayan, Bhaktapur or Swayambhu.</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '2023-09-17', '0000-00-00', 6, 1, 'tAtSO-5d3_3269_sm.jpg', '', 0, 0, '', '', '2023-09-17 17:22:38', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_conbined_news`
--

CREATE TABLE `tbl_conbined_news` (
  `id` int(11) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `image` mediumtext NOT NULL,
  `home_image` text NOT NULL,
  `gallery` text NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `display` varchar(250) NOT NULL,
  `event_stdate` date NOT NULL,
  `event_endate` date NOT NULL,
  `type` int(11) NOT NULL,
  `author` varchar(200) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `source` mediumtext NOT NULL,
  `meta_description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_configs`
--

CREATE TABLE `tbl_configs` (
  `id` int(11) NOT NULL,
  `sitetitle` varchar(200) NOT NULL,
  `icon_upload` varchar(200) NOT NULL,
  `logo_upload` varchar(200) NOT NULL,
  `fb_upload` varchar(255) NOT NULL,
  `twitter_upload` varchar(255) NOT NULL,
  `gallery_upload` varchar(255) NOT NULL,
  `contact_upload` varchar(255) NOT NULL,
  `other_upload` varchar(255) NOT NULL,
  `facility_upload` varchar(240) NOT NULL,
  `offer_upload` varchar(255) NOT NULL,
  `sitename` varchar(50) NOT NULL,
  `location_type` tinyint(1) NOT NULL DEFAULT '1',
  `location_map` mediumtext NOT NULL,
  `location_image` varchar(250) NOT NULL,
  `fiscal_address` tinytext NOT NULL,
  `mail_address` tinytext NOT NULL,
  `contact_info` tinytext NOT NULL,
  `address` varchar(100) NOT NULL,
  `email_address` tinytext NOT NULL,
  `breif` text NOT NULL,
  `copyright` varchar(200) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `site_keywords` tinytext NOT NULL,
  `site_description` tinytext NOT NULL,
  `fb_messenger` text NOT NULL,
  `google_anlytics` text NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `robot_txt` text NOT NULL,
  `schema_code` tinytext NOT NULL,
  `book_type` tinyint(4) NOT NULL DEFAULT '1',
  `hotel_page` varchar(200) NOT NULL,
  `hotel_code` tinytext NOT NULL,
  `booking_code` tinytext NOT NULL,
  `template` varchar(100) NOT NULL,
  `admin_template` varchar(100) NOT NULL,
  `headers` text,
  `footer` text,
  `search_box` text,
  `search_result` text,
  `action` tinyint(1) NOT NULL DEFAULT '0',
  `contact_info2` varchar(100) NOT NULL,
  `pobox` varchar(50) NOT NULL,
  `pixel_code` mediumtext NOT NULL,
  `whatsapp` varchar(100) NOT NULL,
  `whatsapp_a` varchar(100) NOT NULL,
  `logo_upload2` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_configs`
--

INSERT INTO `tbl_configs` (`id`, `sitetitle`, `icon_upload`, `logo_upload`, `fb_upload`, `twitter_upload`, `gallery_upload`, `contact_upload`, `other_upload`, `facility_upload`, `offer_upload`, `sitename`, `location_type`, `location_map`, `location_image`, `fiscal_address`, `mail_address`, `contact_info`, `address`, `email_address`, `breif`, `copyright`, `meta_title`, `site_keywords`, `site_description`, `fb_messenger`, `google_anlytics`, `linksrc`, `robot_txt`, `schema_code`, `book_type`, `hotel_page`, `hotel_code`, `booking_code`, `template`, `admin_template`, `headers`, `footer`, `search_box`, `search_result`, `action`, `contact_info2`, `pobox`, `pixel_code`, `whatsapp`, `whatsapp_a`, `logo_upload2`) VALUES
(1, 'Bar Beepal Resort', '04Roi-barpeepal.webp', 'GrUqE-bar_peepal.png', 'evG7F-slider-1.jpg', '', 'J7hIT-galleryimage.jpg', 'r9tkn-contactpage.jpg', 'PrLDg-bg.jpg', '06etF-facilitesimage.jpg', 'JF6Cs-footer.jpg', 'Bar Beepal Resort', 1, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3515.7699396327057!2d83.96173751439694!3d28.214301509638464!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399595c5f8c70363%3A0x21b977e2a249b17f!2sBar%20Peepal%20Resort!5e0!3m2!1sen!2snp!4v1596099682291!5m2!1sen!2snp', 'aHQyy-map.jpg', 'Manimarg, Street No. 28 <br> Lakeside, Pokhara - 6, Nepal', 'Bharma Kumari Marga, Jyatha <br>– 27, Thamel, Kathmandu.', '+977 9802373231', '+977-9802373230', 'dosm@barpeepalresort.com', '', '© Copyright {year}. All right reserved.', 'Bar Beepal Resort | Serving Nepali Taste', 'room, deluxe, view, occupancy, night, exclusive resort, Fewa Lake, Peace Pagoda, Raniban Forest, Nepal resort, luxury resort, Nepali traditional architecture, infinity pool, resort with spa, resort with sauna', 'Located in a prime spot with stunning views of Fewa Lake, Peace Pagoda, and Raniban Forest, this exclusive resort offers an unforgettable experience, set on 10.5 ropani of lush land with 38 beautifully designed rooms.', '', '<!-- Google tag (gtag.js) -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=G-6H74VP4276\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'G-6H74VP4276\');\r\n</script>', '', 'User-agent: *\r\nDisallow: /cgi-bin/', '', 2, 'result.php', 'RShsVA', 'hCb968', 'web', 'blue', '', '', 'Develop By Amit prajapati', 'Develop By Amit prajapati', 0, 'info@barpeepalresort.com, reservation@barpeepalresort.com', '', '', '+977-61-590193', '9802373231', 'OJ0eE-bar_peepal.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(11) NOT NULL,
  `country_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `country_name`, `status`) VALUES
(1, 'United States', 1),
(2, 'Canada', 1),
(3, 'Mexico', 1),
(4, 'Afghanistan', 1),
(5, 'Albania', 1),
(6, 'Algeria', 1),
(7, 'Andorra', 1),
(8, 'Angola', 1),
(9, 'Anguilla', 1),
(10, 'Antarctica', 1),
(11, 'Antigua and Barbuda', 1),
(12, 'Argentina', 1),
(13, 'Armenia', 1),
(14, 'Aruba', 1),
(15, 'Ascension Island', 1),
(16, 'Australia', 1),
(17, 'Austria', 1),
(18, 'Azerbaijan', 1),
(19, 'Bahamas', 1),
(20, 'Bahrain', 1),
(21, 'Bangladesh', 1),
(22, 'Barbados', 1),
(23, 'Belarus', 1),
(24, 'Belgium', 1),
(25, 'Belize', 1),
(26, 'Benin', 1),
(27, 'Bermuda', 1),
(28, 'Bhutan', 1),
(29, 'Bolivia', 1),
(30, 'Bophuthatswana', 1),
(31, 'Bosnia-Herzegovina', 1),
(32, 'Botswana', 1),
(33, 'Bouvet Island', 1),
(34, 'Brazil', 1),
(35, 'British Indian Ocean', 1),
(36, 'British Virgin Islands', 1),
(37, 'Brunei Darussalam', 1),
(38, 'Bulgaria', 1),
(39, 'Burkina Faso', 1),
(40, 'Burundi', 1),
(41, 'Cambodia', 1),
(42, 'Cameroon', 1),
(44, 'Cape Verde Island', 1),
(45, 'Cayman Islands', 1),
(46, 'Central Africa', 1),
(47, 'Chad', 1),
(48, 'Channel Islands', 1),
(49, 'Chile', 1),
(50, 'China, Peoples Republic', 1),
(51, 'Christmas Island', 1),
(52, 'Cocos (Keeling) Islands', 1),
(53, 'Colombia', 1),
(54, 'Comoros Islands', 1),
(55, 'Congo', 1),
(56, 'Cook Islands', 1),
(57, 'Costa Rica', 1),
(58, 'Croatia', 1),
(59, 'Cuba', 1),
(60, 'Cyprus', 1),
(61, 'Czech Republic', 1),
(62, 'Denmark', 1),
(63, 'Djibouti', 1),
(64, 'Dominica', 1),
(65, 'Dominican Republic', 1),
(66, 'Easter Island', 1),
(67, 'Ecuador', 1),
(68, 'Egypt', 1),
(69, 'El Salvador', 1),
(70, 'England', 1),
(71, 'Equatorial Guinea', 1),
(72, 'Estonia', 1),
(73, 'Ethiopia', 1),
(74, 'Falkland Islands', 1),
(75, 'Faeroe Islands', 1),
(76, 'Fiji', 1),
(77, 'Finland', 1),
(78, 'France', 1),
(79, 'French Guyana', 1),
(80, 'French Polynesia', 1),
(81, 'Gabon', 1),
(82, 'Gambia', 1),
(83, 'Georgia Republic', 1),
(84, 'Germany', 1),
(85, 'Gibraltar', 1),
(86, 'Greece', 1),
(87, 'Greenland', 1),
(88, 'Grenada', 1),
(89, 'Guadeloupe (French)', 1),
(90, 'Guatemala', 1),
(91, 'Guernsey Island', 1),
(92, 'Guinea Bissau', 1),
(93, 'Guinea', 1),
(94, 'Guyana', 1),
(95, 'Haiti', 1),
(96, 'Heard and McDonald Isls', 1),
(97, 'Honduras', 1),
(98, 'Hong Kong', 1),
(99, 'Hungary', 1),
(100, 'Iceland', 1),
(101, 'India', 1),
(102, 'Iran', 1),
(103, 'Iraq', 1),
(104, 'Ireland', 1),
(105, 'Isle of Man', 1),
(106, 'Israel', 1),
(107, 'Italy', 1),
(108, 'Ivory Coast', 1),
(109, 'Jamaica', 1),
(110, 'Japan', 1),
(111, 'Jersey Island', 1),
(112, 'Jordan', 1),
(113, 'Kazakhstan', 1),
(114, 'Kenya', 1),
(115, 'Kiribati', 1),
(116, 'Kuwait', 1),
(117, 'Laos', 1),
(118, 'Latvia', 1),
(119, 'Lebanon', 1),
(120, 'Lesotho', 1),
(121, 'Liberia', 1),
(122, 'Libya', 1),
(123, 'Liechtenstein', 1),
(124, 'Lithuania', 1),
(125, 'Luxembourg', 1),
(126, 'Macao', 1),
(127, 'Macedonia', 1),
(128, 'Madagascar', 1),
(129, 'Malawi', 1),
(130, 'Malaysia', 1),
(131, 'Maldives', 1),
(132, 'Mali', 1),
(133, 'Malta', 1),
(134, 'Martinique (French)', 1),
(135, 'Mauritania', 1),
(136, 'Mauritius', 1),
(137, 'Mayotte', 1),
(139, 'Micronesia', 1),
(140, 'Moldavia', 1),
(141, 'Monaco', 1),
(142, 'Mongolia', 1),
(143, 'Montenegro', 1),
(144, 'Montserrat', 1),
(145, 'Morocco', 1),
(146, 'Mozambique', 1),
(147, 'Myanmar', 1),
(148, 'Namibia', 1),
(149, 'Nauru', 1),
(150, 'Nepal', 1),
(151, 'Netherlands Antilles', 1),
(152, 'Netherlands', 1),
(153, 'New Caledonia (French)', 1),
(154, 'New Zealand', 1),
(155, 'Nicaragua', 1),
(156, 'Niger', 1),
(157, 'Niue', 1),
(158, 'Norfolk Island', 1),
(159, 'North Korea', 1),
(160, 'Northern Ireland', 1),
(161, 'Norway', 1),
(162, 'Oman', 1),
(163, 'Pakistan', 1),
(164, 'Panama', 1),
(165, 'Papua New Guinea', 1),
(166, 'Paraguay', 1),
(167, 'Peru', 1),
(168, 'Philippines', 1),
(169, 'Pitcairn Island', 1),
(170, 'Poland', 1),
(171, 'Polynesia (French)', 1),
(172, 'Portugal', 1),
(173, 'Qatar', 1),
(174, 'Reunion Island', 1),
(175, 'Romania', 1),
(176, 'Russia', 1),
(177, 'Rwanda', 1),
(178, 'S.Georgia Sandwich Isls', 1),
(179, 'Sao Tome, Principe', 1),
(180, 'San Marino', 1),
(181, 'Saudi Arabia', 1),
(182, 'Scotland', 1),
(183, 'Senegal', 1),
(184, 'Serbia', 1),
(185, 'Seychelles', 1),
(186, 'Shetland', 1),
(187, 'Sierra Leone', 1),
(188, 'Singapore', 1),
(189, 'Slovak Republic', 1),
(190, 'Slovenia', 1),
(191, 'Solomon Islands', 1),
(192, 'Somalia', 1),
(193, 'South Africa', 1),
(194, 'South Korea', 1),
(195, 'Spain', 1),
(196, 'Sri Lanka', 1),
(197, 'St. Helena', 1),
(198, 'St. Lucia', 1),
(199, 'St. Pierre Miquelon', 1),
(200, 'St. Martins', 1),
(201, 'St. Kitts Nevis Anguilla', 1),
(202, 'St. Vincent Grenadines', 1),
(203, 'Sudan', 1),
(204, 'Suriname', 1),
(205, 'Svalbard Jan Mayen', 1),
(206, 'Swaziland', 1),
(207, 'Sweden', 1),
(208, 'Switzerland', 1),
(209, 'Syria', 1),
(210, 'Tajikistan', 1),
(211, 'Taiwan', 1),
(212, 'Tahiti', 1),
(213, 'Tanzania', 1),
(214, 'Thailand', 1),
(215, 'Togo', 1),
(216, 'Tokelau', 1),
(217, 'Tonga', 1),
(218, 'Trinidad and Tobago', 1),
(219, 'Tunisia', 1),
(220, 'Turkmenistan', 1),
(221, 'Turks and Caicos Isls', 1),
(222, 'Tuvalu', 1),
(223, 'Uganda', 1),
(224, 'Ukraine', 1),
(225, 'United Arab Emirates', 1),
(226, 'Uruguay', 1),
(227, 'Uzbekistan', 1),
(228, 'Vanuatu', 1),
(229, 'Vatican City State', 1),
(230, 'Venezuela', 1),
(231, 'Vietnam', 1),
(232, 'Virgin Islands (Brit,1)', 1),
(233, 'Wales', 1),
(234, 'Wallis Futuna Islands', 1),
(235, 'Western Sahara', 1),
(236, 'Western Samoa', 1),
(237, 'Yemen', 1),
(238, 'Yugoslavia', 1),
(239, 'Zaire', 1),
(240, 'Zambia', 1),
(241, 'Zimbabwe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_download`
--

CREATE TABLE `tbl_download` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `image` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_download`
--

INSERT INTO `tbl_download` (`id`, `slug`, `title`, `status`, `sortorder`, `image`) VALUES
(1, 'asdasd', 'asdasd', 1, 1, 'T8z6W-abs.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `image` mediumtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `event_stdate` date NOT NULL,
  `event_endate` date NOT NULL,
  `type` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_gr` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_gr` text NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`id`, `title`, `title_gr`, `content`, `content_gr`, `status`, `sortorder`, `added_date`) VALUES
(2, 'What are the services available?', '', '<p>\r\n	Fax/Photocopying, Laundry, Meeting/Banquet Facilities, Currency Exchange, Tour Desk, Business Centre, Ironing Service, Car Hire, Ticket Service, Souvenirs/Gift Shop, Concierge Service,Airport Shuttle (surcharge), Bicycle Rental, Shuttle Service (surcharge)</p>\r\n', '', 1, 12, '2023-08-28 11:17:00'),
(3, 'What are the activities guests can enjoy?', '', '<p>\r\n	Nagarkot is a tranquil place where guests can escape the chaos and the hectic demands of the city life. While many guests prefer to enjoy the natural beauty of the surroundings by taking long walks, watching the sunrise and sunsets and enjoying a quite drink at our cozy bar, the hotel also offer activities such as :Massage, Spa &amp; Wellness Center, Cycling (booking shall be made in advance), Hiking, Library, Indoor Swimming Pool etc.</p>\r\n', '', 1, 3, '2023-08-29 11:44:10'),
(4, 'What are the amenities and facilities in the hotel?', '', '<p>\r\n	Area shuttle (surcharge) &ndash; Bar/lounge- Total number of rooms 68 &ndash; Number of floors 5 &ndash; Number of buildings 2- Free Wi-fi ( Lobby area only)- Restaurant(s) in hotel- 1 Swimming pool &ndash; indoor &ndash; Spa &ndash; Rooftop sun deck- Souvenir shops- Helipad- Hot tub- Library- Multiple small meeting rooms &ndash; Multiple conference/ meeting rooms &ndash; Event catering &ndash; Banquet facilities &ndash; Concierge- Town Car Service available &ndash; Security guard &ndash; Multilingual staff &ndash; 24-hour front desk &ndash; Currency exchange &ndash; Parking</p>\r\n', '', 1, 2, '2023-08-29 11:44:28'),
(6, 'Internet', '', '<p>\r\n	Free! Wi-fi is available in public areas and is free of charge.</p>\r\n', '', 1, 0, '2023-09-15 11:22:44'),
(7, 'Parking', '', '<p>\r\n	Free! Free private parking is possible on site (reservation is needed).</p>\r\n', '', 1, 1, '2023-09-15 11:23:01'),
(8, 'How do I get to the hotel?', '', '<p>\r\n	Nagarkot is 32 kilometers East of Kathmandu. From the Tribhuvan International Airport, guests can easily hire a taxi. It costs around 3500 Nepali rupees ( this is an approximate figure and subject to change) one-way. If you are already in Kathmandu or elsewhere, your hotel can easily arrange a private car or taxi. If you&#39;d like assistance, it is best to email us at ambassador@ambassador.com.np or call us at 977-1-6680080/46. To read more about transportation you may also visit the Lonely Planet site.</p>\r\n', '', 1, 4, '2023-09-15 11:23:55'),
(9, 'What are the things to do in Nagarkot?', '', '<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Locals visit Nagarkot through out the year as it is the perfect escape from the hustle and bustle of Kathmandu city; but October- March is probably the time when guests enjoy clear views of the mountain ranges.</span><br style=\"box-sizing: border-box; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\" />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">According to TripAdvisor.com following are the 5 good reasons to visit Nagarkot:</span></p>\r\n<ol style=\"box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 30px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		1. For those longing for some really refreshing environment to be free from hectic busy schedules in the crowded Kathmandu.Nagarkot provides a scenic beauty and divine peace far from heat, dust, smoke and city&rsquo;s hustle bustle.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		2. Nagarkot is the nearest point from the Kathmandu valley from where on a clear day, the view of Mount Everest can be seen.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		3. Nagarkot is ideal hilltop venue to acclimatize for high altitude adventures as it is located at 7200 ft above sea level.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		4. It is the transit point for Helambu and Lang-tang trekking.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		5. Nagarkot is also a good point for mini-trekking. There are several treks possible to and from Nagarkot such as sankhu, changu Narayan, Dhulikhel, Sundarijal, Nala, etc.</li>\r\n</ol>\r\n', '', 1, 10, '2023-09-15 11:24:12'),
(10, 'We guarantee', '', '<ol style=\"box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 30px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		1. Booking is safe. When you book with us your details are protected by a secure connection.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		2. Best Price Guarantee. Found your room online at a lower price (exact date and same terms &amp; conditions)? We&rsquo;ll match it. Email <a href=\"mailto:pam@acehotelsnepal.com\">pam@acehotelsnepal.com</a>.</li>\r\n</ol>\r\n', '', 1, 5, '2023-09-15 11:24:26'),
(11, 'What are the accepted credit cards?', '', '<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Visa, Euro/Mastercard/ AMEX</span></p>\r\n<ol style=\"box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 30px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		1. A credit card number is required to confirm the booking.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		2. Prepayment for full duration of stay will be charged at the time of booking.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		3. 100% deposit will be refunded in the event of cancellation / modification 7 days prior to arrival date.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		4. Any cancellation less than 7 days notification, 50% of amount paid will be refunded.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		5. Prepayment will not be refunded for No-shows.</li>\r\n</ol>\r\n', '', 1, 6, '2023-09-15 11:24:38'),
(12, 'Pets', '', '<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Pets are not allowed.</span></p>\r\n', '', 1, 7, '2023-09-15 11:24:49'),
(13, 'What are the Hotel Policies?', '', '<p style=\"text-align: left;\">\r\n	Check-in: 2:00 pm</p>\r\n<p style=\"text-align: left;\">\r\n	Check-out: 12:00 noon</p>\r\n<ul style=\"list-style-type:circle; text-align: left;\">\r\n	<li>\r\n		Rates are subjected to 13% VAT and 10% services charge.</li>\r\n	<li>\r\n		Note that children age 11 and older are charged the adult rate.</li>\r\n	<li>\r\n		Please include them in the number entered in the No. of Adults box.</li>\r\n	<li>\r\n		All rates quoted are subject to change without prior notice.</li>\r\n	<li>\r\n		Should you wish to change an existing reservation, you are required to cancel the existing booking and proceed to create a new reservation.This may be done by visiting our website.</li>\r\n	<li>\r\n		Should you wish to cancel an existing reservation, simply click on the reservation link at our</li>\r\n</ul>\r\n', '', 1, 8, '2023-09-15 11:25:00'),
(14, 'When is the best time to visit?', '', '<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Locals visit Nagarkot through out the year as it is the perfect escape from the hustle and bustle of Kathmandu city; but October- March is probably the time when guests enjoy clear views of the mountain ranges.</span></p>\r\n', '', 1, 11, '2023-09-15 11:25:11'),
(15, 'What is the weather in Nagarkot like ?', '', '<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Nagarkot is very windy throughout the year, so always bring a wind cheater, a cap, glove, cold cream or lip guard, sunglasses and light walking shoes. Don&#39;t forget your binocular &amp; camera to catch the view. Avoid loose flying skirts and sarees unless you want a Marilyne Monroe experience!</span></p>\r\n<div class=\"table-responsive\">\r\n	<table class=\"table table-bordered\">\r\n		<tbody style=\"box-sizing: border-box;\">\r\n			<tr style=\"box-sizing: border-box;\">\r\n				<td>\r\n					&nbsp;</td>\r\n				<td>\r\n					&nbsp;Max<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px; text-align: center;\">\r\n					&nbsp; Min</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;</td>\r\n			</tr>\r\n			<tr style=\"box-sizing: border-box;\" width=\"40%\">\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;Jan- March (Winter)<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;15 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;4 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;warm woolens with head cover</td>\r\n			</tr>\r\n			<tr style=\"box-sizing: border-box;\" width=\"20%\">\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;April-June (Spring / summer)<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;25 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					15 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;wind cheater, umbrella raincoat, light cap</td>\r\n			</tr>\r\n			<tr style=\"box-sizing: border-box;\" width=\"20%\">\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;July &ndash; Sept (Monsoon / Autumn)<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;28 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					15 o C<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;light wind cheater umbrella, raincoat,Light cap</td>\r\n			</tr>\r\n			<tr style=\"box-sizing: border-box;\" width=\"30%\">\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;Oct- Dec (Winter)<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;15 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;2 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;very heavy woolens</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 1, 9, '2023-09-15 11:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_features`
--

CREATE TABLE `tbl_features` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `parentId` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `brief` text NOT NULL,
  `icon` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_features`
--

INSERT INTO `tbl_features` (`id`, `title`, `parentId`, `image`, `brief`, `icon`, `status`, `sortorder`, `added_date`) VALUES
(118, 'Core Facilities', 0, '', '', '', 1, 3, '2024-01-25 16:51:25'),
(152, 'Live Music (on request)', 118, 'VUygC-live-music.png', '', '', 1, 21, '2025-01-17 15:16:27'),
(153, 'Parking Space', 118, 'mbGHf-parking-area.png', '', '', 1, 22, '2025-01-17 15:16:53'),
(154, 'Private Dining Area', 118, 'eaQKZ-Private Dining Area.png', '', '', 1, 23, '2025-01-17 15:17:13'),
(158, 'Slipper', 118, 'x4S2t-slipper.png', '', '', 1, 27, '2025-01-17 15:45:39'),
(147, 'Kitchenette', 118, 'qiIPG-kitchen-set (1).png', '', '', 1, 17, '2025-01-17 14:52:41'),
(149, 'Card Accepted', 118, 'uloNu-approved-payment.png', '', '', 1, 18, '2025-01-17 15:15:32'),
(142, 'Private Balcony', 118, 'wBEnH-balcony.png', '', '', 1, 13, '2025-01-17 13:16:28'),
(144, 'Tea/Coffee Maker', 118, 'UliMx-kettle.png', '', '', 1, 14, '2025-01-17 13:18:12'),
(124, 'Jacuzzi', 118, 'Sv3vi-jacuzzi.png', '', '', 1, 4, '2024-12-26 16:45:52'),
(157, 'Rain Shower', 118, 'Kz4QP-shower.png', '', '', 1, 26, '2025-01-17 15:45:27'),
(136, 'Hair Dryer', 118, 's6XSR-hair dryer.png', '', '', 1, 7, '2025-01-17 13:12:17'),
(137, 'Living Space', 118, 'dUk76-living-room.png', '', '', 1, 8, '2025-01-17 13:12:33'),
(138, 'Seating Area', 118, 'oaP92-seating area.png', '', '', 1, 9, '2025-01-17 13:12:47'),
(139, 'LED TV', 118, 'zYVWf-smart-tv.png', '', '', 1, 10, '2025-01-17 13:13:30'),
(140, 'Work Desk', 118, 'VQFJo-desk.png', '', '', 1, 11, '2025-01-17 13:14:41'),
(141, 'Attached Bathroom', 118, 'FkivA-Bathroom.png', '', '', 1, 12, '2025-01-17 13:15:40'),
(127, 'Bathtub', 118, 'OqjrL-bathtub.png', '', '', 1, 2, '2024-12-26 16:47:03'),
(134, 'Air Conditioner', 118, '3chHQ-air-conditioner.png', '', '', 1, 5, '2025-01-17 13:11:51'),
(135, 'Fruit Basket', 118, 'txhtE-fruit basket.png', '', '', 1, 6, '2025-01-17 13:12:05'),
(146, 'Telephone', 118, 'eMRTs-telephone.png', '', '', 1, 16, '2025-01-17 13:45:45'),
(151, 'Comfortable Booths', 118, 'YbQiB-Comfortable Booths.png', '', '', 1, 20, '2025-01-17 15:16:13'),
(131, 'Free Wifi', 118, 'zA3Q0-wifi.png', '', '', 1, 1, '2025-01-17 11:52:36'),
(145, 'Complimentary Toiletries', 118, 'AuLrk-toiletries.png', '', '', 1, 15, '2025-01-17 13:19:29'),
(150, 'Restroom', 118, 'hbHhK-Bathroom.png', '', '', 1, 19, '2025-01-17 15:15:53'),
(155, 'Reservation System', 118, 'MXhGB-reserved.png', '', '', 1, 24, '2025-01-17 15:17:31'),
(156, 'Table Service', 118, 'fPXLJ-Table Service.png', '', '', 1, 25, '2025-01-17 15:17:45'),
(159, 'Complimentary Water Bottles', 118, 'OyIqA-water-bottle.png', '', '', 1, 28, '2025-01-17 15:46:14'),
(162, 'White Board', 118, 'UFBe0-whiteboard.png', '', '', 1, 30, '2025-01-17 17:08:28'),
(161, 'PA System', 118, '2urPL-microphone.png', '', '', 1, 29, '2025-01-17 17:08:00'),
(163, 'Seating Arrangement', 118, 'a177t-arrival-hall.png', '', '', 1, 31, '2025-01-17 17:10:00'),
(164, 'CCTV Security', 118, 'wq1i3-cctv.png', '', '', 1, 32, '2025-01-17 17:14:13'),
(165, 'Satellite Channels', 118, '8xRbn-satellite-tv.png', '', '', 1, 33, '2025-01-23 20:54:49'),
(166, 'Lake View', 118, 'LjcwG-landscape.png', '', '', 1, 34, '2025-01-23 21:03:41'),
(167, 'Automatic Coffee Brewer', 118, 'Q7XBE-coffee-maker.png', '', '', 1, 35, '2025-01-23 21:06:08'),
(168, 'Microwave Oven', 118, 'iDHzJ-oven.png', '', '', 1, 36, '2025-01-23 21:10:03'),
(169, 'Wakeup Service', 118, 'nLOPD-alarm-clock.png', '', '', 1, 37, '2025-01-23 21:11:27'),
(170, 'Minibar', 118, '1bLBE-refrigerator.png', '', '', 1, 38, '2025-01-23 21:12:29'),
(171, 'Separate Bathroom', 118, 'f0mvv-washbasin.png', '', '', 1, 39, '2025-01-23 21:14:18'),
(172, 'Cookies Basket', 118, 'eP0cs-cookie.png', '', '', 1, 40, '2025-01-23 21:15:54'),
(173, 'Garden View', 118, 'Pe0lR-plant.png', '', '', 1, 41, '2025-01-23 22:19:27'),
(174, 'Sofa Seating', 118, 'LDpXy-sofa.png', '', '', 1, 42, '2025-01-23 23:22:58'),
(175, 'BBQ', 118, 'dTTXN-bbq.png', '', '', 1, 43, '2025-01-23 23:28:26'),
(176, 'Bon Fire', 118, '2oa4s-bonfire.png', '', '', 1, 44, '2025-01-23 23:31:13'),
(177, 'Easy access to deck area', 118, 'Xl8Oz-beach-deck.png', '', '', 1, 45, '2025-01-28 11:21:29'),
(178, 'Seperate Kitchen', 118, 'nMerF-kitchen.png', '', '', 1, 46, '2025-01-28 11:26:04'),
(179, 'Stationary', 118, 'NCImD-stationary.png', '', '', 1, 47, '2025-01-28 13:09:56'),
(180, 'Printing Service', 118, 'UdDnT-print.png', '', '', 1, 48, '2025-01-28 13:10:40'),
(181, 'Projector', 118, 'WAwqp-presentation.png', '', '', 1, 49, '2025-01-28 13:11:31'),
(182, 'Audio Visual Equipment', 118, 'waSYC-live.png', '', '', 1, 50, '2025-01-28 13:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galleries`
--

CREATE TABLE `tbl_galleries` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(50) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_galleries`
--

INSERT INTO `tbl_galleries` (`id`, `slug`, `title`, `image`, `detail`, `status`, `sortorder`, `registered`, `type`) VALUES
(11, 'rooms', 'Rooms', 'po2qJ-gallary-2.jpg', '', 1, 6, '2024-12-30 14:39:43', 1),
(12, 'restaurant-bar', 'Restaurant & Bar', 'OTaig-9.jpg', '', 1, 5, '2024-12-30 14:40:58', 1),
(13, 'resort', 'Resort', 'Bqo8j-1.jpg', '', 1, 7, '2024-12-30 14:41:30', 1),
(16, 'home-gallery', 'Home gallery', 'Us3Wc-gallary.jpg', '', 1, 8, '2025-01-09 10:21:11', 2),
(17, 'meeting-halls', 'Meeting Halls', 'g3aM8-1.jpg', '', 1, 3, '2025-01-17 19:10:44', 1),
(18, 'swimming-pool', 'Swimming Pool', 'IUbHB-1.jpg', '', 1, 2, '2025-01-17 19:34:48', 1),
(19, 'interior', 'Interior', 'aK90Y-1.jpg', '', 0, 0, '2025-01-17 19:43:03', 1),
(20, 'food', 'Food', 'cOhpC-1.jpg', '', 1, 4, '2025-01-21 16:51:46', 1),
(21, 'health-beauty', 'Health & Beauty', '6eBdV-1.jpg', '', 1, 1, '2025-01-28 12:58:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery_images`
--

CREATE TABLE `tbl_gallery_images` (
  `id` int(11) NOT NULL,
  `galleryid` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `detail` varchar(200) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gallery_images`
--

INSERT INTO `tbl_gallery_images` (`id`, `galleryid`, `title`, `image`, `status`, `detail`, `sortorder`, `registered`) VALUES
(198, 11, 'Interconnected Deluxe', 'RNhkY-7.jpg', 1, '', 7, '2025-01-17 19:02:25'),
(197, 11, 'Deluxe Twin', 'myqBz-6.jpg', 1, '', 6, '2025-01-17 19:01:38'),
(196, 11, 'Deluxe Twin', 'Ssf4a-5.jpg', 1, '', 5, '2025-01-17 19:01:38'),
(192, 11, 'Deluxe Room', '7OcRc-1.jpg', 1, '', 1, '2025-01-17 18:54:51'),
(193, 11, 'Deluxe Room', 'rGqDF-2.jpg', 1, '', 2, '2025-01-17 18:54:51'),
(194, 11, 'Deluxe Room', 'J0xpw-3.jpg', 1, '', 3, '2025-01-17 18:54:51'),
(195, 11, 'Deluxe Twin', 'InTuR-4.jpg', 1, '', 4, '2025-01-17 19:01:38'),
(245, 16, 'Deluxe Room', '8Xgwy-1.jpg', 1, '', 1, '2025-01-21 11:15:26'),
(246, 16, 'Deluxe Twin Room', '4oxYM-4.jpg', 1, '', 2, '2025-01-21 11:16:19'),
(199, 11, 'Interconnected Deluxe', '1bRMB-8.jpg', 1, '', 8, '2025-01-17 19:02:25'),
(200, 11, 'Interconnected Deluxe', 'wYyv4-9.jpg', 1, '', 9, '2025-01-17 19:02:25'),
(201, 11, 'Suite Room', 'mCPl7-10.jpg', 1, '', 14, '2025-01-17 19:03:00'),
(202, 11, 'Suite Room', 'RmFT6-11.jpg', 1, '', 15, '2025-01-17 19:03:00'),
(203, 11, 'Suite Room', 'wzbjA-12.jpg', 1, '', 13, '2025-01-17 19:03:00'),
(204, 12, 'Lamjung Restaurant', 'BgJOl-6.jpg', 1, '', 1, '2025-01-17 19:07:59'),
(205, 12, 'Lamjung Restaurant', '3oe9D-5.jpg', 1, '', 2, '2025-01-17 19:07:59'),
(206, 12, 'Lamjung Restaurant', '24lnU-4.jpg', 1, '', 3, '2025-01-17 19:07:59'),
(207, 12, 'Lamjung Restaurant', '1fMup-3.jpg', 1, '', 4, '2025-01-17 19:07:59'),
(208, 12, 'Chautari Restaurant', 'Ft3HD-2.jpg', 1, '', 5, '2025-01-17 19:07:59'),
(209, 12, 'Chautari Restaurant', 'asLzN-1.jpg', 1, '', 6, '2025-01-17 19:07:59'),
(313, 21, 'SPA', 'm4E21-1.jpg', 1, '', 2, '2025-01-28 12:59:48'),
(312, 17, 'Meeting Halls', '8kNVM-3.jpg', 1, '', 1, '2025-01-28 12:51:17'),
(311, 17, 'Meeting Halls', 'tF8WJ-2.jpg', 1, '', 3, '2025-01-28 12:51:17'),
(310, 17, 'Meeting Halls', 's9dCZ-1.jpg', 1, '', 2, '2025-01-28 12:51:17'),
(214, 13, 'Exterior', '8klAO-1.jpg', 1, '', 1, '2025-01-17 19:18:43'),
(215, 13, 'Exterior', 't2V5r-2.jpg', 1, '', 2, '2025-01-17 19:18:43'),
(216, 13, 'Exterior', 'GsnlK-3.jpg', 1, '', 3, '2025-01-17 19:18:43'),
(217, 13, 'Exterior', 'bf8mP-4.jpg', 1, '', 4, '2025-01-17 19:18:43'),
(218, 13, 'Exterior', 'KkFOY-5.jpg', 1, '', 5, '2025-01-17 19:18:43'),
(219, 13, 'Exterior', '3xD3Q-6.jpg', 1, '', 6, '2025-01-17 19:18:43'),
(220, 13, 'Exterior', 'YfWd7-7.jpg', 1, '', 7, '2025-01-17 19:18:43'),
(221, 13, 'Exterior', 'sAB3i-8.jpg', 1, '', 8, '2025-01-17 19:18:43'),
(222, 13, 'Exterior', 'QFnoh-9.jpg', 1, '', 9, '2025-01-17 19:18:43'),
(223, 12, 'Bar', 'vnJRL-7.jpg', 1, '', 8, '2025-01-17 19:22:44'),
(224, 12, 'Bar', 'QQbMB-8.jpg', 1, '', 9, '2025-01-17 19:22:44'),
(225, 12, 'Bar', 'G39uD-9.jpg', 1, '', 7, '2025-01-17 19:22:44'),
(226, 12, 'Bar', '3lpRr-10.jpg', 1, '', 10, '2025-01-17 19:31:17'),
(227, 12, 'Bar', 'AJNEz-11.jpg', 1, '', 11, '2025-01-17 19:31:17'),
(228, 12, 'Bar', 'MX7RV-12.jpg', 1, '', 12, '2025-01-17 19:31:17'),
(229, 18, 'Swimming Pool', 'rCZnL-1.jpg', 1, '', 1, '2025-01-17 19:35:36'),
(230, 18, 'Swimming Pool', 'ThDxP-2.jpg', 1, '', 2, '2025-01-17 19:35:36'),
(314, 21, 'SPA', 'LEM3w-2.jpg', 1, '', 3, '2025-01-28 12:59:48'),
(309, 18, 'Swimming Pool', 'Aj6vS-3.jpg', 1, '', 6, '2025-01-28 12:48:19'),
(308, 18, 'Swimming Pool', 'NRVAU-2.jpg', 1, '', 5, '2025-01-28 12:48:19'),
(307, 18, 'Swimming Pool', '0m8Wt-1.jpg', 1, '', 4, '2025-01-28 12:48:19'),
(235, 19, 'Interior', 'YkhKc-1.jpg', 1, '', 1, '2025-01-17 19:44:06'),
(236, 19, 'Interior', 'NpLAS-2.jpg', 1, '', 2, '2025-01-17 19:44:06'),
(237, 19, 'Interior', 'obbNq-3.jpg', 1, '', 3, '2025-01-17 19:44:06'),
(238, 19, 'Interior', 'L0F3H-4.jpg', 1, '', 4, '2025-01-17 19:44:06'),
(239, 19, 'Interior', 'ym2wG-5.jpg', 1, '', 5, '2025-01-17 19:44:06'),
(240, 19, 'Interior', '7IOl4-6.jpg', 1, '', 6, '2025-01-17 19:44:06'),
(241, 19, 'Interior', 'dTI0g-7.jpg', 1, '', 7, '2025-01-17 19:44:06'),
(242, 19, 'Interior', '7UV6M-8.jpg', 1, '', 8, '2025-01-17 19:44:06'),
(243, 19, 'Interior', '16AWl-9.jpg', 1, '', 9, '2025-01-17 19:44:06'),
(244, 18, 'Swimming Pool', 'wSsGu-4.jpg', 1, '', 3, '2025-01-17 19:52:59'),
(247, 16, 'Suite Room', 'xB13d-11.jpg', 1, '', 3, '2025-01-21 11:17:04'),
(248, 16, 'Interconnected Room', '6jgad-7.jpg', 1, '', 4, '2025-01-21 11:18:09'),
(249, 16, 'Executive Room', '1hnV5-12.jpg', 1, '', 5, '2025-01-21 11:18:39'),
(250, 20, 'Food', 'RpQZj-1.jpg', 1, '', 1, '2025-01-21 16:53:12'),
(251, 20, 'Food', 'CZUQD-3.jpg', 1, '', 2, '2025-01-21 16:53:12'),
(252, 20, 'Food', 'xS1gI-2.jpg', 1, '', 3, '2025-01-21 16:53:12'),
(253, 20, 'Food', 'wXsrz-6.jpg', 1, '', 4, '2025-01-21 16:55:01'),
(254, 20, 'Food', 'RMQhB-5.jpg', 1, '', 5, '2025-01-21 16:55:01'),
(255, 20, 'Food', 'zmxdU-4.jpg', 1, '', 6, '2025-01-21 16:55:01'),
(256, 13, 'Interior', 'Th3DJ-1.jpg', 1, '', 10, '2025-01-27 10:03:02'),
(257, 13, 'Interior', 'uz3w8-2.jpg', 1, '', 11, '2025-01-27 10:03:02'),
(258, 13, 'Interior', 'O13lm-3.jpg', 1, '', 12, '2025-01-27 10:03:02'),
(259, 13, 'Interior', 'TVr0Q-4.jpg', 1, '', 13, '2025-01-27 10:03:02'),
(260, 13, 'Interior', 'DWFso-5.jpg', 1, '', 14, '2025-01-27 10:03:02'),
(261, 13, 'Interior', '11GeF-6.jpg', 1, '', 15, '2025-01-27 10:03:02'),
(262, 13, 'Interior', 'TVgX5-7.jpg', 1, '', 16, '2025-01-27 10:03:02'),
(263, 13, 'Interior', 'CugQv-8.jpg', 1, '', 17, '2025-01-27 10:03:02'),
(264, 13, 'Interior', 'UZ85C-9.jpg', 1, '', 18, '2025-01-27 10:04:33'),
(265, 20, 'Food', '7cyXU-food.jpg', 1, '', 7, '2025-01-27 11:24:33'),
(266, 20, 'Food', 'NEwvC-food2.jpg', 1, '', 8, '2025-01-27 11:24:33'),
(267, 20, 'Food', 'J27Gg-food3.jpg', 1, '', 9, '2025-01-27 11:24:33'),
(268, 20, 'Food', 'SeQEN-food4.jpg', 1, '', 10, '2025-01-27 11:24:33'),
(269, 20, 'Food', '4R8uk-food5.jpg', 1, '', 11, '2025-01-27 11:24:33'),
(270, 20, 'Food', 'CMVdo-food6.jpg', 1, '', 12, '2025-01-27 11:24:33'),
(271, 20, 'Food', 'mRA8b-food7.jpg', 1, '', 13, '2025-01-27 11:24:33'),
(272, 20, 'Food', 'SUyJL-food8.jpg', 1, '', 14, '2025-01-27 11:24:33'),
(273, 20, 'Food', 'Gg0dh-food9.jpg', 1, '', 15, '2025-01-27 11:25:02'),
(274, 12, 'Buffet', 'p8E8I-1.jpg', 1, '', 13, '2025-01-27 11:32:33'),
(275, 12, 'Buffet', '4zA8k-2.jpg', 1, '', 14, '2025-01-27 11:32:33'),
(276, 12, 'Buffet', 'bRpAO-3.jpg', 1, '', 15, '2025-01-27 11:32:33'),
(277, 12, 'Buffet', '8UQ3k-4.jpg', 1, '', 16, '2025-01-27 11:32:33'),
(278, 12, 'Buffet', 'jsGqB-5.jpg', 1, '', 17, '2025-01-27 11:32:33'),
(279, 12, 'Buffet', 'djJYK-6.jpg', 1, '', 18, '2025-01-27 11:32:33'),
(280, 12, 'Buffet', 'i461L-7.jpg', 1, '', 19, '2025-01-27 11:32:33'),
(281, 12, 'Buffet', 'G8d8U-8.jpg', 1, '', 20, '2025-01-27 11:32:33'),
(282, 12, 'Buffet', 'RlTne-9.jpg', 1, '', 21, '2025-01-27 11:32:33'),
(283, 12, 'Barbique', 'Hxcun-1.jpg', 1, '', 22, '2025-01-27 11:38:21'),
(284, 12, 'Barbique', 'sWkcG-4.jpg', 1, '', 23, '2025-01-27 11:38:21'),
(285, 12, 'Barbique', 'pm6fc-2.jpg', 1, '', 24, '2025-01-27 11:38:21'),
(286, 12, 'try', 'Mlzas-try.jpg', 1, '', 27, '2025-01-27 11:47:53'),
(287, 12, 'Coffee', 'GxRsN-try.jpg', 1, '', 26, '2025-01-27 11:52:06'),
(288, 12, 'Coffee', 'zgLBy-try.jpg', 1, '', 25, '2025-01-27 11:53:15'),
(289, 12, 'Coffee', 'GfzfL-1.jpg', 1, '', 28, '2025-01-27 11:54:48'),
(290, 12, 'Coffee', 'BxenE-4.jpg', 1, '', 29, '2025-01-27 11:54:48'),
(291, 12, 'Coffee', 'YZlD1-2.jpg', 1, '', 30, '2025-01-27 11:54:48'),
(292, 12, 'Drinks', 'arinf-6.jpg', 1, '', 32, '2025-01-27 12:05:58'),
(293, 12, 'Drinks', 'qbkXL-7.jpg', 1, '', 31, '2025-01-27 12:05:58'),
(294, 12, 'Drinks', 'ORejw-8.jpg', 1, '', 33, '2025-01-27 12:05:58'),
(295, 12, 'Drinks', '3CfMa-1.jpg', 1, '', 35, '2025-01-27 12:06:31'),
(296, 12, 'Drinks', 'tl3jh-2.jpg', 1, '', 36, '2025-01-27 12:06:31'),
(297, 12, 'Drinks', 'cFfqZ-5.jpg', 1, '', 34, '2025-01-27 12:06:31'),
(298, 11, 'Junior Suite', 'J8nU5-1.jpg', 1, '', 10, '2025-01-27 12:23:28'),
(299, 11, 'Junior Suite', 'lyoaU-2.jpg', 1, '', 11, '2025-01-27 12:23:28'),
(300, 11, 'Junior Suite', 'knNsq-3.jpg', 1, '', 12, '2025-01-27 12:23:28'),
(301, 11, 'Bathroom', 'uWos0-4.jpg', 1, '', 17, '2025-01-27 12:32:20'),
(302, 11, 'Bathroom', 'Tez9v-5.jpg', 1, '', 16, '2025-01-27 12:32:20'),
(303, 11, 'Bathroom', 'PcY7o-6.jpg', 1, '', 18, '2025-01-27 12:32:20'),
(304, 11, 'Bathroom', 'LnkT3-7.jpg', 0, '', 19, '2025-01-27 12:32:20'),
(305, 11, 'Bathroom', 'px6rv-8.jpg', 1, '', 20, '2025-01-27 12:32:20'),
(306, 11, 'Bathroom', 'RHyHT-9.jpg', 1, '', 21, '2025-01-27 12:32:20'),
(315, 21, 'SPA', '6NUKW-12.jpg', 0, '', 4, '2025-01-28 12:59:48'),
(316, 21, 'Gym', 'Lyt2i-6.jpg', 1, '', 5, '2025-01-28 13:02:43'),
(317, 21, 'Gym', '1KDRA-7.jpg', 1, '', 6, '2025-01-28 13:02:43'),
(318, 21, 'Gym', 'a5Bd1-8.jpg', 1, '', 7, '2025-01-28 13:02:43'),
(319, 21, 'Yoga', 'DJfMr-3.jpg', 1, '', 8, '2025-01-28 13:03:09'),
(320, 21, 'Yoga', 'vuuF7-4.jpg', 1, '', 9, '2025-01-28 13:03:09'),
(321, 21, 'Yoga', '3JTFL-5.jpg', 1, '', 10, '2025-01-28 13:03:09'),
(322, 21, 'Steam', 'ubTkH-9.jpg', 1, '', 11, '2025-01-28 13:04:07'),
(323, 21, 'Sauna', 'G1VNZ-10.jpg', 1, '', 12, '2025-01-28 13:04:07'),
(324, 21, 'Steam', 'HbbtU-11.jpg', 1, '', 13, '2025-01-28 13:04:07'),
(325, 21, 'Spa', 'iSCvv-spa2.jpg', 1, '', 1, '2025-01-28 15:07:36'),
(326, 11, 'Corridor', 'XgTkE-Corridor.jpg', 1, '', 22, '2025-01-28 17:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_type`
--

CREATE TABLE `tbl_group_type` (
  `id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `group_type` varchar(20) NOT NULL,
  `authority` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=>Frontend,2=>Personality,3=>Backend,4=>Both',
  `description` tinytext NOT NULL,
  `status` tinyint(4) NOT NULL,
  `permission` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_group_type`
--

INSERT INTO `tbl_group_type` (`id`, `group_name`, `group_type`, `authority`, `description`, `status`, `permission`) VALUES
(1, 'Administrator', '1', 1, '', 1, 'a:22:{i:0;s:2:\"74\";i:1;s:3:\"306\";i:2;s:1:\"1\";i:3;s:1:\"2\";i:4;s:1:\"3\";i:5;s:1:\"4\";i:6;s:2:\"25\";i:7;s:2:\"23\";i:8;s:2:\"24\";i:9;s:2:\"20\";i:10;s:1:\"5\";i:11;s:2:\"11\";i:12;s:2:\"17\";i:13;s:3:\"303\";i:14;s:3:\"311\";i:15;s:3:\"301\";i:16;s:2:\"19\";i:17;s:2:\"12\";i:18;s:2:\"16\";i:19;s:2:\"15\";i:20;s:2:\"14\";i:21;s:2:\"13\";}'),
(2, 'General Admin', '1', 1, '', 1, 'a:20:{i:0;s:2:\"74\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:2:\"25\";i:6;s:2:\"23\";i:7;s:2:\"24\";i:8;s:2:\"20\";i:9;s:1:\"5\";i:10;s:2:\"11\";i:11;s:2:\"17\";i:12;s:3:\"303\";i:13;s:3:\"311\";i:14;s:3:\"301\";i:15;s:2:\"19\";i:16;s:2:\"28\";i:17;s:2:\"12\";i:18;s:2:\"14\";i:19;s:2:\"13\";}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `id` int(11) NOT NULL,
  `action` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `registered` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL,
  `user_action` int(11) NOT NULL,
  `ip_track` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1, 'Log has been cleared.', '2025-01-08 09:26:39', 1, 6, '::1'),
(2, 'Slideshow [Dining experience at it\'s best] Edit Successfully', '2025-01-08 09:26:49', 1, 4, '::1'),
(3, 'Login: superadmin logged in.', '2025-01-08 14:53:18', 1, 1, '103.10.28.149'),
(4, 'Login: superadmin logged in.', '2025-01-08 15:07:51', 1, 1, '103.10.28.149'),
(5, 'Menu [About Us] CreatedData has added successfully.', '2025-01-08 15:12:04', 1, 3, '103.10.28.149'),
(6, 'Changes on Config \'Bar Beepal Resortaa\' has been saved successfully.', '2025-01-08 17:30:14', 1, 4, '103.10.28.149'),
(7, 'Changes on Main service \'Meeting & Events\' has been saved successfully.', '2025-01-08 17:44:25', 1, 4, '103.10.28.149'),
(8, 'Login: superadmin logged in.', '2025-01-09 09:31:21', 1, 1, '103.10.28.129'),
(9, 'Slideshow [Dining experience at it\'s best] Edit Successfully', '2025-01-09 09:35:28', 1, 4, '103.10.28.129'),
(10, 'Slideshow [Welcome to barpeepal] Edit Successfully', '2025-01-09 09:35:33', 1, 4, '103.10.28.129'),
(11, 'Articles  [test1]Data has deleted successfully.', '2025-01-09 09:38:38', 1, 6, '103.10.28.129'),
(12, 'Changes on Article \'Welcome To An oasis in pokhara’s most exciting location\' has been saved successf', '2025-01-09 09:38:58', 1, 4, '103.10.28.129'),
(13, 'Slideshow [Welcome to barpeepal] Edit Successfully', '2025-01-09 09:41:40', 1, 4, '103.10.28.129'),
(14, 'Slideshow [Dining experience at it\'s best] Edit Successfully', '2025-01-09 09:41:53', 1, 4, '103.10.28.129'),
(15, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-09 09:51:06', 1, 4, '103.10.28.129'),
(16, 'Changes on Sub Package \'Deluxe\' has been saved successfully.', '2025-01-09 09:51:12', 1, 4, '103.10.28.129'),
(17, 'Changes on Sub Package \'Executive suite\' has been saved successfully.', '2025-01-09 09:52:11', 1, 4, '103.10.28.129'),
(18, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-09 09:52:21', 1, 4, '103.10.28.129'),
(19, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-09 09:52:26', 1, 4, '103.10.28.129'),
(20, 'Changes on Main service \'Swimming Pool\' has been saved successfully.', '2025-01-09 09:55:15', 1, 4, '103.10.28.129'),
(21, 'Changes on Main service \'Meeting & Events\' has been saved successfully.', '2025-01-09 09:56:50', 1, 4, '103.10.28.129'),
(22, 'Gallery [Home gallery]Data has added successfully.', '2025-01-09 10:21:11', 1, 3, '103.10.28.129'),
(23, 'Sub Gallery Image [1]Data has added successfully.', '2025-01-09 10:21:22', 1, 3, '103.10.28.129'),
(24, 'Sub Gallery Image [2]Data has added successfully.', '2025-01-09 10:21:22', 1, 3, '103.10.28.129'),
(25, 'Sub Gallery Image [3]Data has added successfully.', '2025-01-09 10:21:22', 1, 3, '103.10.28.129'),
(26, 'Sub Gallery Image [4]Data has added successfully.', '2025-01-09 10:21:22', 1, 3, '103.10.28.129'),
(27, 'Login: superadmin logged in.', '2025-01-09 11:50:34', 1, 1, '103.10.28.129'),
(28, 'Changes on Config \'Bar Beepal Resortaa\' has been saved successfully.', '2025-01-09 11:50:43', 1, 4, '103.10.28.129'),
(29, 'Changes on Article \'Welcome To An oasis in pokhara’s most exciting location\' has been saved successf', '2025-01-09 12:02:32', 1, 4, '103.10.28.129'),
(30, 'Changes on Sub Package \'ABC hall\' has been saved successfully.', '2025-01-09 12:15:21', 1, 4, '103.10.28.129'),
(31, 'Changes on Sub Package \'XYZ Hall\' has been saved successfully.', '2025-01-09 12:15:32', 1, 4, '103.10.28.129'),
(32, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-09 12:23:23', 1, 4, '103.10.28.129'),
(33, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-09 12:23:53', 1, 4, '103.10.28.129'),
(34, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-09 12:24:02', 1, 4, '103.10.28.129'),
(35, 'User [Bar Peepal Resort  ] Edit Successfully', '2025-01-09 13:01:29', 1, 4, '103.10.28.129'),
(36, 'Login: admin logged in.', '2025-01-13 12:10:28', 1, 1, '103.10.28.139'),
(37, 'Changes on Config \'Bar Beepal Resortaa\' has been saved successfully.', '2025-01-13 12:11:00', 1, 4, '103.10.28.139'),
(38, 'Changes on Config \'Bar Beepal Resortaa\' has been saved successfully.', '2025-01-13 12:19:59', 1, 4, '103.10.28.139'),
(39, 'Changes on Config \'Bar Beepal Resortaa\' has been saved successfully.', '2025-01-13 12:22:13', 1, 4, '103.10.28.139'),
(40, 'Changes on Article \'Welcome To An oasis in pokhara’s most exciting location\' has been saved successf', '2025-01-13 12:32:26', 1, 4, '103.10.28.139'),
(41, 'Changes on Article \'Welcome To An oasis in pokhara’s most exciting location\' has been saved successf', '2025-01-13 12:34:20', 1, 4, '103.10.28.139'),
(42, 'Changes on Config \'Bar Beepal Resortaa\' has been saved successfully.', '2025-01-13 12:35:28', 1, 4, '103.10.28.139'),
(43, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-13 12:40:32', 1, 4, '103.10.28.139'),
(44, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-13 12:41:12', 1, 4, '103.10.28.139'),
(45, 'Login: admin logged in.', '2025-01-13 13:15:33', 1, 1, '103.10.28.139'),
(46, 'Login: admin logged in.', '2025-01-15 15:24:40', 1, 1, '103.10.28.150'),
(47, 'Login: admin logged in.', '2025-01-15 15:32:08', 1, 1, '103.10.28.150'),
(48, 'Article \'test\' has added successfully.', '2025-01-15 16:02:24', 1, 3, '103.10.28.150'),
(49, 'Articles  [test]Data has deleted successfully.', '2025-01-15 16:04:05', 1, 6, '103.10.28.150'),
(50, 'Slideshows  [slide 222]Data has deleted successfully.', '2025-01-15 16:06:09', 1, 6, '103.10.28.150'),
(51, 'Slideshow  [slide 222]Data has deleted successfully.', '2025-01-15 16:06:09', 1, 6, '103.10.28.150'),
(52, 'Slideshows  [slide 1]Data has deleted successfully.', '2025-01-15 16:06:12', 1, 6, '103.10.28.150'),
(53, 'Slideshow  [slide 1]Data has deleted successfully.', '2025-01-15 16:06:12', 1, 6, '103.10.28.150'),
(54, 'Slideshow [Dining experience at it\'s best] Edit Successfully', '2025-01-15 16:14:50', 1, 4, '103.10.28.150'),
(55, 'Slideshow [Welcome to barpeepal] Edit Successfully', '2025-01-15 16:15:03', 1, 4, '103.10.28.150'),
(56, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-15 16:15:40', 1, 4, '103.10.28.150'),
(57, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-15 16:25:35', 1, 4, '103.10.28.150'),
(58, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-15 16:25:49', 1, 4, '103.10.28.150'),
(59, 'SocialNetworking [Expedia] Edit Successfully', '2025-01-15 16:29:31', 1, 4, '103.10.28.150'),
(60, 'SocialNetworking [goibibo] Edit Successfully', '2025-01-15 16:29:47', 1, 4, '103.10.28.150'),
(61, 'SocialNetworking [make my trip] Edit Successfully', '2025-01-15 16:30:02', 1, 4, '103.10.28.150'),
(62, 'SocialNetworking [booking] Edit Successfully', '2025-01-15 16:30:35', 1, 4, '103.10.28.150'),
(63, 'SocialNetworking [Trip advisor] Edit Successfully', '2025-01-15 16:30:52', 1, 4, '103.10.28.150'),
(64, 'Testimonial  []Data has deleted successfully.', '2025-01-15 16:31:09', 1, 6, '103.10.28.150'),
(65, 'Testimonial [John Smith] Edit Successfully', '2025-01-15 16:32:11', 1, 4, '103.10.28.150'),
(66, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-15 16:36:19', 1, 4, '103.10.28.150'),
(67, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-15 16:37:44', 1, 4, '103.10.28.150'),
(68, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-15 16:38:15', 1, 4, '103.10.28.150'),
(69, 'Changes on Article \'Kathmandu\' has been saved successfully.', '2025-01-15 16:38:51', 1, 4, '103.10.28.150'),
(70, 'Changes on Article \'Kathmandu\' has been saved successfully.', '2025-01-15 16:39:30', 1, 4, '103.10.28.150'),
(71, 'Changes on Article \'Welcome To An oasis in pokhara’s most exciting location\' has been saved successf', '2025-01-15 16:48:06', 1, 4, '103.10.28.150'),
(72, 'Sub Gallery Image  [1]Data has deleted successfully.', '2025-01-15 16:50:01', 1, 6, '103.10.28.150'),
(73, 'Sub Gallery Image  [fsgd]Data has deleted successfully.', '2025-01-15 16:50:08', 1, 6, '103.10.28.150'),
(74, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-15 16:50:10', 1, 6, '103.10.28.150'),
(75, 'Sub Gallery Image  [evetns]Data has deleted successfully.', '2025-01-15 16:50:10', 1, 6, '103.10.28.150'),
(76, 'Sub Gallery Image  [dining]Data has deleted successfully.', '2025-01-15 16:50:17', 1, 6, '103.10.28.150'),
(77, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-15 16:50:19', 1, 6, '103.10.28.150'),
(78, 'Sub Gallery Image  [dining]Data has deleted successfully.', '2025-01-15 16:50:19', 1, 6, '103.10.28.150'),
(79, 'Sub Gallery Image  [room]Data has deleted successfully.', '2025-01-15 16:50:24', 1, 6, '103.10.28.150'),
(80, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-15 16:50:26', 1, 6, '103.10.28.150'),
(81, 'Sub Gallery Image  [room]Data has deleted successfully.', '2025-01-15 16:50:26', 1, 6, '103.10.28.150'),
(82, 'Sub Gallery Image [room]Data has added successfully.', '2025-01-15 16:50:39', 1, 3, '103.10.28.150'),
(83, 'Sub Gallery Image  [2]Data has deleted successfully.', '2025-01-15 16:50:55', 1, 6, '103.10.28.150'),
(84, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-15 16:50:57', 1, 6, '103.10.28.150'),
(85, 'Sub Gallery Image  [3]Data has deleted successfully.', '2025-01-15 16:50:57', 1, 6, '103.10.28.150'),
(86, 'Sub Gallery Image  [4]Data has deleted successfully.', '2025-01-15 16:51:00', 1, 6, '103.10.28.150'),
(87, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-15 16:51:00', 1, 6, '103.10.28.150'),
(88, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-15 16:51:00', 1, 6, '103.10.28.150'),
(89, 'Sub Gallery Image [room]Data has added successfully.', '2025-01-15 16:51:23', 1, 3, '103.10.28.150'),
(90, 'Changes on Main service \'Swimming Pool\' has been saved successfully.', '2025-01-15 16:52:27', 1, 4, '103.10.28.150'),
(91, 'Changes on Main service \'Swimming Pool\' has been saved successfully.', '2025-01-15 16:52:55', 1, 4, '103.10.28.150'),
(92, 'Changes on Main service \'Meeting & Events\' has been saved successfully.', '2025-01-15 16:53:10', 1, 4, '103.10.28.150'),
(93, 'Login: admin logged in.', '2025-01-15 17:08:04', 1, 1, '103.10.28.150'),
(94, 'Changes on Article \'Welcome To An oasis in pokhara’s most exciting location\' has been saved successf', '2025-01-15 17:17:10', 1, 4, '103.10.28.150'),
(95, 'Changes on Main service \'Swimming Pool\' has been saved successfully.', '2025-01-15 17:20:33', 1, 4, '103.10.28.150'),
(96, 'Changes on Main service \'Meeting & Events\' has been saved successfully.', '2025-01-15 17:24:39', 1, 4, '103.10.28.150'),
(97, 'Changes on Main service \'Meeting & Events\' has been saved successfully.', '2025-01-15 17:24:59', 1, 4, '103.10.28.150'),
(98, 'Changes on Main service \'Swimming Pool\' has been saved successfully.', '2025-01-15 17:25:16', 1, 4, '103.10.28.150'),
(99, 'Changes on Article \'Kathmandu\' has been saved successfully.', '2025-01-15 17:46:32', 1, 4, '103.10.28.150'),
(100, 'Login: admin logged in.', '2025-01-16 11:39:20', 1, 1, '103.10.28.134'),
(101, 'Login: admin logged in.', '2025-01-16 11:59:11', 1, 1, '103.10.28.134'),
(102, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-16 12:16:17', 1, 4, '103.10.28.134'),
(103, 'Login: admin logged in.', '2025-01-16 12:16:59', 1, 1, '103.10.28.134'),
(104, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-16 12:17:44', 1, 4, '103.10.28.134'),
(105, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-16 12:18:59', 1, 4, '103.10.28.134'),
(106, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-16 12:19:19', 1, 4, '103.10.28.134'),
(107, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-16 12:20:30', 1, 4, '103.10.28.134'),
(108, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-16 12:20:49', 1, 4, '103.10.28.134'),
(109, 'Sub Package \'Interconnected Deluxe Room\' has added successfully.', '2025-01-16 12:21:57', 1, 3, '103.10.28.134'),
(110, 'Sub Package \'Junior Suite\' has added successfully.', '2025-01-16 12:22:43', 1, 3, '103.10.28.134'),
(111, 'Changes on Sub Package \'Interconnected Deluxe Room\' has been saved successfully.', '2025-01-16 12:24:01', 1, 4, '103.10.28.134'),
(112, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-16 12:24:15', 1, 4, '103.10.28.134'),
(113, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-16 12:34:43', 1, 4, '103.10.28.134'),
(114, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-16 12:35:06', 1, 4, '103.10.28.134'),
(115, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-16 12:36:03', 1, 4, '103.10.28.134'),
(116, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-16 12:36:42', 1, 4, '103.10.28.134'),
(117, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-16 12:37:11', 1, 4, '103.10.28.134'),
(118, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-16 12:37:25', 1, 4, '103.10.28.134'),
(119, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-16 12:37:56', 1, 4, '103.10.28.134'),
(120, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-16 12:38:17', 1, 4, '103.10.28.134'),
(121, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-16 12:39:05', 1, 4, '103.10.28.134'),
(122, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-16 12:39:35', 1, 4, '103.10.28.134'),
(123, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-16 12:39:55', 1, 4, '103.10.28.134'),
(124, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-16 12:40:49', 1, 4, '103.10.28.134'),
(125, 'Changes on Sub Package \'Interconnected Deluxe Room\' has been saved successfully.', '2025-01-16 12:41:57', 1, 4, '103.10.28.134'),
(126, 'Changes on Sub Package \'Interconnected Deluxe Room\' has been saved successfully.', '2025-01-16 12:42:09', 1, 4, '103.10.28.134'),
(127, 'Changes on Article \'About US\' has been saved successfully.', '2025-01-16 12:43:18', 1, 4, '103.10.28.134'),
(128, 'Login: admin logged in.', '2025-01-16 12:44:17', 1, 1, '103.10.28.134'),
(129, 'Changes on Article \'About US\' has been saved successfully.', '2025-01-16 12:49:17', 1, 4, '103.10.28.134'),
(130, 'Changes on Article \'About US\' has been saved successfully.', '2025-01-16 12:50:04', 1, 4, '103.10.28.134'),
(131, 'Changes on Article \'About US\' has been saved successfully.', '2025-01-16 12:50:25', 1, 4, '103.10.28.134'),
(132, 'Slideshow [Dining experience at it\'s best] Edit Successfully', '2025-01-16 12:50:45', 1, 4, '103.10.28.134'),
(133, 'Changes on Article \'About US\' has been saved successfully.', '2025-01-16 12:51:04', 1, 4, '103.10.28.134'),
(134, 'Slideshow [Welcome to barpeepal] Edit Successfully', '2025-01-16 12:51:10', 1, 4, '103.10.28.134'),
(135, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-16 12:51:55', 1, 4, '103.10.28.134'),
(136, 'Changes on Article \'About US\' has been saved successfully.', '2025-01-16 12:51:56', 1, 4, '103.10.28.134'),
(137, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-16 12:52:17', 1, 4, '103.10.28.134'),
(138, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-16 12:52:34', 1, 4, '103.10.28.134'),
(139, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-16 12:53:11', 1, 4, '103.10.28.134'),
(140, 'Changes on Main service \'Meeting & Events\' has been saved successfully.', '2025-01-16 12:53:44', 1, 4, '103.10.28.134'),
(141, 'Changes on Article \'About ss\' has been saved successfully.', '2025-01-16 12:54:11', 1, 4, '103.10.28.134'),
(142, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-16 12:54:18', 1, 4, '103.10.28.134'),
(143, 'Changes on Main service \'Swimming Pool\' has been saved successfully.', '2025-01-16 12:54:28', 1, 4, '103.10.28.134'),
(144, 'Changes on Main service \'Meeting & Events\' has been saved successfully.', '2025-01-16 12:54:45', 1, 4, '103.10.28.134'),
(145, 'Slideshow [Dining experience at it\'s best] Edit Successfully', '2025-01-16 12:55:04', 1, 4, '103.10.28.134'),
(146, 'Slideshow [Welcome to barpeepal] Edit Successfully', '2025-01-16 12:55:21', 1, 4, '103.10.28.134'),
(147, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-16 12:55:38', 1, 4, '103.10.28.134'),
(148, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-16 12:55:48', 1, 4, '103.10.28.134'),
(149, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-16 12:55:53', 1, 4, '103.10.28.134'),
(150, 'Changes on Sub Package \'Interconnected Deluxe Room\' has been saved successfully.', '2025-01-16 12:56:04', 1, 4, '103.10.28.134'),
(151, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-16 12:56:18', 1, 4, '103.10.28.134'),
(152, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-16 12:56:19', 1, 4, '103.10.28.134'),
(153, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-16 12:56:38', 1, 4, '103.10.28.134'),
(154, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-16 12:56:42', 1, 4, '103.10.28.134'),
(155, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-16 12:57:04', 1, 4, '103.10.28.134'),
(156, 'Changes on Article \'Kathmandu\' has been saved successfully.', '2025-01-16 12:57:27', 1, 4, '103.10.28.134'),
(157, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-16 12:57:33', 1, 4, '103.10.28.134'),
(158, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-16 13:00:06', 1, 4, '103.10.28.134'),
(159, 'Changes on Sub Package \'Lamjung Restaurant\' has been saved successfully.', '2025-01-16 13:01:36', 1, 4, '103.10.28.134'),
(160, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-16 13:03:35', 1, 4, '103.10.28.134'),
(161, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-16 13:04:08', 1, 4, '103.10.28.134'),
(162, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-16 13:04:27', 1, 4, '103.10.28.134'),
(163, 'Changes on Sub Package \'Lamjung Restaurant\' has been saved successfully.', '2025-01-16 13:05:13', 1, 4, '103.10.28.134'),
(164, 'Changes on Sub Package \'Lamjung Restaurant\' has been saved successfully.', '2025-01-16 13:06:18', 1, 4, '103.10.28.134'),
(165, 'Changes on Sub Package \'Lamjung Restaurant\' has been saved successfully.', '2025-01-16 13:06:33', 1, 4, '103.10.28.134'),
(166, 'Testimonial [John Smith] Edit Successfully', '2025-01-16 13:07:27', 1, 4, '103.10.28.134'),
(167, 'Changes on Sub Package \'Lamjung Restaurant\' has been saved successfully.', '2025-01-16 13:07:32', 1, 4, '103.10.28.134'),
(168, 'Sub Gallery Image  [room]Data has deleted successfully.', '2025-01-16 13:07:37', 1, 6, '103.10.28.134'),
(169, 'Changes on Sub Package \'Lamjung Restaurant\' has been saved successfully.', '2025-01-16 13:08:01', 1, 4, '103.10.28.134'),
(170, 'Sub Gallery Image [home image]Data has added successfully.', '2025-01-16 13:08:12', 1, 3, '103.10.28.134'),
(171, 'Changes on Article \'Kathmandu\' has been saved successfully.', '2025-01-16 13:08:53', 1, 4, '103.10.28.134'),
(172, 'Changes on Article \'Mahendra Cagee\' has been saved successfully.', '2025-01-16 13:09:06', 1, 4, '103.10.28.134'),
(173, 'Articles  [test title]Data has deleted successfully.', '2025-01-16 13:09:13', 1, 6, '103.10.28.134'),
(174, 'Changes on Article \'Bhaktapur\' has been saved successfully.', '2025-01-16 13:09:29', 1, 4, '103.10.28.134'),
(175, 'SocialNetworking [Expedia] Edit Successfully', '2025-01-16 13:10:11', 1, 4, '103.10.28.134'),
(176, 'Services [High Speed Internet] Edit Successfully', '2025-01-16 13:10:24', 1, 4, '103.10.28.134'),
(177, 'SocialNetworking [goibibo] Edit Successfully', '2025-01-16 13:10:27', 1, 4, '103.10.28.134'),
(178, 'SocialNetworking [make my trip] Edit Successfully', '2025-01-16 13:10:41', 1, 4, '103.10.28.134'),
(179, 'SocialNetworking [booking] Edit Successfully', '2025-01-16 13:10:55', 1, 4, '103.10.28.134'),
(180, 'SocialNetworking [Trip advisor] Edit Successfully', '2025-01-16 13:11:11', 1, 4, '103.10.28.134'),
(181, 'Services [Parking Space] Edit Successfully', '2025-01-16 13:11:26', 1, 4, '103.10.28.134'),
(182, 'Services [Parking Space] Edit Successfully', '2025-01-16 13:12:11', 1, 4, '103.10.28.134'),
(183, 'Services [Gym] Edit Successfully', '2025-01-16 13:14:19', 1, 4, '103.10.28.134'),
(184, 'Services [Spa, Sauna & Steam] Edit Successfully', '2025-01-16 13:16:47', 1, 4, '103.10.28.134'),
(185, 'Services [Spa, Sauna & Steam] Edit Successfully', '2025-01-16 13:17:13', 1, 4, '103.10.28.134'),
(186, 'Services [Swimming Pool] Edit Successfully', '2025-01-16 13:17:56', 1, 4, '103.10.28.134'),
(187, 'Services [Coffee Shop] Edit Successfully', '2025-01-16 13:18:29', 1, 4, '103.10.28.134'),
(188, 'Services [Gym] Edit Successfully', '2025-01-16 13:18:51', 1, 4, '103.10.28.134'),
(189, 'Services [Parking Space] Edit Successfully', '2025-01-16 13:21:42', 1, 4, '103.10.28.134'),
(190, 'Services [Spa, Sauna & Steam] Edit Successfully', '2025-01-16 13:22:55', 1, 4, '103.10.28.134'),
(191, 'Services [Spa, Sauna & Steam] Edit Successfully', '2025-01-16 13:23:06', 1, 4, '103.10.28.134'),
(192, 'Services [Spa, Sauna & Steam] Edit Successfully', '2025-01-16 13:23:16', 1, 4, '103.10.28.134'),
(193, 'Services [Big Garden] Edit Successfully', '2025-01-16 13:24:07', 1, 4, '103.10.28.134'),
(194, 'Services [Airport pickup & drop] Edit Successfully', '2025-01-16 13:25:08', 1, 4, '103.10.28.134'),
(195, 'Services [Swimming Pool] Edit Successfully', '2025-01-16 13:26:58', 1, 4, '103.10.28.134'),
(196, 'Services [Swimming Pool] Edit Successfully', '2025-01-16 13:27:08', 1, 4, '103.10.28.134'),
(197, 'Services [Airport pickup & drop] Edit Successfully', '2025-01-16 13:27:47', 1, 4, '103.10.28.134'),
(198, 'Services [Parking Space] Edit Successfully', '2025-01-16 13:28:42', 1, 4, '103.10.28.134'),
(199, 'Services [Airport pickup & drop] Edit Successfully', '2025-01-16 13:29:08', 1, 4, '103.10.28.134'),
(200, 'Services [Parking Space] Edit Successfully', '2025-01-16 13:29:33', 1, 4, '103.10.28.134'),
(201, 'Services [Parking Space] Edit Successfully', '2025-01-16 13:29:42', 1, 4, '103.10.28.134'),
(202, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-16 13:29:48', 1, 4, '103.10.28.134'),
(203, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-16 13:30:29', 1, 4, '103.10.28.134'),
(204, 'Services [Big Garden] Edit Successfully', '2025-01-16 13:31:06', 1, 4, '103.10.28.134'),
(205, 'Services [Spa, Sauna & Steam] Edit Successfully', '2025-01-16 13:31:37', 1, 4, '103.10.28.134'),
(206, 'Services [Big Garden] Edit Successfully', '2025-01-16 13:32:09', 1, 4, '103.10.28.134'),
(207, 'Services [Big Garden] Edit Successfully', '2025-01-16 13:35:58', 1, 4, '103.10.28.134'),
(208, 'Services [Coffee Shop] Edit Successfully', '2025-01-16 13:36:08', 1, 4, '103.10.28.134'),
(209, 'Services [Spa, Sauna & Steam] Edit Successfully', '2025-01-16 13:36:16', 1, 4, '103.10.28.134'),
(210, 'Services [Spa, Sauna & Steam] Edit Successfully', '2025-01-16 13:37:21', 1, 4, '103.10.28.134'),
(211, 'Services [Spa, Sauna & Steam] Edit Successfully', '2025-01-16 13:37:34', 1, 4, '103.10.28.134'),
(212, 'Services [Spa, Sauna & Steam] Edit Successfully', '2025-01-16 13:38:02', 1, 4, '103.10.28.134'),
(213, 'Services [Big Garden] Edit Successfully', '2025-01-16 13:39:14', 1, 4, '103.10.28.134'),
(214, 'Services [Airport pickup & drop] Edit Successfully', '2025-01-16 13:40:19', 1, 4, '103.10.28.134'),
(215, 'Services [Coffee Shop] Edit Successfully', '2025-01-16 13:41:33', 1, 4, '103.10.28.134'),
(216, 'Services [Airport pickup & drop] Edit Successfully', '2025-01-16 13:42:38', 1, 4, '103.10.28.134'),
(217, 'Services [Pickup & drop] Edit Successfully', '2025-01-16 13:44:15', 1, 4, '103.10.28.134'),
(218, 'Login: admin logged in.', '2025-01-16 14:33:07', 1, 1, '103.10.28.134'),
(219, 'Services [Pickup & drop] Edit Successfully', '2025-01-16 14:34:14', 1, 4, '103.10.28.134'),
(220, 'Services [Pickup & drop] Edit Successfully', '2025-01-16 14:34:28', 1, 4, '103.10.28.134'),
(221, 'Services [Gym Center] Edit Successfully', '2025-01-16 14:35:01', 1, 4, '103.10.28.134'),
(222, 'Changes on Article \'Gupteshwor Cave\' has been saved successfully.', '2025-01-16 14:36:13', 1, 4, '103.10.28.134'),
(223, 'Changes on Article \'Mahendra Cave\' has been saved successfully.', '2025-01-16 14:36:56', 1, 4, '103.10.28.134'),
(224, 'Article \'Fewa Lake\' has added successfully.', '2025-01-16 14:38:00', 1, 3, '103.10.28.134'),
(225, 'Article \'Sarangkot\' has added successfully.', '2025-01-16 14:38:21', 1, 3, '103.10.28.134'),
(226, 'Article \'Peace Pagoda\' has added successfully.', '2025-01-16 14:38:44', 1, 3, '103.10.28.134'),
(227, 'Article \'International Mountain Museum\' has added successfully.', '2025-01-16 14:39:19', 1, 3, '103.10.28.134'),
(228, 'Article \'Davis Falls\' has added successfully.', '2025-01-16 14:39:48', 1, 3, '103.10.28.134'),
(229, 'Article \'Bindhyabasini Temple\' has added successfully.', '2025-01-16 14:40:07', 1, 3, '103.10.28.134'),
(230, 'Menu [About us] Edit Successfully', '2025-01-16 14:41:42', 1, 4, '103.10.28.134'),
(231, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-16 14:44:20', 1, 4, '103.10.28.134'),
(232, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-16 14:47:48', 1, 4, '103.10.28.134'),
(233, 'Changes on Article \'Phewa Lake\' has been saved successfully.', '2025-01-16 14:50:52', 1, 4, '103.10.28.134'),
(234, 'Changes on Article \'Phewa Lake\' has been saved successfully.', '2025-01-16 14:54:05', 1, 4, '103.10.28.134'),
(235, 'Changes on Article \'Phewa Lake\' has been saved successfully.', '2025-01-16 14:55:03', 1, 4, '103.10.28.134'),
(236, 'Changes on Article \'Peace Pagoda\' has been saved successfully.', '2025-01-16 15:02:31', 1, 4, '103.10.28.134'),
(237, 'Changes on Article \'Peace Pagoda\' has been saved successfully.', '2025-01-16 15:07:30', 1, 4, '103.10.28.134'),
(238, 'Changes on Article \'Bindhyabasini Temple\' has been saved successfully.', '2025-01-16 15:09:41', 1, 4, '103.10.28.134'),
(239, 'Changes on Article \'Gupteshwor Mahadev Cave\' has been saved successfully.', '2025-01-16 15:11:24', 1, 4, '103.10.28.134'),
(240, 'Changes on Article \'Mahendra Cave\' has been saved successfully.', '2025-01-16 15:12:48', 1, 4, '103.10.28.134'),
(241, 'Changes on Article \'Davis Falls\' has been saved successfully.', '2025-01-16 15:14:27', 1, 4, '103.10.28.134'),
(242, 'Changes on Article \'Sarangkot\' has been saved successfully.', '2025-01-16 15:16:34', 1, 4, '103.10.28.134'),
(243, 'Changes on Article \'International Mountain Museum\' has been saved successfully.', '2025-01-16 15:17:56', 1, 4, '103.10.28.134'),
(244, 'SocialNetworking [Facebook] Edit Successfully', '2025-01-16 15:19:15', 1, 4, '103.10.28.134'),
(245, 'SocialNetworking [Instagram] Edit Successfully', '2025-01-16 15:19:37', 1, 4, '103.10.28.134'),
(246, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-16 15:36:57', 1, 4, '103.10.28.134'),
(247, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-16 15:37:24', 1, 4, '103.10.28.134'),
(248, 'Changes on Sub Package \'Interconnected Deluxe Room\' has been saved successfully.', '2025-01-16 15:37:41', 1, 4, '103.10.28.134'),
(249, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-16 15:38:06', 1, 4, '103.10.28.134'),
(250, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-16 15:38:24', 1, 4, '103.10.28.134'),
(251, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-16 15:39:13', 1, 4, '103.10.28.134'),
(252, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-16 15:40:07', 1, 4, '103.10.28.134'),
(253, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-16 15:40:18', 1, 4, '103.10.28.134'),
(254, 'Login: admin logged in.', '2025-01-16 16:23:29', 1, 1, '103.10.28.134'),
(255, 'Changes on Sub Package \'ABC hall\' has been saved successfully.', '2025-01-16 16:41:05', 1, 4, '103.10.28.134'),
(256, 'Login: admin logged in.', '2025-01-16 16:46:19', 1, 1, '103.10.28.134'),
(257, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-16 16:53:20', 1, 4, '103.10.28.134'),
(258, 'Changes on Sub Package \'Lamjung Restaurant\' has been saved successfully.', '2025-01-16 16:53:33', 1, 4, '103.10.28.134'),
(259, 'Changes on Sub Package \'ABC hall\' has been saved successfully.', '2025-01-16 16:58:35', 1, 4, '103.10.28.134'),
(260, 'SubPackage Gallery Image [restro]Data has deleted successfully.', '2025-01-16 17:00:41', 1, 6, '103.10.28.134'),
(261, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-16 17:00:43', 1, 6, '103.10.28.134'),
(262, 'SubPackage Gallery Image [restro]Data has deleted successfully.', '2025-01-16 17:00:43', 1, 6, '103.10.28.134'),
(263, 'Sub Package Image [Chautari Restro & Bar]Data has added successfully.', '2025-01-16 17:01:34', 1, 3, '103.10.28.134'),
(264, 'Sub Package Image [Chautari Restro & Bar]Data has added successfully.', '2025-01-16 17:01:34', 1, 3, '103.10.28.134'),
(265, 'SubPackage Gallery Image [lamjung]Data has deleted successfully.', '2025-01-16 17:01:51', 1, 6, '103.10.28.134'),
(266, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-16 17:01:54', 1, 6, '103.10.28.134'),
(267, 'SubPackage Gallery Image [lamjung]Data has deleted successfully.', '2025-01-16 17:01:54', 1, 6, '103.10.28.134'),
(268, 'Sub Package Image [Lamjung Restaurant]Data has added successfully.', '2025-01-16 17:02:17', 1, 3, '103.10.28.134'),
(269, 'Sub Package Image [Lamjung Restaurant]Data has added successfully.', '2025-01-16 17:02:17', 1, 3, '103.10.28.134'),
(270, 'Sub Package Image [Lamjung Restaurant]Data has added successfully.', '2025-01-16 17:02:17', 1, 3, '103.10.28.134'),
(271, 'Sub Package Image [Lamjung Restaurant]Data has added successfully.', '2025-01-16 17:02:17', 1, 3, '103.10.28.134'),
(272, 'Login: admin logged in.', '2025-01-16 17:05:51', 1, 1, '103.10.28.134'),
(273, 'Menu [About Us] Edit Successfully', '2025-01-16 17:06:02', 1, 4, '103.10.28.134'),
(274, 'Menu [Rooms] CreatedData has added successfully.', '2025-01-16 17:06:27', 1, 3, '103.10.28.134'),
(275, 'Menu [Restaurant] CreatedData has added successfully.', '2025-01-16 17:07:09', 1, 3, '103.10.28.134'),
(276, 'Menu [Restaurant & Bar] Edit Successfully', '2025-01-16 17:07:26', 1, 4, '103.10.28.134'),
(277, 'Menu [Meeting & Events] CreatedData has added successfully.', '2025-01-16 17:07:58', 1, 3, '103.10.28.134'),
(278, 'Changes on Main service \'Meeting & Events\' has been saved successfully.', '2025-01-16 17:15:12', 1, 4, '103.10.28.134'),
(279, 'Changes on Main service \'Swimming Pool\' has been saved successfully.', '2025-01-16 17:16:07', 1, 4, '103.10.28.134'),
(280, 'Servicess  [Breakfast]Data has deleted successfully.', '2025-01-16 17:16:26', 1, 6, '103.10.28.134'),
(281, 'Services  [Breakfast]Data has deleted successfully.', '2025-01-16 17:16:26', 1, 6, '103.10.28.134'),
(282, 'Changes on Article \'Phewa Lake\' has been saved successfully.', '2025-01-16 17:42:32', 1, 4, '103.10.28.134'),
(283, 'Changes on Article \'Peace Pagoda\' has been saved successfully.', '2025-01-16 17:42:44', 1, 4, '103.10.28.134'),
(284, 'Changes on Article \'Bindhyabasini Temple\' has been saved successfully.', '2025-01-16 17:42:56', 1, 4, '103.10.28.134'),
(285, 'Changes on Article \'Gupteshwor Mahadev Cave\' has been saved successfully.', '2025-01-16 17:43:11', 1, 4, '103.10.28.134'),
(286, 'Changes on Article \'Mahendra Cave\' has been saved successfully.', '2025-01-16 17:43:25', 1, 4, '103.10.28.134'),
(287, 'Changes on Article \'Davis Falls\' has been saved successfully.', '2025-01-16 17:43:38', 1, 4, '103.10.28.134'),
(288, 'Changes on Article \'Sarangkot\' has been saved successfully.', '2025-01-16 17:43:51', 1, 4, '103.10.28.134'),
(289, 'Changes on Article \'International Mountain Museum\' has been saved successfully.', '2025-01-16 17:44:05', 1, 4, '103.10.28.134'),
(290, 'Changes on Article \'Phewa Lake\' has been saved successfully.', '2025-01-16 17:54:56', 1, 4, '103.10.28.134'),
(291, 'Changes on Article \'Peace Pagoda\' has been saved successfully.', '2025-01-16 17:55:17', 1, 4, '103.10.28.134'),
(292, 'Changes on Article \'Bindhyabasini Temple\' has been saved successfully.', '2025-01-16 17:55:36', 1, 4, '103.10.28.134'),
(293, 'Changes on Article \'Gupteshwor Mahadev Cave\' has been saved successfully.', '2025-01-16 17:55:55', 1, 4, '103.10.28.134'),
(294, 'Changes on Article \'Mahendra Cave\' has been saved successfully.', '2025-01-16 17:56:17', 1, 4, '103.10.28.134'),
(295, 'Changes on Article \'Mahendra Cave\' has been saved successfully.', '2025-01-16 17:56:40', 1, 4, '103.10.28.134'),
(296, 'Changes on Article \'Mahendra Cave\' has been saved successfully.', '2025-01-16 17:57:06', 1, 4, '103.10.28.134'),
(297, 'Changes on Article \'Davis Falls\' has been saved successfully.', '2025-01-16 17:57:25', 1, 4, '103.10.28.134'),
(298, 'Changes on Article \'Sarangkot\' has been saved successfully.', '2025-01-16 17:57:41', 1, 4, '103.10.28.134'),
(299, 'Changes on Article \'International Mountain Museum\' has been saved successfully.', '2025-01-16 17:57:57', 1, 4, '103.10.28.134'),
(300, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-16 18:01:27', 1, 4, '103.10.28.134'),
(301, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-16 18:01:53', 1, 4, '103.10.28.134'),
(302, 'Login: admin logged in.', '2025-01-17 11:40:30', 1, 1, '103.10.28.143'),
(303, 'Login: admin logged in.', '2025-01-17 11:50:28', 1, 1, '103.10.28.143'),
(304, 'Features [Airport pickup & drop]Data has added successfully.', '2025-01-17 11:51:40', 1, 3, '103.10.28.143'),
(305, 'Features [High Speed Internet]Data has added successfully.', '2025-01-17 11:52:36', 1, 3, '103.10.28.143'),
(306, 'Features [Parking Space]Data has added successfully.', '2025-01-17 11:52:53', 1, 3, '103.10.28.143'),
(307, 'Features [Welcome Drink on Arrival]Data has added successfully.', '2025-01-17 11:58:41', 1, 3, '103.10.28.143'),
(308, 'Services [Parking Space] Edit Successfully', '2025-01-17 12:00:32', 1, 4, '103.10.28.143'),
(309, 'Services [High Speed Internet] Edit Successfully', '2025-01-17 12:01:11', 1, 4, '103.10.28.143'),
(310, 'Services [Pickup & drop] Edit Successfully', '2025-01-17 12:01:37', 1, 4, '103.10.28.143'),
(311, 'Services [Welcome Drink on Arrival]Data has added successfully.', '2025-01-17 12:02:24', 1, 3, '103.10.28.143'),
(312, 'Services [Spa] Edit Successfully', '2025-01-17 12:03:36', 1, 4, '103.10.28.143'),
(313, 'Services [Spa] Edit Successfully', '2025-01-17 12:04:15', 1, 4, '103.10.28.143'),
(314, 'Services [Spa] Edit Successfully', '2025-01-17 12:04:42', 1, 4, '103.10.28.143'),
(315, 'Services [Steam]Data has added successfully.', '2025-01-17 12:14:19', 1, 3, '103.10.28.143'),
(316, 'Services [Sauna]Data has added successfully.', '2025-01-17 12:14:35', 1, 3, '103.10.28.143'),
(317, 'Services [Welcome Drink on Arrival] Edit Successfully', '2025-01-17 12:17:22', 1, 4, '103.10.28.143'),
(318, 'Services [Welcome Drink ] Edit Successfully', '2025-01-17 12:18:06', 1, 4, '103.10.28.143'),
(319, 'Services [Welcome Drink ] Edit Successfully', '2025-01-17 12:18:23', 1, 4, '103.10.28.143'),
(320, 'Services [Welcome Drink ] Edit Successfully', '2025-01-17 12:18:59', 1, 4, '103.10.28.143'),
(321, 'Services [Swimming Pool] Edit Successfully', '2025-01-17 12:20:12', 1, 4, '103.10.28.143'),
(322, 'Services [Coffee Shop] Edit Successfully', '2025-01-17 12:21:32', 1, 4, '103.10.28.143'),
(323, 'Services [Gym Center] Edit Successfully', '2025-01-17 12:22:25', 1, 4, '103.10.28.143'),
(324, 'Services [Daily Housekeeping]Data has added successfully.', '2025-01-17 12:23:41', 1, 3, '103.10.28.143'),
(325, 'Services [24hrs Room Service]Data has added successfully.', '2025-01-17 12:25:08', 1, 3, '103.10.28.143'),
(326, 'Services [Travel Desk]Data has added successfully.', '2025-01-17 12:27:54', 1, 3, '103.10.28.143'),
(327, 'Services [Concierge Service]Data has added successfully.', '2025-01-17 12:29:54', 1, 3, '103.10.28.143'),
(328, 'Services [Currency Exchange]Data has added successfully.', '2025-01-17 12:33:23', 1, 3, '103.10.28.143'),
(329, 'Services [Doctor on Call]Data has added successfully.', '2025-01-17 12:33:40', 1, 3, '103.10.28.143'),
(330, 'Services [Mini Bar]Data has added successfully.', '2025-01-17 12:33:57', 1, 3, '103.10.28.143'),
(331, 'Services [Card Accepted]Data has added successfully.', '2025-01-17 12:41:05', 1, 3, '103.10.28.143'),
(332, 'Services [Smoking Zone]Data has added successfully.', '2025-01-17 12:41:23', 1, 3, '103.10.28.143'),
(333, 'Services [24hrs Front Desk]Data has added successfully.', '2025-01-17 12:41:46', 1, 3, '103.10.28.143'),
(334, 'Services [Hot & Cold Water]Data has added successfully.', '2025-01-17 12:42:11', 1, 3, '103.10.28.143'),
(335, 'Services [Laundry Service]Data has added successfully.', '2025-01-17 12:43:00', 1, 3, '103.10.28.143'),
(336, 'Services [Fire Extinguisher ]Data has added successfully.', '2025-01-17 12:43:47', 1, 3, '103.10.28.143'),
(337, 'Services [Electricity Backup]Data has added successfully.', '2025-01-17 12:44:12', 1, 3, '103.10.28.143'),
(338, 'Services [Restaurant]Data has added successfully.', '2025-01-17 12:47:02', 1, 3, '103.10.28.143'),
(339, 'Services [Event Hall]Data has added successfully.', '2025-01-17 12:53:13', 1, 3, '103.10.28.143'),
(340, 'Services [CCTV Security]Data has added successfully.', '2025-01-17 12:53:29', 1, 3, '103.10.28.143'),
(341, 'Features  [Welcome Drink on Arrival]Data has deleted successfully.', '2025-01-17 13:01:11', 1, 6, '103.10.28.143'),
(342, 'Features  []Data has deleted successfully.', '2025-01-17 13:01:11', 1, 6, '103.10.28.143'),
(343, 'Features  []Data has deleted successfully.', '2025-01-17 13:01:22', 1, 6, '103.10.28.143'),
(344, 'Features  [Airport pickup & drop]Data has deleted successfully.', '2025-01-17 13:01:22', 1, 6, '103.10.28.143'),
(345, 'Features  []Data has deleted successfully.', '2025-01-17 13:01:27', 1, 6, '103.10.28.143'),
(346, 'Features  []Data has deleted successfully.', '2025-01-17 13:01:27', 1, 6, '103.10.28.143'),
(347, 'Features  [Unlimited Wifi]Data has deleted successfully.', '2025-01-17 13:01:27', 1, 6, '103.10.28.143'),
(348, 'Features  []Data has deleted successfully.', '2025-01-17 13:01:34', 1, 6, '103.10.28.143'),
(349, 'Features  []Data has deleted successfully.', '2025-01-17 13:01:34', 1, 6, '103.10.28.143'),
(350, 'Features  [Gym Center]Data has deleted successfully.', '2025-01-17 13:01:34', 1, 6, '103.10.28.143'),
(351, 'Features  []Data has deleted successfully.', '2025-01-17 13:01:34', 1, 6, '103.10.28.143'),
(352, 'Services [Swimming Pool] Edit Successfully', '2025-01-17 13:02:09', 1, 4, '103.10.28.143'),
(353, 'Services [Parking Space] Edit Successfully', '2025-01-17 13:02:22', 1, 4, '103.10.28.143'),
(354, 'Services [High Speed Internet] Edit Successfully', '2025-01-17 13:02:34', 1, 4, '103.10.28.143'),
(355, 'Services [Spa] Edit Successfully', '2025-01-17 13:02:47', 1, 4, '103.10.28.143'),
(356, 'Services [Gym Center] Edit Successfully', '2025-01-17 13:03:03', 1, 4, '103.10.28.143'),
(357, 'Features  [Gaming Zone]Data has deleted successfully.', '2025-01-17 13:03:35', 1, 6, '103.10.28.143'),
(358, 'Features  []Data has deleted successfully.', '2025-01-17 13:03:39', 1, 6, '103.10.28.143'),
(359, 'Features  [Transport]Data has deleted successfully.', '2025-01-17 13:03:39', 1, 6, '103.10.28.143'),
(360, 'Features  []Data has deleted successfully.', '2025-01-17 13:03:44', 1, 6, '103.10.28.143'),
(361, 'Features  []Data has deleted successfully.', '2025-01-17 13:03:44', 1, 6, '103.10.28.143'),
(362, 'Features  [Parking Space]Data has deleted successfully.', '2025-01-17 13:03:44', 1, 6, '103.10.28.143'),
(363, 'Features  []Data has deleted successfully.', '2025-01-17 13:03:50', 1, 6, '103.10.28.143'),
(364, 'Features  []Data has deleted successfully.', '2025-01-17 13:03:50', 1, 6, '103.10.28.143'),
(365, 'Features  []Data has deleted successfully.', '2025-01-17 13:03:50', 1, 6, '103.10.28.143'),
(366, 'Features  [Breakfast]Data has deleted successfully.', '2025-01-17 13:03:50', 1, 6, '103.10.28.143'),
(367, 'Features [Jacuzzi] Edit Successfully', '2025-01-17 13:05:18', 1, 4, '103.10.28.143'),
(368, 'Features [Bathtub] Edit Successfully', '2025-01-17 13:11:26', 1, 4, '103.10.28.143'),
(369, 'Features [Air Conditioner]Data has added successfully.', '2025-01-17 13:11:51', 1, 3, '103.10.28.143'),
(370, 'Features [Fruit Basket]Data has added successfully.', '2025-01-17 13:12:05', 1, 3, '103.10.28.143'),
(371, 'Features [Hair Dryer]Data has added successfully.', '2025-01-17 13:12:17', 1, 3, '103.10.28.143'),
(372, 'Features [Seperate Living Area]Data has added successfully.', '2025-01-17 13:12:33', 1, 3, '103.10.28.143'),
(373, 'Features [Seating Area]Data has added successfully.', '2025-01-17 13:12:47', 1, 3, '103.10.28.143'),
(374, 'Features [Satellite TV]Data has added successfully.', '2025-01-17 13:13:30', 1, 3, '103.10.28.143'),
(375, 'Features [Work Desk]Data has added successfully.', '2025-01-17 13:14:41', 1, 3, '103.10.28.143'),
(376, 'Features [Attached Bathroom]Data has added successfully.', '2025-01-17 13:15:40', 1, 3, '103.10.28.143'),
(377, 'Features [Private Balcony]Data has added successfully.', '2025-01-17 13:16:28', 1, 3, '103.10.28.143'),
(378, 'Features [Tea/Coffee Maker]Data has added successfully.', '2025-01-17 13:17:36', 1, 3, '103.10.28.143'),
(379, 'Features  [Tea/Coffee Maker]Data has deleted successfully.', '2025-01-17 13:17:57', 1, 6, '103.10.28.143'),
(380, 'Features [Tea/Coffee Maker]Data has added successfully.', '2025-01-17 13:18:12', 1, 3, '103.10.28.143'),
(381, 'Features [Toiletries]Data has added successfully.', '2025-01-17 13:19:29', 1, 3, '103.10.28.143'),
(382, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-17 13:20:07', 1, 4, '103.10.28.143'),
(383, 'Features [Work Desk] Edit Successfully', '2025-01-17 13:21:46', 1, 4, '103.10.28.143'),
(384, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-17 13:22:04', 1, 4, '103.10.28.143'),
(385, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-17 13:23:13', 1, 4, '103.10.28.143'),
(386, 'Features [High Speed Internet] Edit Successfully', '2025-01-17 13:29:54', 1, 4, '103.10.28.143'),
(387, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-17 13:30:18', 1, 4, '103.10.28.143'),
(388, 'Features [High Speed Internet] Edit Successfully', '2025-01-17 13:35:15', 1, 4, '103.10.28.143'),
(389, 'Features [Air Conditioner] Edit Successfully', '2025-01-17 13:35:59', 1, 4, '103.10.28.143'),
(390, 'Features [Bathtub] Edit Successfully', '2025-01-17 13:36:23', 1, 4, '103.10.28.143'),
(391, 'Features [Fruit Basket] Edit Successfully', '2025-01-17 13:37:01', 1, 4, '103.10.28.143'),
(392, 'Features [Satellite TV] Edit Successfully', '2025-01-17 13:37:27', 1, 4, '103.10.28.143'),
(393, 'Features [Hair Dryer] Edit Successfully', '2025-01-17 13:37:50', 1, 4, '103.10.28.143'),
(394, 'Features  [Shower Bathtub]Data has deleted successfully.', '2025-01-17 13:38:48', 1, 6, '103.10.28.143'),
(395, 'Features [Attached Bathroom] Edit Successfully', '2025-01-17 13:38:56', 1, 4, '103.10.28.143'),
(396, 'Features [Jacuzzi] Edit Successfully', '2025-01-17 13:41:15', 1, 4, '103.10.28.143'),
(397, 'Features [Toiletries] Edit Successfully', '2025-01-17 13:41:55', 1, 4, '103.10.28.143'),
(398, 'Features [Tea/Coffee Maker] Edit Successfully', '2025-01-17 13:43:03', 1, 4, '103.10.28.143'),
(399, 'Features [Jacuzzi] Edit Successfully', '2025-01-17 13:44:25', 1, 4, '103.10.28.143'),
(400, 'Features [Telephone]Data has added successfully.', '2025-01-17 13:45:45', 1, 3, '103.10.28.143'),
(401, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-17 13:46:04', 1, 4, '103.10.28.143'),
(402, 'Features [Work Desk] Edit Successfully', '2025-01-17 13:47:28', 1, 4, '103.10.28.143'),
(403, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-17 13:51:29', 1, 4, '103.10.28.143'),
(404, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-17 13:52:28', 1, 4, '103.10.28.143'),
(405, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-17 13:53:37', 1, 4, '103.10.28.143'),
(406, 'SubPackage Gallery Image [test]Data has deleted successfully.', '2025-01-17 13:55:24', 1, 6, '103.10.28.143'),
(407, 'SubPackage Gallery Image [room]Data has deleted successfully.', '2025-01-17 13:56:20', 1, 6, '103.10.28.143'),
(408, 'SubPackage Gallery Image [test]Data has deleted successfully.', '2025-01-17 13:56:49', 1, 6, '103.10.28.143'),
(409, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-17 13:56:54', 1, 6, '103.10.28.143'),
(410, 'SubPackage Gallery Image [room]Data has deleted successfully.', '2025-01-17 13:56:54', 1, 6, '103.10.28.143'),
(411, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2025-01-17 13:58:29', 1, 3, '103.10.28.143'),
(412, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2025-01-17 13:58:29', 1, 3, '103.10.28.143'),
(413, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2025-01-17 13:58:29', 1, 3, '103.10.28.143'),
(414, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2025-01-17 13:58:29', 1, 3, '103.10.28.143'),
(415, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2025-01-17 13:58:29', 1, 3, '103.10.28.143'),
(416, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2025-01-17 13:58:29', 1, 3, '103.10.28.143'),
(417, 'Sub Package Image [Super Deluxe Room]Data has added successfully.', '2025-01-17 14:00:26', 1, 3, '103.10.28.143'),
(418, 'Sub Package Image [Super Deluxe Room]Data has added successfully.', '2025-01-17 14:00:26', 1, 3, '103.10.28.143'),
(419, 'Sub Package Image [Super Deluxe Room]Data has added successfully.', '2025-01-17 14:00:26', 1, 3, '103.10.28.143'),
(420, 'Sub Package Image [Super Deluxe Room]Data has added successfully.', '2025-01-17 14:00:26', 1, 3, '103.10.28.143'),
(421, 'Sub Package Image [Super Deluxe Room]Data has added successfully.', '2025-01-17 14:00:26', 1, 3, '103.10.28.143'),
(422, 'Sub Package Image [Super Deluxe Room]Data has added successfully.', '2025-01-17 14:00:26', 1, 3, '103.10.28.143'),
(423, 'Sub Package Image [Super Deluxe Room]Data has added successfully.', '2025-01-17 14:00:26', 1, 3, '103.10.28.143'),
(424, 'Sub Package Image [Super Deluxe Room]Data has added successfully.', '2025-01-17 14:00:26', 1, 3, '103.10.28.143'),
(425, 'SubPackage Gallery Image [Super Deluxe Room]Data has deleted successfully.', '2025-01-17 14:01:01', 1, 6, '103.10.28.143'),
(426, 'Login: superadmin logged in.', '2025-01-17 14:01:11', 1, 1, '103.10.28.143'),
(427, 'Sub Package Image [Super Deluxe Room]Data has added successfully.', '2025-01-17 14:01:37', 1, 3, '103.10.28.143'),
(428, 'Sub Package Image [Super Deluxe Room]Data has added successfully.', '2025-01-17 14:01:37', 1, 3, '103.10.28.143'),
(429, 'Sub Package Image [Super Deluxe Room]Data has added successfully.', '2025-01-17 14:01:37', 1, 3, '103.10.28.143'),
(430, 'SubPackage Gallery Image [Super Deluxe Room]Data has deleted successfully.', '2025-01-17 14:01:48', 1, 6, '103.10.28.143'),
(431, 'Sub Package Image [Super Deluxe Room]Data has added successfully.', '2025-01-17 14:01:58', 1, 3, '103.10.28.143'),
(432, 'Features [Attached Bathroom] Edit Successfully', '2025-01-17 14:02:06', 1, 4, '103.10.28.143'),
(433, 'Sub Package Image [Executive Suite]Data has added successfully.', '2025-01-17 14:24:22', 1, 3, '103.10.28.143'),
(434, 'Sub Package Image [Executive Suite]Data has added successfully.', '2025-01-17 14:24:22', 1, 3, '103.10.28.143'),
(435, 'Sub Package Image [Executive Suite]Data has added successfully.', '2025-01-17 14:24:22', 1, 3, '103.10.28.143'),
(436, 'Sub Package Image [Executive Suite]Data has added successfully.', '2025-01-17 14:24:22', 1, 3, '103.10.28.143'),
(437, 'Sub Package Image [Executive Suite]Data has added successfully.', '2025-01-17 14:24:22', 1, 3, '103.10.28.143'),
(438, 'Sub Package Image [Executive Suite]Data has added successfully.', '2025-01-17 14:24:56', 1, 3, '103.10.28.143'),
(439, 'Sub Package Image [Executive Suite]Data has added successfully.', '2025-01-17 14:24:56', 1, 3, '103.10.28.143'),
(440, 'Sub Package Image [Junior Suite]Data has added successfully.', '2025-01-17 14:25:46', 1, 3, '103.10.28.143'),
(441, 'Sub Package Image [Junior Suite]Data has added successfully.', '2025-01-17 14:25:46', 1, 3, '103.10.28.143'),
(442, 'Sub Package Image [Junior Suite]Data has added successfully.', '2025-01-17 14:25:46', 1, 3, '103.10.28.143'),
(443, 'Sub Package Image [Junior Suite]Data has added successfully.', '2025-01-17 14:25:46', 1, 3, '103.10.28.143'),
(444, 'Sub Package Image [Junior Suite]Data has added successfully.', '2025-01-17 14:25:46', 1, 3, '103.10.28.143'),
(445, 'Sub Package Image [Junior Suite]Data has added successfully.', '2025-01-17 14:25:46', 1, 3, '103.10.28.143'),
(446, 'Sub Package Image [Junior Suite]Data has added successfully.', '2025-01-17 14:25:46', 1, 3, '103.10.28.143'),
(447, 'Sub Package Image [Interconnected Deluxe Room]Data has added successfully.', '2025-01-17 14:40:12', 1, 3, '103.10.28.143'),
(448, 'Sub Package Image [Interconnected Deluxe Room]Data has added successfully.', '2025-01-17 14:40:12', 1, 3, '103.10.28.143');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(449, 'Sub Package Image [Interconnected Deluxe Room]Data has added successfully.', '2025-01-17 14:40:12', 1, 3, '103.10.28.143'),
(450, 'Sub Package Image [Interconnected Deluxe Room]Data has added successfully.', '2025-01-17 14:40:12', 1, 3, '103.10.28.143'),
(451, 'Sub Package Image [Interconnected Deluxe Room]Data has added successfully.', '2025-01-17 14:40:12', 1, 3, '103.10.28.143'),
(452, 'Sub Package Image [Interconnected Deluxe Room]Data has added successfully.', '2025-01-17 14:40:12', 1, 3, '103.10.28.143'),
(453, 'Sub Package Image [Interconnected Deluxe Room]Data has added successfully.', '2025-01-17 14:40:12', 1, 3, '103.10.28.143'),
(454, 'Sub Package Image [Interconnected Deluxe Room]Data has added successfully.', '2025-01-17 14:40:12', 1, 3, '103.10.28.143'),
(455, 'Sub Package Image [Interconnected Deluxe Room]Data has added successfully.', '2025-01-17 14:40:12', 1, 3, '103.10.28.143'),
(456, 'Changes on Sub Package \'Interconnected Deluxe Room\' has been saved successfully.', '2025-01-17 14:40:55', 1, 4, '103.10.28.143'),
(457, 'Features [High Speed Internet] Edit Successfully', '2025-01-17 14:43:20', 1, 4, '103.10.28.143'),
(458, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-17 14:43:48', 1, 4, '103.10.28.143'),
(459, 'Features [Work Desk] Edit Successfully', '2025-01-17 14:44:10', 1, 4, '103.10.28.143'),
(460, 'Features [Work Desk] Edit Successfully', '2025-01-17 14:44:56', 1, 4, '103.10.28.143'),
(461, 'Features [Bathtub] Edit Successfully', '2025-01-17 14:45:13', 1, 4, '103.10.28.143'),
(462, 'Features [Jacuzzi] Edit Successfully', '2025-01-17 14:45:25', 1, 4, '103.10.28.143'),
(463, 'Features [Air Conditioner] Edit Successfully', '2025-01-17 14:45:40', 1, 4, '103.10.28.143'),
(464, 'Features [Fruit Basket] Edit Successfully', '2025-01-17 14:45:53', 1, 4, '103.10.28.143'),
(465, 'Features [Hair Dryer] Edit Successfully', '2025-01-17 14:46:04', 1, 4, '103.10.28.143'),
(466, 'Menu [Junior Suite] CreatedData has added successfully.', '2025-01-17 14:47:18', 1, 3, '103.10.28.143'),
(467, 'Menu [Executive Suite] CreatedData has added successfully.', '2025-01-17 14:47:49', 1, 3, '103.10.28.143'),
(468, 'Features [Kitchenette]Data has added successfully.', '2025-01-17 14:52:41', 1, 3, '103.10.28.143'),
(469, 'Features [Toiletries] Edit Successfully', '2025-01-17 14:53:43', 1, 4, '103.10.28.143'),
(470, 'Features [Telephone] Edit Successfully', '2025-01-17 14:54:49', 1, 4, '103.10.28.143'),
(471, 'Features [Tea/Coffee Maker] Edit Successfully', '2025-01-17 14:55:42', 1, 4, '103.10.28.143'),
(472, 'Features [Satellite TV] Edit Successfully', '2025-01-17 14:55:52', 1, 4, '103.10.28.143'),
(473, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-17 14:57:00', 1, 4, '103.10.28.143'),
(474, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-17 14:57:28', 1, 4, '103.10.28.143'),
(475, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-17 14:57:46', 1, 4, '103.10.28.143'),
(476, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-17 14:58:31', 1, 4, '103.10.28.143'),
(477, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-17 14:59:12', 1, 4, '103.10.28.143'),
(478, 'Menu [Interconnected Deluxe Room] Edit Successfully', '2025-01-17 15:00:36', 1, 4, '103.10.28.143'),
(479, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-17 15:03:01', 1, 4, '103.10.28.143'),
(480, 'Changes on Sub Package \'Lamjung Restaurant\' has been saved successfully.', '2025-01-17 15:03:24', 1, 4, '103.10.28.143'),
(481, 'Features [Card Accepted]Data has added successfully.', '2025-01-17 15:15:17', 1, 3, '103.10.28.143'),
(482, 'Features [Card Accepted]Data has added successfully.', '2025-01-17 15:15:32', 1, 3, '103.10.28.143'),
(483, 'Features [Restroom]Data has added successfully.', '2025-01-17 15:15:53', 1, 3, '103.10.28.143'),
(484, 'Features [Comfortable Booths]Data has added successfully.', '2025-01-17 15:16:13', 1, 3, '103.10.28.143'),
(485, 'Features [Live Music]Data has added successfully.', '2025-01-17 15:16:27', 1, 3, '103.10.28.143'),
(486, 'Features [Parking Space]Data has added successfully.', '2025-01-17 15:16:53', 1, 3, '103.10.28.143'),
(487, 'Features [Private Dining Area]Data has added successfully.', '2025-01-17 15:17:13', 1, 3, '103.10.28.143'),
(488, 'Features [Reservation System]Data has added successfully.', '2025-01-17 15:17:31', 1, 3, '103.10.28.143'),
(489, 'Features [Table Service]Data has added successfully.', '2025-01-17 15:17:45', 1, 3, '103.10.28.143'),
(490, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-17 15:18:19', 1, 4, '103.10.28.143'),
(491, 'Changes on Sub Package \'Lamjung Restaurant\' has been saved successfully.', '2025-01-17 15:18:58', 1, 4, '103.10.28.143'),
(492, 'Features  [Card Accepted]Data has deleted successfully.', '2025-01-17 15:19:16', 1, 6, '103.10.28.143'),
(493, 'Changes on Article \'World Peace Pagoda\' has been saved successfully.', '2025-01-17 15:22:27', 1, 4, '103.10.28.143'),
(494, 'Changes on Article \'Shree Bindhyabasini Temple\' has been saved successfully.', '2025-01-17 15:22:55', 1, 4, '103.10.28.143'),
(495, 'Testimonial [Christina]Data has added successfully.', '2025-01-17 15:29:40', 1, 3, '103.10.28.143'),
(496, 'Testimonial [Christina] Edit Successfully', '2025-01-17 15:30:14', 1, 4, '103.10.28.143'),
(497, 'Testimonial [Jasmine]Data has added successfully.', '2025-01-17 15:31:20', 1, 3, '103.10.28.143'),
(498, 'Testimonial [Christina] Edit Successfully', '2025-01-17 15:34:42', 1, 4, '103.10.28.143'),
(499, 'Testimonial [Jasmine] Edit Successfully', '2025-01-17 15:35:33', 1, 4, '103.10.28.143'),
(500, 'Testimonial [John Smith] Edit Successfully', '2025-01-17 15:37:02', 1, 4, '103.10.28.143'),
(501, 'Testimonial [Roman]Data has added successfully.', '2025-01-17 15:38:15', 1, 3, '103.10.28.143'),
(502, 'Testimonial [Rose] Edit Successfully', '2025-01-17 15:38:57', 1, 4, '103.10.28.143'),
(503, 'Testimonial [John Smith] Edit Successfully', '2025-01-17 15:39:44', 1, 4, '103.10.28.143'),
(504, 'Testimonial [John Smith] Edit Successfully', '2025-01-17 15:40:19', 1, 4, '103.10.28.143'),
(505, 'Features [Shower]Data has added successfully.', '2025-01-17 15:45:27', 1, 3, '103.10.28.143'),
(506, 'Features [Slipper]Data has added successfully.', '2025-01-17 15:45:39', 1, 3, '103.10.28.143'),
(507, 'Features [Complimentary Water Bottles]Data has added successfully.', '2025-01-17 15:46:14', 1, 3, '103.10.28.143'),
(508, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-17 15:46:59', 1, 4, '103.10.28.143'),
(509, 'Features [Complimentary Toiletries] Edit Successfully', '2025-01-17 15:47:20', 1, 4, '103.10.28.143'),
(510, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-17 15:48:27', 1, 4, '103.10.28.143'),
(511, 'Changes on Sub Package \'Interconnected Deluxe Room\' has been saved successfully.', '2025-01-17 15:49:21', 1, 4, '103.10.28.143'),
(512, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-17 16:07:47', 1, 4, '103.10.28.143'),
(513, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-17 16:08:04', 1, 4, '103.10.28.143'),
(514, 'Changes on Sub Package \'Interconnected Deluxe Room\' has been saved successfully.', '2025-01-17 16:08:58', 1, 4, '103.10.28.143'),
(515, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-17 16:10:06', 1, 4, '103.10.28.143'),
(516, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-17 16:11:36', 1, 4, '103.10.28.143'),
(517, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-17 16:12:09', 1, 4, '103.10.28.143'),
(518, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-17 16:19:29', 1, 4, '103.10.28.143'),
(519, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-17 16:21:02', 1, 4, '103.10.28.143'),
(520, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-17 16:21:52', 1, 4, '103.10.28.143'),
(521, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-17 16:23:48', 1, 4, '103.10.28.143'),
(522, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-17 16:25:33', 1, 4, '103.10.28.143'),
(523, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-17 16:25:57', 1, 4, '103.10.28.143'),
(524, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-17 16:31:15', 1, 4, '103.10.28.143'),
(525, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-17 16:35:04', 1, 4, '103.10.28.143'),
(526, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-17 16:38:48', 1, 4, '103.10.28.143'),
(527, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-17 16:39:07', 1, 4, '103.10.28.143'),
(528, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-17 16:39:44', 1, 4, '103.10.28.143'),
(529, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-17 16:40:37', 1, 4, '103.10.28.143'),
(530, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-17 16:43:00', 1, 4, '103.10.28.143'),
(531, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-17 16:46:29', 1, 4, '103.10.28.143'),
(532, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-17 16:46:59', 1, 4, '103.10.28.143'),
(533, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-17 16:50:30', 1, 4, '103.10.28.143'),
(534, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-17 16:52:28', 1, 4, '103.10.28.143'),
(535, 'Changes on Main service \'Meeting & Events\' has been saved successfully.', '2025-01-17 16:53:32', 1, 4, '103.10.28.143'),
(536, 'Changes on Main service \'Swimming Pool\' has been saved successfully.', '2025-01-17 16:53:53', 1, 4, '103.10.28.143'),
(537, 'Changes on Main service \'Swimming Pool\' has been saved successfully.', '2025-01-17 16:54:32', 1, 4, '103.10.28.143'),
(538, 'Changes on Main service \'Swimming Pool\' has been saved successfully.', '2025-01-17 16:55:03', 1, 4, '103.10.28.143'),
(539, 'SubPackage Gallery Image [abc]Data has deleted successfully.', '2025-01-17 16:57:28', 1, 6, '103.10.28.143'),
(540, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-17 16:57:31', 1, 6, '103.10.28.143'),
(541, 'SubPackage Gallery Image [abc]Data has deleted successfully.', '2025-01-17 16:57:31', 1, 6, '103.10.28.143'),
(542, 'SubPackage Gallery Image [xyz]Data has deleted successfully.', '2025-01-17 16:57:53', 1, 6, '103.10.28.143'),
(543, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-17 16:57:55', 1, 6, '103.10.28.143'),
(544, 'SubPackage Gallery Image [Deluxe Room]Data has deleted successfully.', '2025-01-17 16:57:55', 1, 6, '103.10.28.143'),
(545, 'Sub Package Image [XYZ Hall]Data has added successfully.', '2025-01-17 17:00:54', 1, 3, '103.10.28.143'),
(546, 'Sub Package Image [XYZ Hall]Data has added successfully.', '2025-01-17 17:00:54', 1, 3, '103.10.28.143'),
(547, 'Sub Package Image [XYZ Hall]Data has added successfully.', '2025-01-17 17:00:54', 1, 3, '103.10.28.143'),
(548, 'Sub Package Image [XYZ Hall]Data has added successfully.', '2025-01-17 17:00:54', 1, 3, '103.10.28.143'),
(549, 'Sub Package Image [ABC hall]Data has added successfully.', '2025-01-17 17:01:32', 1, 3, '103.10.28.143'),
(550, 'Sub Package Image [ABC hall]Data has added successfully.', '2025-01-17 17:01:32', 1, 3, '103.10.28.143'),
(551, 'Sub Package Image [ABC hall]Data has added successfully.', '2025-01-17 17:01:32', 1, 3, '103.10.28.143'),
(552, 'Sub Package Image [ABC hall]Data has added successfully.', '2025-01-17 17:01:32', 1, 3, '103.10.28.143'),
(553, 'Changes on Sub Package \'ABC hall\' has been saved successfully.', '2025-01-17 17:03:07', 1, 4, '103.10.28.143'),
(554, 'Changes on Sub Package \'XYZ Hall\' has been saved successfully.', '2025-01-17 17:03:28', 1, 4, '103.10.28.143'),
(555, 'Features [PA System ]Data has added successfully.', '2025-01-17 17:07:09', 1, 3, '103.10.28.143'),
(556, 'Features [PA System]Data has added successfully.', '2025-01-17 17:08:00', 1, 3, '103.10.28.143'),
(557, 'Features  [PA System ]Data has deleted successfully.', '2025-01-17 17:08:08', 1, 6, '103.10.28.143'),
(558, 'Features [White Board]Data has added successfully.', '2025-01-17 17:08:28', 1, 3, '103.10.28.143'),
(559, 'Features [Seating Arrragement]Data has added successfully.', '2025-01-17 17:10:00', 1, 3, '103.10.28.143'),
(560, 'Features [Seating Arrrangement] Edit Successfully', '2025-01-17 17:10:16', 1, 4, '103.10.28.143'),
(561, 'Features [Seating Arrangement] Edit Successfully', '2025-01-17 17:10:24', 1, 4, '103.10.28.143'),
(562, 'Changes on Sub Package \'ABC hall\' has been saved successfully.', '2025-01-17 17:11:55', 1, 4, '103.10.28.143'),
(563, 'Changes on Sub Package \'XYZ Hall\' has been saved successfully.', '2025-01-17 17:12:22', 1, 4, '103.10.28.143'),
(564, 'Features [CCTV Security]Data has added successfully.', '2025-01-17 17:14:13', 1, 3, '103.10.28.143'),
(565, 'Changes on Sub Package \'XYZ Hall\' has been saved successfully.', '2025-01-17 17:14:30', 1, 4, '103.10.28.143'),
(566, 'Changes on Sub Package \'ABC hall\' has been saved successfully.', '2025-01-17 17:14:43', 1, 4, '103.10.28.143'),
(567, 'Changes on Sub Package \'ABC hall\' has been saved successfully.', '2025-01-17 17:16:37', 1, 4, '103.10.28.143'),
(568, 'Changes on Sub Package \'XYZ Hall\' has been saved successfully.', '2025-01-17 17:16:54', 1, 4, '103.10.28.143'),
(569, 'Changes on Sub Package \'ABC hall\' has been saved successfully.', '2025-01-17 17:18:48', 1, 4, '103.10.28.143'),
(570, 'Changes on Sub Package \'XYZ Hall\' has been saved successfully.', '2025-01-17 17:19:09', 1, 4, '103.10.28.143'),
(571, 'Changes on Sub Package \'XYZ Hall\' has been saved successfully.', '2025-01-17 17:21:27', 1, 4, '103.10.28.143'),
(572, 'Login: superadmin logged in.', '2025-01-17 17:26:07', 1, 1, '103.10.28.143'),
(573, 'User Group [General Admin] Edit Successfully', '2025-01-17 17:26:40', 1, 4, '103.10.28.143'),
(574, 'Changes on Wellness \'Rooftop Swimming Poolaa\' has been saved successfully.', '2025-01-17 17:30:27', 1, 4, '103.10.28.143'),
(575, 'Changes on Wellness \'Rooftop Swimming Pool\' has been saved successfully.', '2025-01-17 17:31:00', 1, 4, '103.10.28.143'),
(576, 'Changes on Wellness \'Wellness Spa\' has been saved successfully.', '2025-01-17 17:32:56', 1, 4, '103.10.28.143'),
(577, 'Changes on Wellness \'Yoga\' has been saved successfully.', '2025-01-17 17:34:41', 1, 4, '103.10.28.143'),
(578, 'Changes on Wellness \'Wellness Spa\' has been saved successfully.', '2025-01-17 17:35:40', 1, 4, '103.10.28.143'),
(579, 'Changes on Wellness \'Rooftop Swimming Pool\' has been saved successfully.', '2025-01-17 17:36:18', 1, 4, '103.10.28.143'),
(580, 'Changes on Wellness \'Wellness Spa\' has been saved successfully.', '2025-01-17 17:36:33', 1, 4, '103.10.28.143'),
(581, 'Changes on Wellness \'Yoga\' has been saved successfully.', '2025-01-17 17:36:45', 1, 4, '103.10.28.143'),
(582, 'Services [Welcome Drink ] Edit Successfully', '2025-01-17 17:38:15', 1, 4, '103.10.28.143'),
(583, 'Services [Pickup & drop] Edit Successfully', '2025-01-17 17:38:35', 1, 4, '103.10.28.143'),
(584, 'Slideshow [Dining experience at it\'s best] Edit Successfully', '2025-01-17 17:46:32', 1, 4, '103.10.28.143'),
(585, 'Slideshow [Dining experience at it\'s best] Edit Successfully', '2025-01-17 17:46:55', 1, 4, '103.10.28.143'),
(586, 'Slideshow [Dining experience at it\'s best] Edit Successfully', '2025-01-17 17:47:13', 1, 4, '103.10.28.143'),
(587, 'Slideshow [Welcome to barpeepal] Edit Successfully', '2025-01-17 17:47:55', 1, 4, '103.10.28.143'),
(588, 'Slideshow [Savor delicious meals in our elegant and inviting restaurant]Data has added successfully.', '2025-01-17 17:51:25', 1, 3, '103.10.28.143'),
(589, 'Slideshow [Savor delicious meals in our elegant and inviting restaurant] Edit Successfully', '2025-01-17 17:51:46', 1, 4, '103.10.28.143'),
(590, 'Slideshow [Savor delicious meals in our elegant and inviting restaurant] Edit Successfully', '2025-01-17 17:51:59', 1, 4, '103.10.28.143'),
(591, 'Slideshow [Dining experience at it\'s best] Edit Successfully', '2025-01-17 17:52:06', 1, 4, '103.10.28.143'),
(592, 'Slideshow [Stay active and fit] Edit Successfully', '2025-01-17 17:52:39', 1, 4, '103.10.28.143'),
(593, 'Slideshow [Dive into relaxation at our rooftop infinity pool with stunning views]Data has added succ', '2025-01-17 17:55:02', 1, 3, '103.10.28.143'),
(594, 'Slideshow [Dive into relaxation at our rooftop infinity pool with stunning views] Edit Successfully', '2025-01-17 17:57:39', 1, 4, '103.10.28.143'),
(595, 'Slideshow [Dive into relaxation at our rooftop infinity pool with stunning views] Edit Successfully', '2025-01-17 17:58:32', 1, 4, '103.10.28.143'),
(596, 'Slideshow [Elegant exterior of Bar Peepal Resort, Pokhara, Nepal]Data has added successfully.', '2025-01-17 18:01:11', 1, 3, '103.10.28.143'),
(597, 'Slideshow [Stay active and fit] Edit Successfully', '2025-01-17 18:01:23', 1, 4, '103.10.28.143'),
(598, 'Slideshow [Find relaxation at our Bar Peepal Resort] Edit Successfully', '2025-01-17 18:01:58', 1, 4, '103.10.28.143'),
(599, 'Login: admin logged in.', '2025-01-17 18:44:08', 1, 1, '103.129.134.71'),
(600, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-17 18:45:20', 1, 4, '103.129.134.71'),
(601, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-17 18:46:39', 1, 4, '103.129.134.71'),
(602, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-17 18:47:40', 1, 4, '103.129.134.71'),
(603, 'Gallery Image [Exterior] Edit Successfully', '2025-01-17 18:50:26', 1, 4, '103.129.134.71'),
(604, 'Sub Gallery Image  [room]Data has deleted successfully.', '2025-01-17 18:54:21', 1, 6, '103.129.134.71'),
(605, 'Sub Gallery Image [Deluxe Room]Data has added successfully.', '2025-01-17 18:54:51', 1, 3, '103.129.134.71'),
(606, 'Sub Gallery Image [Deluxe Room]Data has added successfully.', '2025-01-17 18:54:51', 1, 3, '103.129.134.71'),
(607, 'Sub Gallery Image [Deluxe Room]Data has added successfully.', '2025-01-17 18:54:51', 1, 3, '103.129.134.71'),
(608, 'Sub Gallery Image [Deluxe Twin]Data has added successfully.', '2025-01-17 19:01:38', 1, 3, '103.129.134.71'),
(609, 'Sub Gallery Image [Deluxe Twin]Data has added successfully.', '2025-01-17 19:01:38', 1, 3, '103.129.134.71'),
(610, 'Sub Gallery Image [Deluxe Twin]Data has added successfully.', '2025-01-17 19:01:38', 1, 3, '103.129.134.71'),
(611, 'Sub Gallery Image [Interconnected Deluxe]Data has added successfully.', '2025-01-17 19:02:25', 1, 3, '103.129.134.71'),
(612, 'Sub Gallery Image [Interconnected Deluxe]Data has added successfully.', '2025-01-17 19:02:25', 1, 3, '103.129.134.71'),
(613, 'Sub Gallery Image [Interconnected Deluxe]Data has added successfully.', '2025-01-17 19:02:25', 1, 3, '103.129.134.71'),
(614, 'Sub Gallery Image [Suite Room]Data has added successfully.', '2025-01-17 19:03:00', 1, 3, '103.129.134.71'),
(615, 'Sub Gallery Image [Suite Room]Data has added successfully.', '2025-01-17 19:03:00', 1, 3, '103.129.134.71'),
(616, 'Sub Gallery Image [Suite Room]Data has added successfully.', '2025-01-17 19:03:00', 1, 3, '103.129.134.71'),
(617, 'Sub Gallery Image [Lamjung Restaurant]Data has added successfully.', '2025-01-17 19:07:59', 1, 3, '103.129.134.71'),
(618, 'Sub Gallery Image [Lamjung Restaurant]Data has added successfully.', '2025-01-17 19:07:59', 1, 3, '103.129.134.71'),
(619, 'Sub Gallery Image [Lamjung Restaurant]Data has added successfully.', '2025-01-17 19:07:59', 1, 3, '103.129.134.71'),
(620, 'Sub Gallery Image [Lamjung Restaurant]Data has added successfully.', '2025-01-17 19:07:59', 1, 3, '103.129.134.71'),
(621, 'Sub Gallery Image [Chautari Restaurant]Data has added successfully.', '2025-01-17 19:07:59', 1, 3, '103.129.134.71'),
(622, 'Sub Gallery Image [Chautari Restaurant]Data has added successfully.', '2025-01-17 19:07:59', 1, 3, '103.129.134.71'),
(623, 'Gallery [Meeting Halls]Data has added successfully.', '2025-01-17 19:10:44', 1, 3, '103.129.134.71'),
(624, 'Sub Gallery Image [Meeting Hall]Data has added successfully.', '2025-01-17 19:11:14', 1, 3, '103.129.134.71'),
(625, 'Sub Gallery Image [Meeting Hall]Data has added successfully.', '2025-01-17 19:11:14', 1, 3, '103.129.134.71'),
(626, 'Sub Gallery Image [Meeting Hall]Data has added successfully.', '2025-01-17 19:11:14', 1, 3, '103.129.134.71'),
(627, 'Sub Gallery Image [Meeting Hall]Data has added successfully.', '2025-01-17 19:11:14', 1, 3, '103.129.134.71'),
(628, 'Gallery Image [Exterior] Edit Successfully', '2025-01-17 19:17:30', 1, 4, '103.129.134.71'),
(629, 'Sub Gallery Image [Exterior]Data has added successfully.', '2025-01-17 19:18:43', 1, 3, '103.129.134.71'),
(630, 'Sub Gallery Image [Exterior]Data has added successfully.', '2025-01-17 19:18:43', 1, 3, '103.129.134.71'),
(631, 'Sub Gallery Image [Exterior]Data has added successfully.', '2025-01-17 19:18:43', 1, 3, '103.129.134.71'),
(632, 'Sub Gallery Image [Exterior]Data has added successfully.', '2025-01-17 19:18:43', 1, 3, '103.129.134.71'),
(633, 'Sub Gallery Image [Exterior]Data has added successfully.', '2025-01-17 19:18:43', 1, 3, '103.129.134.71'),
(634, 'Sub Gallery Image [Exterior]Data has added successfully.', '2025-01-17 19:18:43', 1, 3, '103.129.134.71'),
(635, 'Sub Gallery Image [Exterior]Data has added successfully.', '2025-01-17 19:18:43', 1, 3, '103.129.134.71'),
(636, 'Sub Gallery Image [Exterior]Data has added successfully.', '2025-01-17 19:18:43', 1, 3, '103.129.134.71'),
(637, 'Sub Gallery Image [Exterior]Data has added successfully.', '2025-01-17 19:18:43', 1, 3, '103.129.134.71'),
(638, 'Gallery Image [Restaurant & Bar] Edit Successfully', '2025-01-17 19:21:59', 1, 4, '103.129.134.71'),
(639, 'Sub Gallery Image [Bar]Data has added successfully.', '2025-01-17 19:22:44', 1, 3, '103.129.134.71'),
(640, 'Sub Gallery Image [Bar]Data has added successfully.', '2025-01-17 19:22:44', 1, 3, '103.129.134.71'),
(641, 'Sub Gallery Image [Bar]Data has added successfully.', '2025-01-17 19:22:44', 1, 3, '103.129.134.71'),
(642, 'Sub Gallery Image [Bar]Data has added successfully.', '2025-01-17 19:31:17', 1, 3, '103.129.134.71'),
(643, 'Sub Gallery Image [Bar]Data has added successfully.', '2025-01-17 19:31:17', 1, 3, '103.129.134.71'),
(644, 'Sub Gallery Image [Bar]Data has added successfully.', '2025-01-17 19:31:17', 1, 3, '103.129.134.71'),
(645, 'Gallery [Swimming Pool]Data has added successfully.', '2025-01-17 19:34:48', 1, 3, '103.129.134.71'),
(646, 'Sub Gallery Image [Swimming Pool]Data has added successfully.', '2025-01-17 19:35:36', 1, 3, '103.129.134.71'),
(647, 'Sub Gallery Image [Swimming Pool]Data has added successfully.', '2025-01-17 19:35:36', 1, 3, '103.129.134.71'),
(648, 'Sub Gallery Image [Swimming Pool]Data has added successfully.', '2025-01-17 19:35:36', 1, 3, '103.129.134.71'),
(649, 'Sub Gallery Image [Swimming Pool]Data has added successfully.', '2025-01-17 19:35:36', 1, 3, '103.129.134.71'),
(650, 'Sub Gallery Image [Swimming Pool]Data has added successfully.', '2025-01-17 19:35:36', 1, 3, '103.129.134.71'),
(651, 'Sub Gallery Image [Swimming Pool]Data has added successfully.', '2025-01-17 19:35:36', 1, 3, '103.129.134.71'),
(652, 'Gallery [Interior]Data has added successfully.', '2025-01-17 19:43:03', 1, 3, '103.129.134.71'),
(653, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-01-17 19:44:06', 1, 3, '103.129.134.71'),
(654, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-01-17 19:44:06', 1, 3, '103.129.134.71'),
(655, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-01-17 19:44:06', 1, 3, '103.129.134.71'),
(656, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-01-17 19:44:06', 1, 3, '103.129.134.71'),
(657, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-01-17 19:44:06', 1, 3, '103.129.134.71'),
(658, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-01-17 19:44:06', 1, 3, '103.129.134.71'),
(659, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-01-17 19:44:06', 1, 3, '103.129.134.71'),
(660, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-01-17 19:44:06', 1, 3, '103.129.134.71'),
(661, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-01-17 19:44:06', 1, 3, '103.129.134.71'),
(662, 'Sub Gallery Image [Swimming Pool]Data has added successfully.', '2025-01-17 19:52:59', 1, 3, '103.129.134.71'),
(663, 'Login: admin logged in.', '2025-01-17 19:57:33', 1, 1, '103.163.182.147'),
(664, 'Slideshow [Stay active and fit] Edit Successfully', '2025-01-17 20:02:02', 1, 4, '103.129.134.71'),
(665, 'Login: admin logged in.', '2025-01-17 20:21:29', 1, 1, '103.129.134.71'),
(666, 'Testimonial [Rose] Edit Successfully', '2025-01-17 20:21:54', 1, 4, '103.129.134.71'),
(667, 'Testimonial [Rose] Edit Successfully', '2025-01-17 20:23:01', 1, 4, '103.129.134.71'),
(668, 'Testimonial [Rose] Edit Successfully', '2025-01-17 20:24:02', 1, 4, '103.129.134.71'),
(669, 'Testimonial [Rose] Edit Successfully', '2025-01-17 20:24:53', 1, 4, '103.129.134.71'),
(670, 'Login: admin logged in.', '2025-01-20 17:39:45', 1, 1, '103.10.28.145'),
(671, 'Login: admin logged in.', '2025-01-20 17:56:32', 1, 1, '103.10.28.145'),
(672, 'Slideshow [Stay active and fit] Edit Successfully', '2025-01-20 18:02:06', 1, 4, '103.10.28.145'),
(673, 'Login: admin logged in.', '2025-01-21 09:31:03', 1, 1, '103.10.31.61'),
(674, 'Changes on Main service \'Swimming Pool\' has been saved successfully.', '2025-01-21 09:31:32', 1, 4, '103.10.31.61'),
(675, 'Slideshow [Our meeting hall, crafted for collaboration and innovation]Data has added successfully.', '2025-01-21 09:40:51', 1, 3, '103.10.31.61'),
(676, 'Login: admin logged in.', '2025-01-21 09:41:11', 1, 1, '103.10.31.61'),
(677, 'Slideshow [Elegant exterior of Bar Peepal Resort, Pokhara, Nepal] Edit Successfully', '2025-01-21 09:41:57', 1, 4, '103.10.31.61'),
(678, 'Slideshow [Our meeting hall, crafted for collaboration and innovation] Edit Successfully', '2025-01-21 09:42:52', 1, 4, '103.10.31.61'),
(679, 'Slideshow [Elegant exterior of Bar Peepal Resort, Pokhara, Nepal] Edit Successfully', '2025-01-21 09:43:25', 1, 4, '103.10.31.61'),
(680, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-21 09:44:24', 1, 4, '103.10.31.61'),
(681, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-21 09:48:34', 1, 4, '103.10.31.61'),
(682, 'Menu [Deluxe Room] Edit Successfully', '2025-01-21 09:48:51', 1, 4, '103.10.31.61'),
(683, 'Menu [XYZ Hall] CreatedData has added successfully.', '2025-01-21 09:51:35', 1, 3, '103.10.31.61'),
(684, 'Login: admin logged in.', '2025-01-21 11:10:42', 1, 1, '103.10.28.132'),
(685, 'Login: admin logged in.', '2025-01-21 11:12:05', 1, 1, '103.10.28.132'),
(686, 'Sub Gallery Image  [home image]Data has deleted successfully.', '2025-01-21 11:15:02', 1, 6, '103.10.28.132'),
(687, 'Sub Gallery Image [Deluxe Room]Data has added successfully.', '2025-01-21 11:15:26', 1, 3, '103.10.28.132'),
(688, 'Sub Gallery Image [Deluxe Twin Room]Data has added successfully.', '2025-01-21 11:16:19', 1, 3, '103.10.28.132'),
(689, 'Sub Gallery Image [Suite Room]Data has added successfully.', '2025-01-21 11:17:04', 1, 3, '103.10.28.132'),
(690, 'Sub Gallery Image [Interconnected Room]Data has added successfully.', '2025-01-21 11:18:09', 1, 3, '103.10.28.132'),
(691, 'Sub Gallery Image [Executive Room]Data has added successfully.', '2025-01-21 11:18:39', 1, 3, '103.10.28.132'),
(692, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-21 11:21:53', 1, 4, '103.10.28.132'),
(693, 'Changes on Wellness \'Wellness Spa\' has been saved successfully.', '2025-01-21 11:35:09', 1, 4, '103.10.28.132'),
(694, 'Login: admin logged in.', '2025-01-21 11:38:44', 1, 1, '103.10.28.132'),
(695, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-21 11:47:50', 1, 4, '103.10.28.132'),
(696, 'Login: admin logged in.', '2025-01-21 11:57:36', 1, 1, '27.34.66.92'),
(697, 'Menu [Rooms& Suites] Edit Successfully', '2025-01-21 11:57:54', 1, 4, '27.34.66.92'),
(698, 'Menu [Meetings & Events] Edit Successfully', '2025-01-21 11:58:12', 1, 4, '27.34.66.92'),
(699, 'Menu [Rooms & Suites] Edit Successfully', '2025-01-21 11:58:37', 1, 4, '27.34.66.92'),
(700, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-21 12:29:36', 1, 4, '103.10.28.132'),
(701, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-21 12:30:25', 1, 4, '103.10.28.132'),
(702, 'Changes on Sub Package \'Interconnected Deluxe Room\' has been saved successfully.', '2025-01-21 12:30:48', 1, 4, '103.10.28.132'),
(703, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-21 12:31:08', 1, 4, '103.10.28.132'),
(704, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-21 12:31:44', 1, 4, '103.10.28.132'),
(705, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-21 12:32:07', 1, 4, '103.10.28.132'),
(706, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-21 12:32:54', 1, 4, '103.10.28.132'),
(707, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-21 12:33:13', 1, 4, '103.10.28.132'),
(708, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-21 12:43:12', 1, 4, '103.10.28.132'),
(709, 'Changes on Sub Package \'Lamjung Restaurant\' has been saved successfully.', '2025-01-21 12:45:14', 1, 4, '103.10.28.132'),
(710, 'Changes on Sub Package \'Lamjung Restaurant\' has been saved successfully.', '2025-01-21 12:45:48', 1, 4, '103.10.28.132'),
(711, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-21 12:46:12', 1, 4, '103.10.28.132'),
(712, 'Package Rooms Edit Successfully', '2025-01-21 12:49:21', 1, 4, '103.10.28.132'),
(713, 'Package Rooms Edit Successfully', '2025-01-21 12:51:24', 1, 4, '103.10.28.132'),
(714, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-21 12:54:02', 1, 4, '103.10.28.132'),
(715, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-21 12:56:00', 1, 4, '103.10.28.132'),
(716, 'Changes on Sub Package \'Interconnected Deluxe Room\' has been saved successfully.', '2025-01-21 12:58:11', 1, 4, '103.10.28.132'),
(717, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-21 13:00:00', 1, 4, '103.10.28.132'),
(718, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-21 13:01:22', 1, 4, '103.10.28.132'),
(719, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-21 13:05:22', 1, 4, '103.10.28.132'),
(720, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-21 13:06:29', 1, 4, '103.10.28.132'),
(721, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-21 13:07:02', 1, 4, '103.10.28.132'),
(722, 'Package Restaurant and Bar Edit Successfully', '2025-01-21 13:08:53', 1, 4, '103.10.28.132'),
(723, 'Package Meetings and Events Edit Successfully', '2025-01-21 13:11:49', 1, 4, '103.10.28.132'),
(724, 'Package Meetings and Events Edit Successfully', '2025-01-21 13:13:01', 1, 4, '103.10.28.132'),
(725, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-21 13:21:11', 1, 4, '103.10.28.132'),
(726, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-21 13:21:40', 1, 4, '103.10.28.132'),
(727, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-21 13:22:18', 1, 4, '103.10.28.132'),
(728, 'Changes on Main service \'Rooftop Swimming Pool\' has been saved successfully.', '2025-01-21 13:26:31', 1, 4, '103.10.28.132'),
(729, 'SocialNetworking [Trip advisor] Edit Successfully', '2025-01-21 13:28:16', 1, 4, '103.10.28.132'),
(730, 'SocialNetworking [booking] Edit Successfully', '2025-01-21 13:28:51', 1, 4, '103.10.28.132'),
(731, 'SocialNetworking [booking] Edit Successfully', '2025-01-21 13:31:50', 1, 4, '103.10.28.132'),
(732, 'Testimonial [Daniel]Data has added successfully.', '2025-01-21 13:41:23', 1, 3, '103.10.28.132'),
(733, 'Testimonial [Vinod]Data has added successfully.', '2025-01-21 13:43:27', 1, 3, '103.10.28.132'),
(734, 'Testimonial [Rajarshi M]Data has added successfully.', '2025-01-21 13:46:30', 1, 3, '103.10.28.132'),
(735, 'Testimonial [Rajarshi M] Edit Successfully', '2025-01-21 13:46:50', 1, 4, '103.10.28.132'),
(736, 'Testimonial [Vinod] Edit Successfully', '2025-01-21 13:47:06', 1, 4, '103.10.28.132'),
(737, 'Testimonial [Ashesh R]Data has added successfully.', '2025-01-21 13:48:13', 1, 3, '103.10.28.132'),
(738, 'Testimonial [Rajarshi M] Edit Successfully', '2025-01-21 13:51:48', 1, 4, '103.10.28.132'),
(739, 'Testimonial [Rajarshi M] Edit Successfully', '2025-01-21 13:52:04', 1, 4, '103.10.28.132'),
(740, 'Testimonial [Ashesh R] Edit Successfully', '2025-01-21 13:53:36', 1, 4, '103.10.28.132'),
(741, 'Testimonial [Ashesh R] Edit Successfully', '2025-01-21 13:54:16', 1, 4, '103.10.28.132'),
(742, 'Testimonial [Ashesh R] Edit Successfully', '2025-01-21 13:54:45', 1, 4, '103.10.28.132'),
(743, 'Login: admin logged in.', '2025-01-21 13:56:05', 1, 1, '27.34.66.92'),
(744, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-21 13:56:36', 1, 4, '27.34.66.92'),
(745, 'Testimonial [Rajarshi M] Edit Successfully', '2025-01-21 13:56:57', 1, 4, '103.10.28.132'),
(746, 'Testimonial [Justin F]Data has added successfully.', '2025-01-21 13:59:32', 1, 3, '103.10.28.132'),
(747, 'Testimonial [Daniel] Edit Successfully', '2025-01-21 14:03:06', 1, 4, '103.10.28.132'),
(748, 'Testimonial [Vinod] Edit Successfully', '2025-01-21 14:03:30', 1, 4, '103.10.28.132'),
(749, 'Testimonial [Daniel] Edit Successfully', '2025-01-21 14:04:33', 1, 4, '103.10.28.132'),
(750, 'Testimonial [Justin F] Edit Successfully', '2025-01-21 14:04:50', 1, 4, '103.10.28.132'),
(751, 'Testimonial [Ashesh R] Edit Successfully', '2025-01-21 14:05:18', 1, 4, '103.10.28.132'),
(752, 'Testimonial [Rajarshi M] Edit Successfully', '2025-01-21 14:05:33', 1, 4, '103.10.28.132'),
(753, 'Testimonial [Ashesh R] Edit Successfully', '2025-01-21 14:06:05', 1, 4, '103.10.28.132'),
(754, 'Slideshow [Elegant exterior of Bar Peepal Resort, Pokhara, Nepal] Edit Successfully', '2025-01-21 14:55:24', 1, 4, '103.10.28.144'),
(755, 'Slideshow [Experience unparalleled elegance and comfort in every room]Data has added successfully.', '2025-01-21 14:56:46', 1, 3, '103.10.28.144'),
(756, 'Slideshow [Savor delicious meals in our elegant and inviting restaurant] Edit Successfully', '2025-01-21 14:57:26', 1, 4, '103.10.28.144'),
(757, 'Slideshow [Dive into relaxation at our rooftop infinity pool with stunning views] Edit Successfully', '2025-01-21 14:57:53', 1, 4, '103.10.28.144'),
(758, 'Slideshow [Stay active and fit] Edit Successfully', '2025-01-21 14:58:20', 1, 4, '103.10.28.144'),
(759, 'Slideshow [ A culinary masterpiece]Data has added successfully.', '2025-01-21 15:01:52', 1, 3, '103.10.28.144'),
(760, 'Login: admin logged in.', '2025-01-21 15:14:40', 1, 1, '103.10.28.144'),
(761, 'Sub Package Image [Chautari Restro & Bar]Data has added successfully.', '2025-01-21 15:15:25', 1, 3, '103.10.28.144'),
(762, 'Sub Package Image [Chautari Restro & Bar]Data has added successfully.', '2025-01-21 15:15:25', 1, 3, '103.10.28.144'),
(763, 'Sub Package Image [Chautari Restro & Bar]Data has added successfully.', '2025-01-21 15:15:25', 1, 3, '103.10.28.144'),
(764, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-21 15:24:23', 1, 4, '103.10.28.144'),
(765, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-21 15:25:43', 1, 4, '103.10.28.144'),
(766, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-21 15:27:01', 1, 4, '103.10.28.144'),
(767, 'Login: admin logged in.', '2025-01-21 15:28:38', 1, 1, '27.34.66.92'),
(768, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-21 15:29:00', 1, 4, '27.34.66.92'),
(769, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-21 15:29:31', 1, 4, '103.10.28.144'),
(770, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-21 15:34:58', 1, 4, '27.34.66.92'),
(771, 'Login: admin logged in.', '2025-01-21 15:39:52', 1, 1, '103.10.28.144'),
(772, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-21 15:40:42', 1, 4, '27.34.66.92'),
(773, 'Login: superadmin logged in.', '2025-01-21 15:42:43', 1, 1, '103.10.28.144'),
(774, 'Login: superadmin logged in.', '2025-01-21 15:44:13', 1, 1, '103.10.28.144'),
(775, 'Changes on Wellness \'Rooftop Swimming Pool\' has been saved successfully.', '2025-01-21 15:48:33', 1, 4, '27.34.66.92'),
(776, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-21 15:48:51', 1, 4, '103.10.28.144'),
(777, 'Changes on Wellness \'Rooftop Swimming Pool\' has been saved successfully.', '2025-01-21 15:50:00', 1, 4, '27.34.66.92'),
(778, 'Successfully  Package Properties Settings', '2025-01-21 15:52:28', 1, 4, '103.10.28.144'),
(779, 'Changes on Wellness \'AVEDA Wellness\' has been saved successfully.', '2025-01-21 15:53:04', 1, 4, '27.34.66.92'),
(780, 'SocialNetworking [Expedia] Edit Successfully', '2025-01-21 15:53:36', 1, 4, '103.10.28.144'),
(781, 'SocialNetworking [Expedia] Edit Successfully', '2025-01-21 15:55:12', 1, 4, '103.10.28.144'),
(782, 'SocialNetworking [Expedia] Edit Successfully', '2025-01-21 15:55:42', 1, 4, '103.10.28.144'),
(783, 'SocialNetworking [goibibo] Edit Successfully', '2025-01-21 15:56:39', 1, 4, '103.10.28.144'),
(784, 'SocialNetworking [make my trip] Edit Successfully', '2025-01-21 15:58:33', 1, 4, '103.10.28.144'),
(785, 'Successfully  Package Properties Settings', '2025-01-21 15:58:51', 1, 4, '103.10.28.144'),
(786, 'Login: superadmin logged in.', '2025-01-21 16:00:15', 1, 1, '103.10.28.144'),
(787, 'Login: admin logged in.', '2025-01-21 16:00:23', 1, 1, '103.10.28.144'),
(788, 'Package Meeting and Events Edit Successfully', '2025-01-21 16:00:25', 1, 4, '27.34.66.92'),
(789, 'Successfully  Package Properties Settings', '2025-01-21 16:01:29', 1, 4, '103.10.28.144'),
(790, 'Menu [Meeting & Events] Edit Successfully', '2025-01-21 16:01:30', 1, 4, '27.34.66.92'),
(791, 'Successfully News Properties Settings', '2025-01-21 16:03:19', 1, 4, '103.10.28.144'),
(792, 'Changes on Main service \'Rooftop Swimming Pool\' has been saved successfully.', '2025-01-21 16:12:41', 1, 4, '27.34.66.92'),
(793, 'Slideshow [Welcome to Bar Peepal Resort, Pokhara, Nepal] Edit Successfully', '2025-01-21 16:15:22', 1, 4, '27.34.66.92'),
(794, 'Slideshow [Experience unparalleled elegance and comfort in every room] Edit Successfully', '2025-01-21 16:15:59', 1, 4, '27.34.66.92'),
(795, 'Login: superadmin logged in.', '2025-01-21 16:16:01', 1, 1, '103.10.28.207'),
(796, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-21 16:21:25', 1, 4, '27.34.66.92'),
(797, 'Package Rooms Edit Successfully', '2025-01-21 16:22:15', 1, 4, '27.34.66.92'),
(798, 'Package Rooms and Suites Edit Successfully', '2025-01-21 16:23:46', 1, 4, '27.34.66.92'),
(799, 'Menu [Rooms & Suites] Edit Successfully', '2025-01-21 16:24:02', 1, 4, '27.34.66.92'),
(800, 'Successfully  Package Properties Settings', '2025-01-21 16:31:12', 1, 4, '103.10.28.207'),
(801, 'Successfully News Properties Settings', '2025-01-21 16:32:29', 1, 4, '103.10.28.207'),
(802, 'Successfully Preference Properties Settings', '2025-01-21 16:32:47', 1, 4, '103.10.28.207'),
(803, 'Successfully Preference Properties Settings', '2025-01-21 16:36:55', 1, 4, '103.10.28.207'),
(804, 'Successfully Preference Properties Settings', '2025-01-21 16:38:15', 1, 4, '103.10.28.207'),
(805, 'Successfully Preference Properties Settings', '2025-01-21 16:39:10', 1, 4, '103.10.28.207'),
(806, 'Successfully Preference Properties Settings', '2025-01-21 16:40:57', 1, 4, '103.10.28.207'),
(807, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-21 16:41:06', 1, 4, '27.34.66.92'),
(808, 'Successfully News Properties Settings', '2025-01-21 16:41:53', 1, 4, '103.10.28.207'),
(809, 'Successfully Testimonial Properties Settings', '2025-01-21 16:42:24', 1, 4, '103.10.28.207'),
(810, 'Successfully Gallery Properties Settings', '2025-01-21 16:43:43', 1, 4, '103.10.28.207'),
(811, 'Successfully Gallery Properties Settings', '2025-01-21 16:44:09', 1, 4, '103.10.28.207'),
(812, 'Successfully Articles Properties Settings', '2025-01-21 16:44:52', 1, 4, '103.10.28.207'),
(813, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-21 16:45:41', 1, 4, '27.34.66.92'),
(814, 'Changes on Sub Package \'Lamjung Restaurant\' has been saved successfully.', '2025-01-21 16:46:40', 1, 4, '27.34.66.92'),
(815, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-21 16:48:26', 1, 4, '103.10.28.207'),
(816, 'Changes on Sub Package \'Interconnected Deluxe Room\' has been saved successfully.', '2025-01-21 16:48:46', 1, 4, '103.10.28.207'),
(817, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-21 16:49:13', 1, 4, '103.10.28.207'),
(818, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-21 16:49:42', 1, 4, '103.10.28.207'),
(819, 'Gallery [Food]Data has added successfully.', '2025-01-21 16:51:46', 1, 3, '103.10.28.207'),
(820, 'Sub Gallery Image [Food]Data has added successfully.', '2025-01-21 16:53:12', 1, 3, '103.10.28.207'),
(821, 'Sub Gallery Image [Food]Data has added successfully.', '2025-01-21 16:53:12', 1, 3, '103.10.28.207'),
(822, 'Sub Gallery Image [Food]Data has added successfully.', '2025-01-21 16:53:12', 1, 3, '103.10.28.207'),
(823, 'Sub Gallery Image [Food]Data has added successfully.', '2025-01-21 16:55:01', 1, 3, '103.10.28.207'),
(824, 'Sub Gallery Image [Food]Data has added successfully.', '2025-01-21 16:55:01', 1, 3, '103.10.28.207'),
(825, 'Sub Gallery Image [Food]Data has added successfully.', '2025-01-21 16:55:01', 1, 3, '103.10.28.207'),
(826, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-21 17:08:13', 1, 4, '103.10.28.207'),
(827, 'Testimonial [Rebecca]Data has added successfully.', '2025-01-21 17:40:20', 1, 3, '103.10.28.207'),
(828, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-21 17:58:04', 1, 4, '103.10.28.207'),
(829, 'Changes on Main service \'Meeting & Events\' has been saved successfully.', '2025-01-21 17:59:53', 1, 4, '103.10.28.207'),
(830, 'Changes on Main service \'Rooftop Swimming Pool\' has been saved successfully.', '2025-01-21 18:01:55', 1, 4, '103.10.28.207'),
(831, 'Login: admin logged in.', '2025-01-22 07:55:04', 1, 1, '103.10.31.18'),
(832, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-22 07:58:36', 1, 4, '103.10.31.18'),
(833, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-22 08:01:07', 1, 4, '103.10.31.18'),
(834, 'Changes on Sub Package \'Interconnected Deluxe Room\' has been saved successfully.', '2025-01-22 08:03:10', 1, 4, '103.10.31.18'),
(835, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-22 08:05:58', 1, 4, '103.10.31.18'),
(836, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-22 08:08:33', 1, 4, '103.10.31.18'),
(837, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-22 08:11:18', 1, 4, '103.10.31.18'),
(838, 'Changes on Sub Package \'Lamjung Restaurant\' has been saved successfully.', '2025-01-22 08:12:54', 1, 4, '103.10.31.18'),
(839, 'Package Restaurant and Bar Edit Successfully', '2025-01-22 08:13:54', 1, 4, '103.10.31.18'),
(840, 'Changes on Sub Package \'ABC hall\' has been saved successfully.', '2025-01-22 08:16:24', 1, 4, '103.10.31.18'),
(841, 'Changes on Sub Package \'XYZ Hall\' has been saved successfully.', '2025-01-22 08:17:45', 1, 4, '103.10.31.18'),
(842, 'Package Meeting and Events Edit Successfully', '2025-01-22 08:18:18', 1, 4, '103.10.31.18'),
(843, 'Changes on Sub Package \'ABC hall\' has been saved successfully.', '2025-01-22 08:18:44', 1, 4, '103.10.31.18'),
(844, 'Changes on Sub Package \'XYZ Hall\' has been saved successfully.', '2025-01-22 08:19:02', 1, 4, '103.10.31.18'),
(845, 'Package Meeting and Events Edit Successfully', '2025-01-22 08:19:16', 1, 4, '103.10.31.18'),
(846, 'Package Rooms and Suites Edit Successfully', '2025-01-22 08:21:51', 1, 4, '103.10.31.18'),
(847, 'Changes on Wellness \'Rooftop Swimming Pool\' has been saved successfully.', '2025-01-22 08:24:27', 1, 4, '103.10.31.18'),
(848, 'Changes on Wellness \'AVEDA Wellness\' has been saved successfully.', '2025-01-22 08:35:50', 1, 4, '103.10.31.18'),
(849, 'Changes on Wellness \'Yoga\' has been saved successfully.', '2025-01-22 08:39:04', 1, 4, '103.10.31.18'),
(850, 'Login: admin logged in.', '2025-01-22 10:09:57', 1, 1, '27.34.66.92'),
(851, 'Login: admin logged in.', '2025-01-22 11:04:43', 1, 1, '103.10.28.152'),
(852, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-22 11:05:03', 1, 4, '103.10.28.152'),
(853, 'Login: admin logged in.', '2025-01-22 11:38:56', 1, 1, '103.10.28.152'),
(854, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-22 11:55:30', 1, 4, '103.10.28.152'),
(855, 'Login: admin logged in.', '2025-01-22 12:38:32', 1, 1, '103.10.28.152'),
(856, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-22 12:39:33', 1, 4, '103.10.28.152'),
(857, 'Package Rooms and Suites Edit Successfully', '2025-01-22 12:43:18', 1, 4, '103.10.28.152'),
(858, 'Package Rooms and Suites Edit Successfully', '2025-01-22 12:43:47', 1, 4, '103.10.28.152'),
(859, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-22 12:44:27', 1, 4, '103.10.28.152'),
(860, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-22 12:44:53', 1, 4, '103.10.28.152'),
(861, 'Login: admin logged in.', '2025-01-22 12:49:46', 1, 1, '103.10.28.152'),
(862, 'Package Rooms and Suites Edit Successfully', '2025-01-22 12:53:31', 1, 4, '103.10.28.152'),
(863, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-22 13:02:50', 1, 4, '103.10.28.152'),
(864, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-22 13:05:06', 1, 4, '103.10.28.152'),
(865, 'Login: admin logged in.', '2025-01-22 15:35:30', 1, 1, '103.10.28.152'),
(866, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-22 15:40:40', 1, 4, '103.10.28.152'),
(867, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-22 15:42:46', 1, 4, '103.10.28.152'),
(868, 'Login: superadmin logged in.', '2025-01-22 15:51:31', 1, 1, '38.255.149.222'),
(869, 'Changes on Wellness \'Yoga\' has been saved successfully.', '2025-01-22 15:57:28', 1, 4, '103.10.28.198'),
(870, 'Successfully Slideshow Properties Settings', '2025-01-22 16:00:43', 1, 4, '103.10.28.198'),
(871, 'Successfully Tour Package Properties Settings', '2025-01-22 16:06:02', 1, 4, '103.10.28.198'),
(872, 'Successfully Preference Properties Settings', '2025-01-22 16:07:21', 1, 4, '103.10.28.198'),
(873, 'Successfully Social Link Properties Settings', '2025-01-22 16:07:52', 1, 4, '103.10.28.198'),
(874, 'Login: admin logged in.', '2025-01-22 16:10:19', 1, 1, '103.10.28.198'),
(875, 'Login: admin logged in.', '2025-01-22 16:44:19', 1, 1, '103.10.28.198'),
(876, 'Login: admin logged in.', '2025-01-23 13:20:51', 1, 1, '27.34.66.92'),
(877, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-23 13:21:12', 1, 4, '27.34.66.92'),
(878, 'Login: admin logged in.', '2025-01-23 14:58:20', 1, 1, '27.34.66.92'),
(879, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-23 14:59:03', 1, 4, '27.34.66.92'),
(880, 'Services [Sauna & Steam] Edit Successfully', '2025-01-23 15:18:56', 1, 4, '27.34.66.92'),
(881, 'Services [Restaurant & Bar] Edit Successfully', '2025-01-23 15:19:38', 1, 4, '27.34.66.92'),
(882, 'Services [Room Service] Edit Successfully', '2025-01-23 15:20:42', 1, 4, '27.34.66.92'),
(883, 'Services [Newspaper (on request)] Edit Successfully', '2025-01-23 15:22:29', 1, 4, '27.34.66.92'),
(884, 'Services [Newspaper (on request)] Edit Successfully', '2025-01-23 15:24:44', 1, 4, '27.34.66.92'),
(885, 'SubPackage Gallery Image [Executive Suite]Data has deleted successfully.', '2025-01-23 15:27:59', 1, 6, '27.34.66.92'),
(886, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-23 16:08:59', 1, 4, '27.34.66.92'),
(887, 'User [Bar Peepal Resort  ] Edit Successfully', '2025-01-23 16:09:55', 1, 4, '27.34.66.92'),
(888, 'Login: admin logged in.', '2025-01-23 20:43:53', 1, 1, '27.34.66.92'),
(889, 'Features [Free Wifi] Edit Successfully', '2025-01-23 20:46:20', 1, 4, '27.34.66.92'),
(890, 'Features [LED TV] Edit Successfully', '2025-01-23 20:54:12', 1, 4, '27.34.66.92'),
(891, 'Features [Satellite Channels]Data has added successfully.', '2025-01-23 20:54:49', 1, 3, '27.34.66.92'),
(892, 'Features [Rain Shower] Edit Successfully', '2025-01-23 20:55:07', 1, 4, '27.34.66.92'),
(893, 'Features [Lake View]Data has added successfully.', '2025-01-23 21:03:41', 1, 3, '27.34.66.92'),
(894, 'Features [Automatic Coffee Brewer]Data has added successfully.', '2025-01-23 21:06:08', 1, 3, '27.34.66.92'),
(895, 'Features [Microwave Oven]Data has added successfully.', '2025-01-23 21:10:03', 1, 3, '27.34.66.92'),
(896, 'Features [Wakeup Service]Data has added successfully.', '2025-01-23 21:11:27', 1, 3, '27.34.66.92'),
(897, 'Features [Minibar]Data has added successfully.', '2025-01-23 21:12:29', 1, 3, '27.34.66.92'),
(898, 'Features [Separate Bathroom]Data has added successfully.', '2025-01-23 21:14:18', 1, 3, '27.34.66.92'),
(899, 'Features [Cookies Basket]Data has added successfully.', '2025-01-23 21:15:54', 1, 3, '27.34.66.92');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(900, 'Features [Living Space] Edit Successfully', '2025-01-23 21:16:16', 1, 4, '27.34.66.92'),
(901, 'Sub Package [room 3]Data has deleted successfully.', '2025-01-23 21:16:31', 1, 6, '27.34.66.92'),
(902, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-23 21:17:33', 1, 4, '27.34.66.92'),
(903, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-23 21:21:27', 1, 4, '27.34.66.92'),
(904, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-23 22:08:08', 1, 4, '27.34.66.92'),
(905, 'Changes on Sub Package \'Interconnected Deluxe Room\' has been saved successfully.', '2025-01-23 22:13:05', 1, 4, '27.34.66.92'),
(906, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-23 22:14:33', 1, 4, '27.34.66.92'),
(907, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-23 22:15:55', 1, 4, '27.34.66.92'),
(908, 'Features [Garden View]Data has added successfully.', '2025-01-23 22:19:27', 1, 3, '27.34.66.92'),
(909, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-23 22:19:45', 1, 4, '27.34.66.92'),
(910, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-23 22:36:34', 1, 4, '27.34.66.92'),
(911, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-23 22:38:04', 1, 4, '27.34.66.92'),
(912, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-23 22:39:21', 1, 4, '27.34.66.92'),
(913, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-23 22:40:33', 1, 4, '27.34.66.92'),
(914, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-23 22:44:36', 1, 4, '27.34.66.92'),
(915, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-23 22:49:29', 1, 4, '27.34.66.92'),
(916, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-23 22:50:39', 1, 4, '27.34.66.92'),
(917, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-23 22:51:12', 1, 4, '27.34.66.92'),
(918, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-23 22:51:59', 1, 4, '27.34.66.92'),
(919, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-23 22:52:37', 1, 4, '27.34.66.92'),
(920, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-23 22:53:51', 1, 4, '27.34.66.92'),
(921, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-23 22:59:21', 1, 4, '27.34.66.92'),
(922, 'Changes on Sub Package \'Dining Hall\' has been saved successfully.', '2025-01-23 23:00:36', 1, 4, '27.34.66.92'),
(923, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-23 23:01:37', 1, 4, '27.34.66.92'),
(924, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-23 23:02:00', 1, 4, '27.34.66.92'),
(925, 'Changes on Sub Package \'Lamjung Restaurant\' has been saved successfully.', '2025-01-23 23:02:42', 1, 4, '27.34.66.92'),
(926, 'Changes on Sub Package \'Dining Hall\' has been saved successfully.', '2025-01-23 23:03:19', 1, 4, '27.34.66.92'),
(927, 'Changes on Sub Package \'ABC hall\' has been saved successfully.', '2025-01-23 23:09:22', 1, 4, '27.34.66.92'),
(928, 'Changes on Sub Package \'XYZ Hall\' has been saved successfully.', '2025-01-23 23:09:47', 1, 4, '27.34.66.92'),
(929, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-23 23:14:54', 1, 4, '27.34.66.92'),
(930, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-23 23:16:20', 1, 4, '27.34.66.92'),
(931, 'Features [Sofa Seating]Data has added successfully.', '2025-01-23 23:22:58', 1, 3, '27.34.66.92'),
(932, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-23 23:23:20', 1, 4, '27.34.66.92'),
(933, 'Features [BBQ | Bon Fire]Data has added successfully.', '2025-01-23 23:28:26', 1, 3, '27.34.66.92'),
(934, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-23 23:28:38', 1, 4, '27.34.66.92'),
(935, 'Features [BBQ] Edit Successfully', '2025-01-23 23:30:25', 1, 4, '27.34.66.92'),
(936, 'Features [Bon Fire]Data has added successfully.', '2025-01-23 23:31:13', 1, 3, '27.34.66.92'),
(937, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-23 23:31:26', 1, 4, '27.34.66.92'),
(938, 'Login: admin logged in.', '2025-01-24 10:39:29', 1, 1, '103.10.28.135'),
(939, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-24 10:42:11', 1, 4, '103.10.28.135'),
(940, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-24 11:13:15', 1, 4, '103.10.28.135'),
(941, 'Login: superadmin logged in.', '2025-01-24 11:39:13', 1, 1, '27.34.26.41'),
(942, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-24 11:48:25', 1, 4, '103.10.28.135'),
(943, 'User Group [Administrator] Edit Successfully', '2025-01-24 11:53:30', 1, 4, '27.34.26.41'),
(944, 'User Group [General Admin] Edit Successfully', '2025-01-24 11:53:36', 1, 4, '27.34.26.41'),
(945, 'Offers [test]Data has added successfully.', '2025-01-24 11:54:36', 1, 3, '27.34.26.41'),
(946, 'Offers [test] Edit Successfully', '2025-01-24 11:54:51', 1, 4, '27.34.26.41'),
(947, 'Offers [test 2]Data has added successfully.', '2025-01-24 11:55:19', 1, 3, '27.34.26.41'),
(948, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-24 12:35:03', 1, 4, '103.10.28.135'),
(949, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-24 12:36:14', 1, 4, '103.10.28.135'),
(950, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-24 12:36:27', 1, 4, '103.10.28.135'),
(951, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-24 13:11:16', 1, 4, '103.10.28.135'),
(952, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-24 13:18:35', 1, 4, '103.10.28.135'),
(953, 'Login: admin logged in.', '2025-01-24 13:34:50', 1, 1, '103.10.28.135'),
(954, 'Login: superadmin logged in.', '2025-01-24 13:38:17', 1, 1, '27.34.26.41'),
(955, 'Offers [test 2] Edit Successfully', '2025-01-24 13:38:55', 1, 4, '27.34.26.41'),
(956, 'Login: admin logged in.', '2025-01-24 14:18:23', 1, 1, '103.10.28.135'),
(957, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-24 15:03:30', 1, 4, '103.10.28.135'),
(958, 'Login: admin logged in.', '2025-01-24 15:58:21', 1, 1, '27.34.66.92'),
(959, 'SubPackage Gallery Image [Junior Suite]Data has deleted successfully.', '2025-01-24 16:03:00', 1, 6, '27.34.66.92'),
(960, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-24 16:03:07', 1, 6, '27.34.66.92'),
(961, 'SubPackage Gallery Image [Junior Suite]Data has deleted successfully.', '2025-01-24 16:03:07', 1, 6, '27.34.66.92'),
(962, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-24 16:03:10', 1, 6, '27.34.66.92'),
(963, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-24 16:03:10', 1, 6, '27.34.66.92'),
(964, 'SubPackage Gallery Image [Junior Suite]Data has deleted successfully.', '2025-01-24 16:03:10', 1, 6, '27.34.66.92'),
(965, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-24 16:03:14', 1, 6, '27.34.66.92'),
(966, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-24 16:03:14', 1, 6, '27.34.66.92'),
(967, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-24 16:03:14', 1, 6, '27.34.66.92'),
(968, 'SubPackage Gallery Image [Junior Suite]Data has deleted successfully.', '2025-01-24 16:03:14', 1, 6, '27.34.66.92'),
(969, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-24 16:03:30', 1, 6, '27.34.66.92'),
(970, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-24 16:03:30', 1, 6, '27.34.66.92'),
(971, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-24 16:03:30', 1, 6, '27.34.66.92'),
(972, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-24 16:03:30', 1, 6, '27.34.66.92'),
(973, 'SubPackage Gallery Image [Junior Suite]Data has deleted successfully.', '2025-01-24 16:03:30', 1, 6, '27.34.66.92'),
(974, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-24 16:03:32', 1, 6, '27.34.66.92'),
(975, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-24 16:03:32', 1, 6, '27.34.66.92'),
(976, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-24 16:03:32', 1, 6, '27.34.66.92'),
(977, 'SubPackage Gallery Image [Junior Suite]Data has deleted successfully.', '2025-01-24 16:03:32', 1, 6, '27.34.66.92'),
(978, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-24 16:03:32', 1, 6, '27.34.66.92'),
(979, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-24 16:03:32', 1, 6, '27.34.66.92'),
(980, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-24 16:07:37', 1, 4, '27.34.66.92'),
(981, 'Sub Package Image [Junior Suite]Data has added successfully.', '2025-01-24 16:10:23', 1, 3, '27.34.66.92'),
(982, 'Sub Package Image [Junior Suite]Data has added successfully.', '2025-01-24 16:10:23', 1, 3, '27.34.66.92'),
(983, 'Sub Package Image [Junior Suite]Data has added successfully.', '2025-01-24 16:10:23', 1, 3, '27.34.66.92'),
(984, 'Sub Package Image [Junior Suite]Data has added successfully.', '2025-01-24 16:10:23', 1, 3, '27.34.66.92'),
(985, 'Sub Package Image [Junior Suite]Data has added successfully.', '2025-01-24 16:10:23', 1, 3, '27.34.66.92'),
(986, 'Sub Package Image [Junior Suite]Data has added successfully.', '2025-01-24 16:10:23', 1, 3, '27.34.66.92'),
(987, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-24 16:14:25', 1, 4, '27.34.66.92'),
(988, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-24 16:15:43', 1, 4, '27.34.66.92'),
(989, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-24 16:17:25', 1, 4, '27.34.66.92'),
(990, 'User [Bar Peepal Resort  ] Edit Successfully', '2025-01-24 16:21:27', 1, 4, '103.10.28.135'),
(991, 'Wellness \'GYM\' has added successfully.', '2025-01-24 16:23:01', 1, 3, '27.34.66.92'),
(992, 'Login: admin logged in.', '2025-01-24 16:23:08', 1, 1, '27.34.66.92'),
(993, 'Changes on Wellness \'Yoga\' has been saved successfully.', '2025-01-24 16:36:26', 1, 4, '27.34.66.92'),
(994, 'Login: admin logged in.', '2025-01-24 16:51:09', 1, 1, '103.10.28.135'),
(995, 'Login: superadmin logged in.', '2025-01-24 16:51:29', 1, 1, '103.10.28.135'),
(996, 'User Group [General Admin] Edit Successfully', '2025-01-24 16:51:41', 1, 4, '103.10.28.135'),
(997, 'Login: admin logged in.', '2025-01-24 16:51:50', 1, 1, '103.10.28.135'),
(998, 'Changes on Popup \'asefasdasd\' has been saved successfully.', '2025-01-24 16:52:03', 1, 4, '103.10.28.135'),
(999, 'Changes on Popup \'asefasdasd\' has been saved successfully.', '2025-01-24 16:53:07', 1, 4, '103.10.28.135'),
(1000, 'Login: admin logged in.', '2025-01-24 17:39:15', 1, 1, '103.10.28.135'),
(1001, 'Changes on Popup \'test\' has been saved successfully.', '2025-01-24 17:39:28', 1, 4, '103.10.28.135'),
(1002, 'Changes on Popup \'tests\' has been saved successfully.', '2025-01-24 17:39:38', 1, 4, '103.10.28.135'),
(1003, 'Login: admin logged in.', '2025-01-26 19:33:32', 1, 1, '43.245.86.33'),
(1004, 'Login: admin logged in.', '2025-01-26 20:20:25', 1, 1, '43.245.86.33'),
(1005, 'Login: admin logged in.', '2025-01-27 09:47:18', 1, 1, '43.245.86.33'),
(1006, 'Login: admin logged in.', '2025-01-27 10:01:47', 1, 1, '43.245.86.33'),
(1007, 'Gallery Image [Resort] Edit Successfully', '2025-01-27 10:02:13', 1, 4, '43.245.86.33'),
(1008, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-01-27 10:03:02', 1, 3, '43.245.86.33'),
(1009, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-01-27 10:03:02', 1, 3, '43.245.86.33'),
(1010, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-01-27 10:03:02', 1, 3, '43.245.86.33'),
(1011, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-01-27 10:03:02', 1, 3, '43.245.86.33'),
(1012, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-01-27 10:03:02', 1, 3, '43.245.86.33'),
(1013, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-01-27 10:03:02', 1, 3, '43.245.86.33'),
(1014, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-01-27 10:03:02', 1, 3, '43.245.86.33'),
(1015, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-01-27 10:03:02', 1, 3, '43.245.86.33'),
(1016, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-01-27 10:04:33', 1, 3, '43.245.86.33'),
(1017, 'Login: admin logged in.', '2025-01-27 11:10:34', 1, 1, '103.10.28.135'),
(1018, 'Sub Gallery Image [Food]Data has added successfully.', '2025-01-27 11:24:33', 1, 3, '103.10.28.135'),
(1019, 'Sub Gallery Image [Food]Data has added successfully.', '2025-01-27 11:24:33', 1, 3, '103.10.28.135'),
(1020, 'Sub Gallery Image [Food]Data has added successfully.', '2025-01-27 11:24:33', 1, 3, '103.10.28.135'),
(1021, 'Sub Gallery Image [Food]Data has added successfully.', '2025-01-27 11:24:33', 1, 3, '103.10.28.135'),
(1022, 'Sub Gallery Image [Food]Data has added successfully.', '2025-01-27 11:24:33', 1, 3, '103.10.28.135'),
(1023, 'Sub Gallery Image [Food]Data has added successfully.', '2025-01-27 11:24:33', 1, 3, '103.10.28.135'),
(1024, 'Sub Gallery Image [Food]Data has added successfully.', '2025-01-27 11:24:33', 1, 3, '103.10.28.135'),
(1025, 'Sub Gallery Image [Food]Data has added successfully.', '2025-01-27 11:24:33', 1, 3, '103.10.28.135'),
(1026, 'Sub Gallery Image [Food]Data has added successfully.', '2025-01-27 11:25:02', 1, 3, '103.10.28.135'),
(1027, 'Sub Gallery Image [Buffet]Data has added successfully.', '2025-01-27 11:32:33', 1, 3, '103.10.28.135'),
(1028, 'Sub Gallery Image [Buffet]Data has added successfully.', '2025-01-27 11:32:33', 1, 3, '103.10.28.135'),
(1029, 'Sub Gallery Image [Buffet]Data has added successfully.', '2025-01-27 11:32:33', 1, 3, '103.10.28.135'),
(1030, 'Sub Gallery Image [Buffet]Data has added successfully.', '2025-01-27 11:32:33', 1, 3, '103.10.28.135'),
(1031, 'Sub Gallery Image [Buffet]Data has added successfully.', '2025-01-27 11:32:33', 1, 3, '103.10.28.135'),
(1032, 'Sub Gallery Image [Buffet]Data has added successfully.', '2025-01-27 11:32:33', 1, 3, '103.10.28.135'),
(1033, 'Sub Gallery Image [Buffet]Data has added successfully.', '2025-01-27 11:32:33', 1, 3, '103.10.28.135'),
(1034, 'Sub Gallery Image [Buffet]Data has added successfully.', '2025-01-27 11:32:33', 1, 3, '103.10.28.135'),
(1035, 'Sub Gallery Image [Buffet]Data has added successfully.', '2025-01-27 11:32:33', 1, 3, '103.10.28.135'),
(1036, 'Sub Gallery Image [Barbique]Data has added successfully.', '2025-01-27 11:38:21', 1, 3, '103.10.28.135'),
(1037, 'Sub Gallery Image [Barbique]Data has added successfully.', '2025-01-27 11:38:21', 1, 3, '103.10.28.135'),
(1038, 'Sub Gallery Image [Barbique]Data has added successfully.', '2025-01-27 11:38:21', 1, 3, '103.10.28.135'),
(1039, 'Sub Gallery Image [try]Data has added successfully.', '2025-01-27 11:47:53', 1, 3, '103.10.28.135'),
(1040, 'Login: admin logged in.', '2025-01-27 11:48:26', 1, 1, '103.10.28.135'),
(1041, 'Sub Gallery Image [Coffee]Data has added successfully.', '2025-01-27 11:52:06', 1, 3, '103.10.28.135'),
(1042, 'Sub Gallery Image [Coffee]Data has added successfully.', '2025-01-27 11:53:15', 1, 3, '103.10.28.135'),
(1043, 'Sub Gallery Image [Coffee]Data has added successfully.', '2025-01-27 11:54:48', 1, 3, '103.10.28.135'),
(1044, 'Sub Gallery Image [Coffee]Data has added successfully.', '2025-01-27 11:54:48', 1, 3, '103.10.28.135'),
(1045, 'Sub Gallery Image [Coffee]Data has added successfully.', '2025-01-27 11:54:48', 1, 3, '103.10.28.135'),
(1046, 'Sub Gallery Image [Drinks]Data has added successfully.', '2025-01-27 12:05:58', 1, 3, '103.10.28.135'),
(1047, 'Sub Gallery Image [Drinks]Data has added successfully.', '2025-01-27 12:05:58', 1, 3, '103.10.28.135'),
(1048, 'Sub Gallery Image [Drinks]Data has added successfully.', '2025-01-27 12:05:58', 1, 3, '103.10.28.135'),
(1049, 'Sub Gallery Image [Drinks]Data has added successfully.', '2025-01-27 12:06:31', 1, 3, '103.10.28.135'),
(1050, 'Sub Gallery Image [Drinks]Data has added successfully.', '2025-01-27 12:06:31', 1, 3, '103.10.28.135'),
(1051, 'Sub Gallery Image [Drinks]Data has added successfully.', '2025-01-27 12:06:31', 1, 3, '103.10.28.135'),
(1052, 'Sub Gallery Image [Junior Suite]Data has added successfully.', '2025-01-27 12:23:28', 1, 3, '103.10.28.135'),
(1053, 'Sub Gallery Image [Junior Suite]Data has added successfully.', '2025-01-27 12:23:28', 1, 3, '103.10.28.135'),
(1054, 'Sub Gallery Image [Junior Suite]Data has added successfully.', '2025-01-27 12:23:28', 1, 3, '103.10.28.135'),
(1055, 'Sub Gallery Image [Bathroom]Data has added successfully.', '2025-01-27 12:32:20', 1, 3, '103.10.28.135'),
(1056, 'Sub Gallery Image [Bathroom]Data has added successfully.', '2025-01-27 12:32:20', 1, 3, '103.10.28.135'),
(1057, 'Sub Gallery Image [Bathroom]Data has added successfully.', '2025-01-27 12:32:20', 1, 3, '103.10.28.135'),
(1058, 'Sub Gallery Image [Bathroom]Data has added successfully.', '2025-01-27 12:32:20', 1, 3, '103.10.28.135'),
(1059, 'Sub Gallery Image [Bathroom]Data has added successfully.', '2025-01-27 12:32:20', 1, 3, '103.10.28.135'),
(1060, 'Sub Gallery Image [Bathroom]Data has added successfully.', '2025-01-27 12:32:20', 1, 3, '103.10.28.135'),
(1061, 'Login: admin logged in.', '2025-01-27 13:33:11', 1, 1, '27.34.66.122'),
(1062, 'Changes on Wellness \'GYM\' has been saved successfully.', '2025-01-27 13:33:28', 1, 4, '27.34.66.122'),
(1063, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-27 15:03:59', 1, 4, '27.34.66.122'),
(1064, 'Login: admin logged in.', '2025-01-27 15:08:41', 1, 1, '27.34.66.122'),
(1065, 'Changes on Sub Package \'Event hall with open garden\' has been saved successfully.', '2025-01-27 15:10:10', 1, 4, '27.34.66.122'),
(1066, 'Changes on Sub Package \'Event Hall with Open Garden\' has been saved successfully.', '2025-01-27 15:10:51', 1, 4, '27.34.66.122'),
(1067, 'Login: admin logged in.', '2025-01-27 16:26:15', 1, 1, '103.10.28.135'),
(1068, 'Changes on Sub Package \'Lamjung Restaurant\' has been saved successfully.', '2025-01-27 16:32:24', 1, 4, '103.10.28.135'),
(1069, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-27 16:50:52', 1, 4, '103.10.28.135'),
(1070, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-27 16:56:12', 1, 4, '103.10.28.135'),
(1071, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-27 17:04:42', 1, 4, '103.10.28.135'),
(1072, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-27 17:06:44', 1, 4, '103.10.28.135'),
(1073, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-27 17:11:35', 1, 4, '103.10.28.135'),
(1074, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-27 17:12:58', 1, 4, '103.10.28.135'),
(1075, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-27 17:13:38', 1, 4, '103.10.28.135'),
(1076, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-27 17:15:23', 1, 4, '103.10.28.135'),
(1077, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-27 17:18:24', 1, 4, '103.10.28.135'),
(1078, 'Login: admin logged in.', '2025-01-27 18:17:45', 1, 1, '27.34.66.122'),
(1079, 'Package Meeting and Events Edit Successfully', '2025-01-27 18:18:08', 1, 4, '27.34.66.122'),
(1080, 'Login: superadmin logged in.', '2025-01-27 18:18:21', 1, 1, '27.34.66.122'),
(1081, 'Successfully  Package Properties Settings', '2025-01-27 18:18:37', 1, 4, '27.34.66.122'),
(1082, 'SubPackage Gallery Image [ABC hall]Data has deleted successfully.', '2025-01-27 18:23:09', 1, 6, '27.34.66.122'),
(1083, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-27 18:23:12', 1, 6, '27.34.66.122'),
(1084, 'SubPackage Gallery Image [ABC hall]Data has deleted successfully.', '2025-01-27 18:23:12', 1, 6, '27.34.66.122'),
(1085, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-27 18:23:15', 1, 6, '27.34.66.122'),
(1086, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-27 18:23:15', 1, 6, '27.34.66.122'),
(1087, 'SubPackage Gallery Image [ABC hall]Data has deleted successfully.', '2025-01-27 18:23:15', 1, 6, '27.34.66.122'),
(1088, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-27 18:23:18', 1, 6, '27.34.66.122'),
(1089, 'SubPackage Gallery Image [ABC hall]Data has deleted successfully.', '2025-01-27 18:23:18', 1, 6, '27.34.66.122'),
(1090, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-27 18:23:18', 1, 6, '27.34.66.122'),
(1091, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-27 18:23:18', 1, 6, '27.34.66.122'),
(1092, 'Sub Package Image [Manjung Hall]Data has added successfully.', '2025-01-27 18:23:45', 1, 3, '27.34.66.122'),
(1093, 'Sub Package Image [Manjung Hall]Data has added successfully.', '2025-01-27 18:23:45', 1, 3, '27.34.66.122'),
(1094, 'Sub Package Image [Manjung Hall]Data has added successfully.', '2025-01-27 18:23:45', 1, 3, '27.34.66.122'),
(1095, 'Sub Package Image [Manjung Hall]Data has added successfully.', '2025-01-27 18:23:45', 1, 3, '27.34.66.122'),
(1096, 'Sub Package Image [Manjung Hall]Data has added successfully.', '2025-01-27 18:23:45', 1, 3, '27.34.66.122'),
(1097, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-27 18:26:33', 1, 4, '27.34.66.122'),
(1098, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-27 18:28:44', 1, 4, '27.34.66.122'),
(1099, 'Changes on Main service \'Meeting & Events\' has been saved successfully.', '2025-01-27 18:30:39', 1, 4, '27.34.66.122'),
(1100, 'Changes on Sub Package \'Executive Suite\' has been saved successfully.', '2025-01-27 18:36:09', 1, 4, '27.34.66.122'),
(1101, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-27 18:37:40', 1, 4, '27.34.66.122'),
(1102, 'Changes on Sub Package \'Super Deluxe Room\' has been saved successfully.', '2025-01-27 18:39:05', 1, 4, '27.34.66.122'),
(1103, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2025-01-27 18:39:42', 1, 4, '27.34.66.122'),
(1104, 'Changes on Sub Package \'Interconnected Deluxe Room\' has been saved successfully.', '2025-01-27 18:41:04', 1, 4, '27.34.66.122'),
(1105, 'Changes on Main service \'Meeting & Events\' has been saved successfully.', '2025-01-27 18:42:07', 1, 4, '27.34.66.122'),
(1106, 'Changes on Sub Package \'Event Hall with Open Garden\' has been saved successfully.', '2025-01-27 18:44:20', 1, 4, '27.34.66.122'),
(1107, 'SubPackage Gallery Image [XYZ Hall]Data has deleted successfully.', '2025-01-27 18:44:32', 1, 6, '27.34.66.122'),
(1108, 'SubPackage Gallery Image [XYZ Hall]Data has deleted successfully.', '2025-01-27 18:44:35', 1, 6, '27.34.66.122'),
(1109, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-27 18:44:35', 1, 6, '27.34.66.122'),
(1110, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-27 18:44:37', 1, 6, '27.34.66.122'),
(1111, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-27 18:44:37', 1, 6, '27.34.66.122'),
(1112, 'SubPackage Gallery Image [XYZ Hall]Data has deleted successfully.', '2025-01-27 18:44:37', 1, 6, '27.34.66.122'),
(1113, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-27 18:44:41', 1, 6, '27.34.66.122'),
(1114, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-27 18:44:41', 1, 6, '27.34.66.122'),
(1115, 'SubPackage Gallery Image [XYZ Hall]Data has deleted successfully.', '2025-01-27 18:44:41', 1, 6, '27.34.66.122'),
(1116, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-27 18:44:41', 1, 6, '27.34.66.122'),
(1117, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-27 18:44:52', 1, 4, '27.34.66.122'),
(1118, 'Menu [Manjung Hall] Edit Successfully', '2025-01-27 18:46:58', 1, 4, '27.34.66.122'),
(1119, 'Menu [Event Hall with Open Garden] Edit Successfully', '2025-01-27 18:47:14', 1, 4, '27.34.66.122'),
(1120, 'Package Meeting and Events Edit Successfully', '2025-01-27 18:50:19', 1, 4, '27.34.66.122'),
(1121, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-27 18:55:12', 1, 4, '27.34.66.122'),
(1122, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-27 18:56:06', 1, 4, '27.34.66.122'),
(1123, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-27 18:56:59', 1, 4, '27.34.66.122'),
(1124, 'Login: admin logged in.', '2025-01-27 22:41:36', 1, 1, '27.34.66.122'),
(1125, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-27 22:45:25', 1, 4, '27.34.66.122'),
(1126, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-27 22:46:13', 1, 4, '27.34.66.122'),
(1127, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-27 22:52:31', 1, 4, '27.34.66.122'),
(1128, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-27 22:54:13', 1, 4, '27.34.66.122'),
(1129, 'Package Meeting and Events Edit Successfully', '2025-01-27 22:55:17', 1, 4, '27.34.66.122'),
(1130, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-27 22:55:52', 1, 4, '27.34.66.122'),
(1131, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-27 22:56:29', 1, 4, '27.34.66.122'),
(1132, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-27 22:57:03', 1, 4, '27.34.66.122'),
(1133, 'Changes on Sub Package \'Event Hall with Open Garden\' has been saved successfully.', '2025-01-27 23:19:45', 1, 4, '27.34.66.122'),
(1134, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-27 23:20:03', 1, 4, '27.34.66.122'),
(1135, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-27 23:21:30', 1, 4, '27.34.66.122'),
(1136, 'Package Restaurant and Bar Edit Successfully', '2025-01-27 23:26:42', 1, 4, '27.34.66.122'),
(1137, 'Changes on Main service \'Rooftop Swimming Pool\' has been saved successfully.', '2025-01-27 23:29:34', 1, 4, '27.34.66.122'),
(1138, 'Changes on Main service \'Rooftop Swimming Pool\' has been saved successfully.', '2025-01-27 23:29:53', 1, 4, '27.34.66.122'),
(1139, 'Changes on Main service \'Rooftop Swimming Pool\' has been saved successfully.', '2025-01-27 23:30:18', 1, 4, '27.34.66.122'),
(1140, 'Changes on Wellness \'Rooftop Swimming Pool\' has been saved successfully.', '2025-01-27 23:32:59', 1, 4, '27.34.66.122'),
(1141, 'Changes on Wellness \'Rooftop Swimming Pool\' has been saved successfully.', '2025-01-27 23:33:20', 1, 4, '27.34.66.122'),
(1142, 'Changes on Wellness \'Rooftop Swimming Pool\' has been saved successfully.', '2025-01-27 23:33:37', 1, 4, '27.34.66.122'),
(1143, 'Changes on Sub Package \'Lamjung Kitchen\' has been saved successfully.', '2025-01-27 23:35:24', 1, 4, '27.34.66.122'),
(1144, 'SubPackage Gallery Image [Chautari Restro & Bar]Data has deleted successfully.', '2025-01-27 23:47:21', 1, 6, '27.34.66.122'),
(1145, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-27 23:47:25', 1, 6, '27.34.66.122'),
(1146, 'SubPackage Gallery Image [Chautari Restro & Bar]Data has deleted successfully.', '2025-01-27 23:47:25', 1, 6, '27.34.66.122'),
(1147, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-27 23:47:28', 1, 6, '27.34.66.122'),
(1148, 'SubPackage Gallery Image [Chautari Restro & Bar]Data has deleted successfully.', '2025-01-27 23:47:28', 1, 6, '27.34.66.122'),
(1149, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-27 23:47:28', 1, 6, '27.34.66.122'),
(1150, 'Sub Package Image [Chautari Restro & Bar]Data has added successfully.', '2025-01-27 23:48:15', 1, 3, '27.34.66.122'),
(1151, 'Sub Package Image [Chautari Restro & Bar]Data has added successfully.', '2025-01-27 23:48:15', 1, 3, '27.34.66.122'),
(1152, 'Sub Package Image [Chautari Restro & Bar]Data has added successfully.', '2025-01-27 23:48:15', 1, 3, '27.34.66.122'),
(1153, 'Sub Package Image [Chautari Restro & Bar]Data has added successfully.', '2025-01-27 23:48:15', 1, 3, '27.34.66.122'),
(1154, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-27 23:50:06', 1, 4, '27.34.66.122'),
(1155, 'Menu [Lamjung Kitchen] Edit Successfully', '2025-01-27 23:53:28', 1, 4, '27.34.66.122'),
(1156, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-27 23:54:52', 1, 4, '27.34.66.122'),
(1157, 'Changes on Sub Package \'Lamjung Kitchen\' has been saved successfully.', '2025-01-27 23:57:50', 1, 4, '27.34.66.122'),
(1158, 'Changes on Sub Package \'Dining Hall\' has been saved successfully.', '2025-01-27 23:58:31', 1, 4, '27.34.66.122'),
(1159, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-28 00:06:22', 1, 4, '27.34.66.122'),
(1160, 'SubPackage Gallery Image [Lamjung Restaurant]Data has deleted successfully.', '2025-01-28 00:11:16', 1, 6, '27.34.66.122'),
(1161, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-28 00:11:18', 1, 6, '27.34.66.122'),
(1162, 'SubPackage Gallery Image [Lamjung Restaurant]Data has deleted successfully.', '2025-01-28 00:11:18', 1, 6, '27.34.66.122'),
(1163, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-28 00:11:21', 1, 6, '27.34.66.122'),
(1164, 'SubPackage Gallery Image [Lamjung Restaurant]Data has deleted successfully.', '2025-01-28 00:11:21', 1, 6, '27.34.66.122'),
(1165, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-28 00:11:21', 1, 6, '27.34.66.122'),
(1166, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-28 00:11:25', 1, 6, '27.34.66.122'),
(1167, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-28 00:11:25', 1, 6, '27.34.66.122'),
(1168, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-28 00:11:25', 1, 6, '27.34.66.122'),
(1169, 'SubPackage Gallery Image [Lamjung Restaurant]Data has deleted successfully.', '2025-01-28 00:11:25', 1, 6, '27.34.66.122'),
(1170, 'Sub Package Image [Lamjung Kitchen]Data has added successfully.', '2025-01-28 00:11:52', 1, 3, '27.34.66.122'),
(1171, 'Sub Package Image [Lamjung Kitchen]Data has added successfully.', '2025-01-28 00:11:52', 1, 3, '27.34.66.122'),
(1172, 'Sub Package Image [Lamjung Kitchen]Data has added successfully.', '2025-01-28 00:11:52', 1, 3, '27.34.66.122'),
(1173, 'Sub Package Image [Lamjung Kitchen]Data has added successfully.', '2025-01-28 00:11:52', 1, 3, '27.34.66.122'),
(1174, 'Sub Package Image [Lamjung Kitchen]Data has added successfully.', '2025-01-28 00:11:52', 1, 3, '27.34.66.122'),
(1175, 'Login: superadmin logged in.', '2025-01-28 09:35:07', 1, 1, '27.34.65.100'),
(1176, 'Login: admin logged in.', '2025-01-28 10:00:39', 1, 1, '27.34.66.122'),
(1177, 'User [Bar Peepal Resort  ] Edit Successfully', '2025-01-28 10:00:55', 1, 4, '27.34.66.122'),
(1178, 'Login: admin logged in.', '2025-01-28 10:01:02', 1, 1, '27.34.66.122'),
(1179, 'User [Bar Peepal Resort  ] Edit Successfully', '2025-01-28 10:01:24', 1, 4, '27.34.66.122'),
(1180, 'Login: admin logged in.', '2025-01-28 10:01:31', 1, 1, '27.34.66.122'),
(1181, 'Menu  [test]Data has deleted successfully.', '2025-01-28 10:01:41', 1, 6, '27.34.66.122'),
(1182, 'Menu [Rooms] Edit Successfully', '2025-01-28 10:01:58', 1, 4, '27.34.66.122'),
(1183, 'Menu [Rooms & Suites] Edit Successfully', '2025-01-28 10:02:12', 1, 4, '27.34.66.122'),
(1184, 'Menu [Meeting & Events] Edit Successfully', '2025-01-28 10:02:33', 1, 4, '27.34.66.122'),
(1185, 'Package Rooms and Suites Edit Successfully', '2025-01-28 10:05:15', 1, 4, '27.34.66.122'),
(1186, 'Changes on Sub Package \'Interconnected Deluxe Room\' has been saved successfully.', '2025-01-28 10:06:07', 1, 4, '27.34.66.122'),
(1187, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-28 10:20:00', 1, 4, '27.34.66.122'),
(1188, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-28 10:20:36', 1, 4, '27.34.66.122'),
(1189, 'SubPackage Gallery Image [fwef]Data has deleted successfully.', '2025-01-28 10:24:33', 1, 6, '27.34.66.122'),
(1190, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-28 10:24:36', 1, 6, '27.34.66.122'),
(1191, 'SubPackage Gallery Image [sadf]Data has deleted successfully.', '2025-01-28 10:24:36', 1, 6, '27.34.66.122'),
(1192, 'Sub Package Image [Dining Hall]Data has added successfully.', '2025-01-28 10:24:53', 1, 3, '27.34.66.122'),
(1193, 'Sub Package Image [Dining Hall]Data has added successfully.', '2025-01-28 10:24:53', 1, 3, '27.34.66.122'),
(1194, 'Sub Package Image [Dining Hall]Data has added successfully.', '2025-01-28 10:24:53', 1, 3, '27.34.66.122'),
(1195, 'Sub Package Image [Dining Hall]Data has added successfully.', '2025-01-28 10:24:53', 1, 3, '27.34.66.122'),
(1196, 'Changes on Sub Package \'Dining Hall\' has been saved successfully.', '2025-01-28 10:25:53', 1, 4, '27.34.66.122'),
(1197, 'Changes on Sub Package \'Dining Hall\' has been saved successfully.', '2025-01-28 10:27:47', 1, 4, '27.34.66.122'),
(1198, 'Changes on Sub Package \'Dining Hall\' has been saved successfully.', '2025-01-28 10:29:05', 1, 4, '27.34.66.122'),
(1199, 'Changes on Sub Package \'Dining Hall\' has been saved successfully.', '2025-01-28 10:30:06', 1, 4, '27.34.66.122'),
(1200, 'Menu [Dining Hall] CreatedData has added successfully.', '2025-01-28 10:30:39', 1, 3, '27.34.66.122'),
(1201, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-28 10:32:58', 1, 4, '27.34.66.122'),
(1202, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-28 10:35:51', 1, 4, '27.34.66.122'),
(1203, 'SubPackage Gallery Image [Lamjung Kitchen]Data has deleted successfully.', '2025-01-28 10:39:02', 1, 6, '27.34.66.122'),
(1204, 'SubPackage Gallery Image [Lamjung Kitchen]Data has deleted successfully.', '2025-01-28 10:39:05', 1, 6, '27.34.66.122'),
(1205, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-28 10:39:05', 1, 6, '27.34.66.122'),
(1206, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-28 10:39:08', 1, 6, '27.34.66.122'),
(1207, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-28 10:39:08', 1, 6, '27.34.66.122'),
(1208, 'SubPackage Gallery Image [Lamjung Kitchen]Data has deleted successfully.', '2025-01-28 10:39:08', 1, 6, '27.34.66.122'),
(1209, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-28 10:39:11', 1, 6, '27.34.66.122'),
(1210, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-28 10:39:11', 1, 6, '27.34.66.122'),
(1211, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-28 10:39:11', 1, 6, '27.34.66.122'),
(1212, 'SubPackage Gallery Image [Lamjung Kitchen]Data has deleted successfully.', '2025-01-28 10:39:11', 1, 6, '27.34.66.122'),
(1213, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-28 10:39:14', 1, 6, '27.34.66.122'),
(1214, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-28 10:39:14', 1, 6, '27.34.66.122'),
(1215, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-28 10:39:14', 1, 6, '27.34.66.122'),
(1216, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-01-28 10:39:14', 1, 6, '27.34.66.122'),
(1217, 'SubPackage Gallery Image [Lamjung Kitchen]Data has deleted successfully.', '2025-01-28 10:39:14', 1, 6, '27.34.66.122'),
(1218, 'Sub Package Image [Lamjung Kitchen]Data has added successfully.', '2025-01-28 10:39:38', 1, 3, '27.34.66.122'),
(1219, 'Sub Package Image [Lamjung Kitchen]Data has added successfully.', '2025-01-28 10:39:38', 1, 3, '27.34.66.122'),
(1220, 'Sub Package Image [Lamjung Kitchen]Data has added successfully.', '2025-01-28 10:39:38', 1, 3, '27.34.66.122'),
(1221, 'Sub Package Image [Lamjung Kitchen]Data has added successfully.', '2025-01-28 10:39:38', 1, 3, '27.34.66.122'),
(1222, 'Sub Package Image [Lamjung Kitchen]Data has added successfully.', '2025-01-28 10:39:38', 1, 3, '27.34.66.122'),
(1223, 'Sub Package Image [Lamjung Kitchen]Data has added successfully.', '2025-01-28 10:39:38', 1, 3, '27.34.66.122'),
(1224, 'Sub Package Image [Lamjung Kitchen]Data has added successfully.', '2025-01-28 10:39:38', 1, 3, '27.34.66.122'),
(1225, 'Changes on Sub Package \'Lamjung Kitchen\' has been saved successfully.', '2025-01-28 10:40:58', 1, 4, '27.34.66.122'),
(1226, 'Changes on Sub Package \'Dining Hall\' has been saved successfully.', '2025-01-28 10:41:42', 1, 4, '27.34.66.122'),
(1227, 'Changes on Sub Package \'Lamjung Kitchen\' has been saved successfully.', '2025-01-28 10:42:12', 1, 4, '27.34.66.122'),
(1228, 'Changes on Sub Package \'Lamjung Kitchen\' has been saved successfully.', '2025-01-28 10:43:28', 1, 4, '27.34.66.122'),
(1229, 'Changes on Sub Package \'Dining Hall\' has been saved successfully.', '2025-01-28 10:43:50', 1, 4, '27.34.66.122'),
(1230, 'Changes on Sub Package \'Lamjung Kitchen\' has been saved successfully.', '2025-01-28 10:44:35', 1, 4, '27.34.66.122'),
(1231, 'Changes on Sub Package \'Lamjung Kitchen\' has been saved successfully.', '2025-01-28 10:45:08', 1, 4, '27.34.66.122'),
(1232, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-28 10:46:03', 1, 4, '27.34.66.122'),
(1233, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-28 10:54:48', 1, 4, '27.34.26.41'),
(1234, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-28 11:02:09', 1, 4, '27.34.26.41'),
(1235, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-28 11:02:34', 1, 4, '27.34.26.41'),
(1236, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-28 11:03:36', 1, 4, '27.34.26.41'),
(1237, 'Changes on Sub Package \'Event Hall with Open Garden\' has been saved successfully.', '2025-01-28 11:06:23', 1, 4, '27.34.26.41'),
(1238, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-28 11:06:53', 1, 4, '27.34.26.41'),
(1239, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2025-01-28 11:08:26', 1, 4, '27.34.66.122'),
(1240, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-28 11:13:58', 1, 4, '27.34.66.122'),
(1241, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-28 11:14:39', 1, 4, '27.34.66.122'),
(1242, 'Features [Live Music (on request)] Edit Successfully', '2025-01-28 11:15:46', 1, 4, '27.34.66.122'),
(1243, 'Changes on Sub Package \'Lamjung Kitchen\' has been saved successfully.', '2025-01-28 11:18:09', 1, 4, '27.34.66.122'),
(1244, 'Features [Easy access to deck area]Data has added successfully.', '2025-01-28 11:21:29', 1, 3, '27.34.66.122'),
(1245, 'Changes on Sub Package \'Dining Hall\' has been saved successfully.', '2025-01-28 11:22:12', 1, 4, '27.34.66.122'),
(1246, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-28 11:25:05', 1, 4, '27.34.66.122'),
(1247, 'Features [Seperate Kitchen]Data has added successfully.', '2025-01-28 11:26:04', 1, 3, '27.34.66.122'),
(1248, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-28 11:26:39', 1, 4, '27.34.66.122'),
(1249, 'Changes on Wellness \'Rooftop Swimming Pool\' has been saved successfully.', '2025-01-28 11:45:02', 1, 4, '27.34.66.122'),
(1250, 'Login: admin logged in.', '2025-01-28 12:26:28', 1, 1, '103.10.28.202'),
(1251, 'Sub Gallery Image  [Swimming Pool]Data has deleted successfully.', '2025-01-28 12:27:03', 1, 6, '103.10.28.202'),
(1252, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:27:07', 1, 6, '103.10.28.202'),
(1253, 'Sub Gallery Image  [Swimming Pool]Data has deleted successfully.', '2025-01-28 12:27:07', 1, 6, '103.10.28.202'),
(1254, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:27:07', 1, 6, '103.10.28.202'),
(1255, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:27:07', 1, 6, '103.10.28.202'),
(1256, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:27:31', 1, 6, '103.10.28.202'),
(1257, 'Sub Gallery Image  [Swimming Pool]Data has deleted successfully.', '2025-01-28 12:27:31', 1, 6, '103.10.28.202'),
(1258, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:27:31', 1, 6, '103.10.28.202'),
(1259, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:27:35', 1, 6, '103.10.28.202'),
(1260, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:27:35', 1, 6, '103.10.28.202'),
(1261, 'Sub Gallery Image  [Swimming Pool]Data has deleted successfully.', '2025-01-28 12:27:35', 1, 6, '103.10.28.202'),
(1262, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:27:35', 1, 6, '103.10.28.202'),
(1263, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:27:35', 1, 6, '103.10.28.202'),
(1264, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:27:35', 1, 6, '103.10.28.202'),
(1265, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:27:35', 1, 6, '103.10.28.202'),
(1266, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:27:35', 1, 6, '103.10.28.202'),
(1267, 'Login: admin logged in.', '2025-01-28 12:31:41', 1, 1, '27.34.26.41'),
(1268, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-28 12:32:26', 1, 4, '27.34.26.41'),
(1269, 'Changes on Sub Package \'Event Hall with Open Garden\' has been saved successfully.', '2025-01-28 12:32:43', 1, 4, '27.34.26.41'),
(1270, 'Changes on Sub Package \'Chautari Restro & Bar\' has been saved successfully.', '2025-01-28 12:32:59', 1, 4, '27.34.26.41'),
(1271, 'Changes on Sub Package \'Lamjung Kitchen\' has been saved successfully.', '2025-01-28 12:33:42', 1, 4, '27.34.26.41'),
(1272, 'Changes on Sub Package \'Dining Hall\' has been saved successfully.', '2025-01-28 12:34:12', 1, 4, '27.34.26.41'),
(1273, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-28 12:35:00', 1, 4, '27.34.26.41'),
(1274, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-28 12:35:31', 1, 4, '27.34.26.41'),
(1275, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-28 12:36:02', 1, 4, '27.34.26.41'),
(1276, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-28 12:38:32', 1, 4, '27.34.26.41'),
(1277, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-28 12:40:55', 1, 4, '27.34.26.41'),
(1278, 'Article \'about us homepage\' has added successfully.', '2025-01-28 12:43:04', 1, 3, '27.34.26.41'),
(1279, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-28 12:43:23', 1, 4, '27.34.26.41'),
(1280, 'Changes on Article \'About us\' has been saved successfully.', '2025-01-28 12:44:30', 1, 4, '27.34.26.41'),
(1281, 'Sub Gallery Image [Swimming Pool]Data has added successfully.', '2025-01-28 12:48:19', 1, 3, '103.10.28.202'),
(1282, 'Sub Gallery Image [Swimming Pool]Data has added successfully.', '2025-01-28 12:48:19', 1, 3, '103.10.28.202'),
(1283, 'Sub Gallery Image [Swimming Pool\\]Data has added successfully.', '2025-01-28 12:48:19', 1, 3, '103.10.28.202'),
(1284, 'Gallery Image [Swimming Pool] Edit Successfully', '2025-01-28 12:48:30', 1, 4, '103.10.28.202'),
(1285, 'Sub Gallery Image  [Meeting Hall]Data has deleted successfully.', '2025-01-28 12:50:38', 1, 6, '103.10.28.202'),
(1286, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:50:38', 1, 6, '103.10.28.202'),
(1287, 'Sub Gallery Image  [Meeting Hall]Data has deleted successfully.', '2025-01-28 12:50:41', 1, 6, '103.10.28.202'),
(1288, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:50:41', 1, 6, '103.10.28.202'),
(1289, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:50:41', 1, 6, '103.10.28.202'),
(1290, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:50:42', 1, 6, '103.10.28.202'),
(1291, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:50:45', 1, 6, '103.10.28.202'),
(1292, 'Sub Gallery Image  [Meeting Hall]Data has deleted successfully.', '2025-01-28 12:50:45', 1, 6, '103.10.28.202'),
(1293, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:50:45', 1, 6, '103.10.28.202'),
(1294, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:50:49', 1, 6, '103.10.28.202'),
(1295, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:50:49', 1, 6, '103.10.28.202'),
(1296, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:50:49', 1, 6, '103.10.28.202'),
(1297, 'Sub Gallery Image  [Meeting Hall]Data has deleted successfully.', '2025-01-28 12:50:49', 1, 6, '103.10.28.202'),
(1298, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:50:49', 1, 6, '103.10.28.202'),
(1299, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:50:49', 1, 6, '103.10.28.202'),
(1300, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:50:49', 1, 6, '103.10.28.202'),
(1301, 'Sub Gallery Image  []Data has deleted successfully.', '2025-01-28 12:50:49', 1, 6, '103.10.28.202'),
(1302, 'Sub Gallery Image [Meeting Halls]Data has added successfully.', '2025-01-28 12:51:17', 1, 3, '103.10.28.202'),
(1303, 'Sub Gallery Image [Meeting Halls]Data has added successfully.', '2025-01-28 12:51:17', 1, 3, '103.10.28.202'),
(1304, 'Sub Gallery Image [Meeting Halls]Data has added successfully.', '2025-01-28 12:51:17', 1, 3, '103.10.28.202'),
(1305, 'Login: admin logged in.', '2025-01-28 12:51:54', 1, 1, '103.10.28.202'),
(1306, 'Gallery [Health & Beauty]Data has added successfully.', '2025-01-28 12:58:51', 1, 3, '103.10.28.202'),
(1307, 'Sub Gallery Image [SPA]Data has added successfully.', '2025-01-28 12:59:48', 1, 3, '103.10.28.202'),
(1308, 'Sub Gallery Image [SPA]Data has added successfully.', '2025-01-28 12:59:48', 1, 3, '103.10.28.202'),
(1309, 'Sub Gallery Image [SPA]Data has added successfully.', '2025-01-28 12:59:48', 1, 3, '103.10.28.202'),
(1310, 'Sub Gallery Image [Gym]Data has added successfully.', '2025-01-28 13:02:43', 1, 3, '103.10.28.202'),
(1311, 'Sub Gallery Image [Gym]Data has added successfully.', '2025-01-28 13:02:43', 1, 3, '103.10.28.202'),
(1312, 'Sub Gallery Image [Gym]Data has added successfully.', '2025-01-28 13:02:43', 1, 3, '103.10.28.202'),
(1313, 'Sub Gallery Image [Yoga]Data has added successfully.', '2025-01-28 13:03:09', 1, 3, '103.10.28.202'),
(1314, 'Sub Gallery Image [Yoga]Data has added successfully.', '2025-01-28 13:03:09', 1, 3, '103.10.28.202'),
(1315, 'Sub Gallery Image [Yoga]Data has added successfully.', '2025-01-28 13:03:09', 1, 3, '103.10.28.202'),
(1316, 'Features [Seperate Kitchen] Edit Successfully', '2025-01-28 13:04:04', 1, 4, '27.34.66.122'),
(1317, 'Sub Gallery Image [Steam]Data has added successfully.', '2025-01-28 13:04:07', 1, 3, '103.10.28.202'),
(1318, 'Sub Gallery Image [Sauna]Data has added successfully.', '2025-01-28 13:04:07', 1, 3, '103.10.28.202'),
(1319, 'Sub Gallery Image [Steam]Data has added successfully.', '2025-01-28 13:04:07', 1, 3, '103.10.28.202'),
(1320, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-28 13:05:40', 1, 4, '27.34.66.122'),
(1321, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-28 13:08:07', 1, 4, '27.34.66.122'),
(1322, 'Features [Stationary]Data has added successfully.', '2025-01-28 13:09:56', 1, 3, '27.34.66.122'),
(1323, 'Features [Printing Service]Data has added successfully.', '2025-01-28 13:10:40', 1, 3, '27.34.66.122'),
(1324, 'Features [Projector]Data has added successfully.', '2025-01-28 13:11:31', 1, 3, '27.34.66.122'),
(1325, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-28 13:12:23', 1, 4, '27.34.66.122'),
(1326, 'Features [Audio Visual Equipment]Data has added successfully.', '2025-01-28 13:13:45', 1, 3, '27.34.66.122'),
(1327, 'Changes on Sub Package \'Manjung Hall\' has been saved successfully.', '2025-01-28 13:13:56', 1, 4, '27.34.66.122'),
(1328, 'Changes on Sub Package \'Event Hall with Open Garden\' has been saved successfully.', '2025-01-28 13:14:26', 1, 4, '27.34.66.122'),
(1329, 'Changes on Sub Package \'Event Hall with Open Garden\' has been saved successfully.', '2025-01-28 13:16:20', 1, 4, '27.34.66.122'),
(1330, 'Changes on Sub Package \'Event Hall with Open Garden\' has been saved successfully.', '2025-01-28 13:17:01', 1, 4, '27.34.66.122'),
(1331, 'Changes on Wellness \'Yoga\' has been saved successfully.', '2025-01-28 13:19:55', 1, 4, '27.34.66.122'),
(1332, 'Changes on Wellness \'Rooftop Swimming Pool\' has been saved successfully.', '2025-01-28 13:23:49', 1, 4, '27.34.66.122'),
(1333, 'Changes on Wellness \'AVEDA Wellness\' has been saved successfully.', '2025-01-28 13:33:32', 1, 4, '103.10.28.202'),
(1334, 'Sub Package Image [Lamjung Kitchen]Data has added successfully.', '2025-01-28 13:34:54', 1, 3, '27.34.66.122'),
(1335, 'SubPackage Gallery Image [Lamjung Kitchen]Data has deleted successfully.', '2025-01-28 13:35:55', 1, 6, '27.34.66.122'),
(1336, 'Features [Easy access to deck area] Edit Successfully', '2025-01-28 13:37:25', 1, 4, '27.34.66.122'),
(1337, 'Sub Package Image [Dining Hall]Data has added successfully.', '2025-01-28 13:37:53', 1, 3, '103.10.28.202'),
(1338, 'Features [Easy access to deck area] Edit Successfully', '2025-01-28 13:38:07', 1, 4, '27.34.66.122'),
(1339, 'Sub Package Image [Corridor]Data has added successfully.', '2025-01-28 14:16:24', 1, 3, '103.10.28.202'),
(1340, 'Sub Package Image [Corridor]Data has added successfully.', '2025-01-28 14:16:57', 1, 3, '103.10.28.202');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1341, 'Sub Package Image [Corridor]Data has added successfully.', '2025-01-28 14:20:02', 1, 3, '103.10.28.202'),
(1342, 'Sub Package Image [Corridor]Data has added successfully.', '2025-01-28 14:21:50', 1, 3, '103.10.28.202'),
(1343, 'Sub Package Image [Corridor]Data has added successfully.', '2025-01-28 14:22:41', 1, 3, '103.10.28.202'),
(1344, 'Login: admin logged in.', '2025-01-28 14:23:16', 1, 1, '103.10.28.202'),
(1345, 'Login: admin logged in.', '2025-01-28 15:05:10', 1, 1, '103.10.28.202'),
(1346, 'Sub Gallery Image [Spa]Data has added successfully.', '2025-01-28 15:07:36', 1, 3, '103.10.28.202'),
(1347, 'Changes on Wellness \'AVEDA Wellness\' has been saved successfully.', '2025-01-28 15:09:44', 1, 4, '103.10.28.202'),
(1348, 'Login: superadmin logged in.', '2025-01-28 16:35:31', 1, 1, '103.10.28.202'),
(1349, 'Changes on Article \'about us homepage\' has been saved successfully.', '2025-01-28 16:36:04', 1, 4, '103.10.28.202'),
(1350, 'Changes on Article \'about us homepage\' has been saved successfully.', '2025-01-28 16:36:24', 1, 4, '103.10.28.202'),
(1351, 'Changes on Article \'about us homepage\' has been saved successfully.', '2025-01-28 16:36:44', 1, 4, '103.10.28.202'),
(1352, 'Changes on Article \'about us homepage\' has been saved successfully.', '2025-01-28 16:37:05', 1, 4, '103.10.28.202'),
(1353, 'Login: admin logged in.', '2025-01-28 16:50:35', 1, 1, '27.34.66.122'),
(1354, 'Login: admin logged in.', '2025-01-28 17:09:45', 1, 1, '103.10.28.202'),
(1355, 'Login: admin logged in.', '2025-01-28 17:37:50', 1, 1, '103.10.28.202'),
(1356, 'Sub Gallery Image [Corridor]Data has added successfully.', '2025-01-28 17:45:08', 1, 3, '103.10.28.202'),
(1357, 'Login: admin logged in.', '2025-01-28 19:57:14', 1, 1, '111.119.49.57'),
(1358, 'Changes on Article \'about us homepage\' has been saved successfully.', '2025-01-28 19:57:57', 1, 4, '111.119.49.57'),
(1359, 'Login: admin logged in.', '2025-01-29 12:55:28', 1, 1, '182.93.83.55'),
(1360, 'Changes on Sub Package \'Lamjung Kitchen\' has been saved successfully.', '2025-01-29 12:56:48', 1, 4, '182.93.83.55'),
(1361, 'Login: admin logged in.', '2025-01-29 18:05:20', 1, 1, '103.10.28.201'),
(1362, 'Login: admin logged in.', '2025-01-29 21:45:19', 1, 1, '103.163.182.114'),
(1363, 'Menu [Offers] CreatedData has added successfully.', '2025-01-29 21:45:53', 1, 3, '103.163.182.114'),
(1364, 'Login: admin logged in.', '2025-01-30 07:21:13', 1, 1, '103.156.26.78'),
(1365, 'Login: admin logged in.', '2025-01-30 13:03:32', 1, 1, '27.34.66.122'),
(1366, 'Offers  [test 2]Data has deleted successfully.', '2025-01-30 13:04:33', 1, 6, '27.34.66.122'),
(1367, 'Offers  [test]Data has deleted successfully.', '2025-01-30 13:04:33', 1, 6, '27.34.66.122'),
(1368, 'Offers [Monsoon Offer]Data has added successfully.', '2025-01-30 13:05:03', 1, 3, '27.34.66.122'),
(1369, 'Login: admin logged in.', '2025-01-30 14:10:30', 1, 1, '103.10.28.196'),
(1370, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-30 14:23:29', 1, 4, '103.10.28.196'),
(1371, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-30 14:25:22', 1, 4, '103.10.28.196'),
(1372, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-30 14:30:21', 1, 4, '103.10.28.196'),
(1373, 'Changes on Config \'Bar Beepal Resort\' has been saved successfully.', '2025-01-30 14:30:54', 1, 4, '103.10.28.196');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs_action`
--

CREATE TABLE `tbl_logs_action` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bgcolor` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_logs_action`
--

INSERT INTO `tbl_logs_action` (`id`, `title`, `icon`, `bgcolor`) VALUES
(1, 'Login', 'icon-sign-in', 'bg-blue'),
(2, 'Logout', 'icon-sign-out', 'primary-bg'),
(3, 'Add', 'icon-plus-circle', 'bg-green'),
(4, 'Edit', 'icon-edit', 'bg-blue-alt'),
(5, 'Copy', 'icon-copy', 'ui-state-default'),
(6, 'Delete', 'icon-clock-os-circle', 'bg-red');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mainservices`
--

CREATE TABLE `tbl_mainservices` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT '0',
  `linksrc` tinytext NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(11) NOT NULL DEFAULT '0',
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mainservices`
--

INSERT INTO `tbl_mainservices` (`id`, `parent_id`, `slug`, `title`, `sub_title`, `content`, `linktype`, `linksrc`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `modified_date`, `sortorder`, `homepage`, `image`, `date`, `category`) VALUES
(7, 0, 'meeting-events', 'Meeting & Events', 'Meeting & Events', '<div class=\"text\" style=\"text-align: justify;\">\r\n	Bar Peepal Resort provides exceptional venues for conferences and events, accommodating up to 300 guests. Whether you&#39;re planning a small meeting or a large conference, our serene and relaxing environment is perfect for your business needs. We offer first-class catering and the latest technology to ensure your event runs smoothly and successfully..</div>\r\n', 1, 'meeting-and-events', 1, 'Meeting & Events', 'Meeting & Events, Conference, Accommodation, Venues, Business, Catering, Technology, Serene, Discussion, Gathering, Decision Making\r\n', 'Bar Peepal Resort provides exceptional venues for conferences and events, accommodating up to 300 guests. Whether you\'re planning a small meeting or a large conference, our serene and relaxing environment is perfect for your business needs. We offer ', 0, '2024-12-30 16:50:00', '2025-01-27 18:42:07', 1, 1, 0x613a313a7b693a303b733a31353a224d3337764e2d68616c6c362e6a7067223b7d, '', ''),
(6, 0, 'rooftop-swimming-pool', 'Rooftop Swimming Pool', 'Rooftop Swimming Pool', '<div class=\"text\" style=\"text-align: justify;\">\r\n	Dive into luxury at Bar Peepal Resort&rsquo;s stunning infinity swimming pool, perched gracefully on the rooftop. Offering panoramic 360-degree views of the picturesque Fewa Lake, the serene Peace Pagoda, and the lush Raniban Forest, our pool provides an unparalleled experience of tranquility and beauty.<br />\r\n	<strong>Opening Time: 08:00 AM - 08:00 PM</strong></div>\r\n', 0, 'services', 1, 'Rooftop Swimming Pool', 'Rooftop Swimming Pool, 360 degree view, Luxury, Phewa Lake, Tranquility, Beauty, Facility, Shower, Peace Pagoda, Stunning View', 'Dive into luxury at Bar Peepal Resort’s stunning infinity swimming pool, perched gracefully on the rooftop. Offering panoramic 360-degree views of the picturesque Fewa Lake, the serene Peace Pagoda, and the lush Raniban Forest, our pool provides an u', 0, '2024-12-30 16:49:08', '2025-01-27 23:30:18', 0, 1, 0x613a313a7b693a303b733a31343a22497a5433572d706f6f6c2e6a7067223b7d, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `linksrc` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `parentOf` int(11) NOT NULL DEFAULT '0',
  `linktype` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `name`, `linksrc`, `parentOf`, `linktype`, `status`, `sortorder`, `added_date`, `type`, `icon`) VALUES
(20, 'HOME', 'home', 0, '0', 1, 1, '2024-12-25 12:58:39', 1, ''),
(21, 'About us', 'about-us', 0, '0', 1, 2, '2024-12-25 12:58:56', 1, ''),
(22, 'Rooms & Suites', 'rooms-and-suites', 0, '0', 1, 3, '2024-12-25 12:59:24', 1, ''),
(23, 'Deluxe Room', 'deluxe-room', 22, '0', 1, 1, '2024-12-25 13:01:13', 1, ''),
(24, 'Super Deluxe Room', 'super-deluxe-room', 22, '0', 1, 2, '2024-12-25 13:01:34', 1, ''),
(25, 'Interconnected Deluxe Room', 'interconnected-deluxe-room', 22, '0', 1, 3, '2024-12-25 13:01:52', 1, ''),
(26, 'Restaurant & Bar', 'restaurant-and-bar', 0, '0', 1, 4, '2024-12-25 13:02:33', 1, ''),
(27, 'Lamjung Kitchen', 'lamjung-kitchen', 26, '0', 1, 12, '2024-12-25 13:03:01', 1, ''),
(28, 'Facilities', 'facilities-list', 0, '0', 1, 7, '2024-12-25 13:03:27', 1, ''),
(31, 'Gallery', 'gallery-list', 0, '0', 1, 8, '2024-12-25 13:04:25', 1, ''),
(32, 'Contact us', 'contact-us', 0, '0', 1, 10, '2024-12-25 13:04:43', 1, ''),
(33, 'Meeting & Events', 'meeting-and-events', 0, '0', 1, 5, '2024-12-30 15:08:08', 1, ''),
(34, 'Manjung Hall', 'manjung-hall', 33, '0', 1, 1, '2024-12-30 15:09:03', 1, ''),
(35, 'Recreation', 'services', 0, '0', 1, 6, '2025-01-02 12:52:37', 1, ''),
(36, 'Chautari Restro & Bar', 'chautari-restro-bar', 26, '0', 1, 11, '2025-01-03 11:43:24', 1, ''),
(39, 'About Us', 'about-us', 0, '0', 1, 11, '2025-01-08 15:12:04', 2, ''),
(40, 'Rooms & Suites', 'rooms-and-suites', 0, '0', 1, 12, '2025-01-16 17:06:27', 2, ''),
(41, 'Restaurant & Bar', 'restaurant-and-bar', 0, '0', 1, 13, '2025-01-16 17:07:09', 2, ''),
(42, 'Meeting & Events', 'meeting-and-events', 0, '0', 1, 14, '2025-01-16 17:07:58', 2, ''),
(43, 'Junior Suite', 'junior-suite', 22, '0', 1, 4, '2025-01-17 14:47:18', 1, ''),
(44, 'Executive Suite', 'executive-suite', 22, '0', 1, 5, '2025-01-17 14:47:49', 1, ''),
(45, 'Event Hall with Open Garden', 'event-hall-with-open-garden', 33, '0', 1, 2, '2025-01-21 09:51:35', 1, ''),
(46, 'Dining Hall', 'dining-hall', 26, '0', 1, 13, '2025-01-28 10:30:39', 1, ''),
(47, 'Offers', 'offer-list', 0, '0', 0, 9, '2025-01-29 21:45:53', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mlink`
--

CREATE TABLE `tbl_mlink` (
  `mod_class` varchar(50) NOT NULL,
  `m_url` tinytext NOT NULL,
  `act_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mlink`
--

INSERT INTO `tbl_mlink` (`mod_class`, `m_url`, `act_id`) VALUES
('Subpackage', 'deluxe-premium-room', 28),
('Subpackage', 'deluxe-room', 29),
('Subpackage', 'event-halls', 31),
('Subpackage', 'tribhuvan-intl-airport', 33),
('Subpackage', 'patan-durbar-square', 34),
('Subpackage', 'swayambhunath-temple', 35),
('Subpackage', 'pashupatinath-temple', 36),
('Subpackage', 'nagarkot-hall', 39),
('Article', 'pool-jacuzzi', 3),
('Subpackage', 'standard-room', 41),
('Subpackage', 'lalitpur-hall', 42),
('Subpackage', 'indrawati-bar', 43),
('Article', 'children-play-area-indoor-outdoor', 4),
('Article', 'about-us', 17),
('Subpackage', 'library', 44),
('Main service', 'children-play-area-indoor-outdoor', 4),
('Main service', 'spa', 1),
('Article', 'asdfasdf', 0),
('Package', 'testing-8-2', 0),
('Subpackage', 'asdasdasddasasd', 0),
('Main service', 'yuvvyuvyui', 0),
('Main service', 'yuvvyuvyui', 5),
('Package', 'rooms-and-suites', 15),
('Subpackage', 'deluxe-room', 46),
('Subpackage', 'super-deluxe-room', 48),
('Subpackage', 'executive-suite', 49),
('Package', 'meeting-and-events', 16),
('Subpackage', 'event-hall-with-open-garden', 50),
('Package', 'restaurant-and-bar', 17),
('Subpackage', 'lamjung-kitchen', 52),
('Subpackage', 'chautari-restro-bar', 53),
('Subpackage', 'manjung-hall', 54),
('Subpackage', 'dining-hall', 60),
('Subpackage', 'interconnected-deluxe-room', 61),
('Subpackage', 'junior-suite', 62),
('Article', 'about-us-homepage', 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modules`
--

CREATE TABLE `tbl_modules` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'dashboard',
  `mode` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `icon_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `properties` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_modules`
--

INSERT INTO `tbl_modules` (`id`, `parent_id`, `name`, `link`, `mode`, `icon_link`, `status`, `sortorder`, `added_date`, `properties`) VALUES
(1, 74, 'User Mgmt', 'user/list', 'user', 'icon-users', 1, 1, '0000-00-00', ''),
(2, 0, 'Menu Mgmt', 'menu/list', 'menu', 'icon-list', 1, 2, '0000-00-00', 'a:1:{s:5:\"level\";s:1:\"3\";}'),
(3, 0, 'Articles Mgmt', 'articles/list', 'articles', 'icon-adn', 1, 2, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:4:\"1920\";s:9:\"imgheight\";s:3:\"800\";}'),
(4, 0, 'Slideshow Mgmt', 'slideshow/list', 'slideshow', 'icon-film', 1, 2, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:4:\"1920\";s:9:\"imgheight\";s:4:\"1000\";}'),
(5, 0, 'Gallery Mgmt', 'gallery/list', 'gallery', 'icon-picture-o', 1, 6, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:4:\"1920\";s:9:\"imgheight\";s:3:\"800\";s:9:\"simgwidth\";s:3:\"798\";s:10:\"simgheight\";s:3:\"532\";}'),
(6, 0, 'News Mgmt', 'news/list', 'news', 'icon-list-alt', 0, 19, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"300\";s:9:\"imgheight\";s:3:\"300\";}'),
(7, 0, 'Event Mgmt', 'events/list', 'events', 'icon-bullhorn', 0, 10, '0000-00-00', ''),
(8, 0, 'Advertisement Mgmt', 'advertisement/list', 'advertisement', 'icon-indent', 0, 4, '0000-00-00', 'a:8:{s:9:\"limgwidth\";s:3:\"100\";s:10:\"limgheight\";s:3:\"200\";s:9:\"timgwidth\";s:3:\"300\";s:10:\"timgheight\";s:3:\"400\";s:9:\"rimgwidth\";s:3:\"500\";s:10:\"rimgheight\";s:3:\"600\";s:9:\"bimgwidth\";s:3:\"700\";s:10:\"bimgheight\";s:3:\"800\";}'),
(9, 0, 'Video Mgmt', 'video/list', 'video', 'icon-hdd-o', 0, 13, '0000-00-00', ''),
(10, 0, 'Poll Mgmt', 'poll/list', 'poll', 'icon-exchange', 0, 22, '0000-00-00', ''),
(11, 0, 'Social / OTA Mgmt', 'social/list', 'social', 'icon-google-plus', 1, 6, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:2:\"16\";s:9:\"imgheight\";s:2:\"16\";}'),
(12, 0, 'Setting Mgmt', 'setting/list', 'settings', 'icon-gear', 1, 21, '0000-00-00', ''),
(13, 12, 'Preference Mgmt', 'preference/list', 'preference', 'icon-gear', 1, 1, '0000-00-00', 'a:18:{s:8:\"imgwidth\";s:2:\"32\";s:9:\"imgheight\";s:2:\"32\";s:9:\"simgwidth\";s:3:\"334\";s:10:\"simgheight\";s:2:\"63\";s:10:\"fbimgwidth\";s:4:\"1200\";s:11:\"fbimgheight\";s:3:\"628\";s:9:\"timgwidth\";s:4:\" 800\";s:10:\"timgheight\";s:3:\"418\";s:9:\"gimgwidth\";s:4:\"1920\";s:10:\"gimgheight\";s:3:\"800\";s:9:\"cimgwidth\";s:4:\"1920\";s:10:\"cimgheight\";s:3:\"800\";s:9:\"oimgwidth\";s:4:\"1920\";s:10:\"oimgheight\";s:3:\"800\";s:9:\"fimgwidth\";s:4:\"1920\";s:10:\"fimgheight\";s:3:\"800\";s:10:\"ofimgwidth\";s:4:\"1920\";s:11:\"ofimgheight\";s:3:\"800\";}'),
(14, 12, 'Office Info/Location', 'location/list', 'location', 'icon-gear', 1, 2, '0000-00-00', ''),
(15, 12, 'Modules Mgmt', 'module/list', 'module', 'icon-gear', 0, 3, '0000-00-00', ''),
(16, 12, 'Properties Mgmt', 'properties/list', 'properties', 'icon-gear', 1, 4, '0000-00-00', ''),
(17, 0, 'Testimonial', 'testimonial/list', 'testimonial', 'icon-list-alt', 1, 6, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:2:\"64\";s:9:\"imgheight\";s:2:\"64\";}'),
(18, 0, 'Subscribers Mgmt', 'subscribers/list', 'subscribers', 'icon-comments', 0, 14, '2015-05-17', ''),
(19, 0, 'Offers Mgmt', 'offers/list', 'offers', 'icon-tags', 1, 18, '2015-05-20', 'a:4:{s:9:\"bimgwidth\";s:2:\"22\";s:10:\"bimgheight\";s:2:\"22\";s:8:\"imgwidth\";s:3:\"200\";s:9:\"imgheight\";s:3:\"200\";}'),
(20, 0, 'Services Mgmt', 'services/list', 'services', 'icon-exchange', 1, 5, '2015-08-09', 'a:2:{s:8:\"imgwidth\";s:2:\"64\";s:9:\"imgheight\";s:2:\"64\";}'),
(21, 0, 'Movies Mgmt', 'movies/list', 'movies', 'icon-list', 0, 15, '2015-10-30', ''),
(22, 0, 'Theaters', 'theaters/list', 'theaters', 'icon-film', 0, 17, '2015-11-01', ''),
(23, 25, 'Package Mgmt', 'package/list', 'package', 'icon-exchange', 1, 5, '2016-06-17', 'a:6:{s:8:\"imgwidth\";s:4:\"1920\";s:9:\"imgheight\";s:4:\"1280\";s:12:\"subbimgwidth\";s:3:\"798\";s:13:\"subbimgheight\";s:3:\"532\";s:11:\"subimgwidth\";s:3:\"240\";s:12:\"subimgheight\";s:3:\"291\";}'),
(24, 25, 'Features Mgmt', 'features/list', 'features', 'icon-gear', 1, 1, '2016-11-16', ''),
(25, 0, 'Package Mgmt', 'package/list', '', 'icon-bullhorn', 1, 4, '2016-11-16', ''),
(26, 0, 'Activity Mgmt', 'activity/list', 'activity', '\r\nicon-hand-o-left', 0, 7, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:3:\"800\";s:9:\"imgheight\";s:3:\"600\";s:9:\"simgwidth\";s:3:\"400\";s:10:\"simgheight\";s:3:\"350\";}'),
(27, 0, 'Blog Mgmt', 'blog/list', 'blog', '\r\n\r\n\r\n\r\nicon-list-alt', 0, 8, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:2:\"22\";s:9:\"imgheight\";s:2:\"22\";}'),
(28, 0, 'Popup', 'popup/list', 'popup', 'icon-list', 1, 20, '2020-02-13', 'a:2:{s:8:\"imgwidth\";s:3:\"100\";s:9:\"imgheight\";s:3:\"300\";}'),
(29, 0, ' News/Events Mgmt', 'combinednews/list', 'combinednews', 'icon-tags', 0, 14, '2020-09-05', 'a:2:{s:8:\"imgwidth\";s:3:\"350\";s:9:\"imgheight\";s:3:\"240\";}'),
(30, 0, 'Product Mgmt', 'product/list', 'product', 'icon-list', 0, 1, '2021-11-25', ''),
(74, 0, 'Users', '', '', 'icon-users', 1, 1, '2021-10-03', ''),
(300, 0, 'FAQ', 'faq/list', 'faq', 'icon-list', 0, 8, '2023-08-31', ''),
(301, 0, 'Nearby ', 'nearby/list', 'nearby', 'icon-list', 1, 8, '2023-08-29', 'a:2:{s:8:\"imgwidth\";s:3:\"798\";s:9:\"imgheight\";s:3:\"532\";}'),
(302, 0, 'Vacancy Mgmt', 'vacency/list', 'vacency', 'icon-list', 0, 7, '2023-08-28', ''),
(303, 0, 'Main service Mgt', 'mservices/list', 'mservice', 'icon-list', 1, 6, '2023-09-01', 'a:2:{s:8:\"imgwidth\";s:3:\"540\";s:9:\"imgheight\";s:3:\"440\";}'),
(304, 0, 'OTA Mgmt', 'ota/list', 'ota', 'icon-google-plus', 0, 12, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:2:\"14\";s:9:\"imgheight\";s:2:\"13\";}'),
(305, 0, 'Nearby ', 'nearby/list', 'nearby', 'icon-list', 0, 8, '2023-08-29', ''),
(306, 74, 'User Group', 'usergroup/list', 'usergroup', 'icon-gears', 1, 3, '2023-10-10', ''),
(309, 0, 'Download Mgmt', 'download/list', 'download', 'icon-gear', 0, 7, '2024-03-28', ''),
(311, 0, 'Wellness Mgt', 'wellness/list', 'wellness', 'icon-list', 1, 6, '2025-01-06', '{s:8:\"imgwidth\";s:2:\"12\";s:9:\"imgheight\";s:2:\"12\";}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nearby`
--

CREATE TABLE `tbl_nearby` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT '0',
  `linksrc` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(11) NOT NULL DEFAULT '0',
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `distance` varchar(10) NOT NULL,
  `location_type` int(11) DEFAULT NULL,
  `location_map` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_nearby`
--

INSERT INTO `tbl_nearby` (`id`, `parent_id`, `slug`, `title`, `sub_title`, `content`, `linktype`, `linksrc`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `modified_date`, `sortorder`, `homepage`, `image`, `date`, `category`, `distance`, `location_type`, `location_map`) VALUES
(19, 0, 'kathmandu', 'Kathmandu', 'ktm', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tem por incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, qu quat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n', 0, 'https://www.google.com/maps/place/Patan+Darbar+Square/@27.6693364,85.3240237,15z/data=!4m6!3m5!1s0x39eb19c50daa2fb1:0x6f197fa38097b530!8m2!3d27.6726981!4d85.3253211!16s%2Fm%2F0h1h5qp?entry=ttu&g_ep=EgoyMDI1MDExMC4wIKXMDSoASAFQAw%3D%3D', 0, '', '', '', 0, '2024-12-26 12:25:34', '2025-01-16 13:08:53', 0, 0, 0x613a313a7b693a303b733a33373a2238624a6c4a2d44313748322d64656c7578655f313733373031303633373530392e77656270223b7d, '', '', '25 KM', 0, ''),
(20, 0, 'gupteshwor-mahadev-cave', 'Gupteshwor Mahadev Cave', 'Gupteshwor Mahadev Cave', '<p style=\"text-align: justify;\">\r\n	Located near Davis Falls, this sacred cave is a pilgrimage site dedicated to Lord Shiva. Inside, you&#39;ll find a significant stalagmite worshipped as a Shiva lingam.</p>\r\n', 0, 'https://maps.app.goo.gl/1qQgjF5QBnjUGSLu8', 1, '', '', '', 0, '2024-12-26 15:37:29', '2025-01-16 17:55:55', 5, 0, 0x613a313a7b693a303b733a32343a2273743952352d67757074657368776f72636176652e6a7067223b7d, '', '', '4.6 km', 0, ''),
(21, 0, 'mahendra-cave', 'Mahendra Cave', 'Mahendra Cave', '<p style=\"text-align: justify;\">\r\n	Named after King Mahendra, this large limestone cave in Pokhara is known for its fascinating stalactites and stalagmites, providing a cool, mysterious environment for visitors.</p>\r\n', 0, 'https://maps.app.goo.gl/HM5i7fbBJyXGsxkD7', 1, '', '', '', 0, '2024-12-26 15:42:50', '2025-01-16 17:57:06', 4, 0, 0x613a313a7b693a303b733a32323a224d366341652d6d6168656e647261636176652e6a7067223b7d, '', '', '9 km', 0, ''),
(24, 0, 'phewa-lake', 'Phewa Lake', 'Phewa Lake', '<p style=\"text-align: justify;\">\r\n	This stunning freshwater lake in Pokhara, Nepal, offers serene boating experiences and picturesque views of the Annapurna range. The Tal Barahi Temple on an island within the lake is a spiritual haven for visitors.</p>\r\n', 0, 'https://maps.app.goo.gl/6QXKgGaMwGj3W6MUA', 1, '', '', '', 0, '2025-01-16 14:38:00', '2025-01-16 17:54:56', 8, 0, 0x613a313a7b693a303b733a31393a2235777453462d70686577616c616b652e6a7067223b7d, '', '', '9.3 km', 0, ''),
(25, 0, 'sarangkot', 'Sarangkot', 'Sarangkot', '<p>\r\n	This popular hill station near Pokhara offers breathtaking sunrise views over the Annapurna and Dhaulagiri mountain ranges. It&#39;s a favorite spot for paragliding enthusiasts, providing an exhilarating experience with stunning aerial views of the landscape.</p>\r\n', 0, 'https://maps.app.goo.gl/QzK6LjU9HkzASpC76', 1, '', '', '', 0, '2025-01-16 14:38:21', '2025-01-16 17:57:41', 2, 0, 0x613a313a7b693a303b733a31393a2251314a74322d736172616e676b6f742e6a7067223b7d, '', '', '10.4 km', 0, ''),
(26, 0, 'world-peace-pagoda', 'World Peace Pagoda', 'World Peace Pagoda', '<p style=\"text-align: justify;\">\r\n	Also known as the World Peace Pagoda, this beautiful Buddhist stupa stands on a hilltop in Pokhara, providing panoramic views of the Annapurna range, Phewa Lake, and the city itself.</p>\r\n', 0, 'https://maps.app.goo.gl/ntQHHWSk4Tn5P1J89', 1, '', '', '', 0, '2025-01-16 14:38:44', '2025-01-17 15:22:27', 7, 0, 0x613a313a7b693a303b733a32313a2237556f346f2d70656163657061676f64612e6a7067223b7d, '', '', '7.7 km', 0, ''),
(27, 0, 'international-mountain-museum', 'International Mountain Museum', 'International Mountain Museum', '<p>\r\n	Located in Pokhara, this museum showcases the history, culture, and biodiversity of the Himalayan region. It features exhibits on mountaineering, the geology of the Himalayas, and the diverse cultures of the mountain communities.</p>\r\n', 0, 'https://maps.app.goo.gl/6ukVg3fFbTGmM2Fa8', 1, '', '', '', 0, '2025-01-16 14:39:19', '2025-01-16 17:57:57', 1, 0, 0x613a313a7b693a303b733a31363a2276543551412d6d757365756d2e6a7067223b7d, '', '', '5.1 km', 0, ''),
(28, 0, 'davis-falls', 'Davis Falls', 'Davis Falls', '<p style=\"text-align: justify;\">\r\n	Also called Patale Chhango, this unique waterfall in Pokhara sends water into an underground tunnel after it hits the bottom. It&#39;s a popular tourist spot with an intriguing legend behind its name.</p>\r\n', 0, 'https://maps.app.goo.gl/DucZF1MdfzjaJw388', 1, '', '', '', 0, '2025-01-16 14:39:48', '2025-01-16 17:57:25', 3, 0, 0x613a313a7b693a303b733a31393a22515a4253422d646176697366616c6c2e6a7067223b7d, '', '', '4.7 km', 0, ''),
(29, 0, 'shree-bindhyabasini-temple', 'Shree Bindhyabasini Temple', 'Shree Bindhyabasini Temple', '<p style=\"text-align: justify;\">\r\n	An ancient Hindu temple in Pokhara dedicated to the goddess Durga. Situated on a small hill, it offers scenic views and becomes especially vibrant during local festivals.</p>\r\n', 0, 'https://maps.app.goo.gl/dEhgFRcYDeKwP7yJ9', 1, '', '', '', 0, '2025-01-16 14:40:07', '2025-01-17 15:22:55', 6, 0, 0x613a313a7b693a303b733a32393a224648576e732d62696e64687961626173696e6974656d706c652e6a7067223b7d, '', '', '4.8 km', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `brief` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `news_date` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `source` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `viewcount` int(11) NOT NULL DEFAULT '0',
  `meta_keywords` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offers`
--

CREATE TABLE `tbl_offers` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `list_image` varchar(255) NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT '0',
  `rate` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `offer_date` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_offers`
--

INSERT INTO `tbl_offers` (`id`, `slug`, `title`, `image`, `list_image`, `adults`, `children`, `linksrc`, `linktype`, `rate`, `discount`, `brief`, `content`, `status`, `offer_date`, `start_date`, `added_date`, `sortorder`, `type`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(3, 'monsoon-offer', 'Monsoon Offer', '', 'Bo0of-offer.jpg', 0, 0, '', 0, 0, 0, '', '', 1, '2025-02-20', '2025-01-30', '2025-01-30 13:05:03', 1, 3, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offer_child`
--

CREATE TABLE `tbl_offer_child` (
  `offer_id` int(11) NOT NULL,
  `offer_pax` varchar(200) NOT NULL,
  `offer_usd` varchar(10) NOT NULL,
  `offer_inr` varchar(10) NOT NULL,
  `offer_npr` varchar(10) NOT NULL,
  `offer_no` int(11) NOT NULL,
  `multi_offer_title` varchar(255) NOT NULL,
  `multi_offer_npr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ota`
--

CREATE TABLE `tbl_ota` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `linksrc` tinytext NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_ota`
--

INSERT INTO `tbl_ota` (`id`, `title`, `image`, `icon`, `linksrc`, `status`, `sortorder`, `registered`) VALUES
(7, 'booking', 'guqcq-bo.png', '', '#', 1, 1, ''),
(8, 'agoda', '8fj3b-ag.png', '', '#', 1, 2, ''),
(9, 'expedia', 'hhqsu-ex.png', '', '#', 1, 3, ''),
(10, 'tripadvisor', 'qw86F-ta.png', '', '#', 1, 4, ''),
(11, 'Make My Trip', 'sFzjy-ma.png', '', '#', 1, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package`
--

CREATE TABLE `tbl_package` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `sub_title` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `header_image` text COLLATE utf8_unicode_ci NOT NULL,
  `banner_image` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `detail` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modified_date` varchar(50) CHARACTER SET utf8 NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_package`
--

INSERT INTO `tbl_package` (`id`, `slug`, `title`, `sub_title`, `image`, `header_image`, `banner_image`, `detail`, `content`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `sortorder`, `added_date`, `modified_date`, `type`) VALUES
(15, 'rooms-and-suites', 'Rooms and Suites', 'Rooms and Suites', '', '', 'a:1:{i:0;s:14:\"8A2bt-room.jpg\";}', '', '', 'Rooms and Suites', 'Rooms and Suites, Private Balcony, Modern Amenities, Luxury Stay, Accommodation, Comfortable, Bathroom, Ample Space, Top Notch, Stunning View, Phewa Lake, Private Space', 'Rooms and Suites\r\n', 1, 1, '2024-12-27 22:01:31', '2025-01-28 10:05:15', 1),
(16, 'meeting-and-events', 'Meeting and Events', 'Meeting and Events', '', '', 'a:1:{i:0;s:14:\"WjSKE-hall.jpg\";}', '', '<p>\r\n	Bar Peepal Resort is an ideal venue for hosting weddings, corporate events, and private celebrations. With well-appointed event spaces and a dedicated team of professionals, the resort guarantees seamless planning and execution, making every occasion truly special.</p>\r\n', 'Meeting & Events', 'XYZ Hall, Gathering, Ample Space, PA System, Whiteboard, Security, Authentic Setup, \r\nReservation System, Accommodation, Meeting, Events, Discussion, ', 'Our hall is perfect for all your event needs. Enjoy beautiful views from your private balcony and experience comfort and style in our well-designed spaces. Whether you\'re hosting a celebration or a business event, our facilities are here to ensure a great experience.', 1, 0, '2024-12-30 16:28:54', '2025-01-27 22:55:17', 0),
(17, 'restaurant-and-bar', 'Restaurant and Bar', 'Restaurant and Bar', '', '', 'a:1:{i:0;s:20:\"8BMuo-restaurant.jpg\";}', '', '', 'Restaurant & Bar', 'Restaurant & Bar, Quality Food, Menu, Local Specialities, International Cuisine, Beverage, Dinner, Breakfast, Drinks, Cocktails, Restaurant, Experienced Chief, Quality Services', 'Open from 6 A.M to 10 P.M, this elegant space is flooded with natural lighting and features an authentic setup. It showcases exceptional regional ingredients fashioned into authentic Nepali and international dishes by our expert chef. Enjoy a delightful meal plan with breakfast, lunch, and dinner options.\r\n', 1, 2, '2024-12-30 16:43:31', '2025-01-27 23:26:42', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_sub`
--

CREATE TABLE `tbl_package_sub` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sub_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `detail` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `header_image` text COLLATE utf8_unicode_ci NOT NULL,
  `image2` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image4` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `feature` blob NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `facility_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number_room` int(11) NOT NULL,
  `currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `people_qnty` int(11) NOT NULL,
  `onep_price` int(11) NOT NULL,
  `twop_price` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `threep_price` int(11) NOT NULL,
  `oneb_price` int(11) NOT NULL,
  `twob_price` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `threeb_price` int(11) NOT NULL,
  `extra_bed` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `short_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serve` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `theatre_style` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class_room_style` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shape` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `round_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clusture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cocktail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seats` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modified_date` varchar(50) CHARACTER SET utf8 NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `below_content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `seminar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `meeting` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `events` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `conference` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catering` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `celebration` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `organic_food` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `occupancy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `service` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `live_music` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `bed` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `room_size` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `room_service` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `airport_pickup` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `private_balcony` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `checkinout` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_package_sub`
--

INSERT INTO `tbl_package_sub` (`id`, `slug`, `title`, `sub_title`, `detail`, `image`, `header_image`, `image2`, `image3`, `image4`, `feature`, `content`, `facility_title`, `number_room`, `currency`, `discount`, `people_qnty`, `onep_price`, `twop_price`, `threep_price`, `oneb_price`, `twob_price`, `threeb_price`, `extra_bed`, `short_title`, `time`, `location`, `serve`, `theatre_style`, `class_room_style`, `shape`, `round_table`, `clusture`, `cocktail`, `seats`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `sortorder`, `added_date`, `modified_date`, `type`, `below_content`, `seminar`, `meeting`, `events`, `conference`, `catering`, `celebration`, `organic_food`, `occupancy`, `view`, `size`, `service`, `live_music`, `bed`, `room_size`, `room_service`, `airport_pickup`, `private_balcony`, `checkinout`) VALUES
(46, 'deluxe-room', 'Deluxe Room', '', 'Find peace in your spacious, quiet room, designed with beautiful Nepalese style. Enjoy top-quality furniture, fixtures, and fabrics. The room has everything you need to feel relaxed and happy. From your private balcony, you can admire the stunning view of Fewa Lake.', 'a:1:{i:0;s:37:\"ruxzP-D17H2-deluxe_1737010637509.webp\";}', '', 'j1dM3-deluxeroom.jpg', '', '', 0x613a313a7b693a3131383b613a323a7b693a303b613a313a7b693a303b733a31303a22466163696c6974696573223b7d693a313b613a31383a7b693a303b733a333a22313431223b693a313b733a333a22313430223b693a323b733a333a22313339223b693a333b733a333a22313336223b693a343b733a333a22313334223b693a353b733a333a22313331223b693a363b733a333a22313436223b693a373b733a333a22313434223b693a383b733a333a22313539223b693a393b733a333a22313538223b693a31303b733a333a22313537223b693a31313b733a333a22313435223b693a31323b733a333a22313730223b693a31333b733a333a22313639223b693a31343b733a333a22313636223b693a31353b733a333a22313635223b693a31363b733a333a22313432223b693a31373b733a333a22313733223b7d7d7d, '<p style=\"text-align: justify;\">\r\n	Find peace in your spacious, quiet room, designed with beautiful Nepalese style. Enjoy top-quality furniture, fixtures, and fabrics. The room has everything you need to feel relaxed and happy. From your private balcony, you can admire the stunning view of Fewa Lake.</p>\r\n', '', 0, 'USD', 0, 0, 120, '2 pax', 0, 0, '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'Deluxe Room', 'Deluxe Room, Spacious, Private Room, Top Quality, Private Balcony, View, Phewa Lake, Nepalese Style. Ambiance, Queen Sized Bed, Stunning View, Facility, Ambiance,  ', 'Find peace in your spacious, quiet room, designed with beautiful Nepalese style. Enjoy top-quality furniture, fixtures, and fabrics. The room has everything you need to feel relaxed and happy. From your private balcony, you can admire the stunning view of Fewa Lake.\r\n', 1, 10, '2024-12-30 12:35:04', '2025-01-27 18:39:42', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', 'Queen', '220 sq.ft', '', '', '', ''),
(48, 'super-deluxe-room', 'Super Deluxe Room', '', 'Step into our spacious Super Deluxe room, a peaceful haven with beautiful Nepalese decor. Relax on world-class furniture and enjoy top-notch fixtures, fabrics, and flooring. The room features twin beds and a private balcony, perfect for unwinding.', 'a:1:{i:0;s:15:\"AabJn-super.jpg\";}', '', 'IW5De-2.jpg', '', '', 0x613a313a7b693a3131383b613a323a7b693a303b613a313a7b693a303b733a31343a22526f6f6d20416d656e6974696573223b7d693a313b613a31383a7b693a303b733a333a22313435223b693a313b733a333a22313434223b693a323b733a333a22313432223b693a333b733a333a22313431223b693a343b733a333a22313237223b693a353b733a333a22313331223b693a363b733a333a22313538223b693a373b733a333a22313537223b693a383b733a333a22313436223b693a393b733a333a22313336223b693a31303b733a333a22313730223b693a31313b733a333a22313639223b693a31323b733a333a22313636223b693a31333b733a333a22313635223b693a31343b733a333a22313539223b693a31353b733a333a22313430223b693a31363b733a333a22313339223b693a31373b733a333a22313334223b7d7d7d, '<p style=\"text-align: justify;\">\r\n	Step into our spacious Super Deluxe room, a peaceful haven with beautiful Nepalese decor. Relax on world-class furniture and enjoy top-notch fixtures, fabrics, and flooring. The room features twin beds and a private balcony, perfect for unwinding. Wake up refreshed and take in the stunning view of Fewa Lake from your room.</p>\r\n', '', 0, 'USD', 0, 0, 140, '2 pax', 0, 0, '', 0, '', 'Spacious Super Deluxe room contains twin bed & a private balcony. Get a good sleep at night and good morning with the view of Beautiful Fewa Lake from the accommodation.', '', '', '', '', '', '', '', '', '', '', 'Super Deluxe Room', 'Super Deluxe Room, Nepalese Decor, Top-Notch, Unwind, Amenities, Private Balcony, Stunning View, Relaxing, Peaceful, Luxury, King Bed, Attached Bathroom, Private Space', 'Step into our spacious Super Deluxe room, a peaceful haven with beautiful Nepalese decor. Relax on world-class furniture and enjoy top-notch fixtures, fabrics, and flooring. The room features twin beds and a private balcony, perfect for unwinding. Wake up refreshed and take in the stunning view of Fewa Lake from your room.', 1, 9, '2024-12-30 12:41:02', '2025-01-27 18:39:05', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', 'Queen', '220 sq.ft', '', '', '', ''),
(49, 'executive-suite', 'Executive Suite', '', 'Step into luxury with our Executive rooms, where comfort meets elegance. Designed with authentic Nepalese decor, these rooms feature world-class furniture, fixtures, fabrics, and flooring.', 'a:1:{i:0;s:19:\"oS3tT-executive.jpg\";}', '', '9KM1F-5.jpg', '', '', 0x613a313a7b693a3131383b613a323a7b693a303b613a313a7b693a303b733a31343a22526f6f6d20416d656e6974696573223b7d693a313b613a32343a7b693a303b733a333a22313434223b693a313b733a333a22313234223b693a323b733a333a22313432223b693a333b733a333a22313431223b693a343b733a333a22313339223b693a353b733a333a22313337223b693a363b733a333a22313335223b693a373b733a333a22313435223b693a383b733a333a22313430223b693a393b733a333a22313732223b693a31303b733a333a22313731223b693a31313b733a333a22313730223b693a31323b733a333a22313639223b693a31333b733a333a22313638223b693a31343b733a333a22313637223b693a31353b733a333a22313636223b693a31363b733a333a22313635223b693a31373b733a333a22313539223b693a31383b733a333a22313538223b693a31393b733a333a22313537223b693a32303b733a333a22313436223b693a32313b733a333a22313336223b693a32323b733a333a22313334223b693a32333b733a333a22313331223b7d7d7d, '<p style=\"text-align: justify;\">\r\n	Step into luxury with our Executive rooms, where comfort meets elegance. Designed with authentic Nepalese decor, these rooms feature world-class furniture, fixtures, fabrics, and flooring. The Executive rooms provide a spacious retreat with king-sized beds and a private balcony. Enjoy modern amenities and wake up to the stunning view of Fewa Lake, making your stay truly memorable.</p>\r\n', '', 0, 'USD', 0, 0, 250, '2 pax', 0, 0, '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'Executive Suite', 'Executive Suite, Nepalese, Authentic, Memorable, Luxury Stay, Stunning View, Phewa Lake, King Bed, Private Bathroom, Balcony, Elegance, Spacious, Jacuzzi, Modern Amenities', 'Step into luxury with our Executive rooms, where comfort meets elegance. Designed with authentic Nepalese decor, these rooms feature world-class furniture, fixtures, fabrics, and flooring. The Executive rooms provide a spacious retreat with king-sized beds and a private balcony. Enjoy modern amenities and wake up to the stunning view of Fewa Lake, making your stay truly memorable.', 1, 5, '2024-12-30 12:49:04', '2025-01-27 18:36:09', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', 'King', '825 sq.ft', '', '', '', ''),
(50, 'event-hall-with-open-garden', 'Event Hall with Open Garden', '', 'Our newly built event hall is a versatile, dedicated space designed to host business meetings, and seminars to provide a comfortable and flexible layout, offering options such as theater-style seating, banquet tables, or reception space depending on the event’s needs. An open garden space near the event hall will provide refreshing and energizing enthusiasm to attend the programs.<br><br>Bar Peepal Resort has an ideal venue for hosting weddings, corporate events, and private celebrations. With well-appointed event spaces and a dedicated team of professionals, the resort guarantees seamless planning and execution, making every occasion truly special.', 'a:0:{}', '', 'XggEK-new.jpg', '', '', 0x613a313a7b693a3131383b613a323a7b693a303b613a313a7b693a303b733a31343a2248616c6c20616d656e6974696573223b7d693a313b613a31323a7b693a303b733a333a22313535223b693a313b733a333a22313334223b693a323b733a333a22313331223b693a333b733a333a22313633223b693a343b733a333a22313632223b693a353b733a333a22313631223b693a363b733a333a22313530223b693a373b733a333a22313634223b693a383b733a333a22313832223b693a393b733a333a22313831223b693a31303b733a333a22313830223b693a31313b733a333a22313739223b7d7d7d, '<div class=\"row\">\r\n	<div class=\"col-md-12 pe-5\">\r\n		<div class=\"block-forty mt-4\">\r\n			<div class=\"text\">\r\n				<div class=\"text-two text__limit hall__text\">\r\n					Our newly built event hall is a versatile, dedicated space designed to host business meetings, and seminars to provide a comfortable and flexible layout, offering options such as theater-style seating, banquet tables, or reception space depending on the event&rsquo;s needs. An open garden space near the event hall will provide refreshing and energizing enthusiasm to attend the programs.<br />\r\n					<br />\r\n					Bar Peepal Resort has an ideal venue for hosting weddings, corporate events, and private celebrations. With well-appointed event spaces and a dedicated team of professionals, the resort guarantees seamless planning and execution, making every occasion truly special.</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"bottom-border mt-5\">\r\n		<h3 class=\"text-center\">\r\n			Setup Style and Occupancy</h3>\r\n	</div>\r\n	<table class=\"table table__bg_color table-striped pt-5 mb-5 pb-5 text-center\">\r\n		<thead>\r\n			<tr>\r\n				<th>\r\n					<img alt=\"\" class=\"d-block mx-auto pb-4\" src=\"userfiles/images/m2.png\" width=\"60\" />Hall Size</th>\r\n				<th>\r\n					<img alt=\"\" class=\"d-block mx-auto pb-4\" src=\"userfiles/images/theator.jpg\" />Theatre Style</th>\r\n				<th>\r\n					<img alt=\"\" class=\"d-block mx-auto pb-4\" src=\"userfiles/images/classroom.jpg\" />Sofa Seating</th>\r\n				<!--<th>\r\n				<img alt=\"\" class=\"d-block mx-auto pb-4\" src=\"userfiles/images/u.jpg\" />U-Shape Style</th>\r\n			<th>\r\n				<img alt=\"\" class=\"d-block mx-auto pb-4\" src=\"userfiles/images/banquet.jpg\" />Classroom Style</th>-->\r\n			</tr>\r\n		</thead>\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					600 sq.ft.</td>\r\n				<td>\r\n					50-60 covers</td>\r\n				<td>\r\n					60 covers</td>\r\n				<!--<td>\r\n				80 Covers</td>\r\n			<td>\r\n				50 Covers</td>-->\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 0, '', 0, 0, 0, '50-60 Covers', 0, 0, '', 0, '', 'Every event is a story waiting to be told', '', '', '', '', '', '', '', '', '', '', 'Event Hall with Open Garden', 'Event Hall with Open Garden, Gathering, Ample Space, PA System, Whiteboard, Security, Authentic Setup, \r\nReservation System, Accommodation, Meeting, Events, Discussion, ', 'Our hall is perfect for all your event needs. Enjoy beautiful views from your private balcony and experience comfort and style in our well-designed spaces. Whether you\'re hosting a celebration or a business event, our facilities are here to ensure a great experience.', 1, 2, '2024-12-30 16:30:16', '2025-01-28 13:17:01', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '600 sq.ft', '', '', '', ''),
(52, 'lamjung-kitchen', 'Lamjung Kitchen', '', 'Lamjung Kitchen\'s, an elegant space is flooded with natural lighting and features an authentic setup. Enjoy a delightful meal plan with breakfast, lunch, and dinner options available', 'a:0:{}', '', 'DRrlN-lamjung (2).jpg', '', '', 0x613a313a7b693a3131383b613a323a7b693a303b613a313a7b693a303b733a31303a22466163696c6974696573223b7d693a313b613a31323a7b693a303b733a333a22313331223b693a313b733a333a22313536223b693a323b733a333a22313535223b693a333b733a333a22313534223b693a343b733a333a22313533223b693a353b733a333a22313530223b693a363b733a333a22313439223b693a373b733a333a22313736223b693a383b733a333a22313735223b693a393b733a333a22313734223b693a31303b733a333a22313339223b693a31313b733a333a22313334223b7d7d7d, '<div class=\"row\">\r\n	<div class=\"col-md-12 pe-md-5\">\r\n		<div class=\"block-forty mt-4\">\r\n			<div class=\"text\" style=\"text-align: justify;\">\r\n				Lamjung Kitchen an elegant space is flooded with natural lighting and features an authentic setup. It showcases exceptional regional ingredients fashioned into authentic Nepali and international dishes by our expert chef. Enjoy a delightful meal plan with breakfast, lunch, and dinner options.</div>\r\n			<ul>\r\n				<li class=\"text\" style=\"text-align: justify;\">\r\n					Lounge and Deck Available in conjunction with the restaurant</li>\r\n			</ul>\r\n		</div>\r\n	</div>\r\n</div>\r\n<!-- menu list end -->\r\n<div class=\"restaurant_info position-relative mt-5\">\r\n	<div class=\"row justify-content-center\">\r\n		<div class=\"col-md-3\">\r\n			<div class=\"chef\">\r\n				<img alt=\"\" src=\"userfiles/images/chef.png\" />\r\n				<h3 class=\"text-white mb-2\">\r\n					Signature Dishes</h3>\r\n				<p>\r\n					Fewa Grilled Fish<br />\r\n					Traditional Thakali Thali</p>\r\n			</div>\r\n		</div>\r\n		<div class=\"col-md-3 \">\r\n			<div class=\"time_table\">\r\n				<img alt=\"\" src=\"userfiles/images/clock.png\" />\r\n				<h3 class=\"text-white mb-2\">\r\n					Opening Time</h3>\r\n				<p>\r\n					7:00 A.M - 10:30 P.M</p>\r\n			</div>\r\n		</div>\r\n		<div class=\"col-md-3\">\r\n			<div class=\"time_table\">\r\n				<img alt=\"\" src=\"userfiles/images/cuisine.png\" />\r\n				<h3 class=\"text-white mb-2\">\r\n					Cuisine</h3>\r\n				<p>\r\n					Nepali, Indian, Chinese, Continental</p>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 0, '', 0, 0, 0, '', 0, 0, '', 0, '', 'Lamjung Restaurant', '', '', '', '', '', '', '', '', '', '', 'Lamjung Restaurant', 'Lamjung Restaurant, Quality Food, Menu, Local Specialities, International Cuisine, Beverage, Dinner, Breakfast, Drinks, Cocktails, Restaurant, Expert Chief, Authentic Nepali Dish, Authentic Setup, Delightful Meal', 'Open from 6 A.M to 10 P.M, this elegant space is flooded with natural lighting and features an authentic setup. It showcases exceptional regional ingredients fashioned into authentic Nepali and international dishes by our expert chef. Enjoy a delightful meal plan with breakfast, lunch, and dinner options.\r\n\r\n', 1, 8, '2024-12-31 12:51:46', '2025-01-29 12:56:48', 17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(53, 'chautari-restro-bar', 'Chautari Restro & Bar', '', 'The timeless restaurant is renowned for its Nepali, Indian, Chinese, and international cuisines. With a premier view of Fewa Lake, a diverse menu that highlights local specialty', 'a:0:{}', '', 'uF5q5-c.jpg', '', '', 0x613a313a7b693a3131383b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a31323a7b693a303b733a333a22313331223b693a313b733a333a22313536223b693a323b733a333a22313535223b693a333b733a333a22313534223b693a343b733a333a22313532223b693a353b733a333a22313531223b693a363b733a333a22313530223b693a373b733a333a22313439223b693a383b733a333a22313339223b693a393b733a333a22313734223b693a31303b733a333a22313735223b693a31313b733a333a22313736223b7d7d7d, '<div class=\"row\">\r\n	<div class=\"col-md-12 pe-5\">\r\n		<div class=\"block-forty mt-4\">\r\n			<div class=\"text\" style=\"text-align: justify;\">\r\n				The timeless restaurant is renowned for its range of Nepali, Indian, Chinese, and international cuisines. With a premier view of Fewa Lake, a diverse menu that highlights local specialties, and beverages served with a smile, the perfect spot to see and be seen. The bar is open all day for afternoon teas, pre-dinner cocktails, or a quiet moment with an espresso.</div>\r\n			<div class=\"text\" style=\"text-align: justify;\">\r\n				&nbsp;</div>\r\n			<ul>\r\n				<li class=\"text\" style=\"text-align: justify;\">\r\n					Lounge &amp; Deck available in conjuction with the restarurant</li>\r\n			</ul>\r\n		</div>\r\n	</div>\r\n</div>\r\n<!-- Meal plan --><!--<div class=\"time_table my-4 w-50 mx-auto\">\r\n	<table class=\"table table-bordered text-center\" style=\"vertical-align: middle;\">\r\n		<tbody>\r\n			<tr>\r\n				<th rowspan=\"2\">\r\n					Meal Plan</th>\r\n				<th>\r\n					Breakfast</th>\r\n				<th>\r\n					Lunch | Dinner</th>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					USD 9</td>\r\n				<td>\r\n					USD 15</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>-->\r\n<div class=\"menu__list\">\r\n	&nbsp;</div>\r\n<!-- menu list end -->\r\n<div class=\"restaurant_info position-relative mt-5\">\r\n	<div class=\"row justify-content-center\">\r\n		<div class=\"col-md-3\">\r\n			<div class=\"chef\">\r\n				<img alt=\"\" src=\"/barpeepal/userfiles/images/drinks.png\" />\r\n				<h3 class=\"text-white mb-2\">\r\n					Signature Drinks</h3>\r\n				<p>\r\n					Espresso Martini<br />\r\n					Hot Rum Punch</p>\r\n			</div>\r\n		</div>\r\n		<div class=\"col-md-3 \">\r\n			<div class=\"time_table\">\r\n				<img alt=\"\" src=\"userfiles/images/clock.png\" />\r\n				<h3 class=\"text-white mb-2\">\r\n					Opening Time</h3>\r\n				<p>\r\n					7:00 A.M - 10:30 P.M</p>\r\n			</div>\r\n		</div>\r\n		<div class=\"col-md-3\">\r\n			<div class=\"time_table\">\r\n				<img alt=\"\" src=\"userfiles/images/cuisine.png\" />\r\n				<h3 class=\"text-white mb-2\">\r\n					Cuisine</h3>\r\n				<p>\r\n					Nepali, Indian, Chinese, Continental</p>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 0, '', 0, 0, 0, '', 0, 0, '', 0, '', 'Chautari Restro & Bar', '', '', '', '', '', '', '', '', '', '', 'Chautari Restro & Bar', 'Chautari Restro & Bar, Quality Food, Menu, Local Specialities, International Cuisine, Beverage, Dinner, Breakfast, Drinks, Cocktails, Restaurant, Experienced Chief', 'Open 24/7, this timeless restaurant is renowned for its range of Nepali, Indian, Chinese, and international cuisines. With a premier view of Fewa Lake, a diverse menu that highlights local specialties, and beverages served with a smile, the perfect spot to see and be seen. The bar is open all day for afternoon teas, pre-dinner cocktails, or a quiet moment with an espresso.\r\n', 1, 9, '2025-01-02 10:36:45', '2025-01-28 12:32:59', 17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, 'manjung-hall', 'Manjung Hall', '', 'Manjang Hall with 275 to 300 occupancy is set in superb surroundings to bring peace and relaxation to the business minds. We cater any kind of events, from small meetings to large conferences together with residential facilities. By First-class catering with the latest technology, we aim to make your event with us run as smoothly as possible<br><br>Bar Peepal Resort has an ideal venue for hosting weddings, corporate events, and private celebrations. With\r\nwell-appointed event spaces and a dedicated team of professionals, the resort guarantees seamless\r\nplanning and execution, making every occasion truly special.\r\n\r\n', 'a:0:{}', '', 'Dv0Oc-hall5.jpg', '', '', 0x613a313a7b693a3131383b613a323a7b693a303b613a313a7b693a303b733a31343a2248616c6c20616d656e6974696573223b7d693a313b613a31333a7b693a303b733a333a22313535223b693a313b733a333a22313334223b693a323b733a333a22313331223b693a333b733a333a22313633223b693a343b733a333a22313632223b693a353b733a333a22313631223b693a363b733a333a22313530223b693a373b733a333a22313634223b693a383b733a333a22313738223b693a393b733a333a22313831223b693a31303b733a333a22313830223b693a31313b733a333a22313739223b693a31323b733a333a22313832223b7d7d7d, '<div class=\"row\">\r\n	<div class=\"col-md-12 pe-5\">\r\n		<div class=\"block-forty mt-4\">\r\n			<div class=\"text\">\r\n				<div class=\"text-two text__limit hall__text\">\r\n					Manjang Hall with 275 to 300 occupancy is set in superb surroundings to bring peace and relaxation to the business minds. We cater any kind of events, from small meetings to large conferences together with residential facilities. By First-class catering with the latest technology, we aim to make your event with us run as smoothly as possible. We have seperate kitchen specially designed for hall. Guest can organize events and use kitchen as per requirements.<br />\r\n					<br />\r\n					Bar Peepal Resort has an ideal venue for hosting weddings, corporate events, and private celebrations. With well-appointed event spaces and a dedicated team of professionals, the resort guarantees seamless planning and execution, making every occasion truly special.</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div class=\"bottom-border mt-5\">\r\n	<h3 class=\"text-center\">\r\n		Setup Style and Occupancy</h3>\r\n</div>\r\n<table class=\"table table__bg_color table-striped pt-5 mb-5 pb-5 text-center\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				<img alt=\"\" class=\"d-block mx-auto pb-4\" src=\"userfiles/images/m2.png\" width=\"60\" />Hall Size</th>\r\n			<th>\r\n				<img alt=\"\" class=\"d-block mx-auto pb-4\" src=\"userfiles/images/theator.jpg\" />Theatre Style</th>\r\n			<th>\r\n				<img alt=\"\" class=\"d-block mx-auto pb-4\" src=\"userfiles/images/banquet.jpg\" />Round Table</th>\r\n			<th>\r\n				<img alt=\"\" class=\"d-block mx-auto pb-4\" src=\"userfiles/images/u.jpg\" />U-Shape Style</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				2200 sq.ft.</td>\r\n			<td>\r\n				275 covers</td>\r\n			<td>\r\n				120 covers</td>\r\n			<td>\r\n				60 Covers</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 0, '', 0, 0, 0, '275 Covers', 0, 0, '', 0, '', 'From vision to celebration, we make it happen', '', '', '', '', '', '', '', '', '', '', 'Manjung Hall', 'ABC hall, Gathering, Ample Space, PA System, Whiteboard, Security, Authentic Setup, \r\nReservation System, Accommodation \r\n', 'Well-furnished accommodation with all necessary amenities that makes your time relaxing & blissful. You can enjoy the beautiful view of Fewa Lake from the private balcony of accommodation', 1, 6, '2025-01-03 11:06:54', '2025-01-28 13:13:56', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2200 sq.ft.', '', '', '', ''),
(60, 'dining-hall', 'Dining Hall', '', ' The resort\'s in-house dining offers a gastronomic journey featuring local Nepali delicacies and\r\ninternational cuisines prepared by experienced chefs. With a focus on fresh, locally sourced ingredients,\r\nthe menu caters to a variety of tastes, ensuring a delightful dining experience', 'a:0:{}', '', 'oYAru-dining.jpg', '', '', 0x613a313a7b693a3131383b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a31323a7b693a303b733a333a22313734223b693a313b733a333a22313634223b693a323b733a333a22313536223b693a333b733a333a22313535223b693a343b733a333a22313534223b693a353b733a333a22313435223b693a363b733a333a22313339223b693a373b733a333a22313334223b693a383b733a333a22313331223b693a393b733a333a22313737223b693a31303b733a333a22313736223b693a31313b733a333a22313735223b7d7d7d, '<div class=\"row\">\r\n	<div class=\"col-md-12 pe-md-5\">\r\n		<div class=\"block-forty mt-4\">\r\n			<div class=\"text\" style=\"text-align: justify;\">\r\n				The resort&#39;s in-house dining offers a gastronomic journey featuring local Nepali delicacies and international cuisines prepared by experienced chefs. With a focus on fresh, locally sourced ingredients, the menu caters to a variety of tastes, ensuring a delightful dining experience.</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<!-- Meal plan --><!--<div class=\"time_table my-4 w-50 mx-auto\">\r\n	<table class=\"table table-bordered text-center\" style=\"vertical-align: middle;\">\r\n		<tbody>\r\n			<tr>\r\n				<th rowspan=\"2\">\r\n					Meal Plan</th>\r\n				<th>\r\n					Breakfast</th>\r\n				<th>\r\n					Lunch | Dinner</th>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					USD 9</td>\r\n				<td>\r\n					USD 15</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>-->\r\n<div class=\"menu__list\">\r\n	&nbsp;</div>\r\n<!-- menu list end -->\r\n<div class=\"restaurant_info position-relative mt-5\">\r\n	<div class=\"row justify-content-center\">\r\n		<div class=\"col-md-3\">\r\n			<div class=\"chef\">\r\n				<img alt=\"\" src=\"userfiles/images/chef.png\" />\r\n				<h3 class=\"text-white mb-2\">\r\n					Speciality</h3>\r\n				<p>\r\n					Nepali Thali</p>\r\n			</div>\r\n		</div>\r\n		<div class=\"col-md-3 \">\r\n			<div class=\"time_table\">\r\n				<img alt=\"\" src=\"userfiles/images/clock.png\" />\r\n				<h3 class=\"text-white mb-2\">\r\n					Opening Time</h3>\r\n				<p>\r\n					7:00 A.M - 10:30 P.M</p>\r\n			</div>\r\n		</div>\r\n		<div class=\"col-md-3\">\r\n			<div class=\"time_table\">\r\n				<img alt=\"\" src=\"userfiles/images/cuisine.png\" />\r\n				<h3 class=\"text-white mb-2\">\r\n					Cuisine</h3>\r\n				<p>\r\n					Nepali, Indian, Chinese, Continental</p>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 0, '', 0, 0, 0, '', 0, 0, '', 0, '', 'fasda', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 7, '2025-01-07 16:02:11', '2025-01-28 12:34:12', 17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(61, 'interconnected-deluxe-room', 'Interconnected Deluxe Room', '', ' Experience the perfect balance of privacy and togetherness in our Interconnected Deluxe Room. Ideal for families or groups, these rooms are connected by a private door, offering ample space and comfort.', 'a:1:{i:0;s:20:\"v2WgU-connecting.jpg\";}', '', '7WwER-3.jpg', '', '', 0x613a313a7b693a3131383b613a323a7b693a303b613a313a7b693a303b733a31343a22526f6f6d20416d656e6974696573223b7d693a313b613a31373a7b693a303b733a333a22313434223b693a313b733a333a22313432223b693a323b733a333a22313431223b693a333b733a333a22313334223b693a343b733a333a22313331223b693a353b733a333a22313538223b693a363b733a333a22313435223b693a373b733a333a22313430223b693a383b733a333a22313339223b693a393b733a333a22313730223b693a31303b733a333a22313639223b693a31313b733a333a22313636223b693a31323b733a333a22313635223b693a31333b733a333a22313539223b693a31343b733a333a22313537223b693a31353b733a333a22313436223b693a31363b733a333a22313336223b7d7d7d, '<p style=\"text-align: justify;\">\r\n	Experience the perfect balance of privacy and togetherness in our Interconnected Deluxe Room. Ideal for families or groups, these rooms are connected by a private door, offering ample space and comfort. Each room is equipped with a plush bed, a modern en-suite bathroom, and essential amenities.</p>\r\n', '', 0, 'USD', 0, 0, 300, '4 pax', 0, 0, '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'Interconnected Deluxe Room', 'Interconnected Deluxe Room, Large Space, Family Room, Group, Private Door, Ample Space, Comfortable, Essential Amenities, Extra Bed, Balcony, Seating Area, Togetherness', 'Experience the perfect balance of privacy and togetherness in our Interconnected Deluxe Room. Ideal for families or groups, these rooms are connected by a private door, offering ample space and comfort. Each room is equipped with a plush bed, a modern en-suite bathroom, and essential amenities.', 1, 8, '2025-01-16 12:21:57', '2025-01-28 10:06:07', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', 'Queen', '230 sq.ft', '', '', '', ''),
(62, 'junior-suite', 'Junior Suite', '', 'Step into the inviting ambiance of our Junior Deluxe Room, where comfort meets charm. This cozy retreat, although slightly smaller than our deluxe rooms, offers a perfect blend of style and convenience.', 'a:1:{i:0;s:16:\"bUALJ-junior.jpg\";}', '', 'ySDu1-junior.jpg', '', '', 0x613a313a7b693a3131383b613a323a7b693a303b613a313a7b693a303b733a31343a22526f6f6d20416d656e6974696573223b7d693a313b613a32313a7b693a303b733a333a22313331223b693a313b733a333a22313339223b693a323b733a333a22313432223b693a333b733a333a22313431223b693a343b733a333a22313435223b693a353b733a333a22313335223b693a363b733a333a22313436223b693a373b733a333a22313430223b693a383b733a333a22313336223b693a393b733a333a22313237223b693a31303b733a333a22313334223b693a31313b733a333a22313730223b693a31323b733a333a22313639223b693a31333b733a333a22313637223b693a31343b733a333a22313636223b693a31353b733a333a22313635223b693a31363b733a333a22313539223b693a31373b733a333a22313538223b693a31383b733a333a22313537223b693a31393b733a333a22313434223b693a32303b733a333a22313337223b7d7d7d, '<p style=\"text-align: justify;\">\r\n	Step into the inviting ambiance of our Junior Deluxe Room, where comfort meets charm. This cozy retreat, although slightly smaller than our deluxe rooms, offers a perfect blend of style and convenience. Relax on a soft, luxurious bed, refresh in a sleek, modern bathroom, and enjoy essential amenities. Enjoy enchanting views from balcony, adding a touch of serenity to your stay.</p>\r\n', '', 0, 'USD', 0, 0, 200, '2 pax', 0, 0, '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'Junior Suite', 'Junior Suite, Ambiance, Comfortable, Essental Amenities, Balcony, Luxurious Bed, Stay. Comfortable, Serenity, Modern Bathroom, Convenience, Cozy, View, Phewa Lake', 'Step into the inviting ambiance of our Junior Deluxe Room, where comfort meets charm. This cozy retreat, although slightly smaller than our deluxe rooms, offers a perfect blend of style and convenience. Relax on a soft, luxurious bed, refresh in a sleek, modern bathroom, and enjoy essential amenities. Enjoy enchanting views from balcony, adding a touch of serenity to your stay.', 1, 7, '2025-01-16 12:22:43', '2025-01-28 11:08:26', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', 'King', '470 sq.ft', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE `tbl_permission` (
  `id` int(11) NOT NULL,
  `type` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `module_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_popup`
--

CREATE TABLE `tbl_popup` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `source` varchar(250) NOT NULL,
  `linktype` varchar(150) NOT NULL,
  `linksrc` varchar(250) NOT NULL,
  `position` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_popup`
--

INSERT INTO `tbl_popup` (`id`, `title`, `date1`, `date2`, `image`, `source`, `linktype`, `linksrc`, `position`, `status`, `sortorder`, `type`, `slug`) VALUES
(1, 'tests', '2023-09-03', '2023-09-21', 'a:0:{}', '', '0', 'about-us', 1, 0, 1, 1, 'tests'),
(2, 'test', '2024-01-01', '2025-01-30', 'a:1:{i:0;s:23:\"YImUr-default-image.jpg\";}', '', '0', 'about-us', 1, 0, 2, 1, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `img_thumb` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img_jpg` varchar(255) NOT NULL,
  `img_png` varchar(255) NOT NULL,
  `img_svg` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(255) NOT NULL,
  `modified_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `title`, `content`, `img_thumb`, `img_jpg`, `img_png`, `img_svg`, `status`, `sortorder`, `added_date`, `modified_date`) VALUES
(2, 'test', 'test ', '<p>\r\n	dfcgvhhjbk</p>\r\n', '', '', '', '', 1, 1, '2021-11-24 12:47:12', '2021-11-24 12:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_room_price`
--

CREATE TABLE `tbl_room_price` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `one_person` int(11) NOT NULL,
  `two_person` int(11) NOT NULL,
  `three_person` int(11) NOT NULL,
  `registered` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `brief` varchar(250) NOT NULL,
  `meta_title` tinyint(4) NOT NULL,
  `meta_keywords` int(11) NOT NULL,
  `meta_description` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`id`, `slug`, `title`, `sub_title`, `image`, `icon`, `linksrc`, `linktype`, `content`, `status`, `added_date`, `sortorder`, `type`, `brief`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(67, 'swimming-pool', 'Swimming Pool', 'Swimming Pool', 'a:1:{i:0;s:23:\"RwhTt-swimming-pool.png\";}', '', '', 0, '<p>\r\n	Take a dip in our infinity pool with stunning views.</p>\r\n', 1, '2024-12-26 17:32:44', 23, 0, '', 0, 0, 0),
(68, 'spa', 'Spa', 'Spa', 'a:1:{i:0;s:13:\"voDJA-spa.png\";}', '', '', 0, '<p>\r\n	Pamper yourself with relaxing treatments.</p>\r\n', 1, '2024-12-26 17:33:09', 21, 0, '', 0, 0, 0),
(63, 'high-speed-internet', 'High Speed Internet', 'High Speed Internet', 'a:1:{i:0;s:14:\"ONoG3-wifi.png\";}', '', '', 0, '<p>\r\n	Enjoy fast and reliable internet access throughout your stay.</p>\r\n', 1, '2024-12-26 17:27:43', 25, 0, '', 0, 0, 0),
(70, 'gym-center', 'Gym Center', 'Gym Center', 'a:1:{i:0;s:17:\"AUzzb-weights.png\";}', '', '', 0, '<p>\r\n	Stay fit with our fully equipped gym.</p>\r\n', 1, '2024-12-26 17:34:25', 20, 0, '', 0, 0, 0),
(73, 'pickup-drop', 'Pickup & drop', 'Airport pickup & drop', 'a:1:{i:0;s:17:\"3rp0C-airport.png\";}', '', '', 0, '<p>\r\n	Convenient shuttle service to and from the airport.</p>\r\n', 1, '2025-01-07 16:25:00', 27, 0, '', 0, 0, 0),
(69, 'parking-space', 'Parking Space', 'Parking space', 'a:1:{i:0;s:16:\"4D0rv-garage.png\";}', '', '', 0, '<p>\r\n	Convenient and secure parking available for all guests.</p>\r\n', 1, '2024-12-26 17:34:00', 24, 0, '', 0, 0, 0),
(66, 'coffee-shop', 'Coffee Shop', 'Coffee Shop', 'a:1:{i:0;s:24:\"nRMbd-coffee-machine.png\";}', '', '', 0, '<p>\r\n	Enjoy freshly brewed coffee and light snacks.</p>\r\n', 1, '2024-12-26 17:32:13', 22, 0, '', 0, 0, 0),
(65, 'big-garden', 'Big Garden', 'Big Garden', 'a:1:{i:0;s:16:\"Jfqk6-garden.png\";}', '', '', 0, '<p>\r\n	Stroll through our beautiful garden and unwind.</p>\r\n', 1, '2024-12-26 17:31:00', 19, 0, '', 0, 0, 0),
(74, 'welcome-drink', 'Welcome Drink ', '', 'a:1:{i:0;s:23:\"NNIPJ-welcome-drink.png\";}', '', '', 0, '<p>\r\n	Enjoy a refreshing welcome drink as you arrive.</p>\r\n', 1, '2025-01-17 12:02:24', 26, 0, '', 0, 0, 0),
(75, 'sauna-steam', 'Sauna & Steam', '', 'a:1:{i:0;s:15:\"TWIaI-steam.png\";}', '', '', 0, '', 1, '2025-01-17 12:14:19', 17, 0, '', 0, 0, 0),
(76, 'newspaper-on-request', 'Newspaper (on request)', '', 'a:1:{i:0;s:19:\"dQmed-newspaper.png\";}', '', '', 0, '', 1, '2025-01-17 12:14:35', 9, 0, '', 0, 0, 0),
(77, 'daily-housekeeping', 'Daily Housekeeping', '', 'a:1:{i:0;s:24:\"mMwdp-cleaning-tools.png\";}', '', '', 0, '', 1, '2025-01-17 12:23:41', 11, 0, '', 0, 0, 0),
(78, 'room-service', 'Room Service', '', 'a:1:{i:0;s:22:\"uzjmv-room-service.png\";}', '', '', 0, '', 1, '2025-01-17 12:25:08', 7, 0, '', 0, 0, 0),
(79, 'travel-desk', 'Travel Desk', '', 'a:1:{i:0;s:26:\"zGsPP-customer-service.png\";}', '', '', 0, '', 1, '2025-01-17 12:27:54', 2, 0, '', 0, 0, 0),
(80, 'concierge-service', 'Concierge Service', '', 'a:1:{i:0;s:17:\"7QRuH-doorman.png\";}', '', '', 0, '', 1, '2025-01-17 12:29:54', 1, 0, '', 0, 0, 0),
(81, 'currency-exchange', 'Currency Exchange', '', 'a:1:{i:0;s:18:\"mSDPp-currency.png\";}', '', '', 0, '', 1, '2025-01-17 12:33:23', 0, 0, '', 0, 0, 0),
(82, 'doctor-on-call', 'Doctor on Call', '', 'a:1:{i:0;s:16:\"1owIa-doctor.png\";}', '', '', 0, '', 1, '2025-01-17 12:33:40', 5, 0, '', 0, 0, 0),
(83, 'mini-bar', 'Mini Bar', '', 'a:1:{i:0;s:17:\"55WcU-minibar.png\";}', '', '', 0, '', 1, '2025-01-17 12:33:57', 4, 0, '', 0, 0, 0),
(84, 'card-accepted', 'Card Accepted', '', 'a:1:{i:0;s:26:\"3n3LP-approved-payment.png\";}', '', '', 0, '', 1, '2025-01-17 12:41:05', 3, 0, '', 0, 0, 0),
(85, 'smoking-zone', 'Smoking Zone', '', 'a:1:{i:0;s:17:\"DoI0U-ashtray.png\";}', '', '', 0, '', 1, '2025-01-17 12:41:23', 10, 0, '', 0, 0, 0),
(86, '24hrs-front-desk', '24hrs Front Desk', '', 'a:1:{i:0;s:26:\"1DRFw-information-desk.png\";}', '', '', 0, '', 1, '2025-01-17 12:41:46', 8, 0, '', 0, 0, 0),
(87, 'hot-cold-water', 'Hot & Cold Water', '', 'a:1:{i:0;s:19:\"EZsgL-water-tap.png\";}', '', '', 0, '', 1, '2025-01-17 12:42:11', 14, 0, '', 0, 0, 0),
(88, 'laundry-service', 'Laundry Service', '', 'a:1:{i:0;s:17:\"U3lh4-laundry.png\";}', '', '', 0, '', 1, '2025-01-17 12:43:00', 18, 0, '', 0, 0, 0),
(89, 'fire-extinguisher', 'Fire Extinguisher ', '', 'a:1:{i:0;s:27:\"G0K83-fire-extinguisher.png\";}', '', '', 0, '', 1, '2025-01-17 12:43:47', 13, 0, '', 0, 0, 0),
(90, 'electricity-backup', 'Electricity Backup', '', 'a:1:{i:0;s:19:\"l78sM-generator.png\";}', '', '', 0, '', 1, '2025-01-17 12:44:12', 6, 0, '', 0, 0, 0),
(91, 'restaurant-bar', 'Restaurant & Bar', '', 'a:1:{i:0;s:20:\"J1KlZ-restaurant.png\";}', '', '', 0, '', 1, '2025-01-17 12:47:02', 16, 0, '', 0, 0, 0),
(92, 'event-hall', 'Event Hall', '', 'a:1:{i:0;s:14:\"7RxVg-hall.png\";}', '', '', 0, '', 1, '2025-01-17 12:53:13', 15, 0, '', 0, 0, 0),
(93, 'cctv-security', 'CCTV Security', '', 'a:1:{i:0;s:14:\"y9MyH-cctv.png\";}', '', '', 0, '', 1, '2025-01-17 12:53:29', 12, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slideshow`
--

CREATE TABLE `tbl_slideshow` (
  `id` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `image` tinytext NOT NULL,
  `linksrc` tinytext NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `m_status` tinyint(1) NOT NULL DEFAULT '1',
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `source` varchar(250) NOT NULL,
  `source_vid` varchar(255) NOT NULL,
  `url_type` varchar(50) NOT NULL,
  `thumb_image` longtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `class` varchar(100) NOT NULL,
  `mode` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slideshow`
--

INSERT INTO `tbl_slideshow` (`id`, `title`, `image`, `linksrc`, `linktype`, `content`, `status`, `m_status`, `added_date`, `sortorder`, `type`, `source`, `source_vid`, `url_type`, `thumb_image`, `url`, `host`, `class`, `mode`) VALUES
(85, 'Stay active and fit', 'Iojbo-5.jpg', '', 0, '<h1 class=\"banner-title text-light\">\r\n	Stay active and fit in<br />\r\n	our state-of-the-art gym</h1>\r\n', 1, 0, '2025-01-07 12:59:21', 3, 0, '', '', '', '', '', '', '', 1),
(88, 'Find relaxation at our Bar Peepal Resort', 'oMLdd-M71OD-slider-3_1737010572559.webp', '', 1, '<h1 class=\"banner-title text-light\">\r\n	Find relaxation at<br />\r\n	our Bar Peepal Resort</h1>\r\n', 0, 0, '2025-01-07 14:14:17', 0, 0, '', '', '', '', '', '', '', 1),
(95, 'Our meeting hall, crafted for collaboration and innovation', 't0NRp-try.jpg', '', 0, '<h1 class=\"banner-title text-light\">\r\n	Our meeting hall, crafted for<br />\r\n	collaboration and innovation</h1>\r\n', 0, 0, '2025-01-21 09:40:51', 1, 0, '', '', '', '', '', '', '', 1),
(92, 'Savor delicious meals in our elegant and inviting restaurant', 'hy21V-3.jpg', '', 0, '<h1 class=\"banner-title text-light\">\r\n	Savor delicious meals in our<br />\r\n	elegant and inviting restaurant</h1>\r\n', 1, 0, '2025-01-17 17:51:25', 5, 0, '', '', '', '', '', '', '', 1),
(93, 'Dive into relaxation at our rooftop infinity pool with stunning views', 'GSFyz-4.jpg', '', 0, '<h1 class=\"banner-title text-light\">\r\n	Dive into relaxation at our rooftop<br />\r\n	infinity pool with stunning views</h1>\r\n', 1, 0, '2025-01-17 17:55:02', 4, 0, '', '', '', '', '', '', '', 1),
(94, 'Welcome to Bar Peepal Resort, Pokhara, Nepal', 'I8mfe-1.jpg', 'about-us', 0, '<h1 class=\"banner-title text-light\">\r\n	Elegant view of Bar Peepal<br />\r\n	Resort, Pokhara</h1>\r\n', 1, 0, '2025-01-17 18:01:11', 7, 0, '', '', '', '', '', '', '', 1),
(96, 'Experience unparalleled elegance and comfort in every room', 'SGCN1-2.jpg', '', 0, '<h1 class=\"banner-title text-light\">\r\n	Experience unparalleled <br />\r\n	elegance and comfort</h1>\r\n', 1, 0, '2025-01-21 14:56:46', 6, 0, '', '', '', '', '', '', '', 1),
(97, ' A culinary masterpiece', '9vQD7-6.jpg', '', 0, '<h1 class=\"banner-title text-light\">\r\n	Every meal,<br />\r\n	a culinary masterpiece</h1>\r\n', 1, 0, '2025-01-21 15:01:52', 2, 0, '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slideshows_withouttlist`
--

CREATE TABLE `tbl_slideshows_withouttlist` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social_networking`
--

CREATE TABLE `tbl_social_networking` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `linksrc` tinytext NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_social_networking`
--

INSERT INTO `tbl_social_networking` (`id`, `title`, `image`, `icon`, `type`, `linksrc`, `status`, `sortorder`, `registered`) VALUES
(18, 'Trip advisor', 'zYB6J-3rSze-tripadviser_1737010119334.webp', '#', 2, 'https://www.tripadvisor.com/Hotel_Review-g293891-d20376414-Reviews-Bar_Peepal_Resort-Pokhara_Gandaki_Zone_Western_Region.html', 1, 7, '2025-01-07 11:09:09'),
(5, 'Facebook', '', 'fab fa-facebook-f text-white', 1, 'https://www.facebook.com/barpeepalresort2020/', 1, 1, '2024-12-25 16:52:20'),
(6, 'Instagram', '', 'fab fa-instagram text-white', 1, 'https://www.instagram.com/barpeepalresort/', 1, 3, '2024-12-25 16:53:38'),
(14, 'goibibo', 'tWHLN-75HU2-goi_1737010549441-2.webp', '#', 2, 'https://www.goibibo.com/hotels-international/bar-peepal-resort-hotel-in-pokhara-8475427395015172411/?hquery={%22ci%22:%2220250127%22,%22co%22:%2220250128%22,%22r%22:%221-2-0%22,%22ibp%22:%22%22}&cc=NPL&vcid=8475427395015172411&locusId=RGPOK&locusType=regi', 1, 4, '2024-12-26 11:22:12'),
(15, 'make my trip', 'CZ2Cz-YEW54-mmt_1737010162660-2.webp', '#', 2, 'https://www.makemytrip.com/hotels/hotel-details/?hotelId=202101181924066753&_uCurrency=INR&checkin=01222025&checkout=01232025&city=CTPOKHA&country=NPL&lat=28.21392&lng=83.96404&locusId=RGPOK&locusType=region&rank=1&regionNearByExp=3&roomStayQualifier=2e0e', 1, 5, '2024-12-26 11:22:35'),
(13, 'Expedia', 'ekzy3-2lJG7-expedia_1737010086351.webp', 'https://mayurstay.com/barpeepal/', 2, 'https://www.expedia.com/Pokhara-Hotels-Bar-Peepal-Resort.h55584286.Hotel-Information?chkin=2025-01-22&chkout=2025-01-24&x_pwa=1&rfrr=HSR&pwa_ts=1737454055439&referrerUrl=aHR0cHM6Ly93d3cuZXhwZWRpYS5jb20vSG90ZWwtU2VhcmNo&useRewards=false&rm1=a2&regionId=281', 1, 2, '2024-12-26 11:21:49'),
(12, 'booking', '399mn-adevC-booking_1737010222449-2.webp', '#', 2, 'https://www.booking.com/hotel/np/bar-peepal-resort.html', 1, 6, '2024-12-26 11:05:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subpackage_images`
--

CREATE TABLE `tbl_subpackage_images` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `subpackageid` int(11) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_subpackage_images`
--

INSERT INTO `tbl_subpackage_images` (`id`, `title`, `subpackageid`, `detail`, `status`, `sortorder`, `registered`, `image`) VALUES
(73, 'Hall', 31, '', 1, 85, '2023-06-21 13:59:14', 'lumn1-1.jpg'),
(74, 'Hall', 31, '', 1, 86, '2023-06-21 13:59:14', 'TXYew-2.jpg'),
(75, 'Hall', 31, '', 1, 87, '2023-06-21 13:59:14', '3WSgO-3.jpg'),
(76, 'Hall', 31, '', 1, 88, '2023-06-21 13:59:14', 'V7UWD-4.jpg'),
(77, 'Hall', 31, '', 1, 89, '2023-06-21 13:59:14', 'IZ0in-5.jpg'),
(78, 'Hall', 31, '', 1, 90, '2023-06-21 13:59:14', 's8rXz-6.jpg'),
(96, 'n', 39, '', 1, 74, '2023-08-29 14:54:22', '1ftnO-img2.jpg'),
(97, 'nn', 39, '', 1, 83, '2023-08-29 14:54:22', 'T13H4-img2.jpg'),
(98, 'n', 39, '', 1, 84, '2023-08-29 14:54:22', '6ZaBg-img2.jpg'),
(105, 'dep', 28, '', 1, 68, '2023-09-04 12:42:45', 'h26jS-delpre.jpg'),
(106, 'dep', 28, '', 1, 75, '2023-09-04 12:42:45', '4PvHa-delpre.jpg'),
(107, 'dep', 28, '', 1, 80, '2023-09-04 12:42:45', 'aTYbg-delpre.jpg'),
(108, 'a', 42, '', 1, 70, '2023-09-04 12:58:24', 'Jpoxc-img3.jpg'),
(109, 'a', 42, '', 1, 76, '2023-09-04 12:58:24', 'Xlari-img3.jpg'),
(110, 's', 43, '', 1, 71, '2023-09-04 13:00:16', 'eUhDU-880x864_img2.jpg'),
(111, 's', 43, '', 1, 77, '2023-09-04 13:00:16', 'DlMGX-880x864_img2.jpg'),
(114, 'deluxe', 29, '', 1, 72, '2023-09-15 11:40:40', 'FFzBD-del.jpg'),
(115, 'delxue', 29, '', 1, 78, '2023-09-15 11:40:40', 'D5uYC-del.jpg'),
(116, 'deluxe', 29, '', 1, 81, '2023-09-15 11:40:40', 'ecYs1-del.jpg'),
(117, 'standard', 41, '', 1, 79, '2023-09-17 12:48:42', 'wath6-standard.jpg'),
(118, 'standard', 41, '', 1, 73, '2023-09-17 12:48:42', 'zSkxL-stand.jpg'),
(119, 'standard', 41, '', 1, 82, '2023-09-17 12:48:42', '8Ws0F-stand.jpg'),
(121, 'lib', 44, '', 1, 67, '2023-09-17 17:18:17', 'mEXDT-library.jpg'),
(122, 'lib', 44, '', 1, 69, '2023-09-17 17:18:17', 'nFb8K-library.jpg'),
(148, 'Deluxe Room', 46, '', 1, 52, '2025-01-17 13:58:29', '97erw-4.jpg'),
(149, 'Deluxe Room', 46, '', 1, 57, '2025-01-17 13:58:29', 'BOj71-6.jpg'),
(150, 'Deluxe Room', 46, '', 1, 62, '2025-01-17 13:58:29', '2FZk6-5.jpg'),
(151, 'Deluxe Room', 46, '', 1, 65, '2025-01-17 13:58:29', 'Mtenk-7.jpg'),
(152, 'Deluxe Room', 46, '', 1, 1, '2025-01-17 13:58:29', 'wOKof-3.jpg'),
(153, 'Deluxe Room', 46, '', 1, 47, '2025-01-17 13:58:29', 'H6bh6-2.jpg'),
(154, 'Super Deluxe Room', 48, '', 1, 7, '2025-01-17 14:00:26', 'oUElo-1.jpg'),
(155, 'Super Deluxe Room', 48, '', 1, 8, '2025-01-17 14:00:26', 'hNwuw-3.jpg'),
(156, 'Super Deluxe Room', 48, '', 1, 16, '2025-01-17 14:00:26', 'u1X8M-4.jpg'),
(157, 'Super Deluxe Room', 48, '', 1, 10, '2025-01-17 14:00:26', 'PqMQn-2.jpg'),
(158, 'Super Deluxe Room', 48, '', 1, 11, '2025-01-17 14:00:26', 'NDaBS-9.jpg'),
(159, 'Super Deluxe Room', 48, '', 1, 13, '2025-01-17 14:00:26', 'RM6Xr-10.jpg'),
(160, 'Super Deluxe Room', 48, '', 1, 14, '2025-01-17 14:00:26', 'yQA0V-11.jpg'),
(163, 'Super Deluxe Room', 48, '', 1, 2, '2025-01-17 14:01:37', '1Pz8S-8.jpg'),
(164, 'Super Deluxe Room', 48, '', 1, 4, '2025-01-17 14:01:37', 'afAof-9.jpg'),
(165, 'Super Deluxe Room', 48, '', 1, 3, '2025-01-17 14:01:58', 'bcd2b-7.jpg'),
(166, 'Executive Suite', 49, '', 1, 28, '2025-01-17 14:24:22', 'wwKPk-6.jpg'),
(167, 'Executive Suite', 49, '', 1, 34, '2025-01-17 14:24:22', 'g9XRc-5.jpg'),
(168, 'Executive Suite', 49, '', 1, 38, '2025-01-17 14:24:22', 'JBmod-4.jpg'),
(169, 'Executive Suite', 49, '', 1, 40, '2025-01-17 14:24:22', 'UF1K6-3.jpg'),
(170, 'Executive Suite', 49, '', 1, 41, '2025-01-17 14:24:22', 'xcqTO-2.jpg'),
(172, 'Executive Suite', 49, '', 1, 15, '2025-01-17 14:24:56', 'l91Z6-2.jpg'),
(173, 'Junior Suite', 62, '', 1, 9, '2025-01-17 14:25:46', 'V2PCM-1.jpg'),
(180, 'Interconnected Deluxe Room', 61, '', 1, 5, '2025-01-17 14:40:12', 'sMy1M-1.jpg'),
(181, 'Interconnected Deluxe Room', 61, '', 1, 12, '2025-01-17 14:40:12', '9wQRs-6.jpg'),
(182, 'Interconnected Deluxe Room', 61, '', 1, 18, '2025-01-17 14:40:12', 'ECGDZ-2.jpg'),
(183, 'Interconnected Deluxe Room', 61, '', 1, 20, '2025-01-17 14:40:12', 'AYwsf-3.jpg'),
(184, 'Interconnected Deluxe Room', 61, '', 1, 22, '2025-01-17 14:40:12', 'DYiWm-4.jpg'),
(185, 'Interconnected Deluxe Room', 61, '', 1, 24, '2025-01-17 14:40:12', 'n5hAr-7.jpg'),
(186, 'Interconnected Deluxe Room', 61, '', 1, 26, '2025-01-17 14:40:12', 'H7pGk-12.jpg'),
(187, 'Interconnected Deluxe Room', 61, '', 1, 29, '2025-01-17 14:40:12', 'zfpUa-10.jpg'),
(188, 'Interconnected Deluxe Room', 61, '', 1, 30, '2025-01-17 14:40:12', 'ESpmR-11.jpg'),
(198, 'Chautari Restro & Bar', 53, '', 0, 21, '2025-01-21 15:15:25', '2jroz-restro2.jpg'),
(199, 'Chautari Restro & Bar', 53, '', 0, 42, '2025-01-21 15:15:25', 'DYcaf-restro3.jpg'),
(200, 'Junior Suite', 62, '', 1, 19, '2025-01-24 16:10:23', '4Jkj5-6.jpg'),
(201, 'Junior Suite', 62, '', 1, 31, '2025-01-24 16:10:23', 'cfUU4-2.jpg'),
(202, 'Junior Suite', 62, '', 1, 32, '2025-01-24 16:10:23', 'P8We9-1.jpg'),
(203, 'Junior Suite', 62, '', 1, 35, '2025-01-24 16:10:23', 'xoFpX-3.jpg'),
(204, 'Junior Suite', 62, '', 1, 36, '2025-01-24 16:10:23', 'EKzzA-4.jpg'),
(205, 'Junior Suite', 62, '', 1, 25, '2025-01-24 16:10:23', 'ZIkUF-5.jpg'),
(206, 'Manjung Hall', 54, '', 1, 33, '2025-01-27 18:23:45', 'av9KV-hall1.jpg'),
(207, 'Manjung Hall', 54, '', 1, 43, '2025-01-27 18:23:45', 'uPNE6-hall3.jpg'),
(208, 'Manjung Hall', 54, '', 1, 48, '2025-01-27 18:23:45', 'yXdU9-hall2.jpg'),
(209, 'Manjung Hall', 54, '', 1, 53, '2025-01-27 18:23:45', 'Bk3a3-hall4.jpg'),
(210, 'Manjung Hall', 54, '', 1, 58, '2025-01-27 18:23:45', 'SU6XH-hall.jpg'),
(211, 'Chautari Restro & Bar', 53, '', 1, 49, '2025-01-27 23:48:15', '8a5r9-c4.jpg'),
(212, 'Chautari Restro & Bar', 53, '', 1, 54, '2025-01-27 23:48:15', 'qejPY-c1.jpg'),
(213, 'Chautari Restro & Bar', 53, '', 1, 59, '2025-01-27 23:48:15', 'zIRn7-c2.jpg'),
(214, 'Chautari Restro & Bar', 53, '', 1, 63, '2025-01-27 23:48:15', 'd0zHx-c3.jpg'),
(220, 'Dining Hall', 60, '', 1, 37, '2025-01-28 10:24:53', '5Q1Ju-dining3.jpg'),
(221, 'Dining Hall', 60, '', 1, 44, '2025-01-28 10:24:53', 'hYTT3-dining2.jpg'),
(222, 'Dining Hall', 60, '', 1, 50, '2025-01-28 10:24:53', 'BH4j9-diining4.jpg'),
(223, 'Dining Hall', 60, '', 1, 55, '2025-01-28 10:24:53', '4yE8K-dining1.jpg'),
(224, 'Lamjung Kitchen', 52, '', 1, 39, '2025-01-28 10:39:38', 'JOmsM-1.jpg'),
(225, 'Lamjung Kitchen', 52, '', 1, 45, '2025-01-28 10:39:38', 'VB8f7-3.jpg'),
(226, 'Lamjung Kitchen', 52, '', 0, 51, '2025-01-28 10:39:38', 'MKJyu-4.jpg'),
(227, 'Lamjung Kitchen', 52, '', 1, 56, '2025-01-28 10:39:38', 'r5dj7-5.jpg'),
(228, 'Lamjung Kitchen', 52, '', 1, 60, '2025-01-28 10:39:38', '9X7Dx-6.jpg'),
(229, 'Lamjung Kitchen', 52, '', 1, 64, '2025-01-28 10:39:38', 'IfHYq-7.jpg'),
(230, 'Lamjung Kitchen', 52, '', 1, 66, '2025-01-28 10:39:38', 'VUENB-2.jpg'),
(232, 'Dining Hall', 60, '', 1, 61, '2025-01-28 13:37:53', 'sI4Yi-1.jpg'),
(233, 'Corridor', 46, '', 0, 46, '2025-01-28 14:16:24', 'JUcXy-Corridor.jpg'),
(234, 'Corridor', 49, '', 0, 27, '2025-01-28 14:16:57', 'NaOKU-Corridor2.jpg'),
(235, 'Corridor', 62, '', 0, 23, '2025-01-28 14:20:02', 'tPx1G-Corridor3.jpg'),
(236, 'Corridor', 61, '', 0, 17, '2025-01-28 14:21:50', 'UrOPh-Corridor4.jpg'),
(237, 'Corridor', 48, '', 0, 6, '2025-01-28 14:22:41', '6QqbX-Corridor5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribers`
--

CREATE TABLE `tbl_subscribers` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `mailaddress` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(11) NOT NULL,
  `parentOf` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `linksrc` text COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `via_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id`, `parentOf`, `name`, `image`, `linksrc`, `content`, `rating`, `sortorder`, `status`, `country`, `via_type`, `type`) VALUES
(4, 0, 'John Smith', 'u23pH-try2.jpg', 'https://mayurstay.com/barpeepal/index.html', '<div class=\"text\" style=\"text-align: justify;\">\r\n	We absolutely loved our stay at Bar Peepal. The staff are extremely accommodating and friendly and made us feel at home right away. Our room was clean, spacious and modern. We loved our balcony.</div>\r\n', 3, 1, 0, 'Great Hospitality', '', 0),
(9, 0, 'Christina', '2wp70-try.jpg', '', '<p style=\"text-align: justify;\">\r\n	Had an amazing time. Very nice people especially the owner. Awesome view over Pokhara and the lake. Perfect for evening drinks, relaxing in the garden and enjoy the town! The rooms were really nice and clean.</p>\r\n', 3, 2, 0, 'Amazing Stay', '', 0),
(10, 0, 'Jasmine', 'oSlH1-try2.jpg', 'https://mayurstay.com/barpeepal/index.html', '<p style=\"text-align: justify;\">\r\n	One of the most beautiful pools I have ever seen! The hotel is build up against a hill and the pool looks out over the lake with behind it the mountains. Absolutely amazing. The owner is also really friendly.</p>\r\n', 4, 3, 0, 'Stunning Views', '', 0),
(11, 0, 'Rose', 'SIhcR-try.jpg', '', '<p style=\"text-align: justify;\">\r\n	So glad that we found this hotel. The best thing about the hotel was the swimming pool and the phewa lake view.Perfect spot.Will visit again very soon. Highly recommended for all the guests.</p>\r\n', 3, 4, 0, 'Perfect Spot', '', 0),
(12, 0, 'Daniel', 'SPXcS-booking.jpg', 'https://www.booking.com/hotel/np/bar-peepal-resort.html?label=gen173nr-1FCAEoggI46AdIM1gEaKsBiAEBmAExuAEXyAEM2AEB6AEB-AECiAIBqAIDuALp1Y_5BcACAdICJGY3N2I0YmJhLWJjZTMtNDc2ZC1hMTE1LWEzMTI1ZDA3MGI0NtgCBeACAQ;sid=24b08c7a4587206505319242422f1cdd;dest_id=-10224#tab-reviews', '<p style=\"text-align: justify;\">\r\n	An exceptional property - I had a very relaxed, comfortable stay. The view is absolutely beautiful and all the facilities and amenities were stellar. The staff were all super friendly and kind as well.</p>\r\n', 4, 5, 1, 'Exceptional Property ', '', 0),
(13, 0, 'Vinod', 'U8uTd-booking.jpg', 'https://www.booking.com/hotel/np/bar-peepal-resort.html?label=gen173nr-1FCAEoggI46AdIM1gEaKsBiAEBmAExuAEXyAEM2AEB6AEB-AECiAIBqAIDuALp1Y_5BcACAdICJGY3N2I0YmJhLWJjZTMtNDc2ZC1hMTE1LWEzMTI1ZDA3MGI0NtgCBeACAQ;sid=24b08c7a4587206505319242422f1cdd;dest_id=-10224', '<p style=\"text-align: justify;\">\r\n	Everything was perfect. The staff was terrific, the hotel was super clean, the breakfast spread was huge, and the restaurant was nice. There was an infinity pool, but we didn&#39;t use it due to the cold weather.</p>\r\n', 3, 6, 1, 'Everything was perfect', '', 0),
(14, 0, 'Rajarshi M', 'boMNr-tripadvisor.jpg', 'https://www.tripadvisor.com/Hotel_Review-g293891-d20376414-Reviews-Bar_Peepal_Resort-Pokhara_Gandaki_Zone_Western_Region.html', '<p style=\"text-align: justify;\">\r\n	One of the best hospitality experiences I have had. The staff is beyond excellent, the facilities wonderful and the views breathtaking. I wish the team here all the very best! Each and every moment, from the room to the dining in to the amenities were excellent.</p>\r\n', 5, 7, 1, 'Amazing Stay', '', 0),
(15, 0, 'Ashesh R', 'iDD1F-tripadvisor.jpg', 'https://www.tripadvisor.com/Hotel_Review-g293891-d20376414-Reviews-Bar_Peepal_Resort-Pokhara_Gandaki_Zone_Western_Region.html', '<p style=\"text-align: justify;\">\r\n	Our stay was wonderful. All of the staffs are super helpful and friendly. Hotel is within walking distance from lakeside, and yet far away from city&rsquo;s hustle and bustle. They offer free breakfast and it&rsquo;s good. If you are new to pokhara. They have a travel desk where you can get information of all attractions.</p>\r\n', 4, 8, 1, 'Wonderful Stay', '', 0),
(16, 0, 'Justin F', 'Aclju-tripadvisor.jpg', 'https://www.tripadvisor.com/Hotel_Review-g293891-d20376414-Reviews-Bar_Peepal_Resort-Pokhara_Gandaki_Zone_Western_Region.html', '<p style=\"text-align: justify;\">\r\n	Wonderful hotel with an amazing view of the lake. The staff went above and beyond in taking care of whatever we needed including changing our flight so we could stay an additional night. The onsite spa was wonderful for a massage after a trek.</p>\r\n', 5, 9, 1, 'Beautiful Hotel ', '', 0),
(17, 0, 'Rebecca', 'SkqB9-booking.jpg', 'https://www.booking.com/hotel/np/bar-peepal-resort.html?label=gen173nr-1FCAEoggI46AdIM1gEaKsBiAEBmAExuAEXyAEM2AEB6AEB-AECiAIBqAIDuALp1Y_5BcACAdICJGY3N2I0YmJhLWJjZTMtNDc2ZC1hMTE1LWEzMTI1ZDA3MGI0NtgCBeACAQ;sid=24b08c7a4587206505319242422f1cdd;dest_id=-10224#tab-reviews', '<p style=\"text-align: justify;\">\r\n	This property was beautiful with gracious and accommodating staff! Our room had a great view of the pool and Lakeside below. The rooms were spacious and the bed super comfy. We stayed there the night before and then the night returning from a trek and we were very excited for the luxuries.</p>\r\n', 4, 10, 1, 'Luxurious Stay', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `optional_email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hall_email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `hr_email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `accesskey` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(11) NOT NULL,
  `access_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_accesstoken` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_tokenexpire` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `permission` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `first_name`, `middle_name`, `last_name`, `contact`, `email`, `optional_email`, `hall_email`, `hr_email`, `username`, `password`, `accesskey`, `image`, `group_id`, `access_code`, `facebook_uid`, `facebook_accesstoken`, `facebook_tokenexpire`, `status`, `sortorder`, `added_date`, `permission`) VALUES
(1, 'Bar Peepal Resort', '', '', '', 'sunita@longtail.info', 'reservation@barpeepalresort.com;support@longtail.info', 'dosm@barpeepalresort.com', '', 'admin', '32b9da145699ea9058dd7d6669e6bcc5', '6ePiY6YgqeEpFzUkdJoPFIsfz', '', 2, 'IKLxivj8RW', '', '', '2021-04-29 05:40:38', 1, 1, '2014-03-26', 0x613a32313a7b693a303b733a313a2231223b693a313b733a313a2232223b693a323b733a313a2233223b693a333b733a323a223235223b693a343b733a323a223234223b693a353b733a323a223233223b693a363b733a313a2234223b693a373b733a333a22333032223b693a383b733a333a22333033223b693a393b733a313a2235223b693a31303b733a323a223237223b693a31313b733a333a22333030223b693a31323b733a333a22333031223b693a31333b733a323a223131223b693a31343b733a333a22333034223b693a31353b733a323a223137223b693a31363b733a323a223230223b693a31373b733a323a223238223b693a31383b733a323a223132223b693a31393b733a323a223133223b693a32303b733a323a223134223b7d),
(2, 'Super admin', '', '', '', 'support@longtail.info', 'support@longtail.info', 'support@longtail.info', 'support@longtail.info', 'superadmin', '4ef961d430016feab913571a25818e97', '5BnuwlwbgTcJNtbymC8Kmq23e', '', 1, '', '', '', '2023-11-09 10:05:54', 1, 0, '0000-00-00', 0x613a32363a7b693a303b733a323a223734223b693a313b733a313a2231223b693a323b733a333a22333036223b693a333b733a313a2232223b693a343b733a313a2233223b693a353b733a323a223235223b693a363b733a323a223234223b693a373b733a323a223233223b693a383b733a313a2234223b693a393b733a333a22333032223b693a31303b733a333a22333033223b693a31313b733a313a2235223b693a31323b733a323a223237223b693a31333b733a333a22333030223b693a31343b733a333a22333031223b693a31353b733a333a22333035223b693a31363b733a323a223131223b693a31373b733a323a223137223b693a31383b733a333a22333034223b693a31393b733a323a223230223b693a32303b733a323a223139223b693a32313b733a323a223238223b693a32323b733a323a223132223b693a32333b733a323a223133223b693a32343b733a323a223134223b693a32353b733a323a223136223b7d),
(3, 'asdasd', 'asdasd', 'asdasd', '', 'stat@gmail.com', 'stat@gmail.com', 'stat@gmail.com', 'stat@gmail.com', 'asdas', '80c9ef0fb86369cd25f90af27ef53a9e', 'XZtQjE8Rse66xhHG6sSVqzyDZ', '', 3, '', '', '', '0000-00-00 00:00:00', 1, 2, '2024-01-10', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vacency`
--

CREATE TABLE `tbl_vacency` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `post` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `pax` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `image` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_vacency`
--

INSERT INTO `tbl_vacency` (`id`, `title`, `post`, `location`, `slug`, `pax`, `content`, `date1`, `date2`, `archive_date`, `sortorder`, `status`, `image`, `type`, `meta_keywords`, `meta_description`, `added_date`) VALUES
(9, 'Asst. Laundry Manager', 'Manager', 'Kathmandu, Nepal', 'asst-laundry-manager', '1', '<p>\r\n	Bachelor</p>\r\n', '0000-00-00', '2023-08-31', '0000-00-00', 1, 1, '', 0, '', '', '2023-08-28 15:12:02'),
(10, 'Painter / Plumber', 'Painter / Plumber', 'Kathmandu, Nepal', 'painter-plumber', '1', '<p>\r\n	<span style=\"color: rgb(71, 61, 53); font-family: Roboto, sans-serif; font-size: 20px; background-color: rgb(247, 246, 246);\">Painter / Plumber</span></p>\r\n', '0000-00-00', '2023-09-22', '0000-00-00', 3, 1, '', 0, '', '', '2023-08-29 11:42:43'),
(12, 'Sales Executive', 'Sales Executive', 'patan', 'sales-executive', '1', '<p>\r\n	asdasd</p>\r\n', '0000-00-00', '2023-09-15', '0000-00-00', 2, 1, '', 0, '', '', '2023-09-03 15:03:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `source` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `url_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thumb_image` longtext COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wellness`
--

CREATE TABLE `tbl_wellness` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_title` text COLLATE utf8_unicode_ci,
  `linksrc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linktype` tinyint(1) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `added_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homepage` int(11) DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_wellness`
--

INSERT INTO `tbl_wellness` (`id`, `parent_id`, `slug`, `title`, `sub_title`, `linksrc`, `linktype`, `content`, `status`, `sortorder`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `modified_date`, `homepage`, `image`) VALUES
(3, 0, 'rooftop-swimming-pool', 'Rooftop Swimming Pool', 'Rooftop Swimming Pool', '', 0, '<div class=\"text\" style=\"text-align: justify;\">\r\n	Why is it so relaxing to stare off into a peaceful distance of Raniban forest and Fewa lake while letting your feet paddle and your arms bronze? This is the true essence of being on holiday and those moments are precious. Access our swimming pool at rooftop to get a splash, sip, munch and gaze over 360-degree view of Pokhara at its best.</div>\r\n', 1, 3, 'Rooftop Swimming Pool', 'Rooftop Swimming Pool, Relaxing, 360 Degree View, Pokhara, Clean Water, Shower, Modern Amenities, Ambiance, Hygiene', 'Why is it so relaxing to stare off into a peaceful distance of Raniban forest and Fewa lake while letting your feet paddle and your arms bronze? This is the true essence of being on holiday and those moments are precious. Access our swimming pool at ', 0, '2025-01-06 15:41:06', '2025-01-28 13:23:49', 0, 'a:5:{i:0;s:17:\"me91t-wSsGu-4.jpg\";i:1;s:14:\"YhTEq-pool.jpg\";i:2;s:11:\"0Audg-3.jpg\";i:3;s:11:\"2oVDJ-2.jpg\";i:4;s:11:\"VoTS0-1.jpg\";}'),
(4, 0, 'aveda-wellness', 'AVEDA Wellness', 'AVEDA Wellness', '', 0, '<div class=\"text\" style=\"text-align: justify;\">\r\n	Give your body a little love, some facials for less stress &amp; quality time at spa to relax that make your day better.Pamper yourself with a soothing massage, and enjoy our steam room for complete relaxation. Leave feeling refreshed and revitalized.</div>\r\n', 1, 2, 'AVEDA Wellness', 'AVEDA Wellness, Spa, Steam, Sauna, Stress, Massage, Relaxation, Refreshment, Revitalized, Quality Time, Comfort, ', 'Give your body a little love, some facials for less stress & quality time at spa to relax that make your day better.Pamper yourself with a soothing massage, and enjoy our steam room for complete relaxation. Leave feeling refreshed and revitalized.', 0, '2025-01-06 15:41:27', '2025-01-28 15:09:44', 0, 'a:6:{i:0;s:13:\"L2bLn-spa.jpg\";i:1;s:11:\"oIW3I-1.jpg\";i:2;s:11:\"a05Eu-2.jpg\";i:3;s:11:\"Jo4eH-2.jpg\";i:4;s:11:\"JcFje-3.jpg\";i:5;s:11:\"ybrYg-1.jpg\";}'),
(5, 0, 'yoga', 'Yoga', 'Yoga', '', 0, '<div class=\"text\" style=\"text-align: justify;\">\r\n	A yoga retreat in Bar Peepal Resort is an amazing way to refresh and rejuvenate. Nourish your mind, spirit and body with different yoga styles such as Hatha, Ashtanga, Bikram, Iyengar, Power, Yin and Kundalini. Our refreshing garden provides the perfect backdrop for a peaceful yoga session. Surrounded by nature&rsquo;s beauty&mdash;the gentle rustling of leaves, the soft fragrance of flowers, and the warmth of the sun&mdash;each breath feels more grounding. As you flow through your poses, the tranquility of the garden helps clear your mind and deepen your practice. The calming sounds of birds and the cool breeze add to the serenity, allowing you to fully connect with yourself and the present moment.</div>\r\n', 1, 0, 'Yoga', 'Yoga, Bar Peepal Resort, Pokhara, Refreshment, Hygiene, Rejuvenate, Styles, Exercise, Positions, Retreat, Stunning View, Classes', 'A yoga retreat in Bar Peepal Resort is an amazing way to refresh and rejuvenate. Nourish your mind, spirit and body with different yoga styles such as Hatha, Ashtanga, Bikram, Iyengar, Power, Yin and Kundalini.', 0, '2025-01-06 15:41:45', '2025-01-28 13:19:55', 0, 'a:3:{i:0;s:11:\"OR103-1.jpg\";i:1;s:11:\"xpZVH-2.jpg\";i:2;s:11:\"wgAJG-3.jpg\";}'),
(8, 0, 'gym', 'GYM', 'Health and Beauty', '', 0, '<p>\r\n	We have a fully equipped fitness center. The gym on-site allows our guests to work out without leaving the hotel, especially on a tight schedule to explore the area. It will reduce stress and promote overall well-being. It can be a great way to unwind after a busy day of work or sightseeing.</p>\r\n', 1, 1, '', '', '', 0, '2025-01-24 16:23:01', '2025-01-27 13:33:28', 0, 'a:3:{i:0;s:11:\"AVIIP-1.jpg\";i:1;s:11:\"GPPpg-3.jpg\";i:2;s:11:\"hOTEM-2.jpg\";}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_applicants`
--
ALTER TABLE `tbl_applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_conbined_news`
--
ALTER TABLE `tbl_conbined_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_configs`
--
ALTER TABLE `tbl_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_download`
--
ALTER TABLE `tbl_download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_features`
--
ALTER TABLE `tbl_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_galleries`
--
ALTER TABLE `tbl_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_group_type`
--
ALTER TABLE `tbl_group_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs_action`
--
ALTER TABLE `tbl_logs_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_mainservices`
--
ALTER TABLE `tbl_mainservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_nearby`
--
ALTER TABLE `tbl_nearby`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offer_child`
--
ALTER TABLE `tbl_offer_child`
  ADD KEY `offer_id` (`offer_id`);

--
-- Indexes for table `tbl_ota`
--
ALTER TABLE `tbl_ota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package`
--
ALTER TABLE `tbl_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package_sub`
--
ALTER TABLE `tbl_package_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_popup`
--
ALTER TABLE `tbl_popup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_room_price`
--
ALTER TABLE `tbl_room_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slideshow`
--
ALTER TABLE `tbl_slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slideshows_withouttlist`
--
ALTER TABLE `tbl_slideshows_withouttlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social_networking`
--
ALTER TABLE `tbl_social_networking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subpackage_images`
--
ALTER TABLE `tbl_subpackage_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vacency`
--
ALTER TABLE `tbl_vacency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wellness`
--
ALTER TABLE `tbl_wellness`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_applicants`
--
ALTER TABLE `tbl_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_conbined_news`
--
ALTER TABLE `tbl_conbined_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_configs`
--
ALTER TABLE `tbl_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `tbl_download`
--
ALTER TABLE `tbl_download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_features`
--
ALTER TABLE `tbl_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `tbl_galleries`
--
ALTER TABLE `tbl_galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `tbl_group_type`
--
ALTER TABLE `tbl_group_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1374;

--
-- AUTO_INCREMENT for table `tbl_logs_action`
--
ALTER TABLE `tbl_logs_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_mainservices`
--
ALTER TABLE `tbl_mainservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT for table `tbl_nearby`
--
ALTER TABLE `tbl_nearby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_ota`
--
ALTER TABLE `tbl_ota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_package`
--
ALTER TABLE `tbl_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_package_sub`
--
ALTER TABLE `tbl_package_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_popup`
--
ALTER TABLE `tbl_popup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_room_price`
--
ALTER TABLE `tbl_room_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `tbl_slideshow`
--
ALTER TABLE `tbl_slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `tbl_slideshows_withouttlist`
--
ALTER TABLE `tbl_slideshows_withouttlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_social_networking`
--
ALTER TABLE `tbl_social_networking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_subpackage_images`
--
ALTER TABLE `tbl_subpackage_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_vacency`
--
ALTER TABLE `tbl_vacency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_wellness`
--
ALTER TABLE `tbl_wellness`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
