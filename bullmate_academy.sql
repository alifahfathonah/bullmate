-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 09, 2020 at 01:06 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bullmate_academy`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `about` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `name`, `unique_identifier`, `version`, `status`, `created_at`, `updated_at`, `about`) VALUES
(1, 'Certificate', 'certificate', '1.0', 0, 1713564000, 1713564000, 'This addon helps student to get certified. Academy provides a course completion certificate for each student after completing any course'),
(2, 'Live Class', 'live-class', '1.0', 1, 1148076000, NULL, 'Live Class addon adds an essential feature to Academy. Nowadays Live class has become so popular that it becomes necessary. On that note we decided to add Zoom in our application.');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `font_awesome_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `code`, `name`, `parent`, `slug`, `date_added`, `last_modified`, `font_awesome_class`, `thumbnail`) VALUES
(1, '52deb54932', 'Photography', 1, 'photography', 1565586000, 1565672400, 'fas fa-camera', 'e963fb1e85f5e0e720622f2d45836f16.jpg'),
(2, '6c3527e6fc', 'Oil &amp; Gas ', 2, 'oil-amp-gas', 1565586000, 1565672400, 'fab fa-sellsy', '73f60482642241274dcb36667c3ffccb.jpg'),
(10, '7744d77bd4', 'Train the Trainer ', 9, 'train-the-trainer', 1565672400, NULL, NULL, NULL),
(11, '6aeff596ca', 'Hospitality &amp; Tourism ', 5, 'hospitality-amp-tourism', 1565672400, NULL, NULL, NULL),
(12, '3e3db6c7ef', 'Petroleum ', 0, 'petroleum', 1565672400, 1565672400, 'fab fa-soundcloud', 'c98efe81b74f9961b4e18d8ef5d15a45.jpg'),
(13, '016ec516ce', 'Oil &amp; Gas ', 12, 'oil-amp-gas', 1565672400, NULL, NULL, NULL),
(14, '95b032283b', 'Hospitality &amp; Tourism ', 0, 'hospitality-amp-tourism', 1565672400, 1565672400, 'far fa-hospital', 'category-thumbnail.png'),
(16, '228bfb3214', 'Hotel Management ', 14, 'hotel-management', 1565672400, NULL, NULL, NULL),
(17, '1e1bd0bafd', 'Tourism ', 14, 'tourism', 1565672400, NULL, NULL, NULL),
(18, 'fbc7e669cd', 'Food &amp; Beverage ', 0, 'food-amp-beverage', 1565672400, 1565672400, 'fas fa-utensils', 'category-thumbnail.png'),
(19, 'ecf72b3718', 'Cooking &amp; Culinary ', 18, 'cooking-amp-culinary', 1565672400, NULL, NULL, NULL),
(20, '7f16486d20', 'Business ', 0, 'business', 1565672400, 1565672400, 'fas fa-briefcase', 'category-thumbnail.png'),
(21, '4c04bca627', 'Finance &amp; Management ', 20, 'finance-amp-management', 1565672400, NULL, NULL, NULL),
(22, 'ff04e5e112', 'Accounting ', 20, 'accounting', 1565672400, NULL, NULL, NULL),
(23, 'cc6cc594d7', 'Project Management ', 20, 'project-management', 1565672400, NULL, NULL, NULL),
(25, '2effe738aa', 'Business Photography ', 24, 'business-photography', 1565672400, NULL, NULL, NULL),
(27, '9f8f553a26', 'Video Production &amp; Editing ', 26, 'video-production-amp-editing', 1565672400, NULL, NULL, NULL),
(28, '90ef89a60a', 'Film Making ', 26, 'film-making', 1565672400, NULL, NULL, NULL),
(29, 'f2ac7f02da', 'Marketing ', 20, 'marketing', 1565672400, NULL, NULL, NULL),
(30, '873f700ead', 'Human Resources ', 20, 'human-resources', 1565672400, NULL, NULL, NULL),
(31, '478a428e63', 'Entrepreneurship', 20, 'entrepreneurship', 1565672400, NULL, NULL, NULL),
(32, 'bb148f945f', 'Leadership ', 20, 'leadership', 1565672400, NULL, NULL, NULL),
(33, '8c057b1211', 'Management ', 20, 'management', 1565672400, NULL, NULL, NULL),
(34, '9919b4d5f5', 'Productivity', 20, 'productivity', 1565672400, NULL, NULL, NULL),
(35, '558a907afb', 'Sales ', 20, 'sales', 1565672400, NULL, NULL, NULL),
(36, 'a7bdac284a', 'Creative ', 0, 'creative', 1565672400, NULL, 'fas fa-database', 'category-thumbnail.png'),
(37, '27cadb2f0d', 'Photography ', 36, 'photography', 1565672400, NULL, NULL, NULL),
(38, 'c344e8012d', 'UI/UX Design ', 36, 'ui-ux-design', 1565672400, NULL, NULL, NULL),
(39, '3e848989ef', 'Music Production ', 36, 'music-production', 1565672400, NULL, NULL, NULL),
(40, '7ae63bae8c', 'Animation ', 36, 'animation', 1565672400, NULL, NULL, NULL),
(41, 'c2cc7d87a7', 'Fine Arts ', 36, 'fine-arts', 1565672400, NULL, NULL, NULL),
(42, '47089083f4', 'Graphic Design ', 36, 'graphic-design', 1565672400, NULL, NULL, NULL),
(43, '896a40f989', 'Film Production ', 36, 'film-production', 1565672400, NULL, NULL, NULL),
(44, 'ba1f5c16ea', 'Illustration ', 36, 'illustration', 1565672400, NULL, NULL, NULL),
(45, '3b21db6d1f', 'Life Style ', 0, 'life-style', 1565672400, NULL, 'fab fa-docker', 'category-thumbnail.png'),
(46, '983b01fb6e', 'Culinary ', 45, 'culinary', 1565672400, NULL, NULL, NULL),
(47, 'ce39509605', 'Health &amp; Wellness', 45, 'health-amp-wellness', 1565672400, NULL, NULL, NULL),
(48, '864e7e3394', 'Languages ', 45, 'languages', 1565672400, NULL, NULL, NULL),
(49, 'a49818a445', 'Teaching ', 45, 'teaching', 1565672400, NULL, NULL, NULL),
(50, 'af081ff5dd', 'Pet Training  &amp; Care ', 45, 'pet-training-amp-care', 1565672400, 1565672400, NULL, NULL),
(51, 'ce01093241', 'Other ', 45, 'other', 1565672400, NULL, NULL, NULL),
(52, '849760173b', 'Other ', 36, 'other', 1565672400, NULL, NULL, NULL),
(53, 'fcb905c202', 'Other ', 20, 'other', 1565672400, NULL, NULL, NULL),
(54, 'cdb3b6a61c', 'Fitness &amp; Health ', 0, 'fitness-amp-health', 1565672400, NULL, 'fas fa-medkit', 'category-thumbnail.png'),
(55, '54eb0b0916', 'Technology ', 0, 'technology', 1565758800, NULL, 'fas fa-object-group', 'category-thumbnail.png'),
(56, '6392db4009', 'Data Science ', 55, 'data-science', 1565758800, NULL, NULL, NULL),
(57, 'a0e5f299e7', 'Web Development ', 55, 'web-development', 1565758800, NULL, NULL, NULL),
(58, 'a725fc0739', 'Product Management ', 55, 'product-management', 1565758800, NULL, NULL, NULL),
(59, '5e09589026', 'Mobile Development ', 55, 'mobile-development', 1565758800, NULL, NULL, NULL),
(60, '49eb7a53b4', 'IT Security ', 55, 'it-security', 1565758800, NULL, NULL, NULL),
(61, 'a2c2ccb2d6', 'Programming ', 55, 'programming', 1565758800, NULL, NULL, NULL),
(62, '41c722ff17', 'Blockchain ', 0, 'blockchain', 1603774800, 1603774800, 'fas fa-cubes', '646b1e2a8fbff2c103f46a208c852e3f.jpg'),
(63, '33493498b6', 'Blockchain Technology ', 62, 'blockchain-technology', 1603774800, 1603774800, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) UNSIGNED NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `shareable_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `student_id`, `course_id`, `shareable_url`) VALUES
(1, 38, 2, '16030a0647.jpg'),
(2, 46, 1, '2c0bb55ebc.jpg'),
(3, 8, 1, '1decfbcfb2.jpg'),
(4, 8, 5, '496d80419e.jpg'),
(5, 8, 4, '0fcb669a4f.jpg'),
(6, 8, 17, '109d45379a.jpg'),
(7, 8, 2, '42dcd0050a.jpg'),
(8, 8, 3, '99351b1ca7.jpg'),
(9, 49, 2, '79d706e9e4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('03f000ea7d78f7e5f240cf0c41523be16795afde', '114.119.144.51', 1604898424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343839383432343b636172745f6974656d737c613a303a7b7d),
('194e99ef76a45466ec84dc46cf23502695e69fcb', '207.46.13.179', 1604898695, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343839383639353b636172745f6974656d737c613a303a7b7d),
('9ffaaa374698dab8abd42dc1bebd84427cade4f1', '114.119.144.51', 1604898733, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343839383733333b636172745f6974656d737c613a303a7b7d),
('16667dd356d77df39ccb63e3492f6d6911a71105', '114.119.144.51', 1604899351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343839393335313b636172745f6974656d737c613a303a7b7d),
('efb968b704f575a6c6bf85d2a43d9f074b15727a', '114.119.153.171', 1604899646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343839393634363b636172745f6974656d737c613a303a7b7d),
('9d1822a0a0515c878afa8da2e99b22ba804d8add', '188.130.189.88', 1604899697, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343839393638383b636172745f6974656d737c613a303a7b7d),
('d654a99414622bb05096a4897324e4f8f9662c74', '114.119.158.137', 1604899956, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343839393935363b636172745f6974656d737c613a303a7b7d6c61796f75747c733a343a226c697374223b),
('a24ad90a1f62c12d4446472fa8dafcd84bc3cc3e', '114.119.138.127', 1604900259, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343930303235393b636172745f6974656d737c613a303a7b7d),
('7c900201e89da23a3e6ce2a33f29ecf09adb20e7', '131.220.6.152', 1604900886, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343930303838363b636172745f6974656d737c613a303a7b7d),
('55bb98250cc4350a450a9944687d033bfa3eab2a', '114.119.131.110', 1604901177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343930313137373b636172745f6974656d737c613a303a7b7d),
('70c496021e59009a024cd803fd89e570818c3810', '114.119.156.110', 1604902096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343930323039363b636172745f6974656d737c613a303a7b7d),
('02cf3cd50bb446e56265ca206c81785af8fa9924', '114.119.146.111', 1604902402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343930323430323b636172745f6974656d737c613a303a7b7d),
('139f7d48ba26d60aaeded3cdc4a39e4bdb056c90', '114.119.153.171', 1604902712, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343930323731323b636172745f6974656d737c613a303a7b7d),
('f4f592caf321dd59c2a591948fb7a5cbb53db46e', '114.119.153.171', 1604903014, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343930333031343b636172745f6974656d737c613a303a7b7d),
('c74fb8f59278716f1fbf75c1908fb7e92091448a', '52.224.243.218', 1604903029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343930333032303b636172745f6974656d737c613a303a7b7d),
('dbf5cd14b0823a74bb5cfc27b0a5fda6877e2239', '52.224.243.218', 1604903029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343930333032323b636172745f6974656d737c613a303a7b7d),
('b54edb0aa0bab35578f977b0abc08a52ce9f18b5', '114.119.131.110', 1604903626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343930333632363b636172745f6974656d737c613a303a7b7d),
('7e2153f0112695b138dbf382b52cced585b3f8d3', '114.119.148.33', 1604903942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343930333934323b636172745f6974656d737c613a303a7b7d),
('8cbe46815c3070b5f8a77150cbd4779a1f44f50c', '86.98.67.27', 1604904762, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343930343637383b636172745f6974656d737c613a303a7b7d),
('9ae5e033efb40c60df089aa7044dc526b3913227', '114.119.131.200', 1604904865, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343930343836353b636172745f6974656d737c613a303a7b7d);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) UNSIGNED NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `outcomes` longtext COLLATE utf8_unicode_ci,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `section` longtext COLLATE utf8_unicode_ci,
  `requirements` longtext COLLATE utf8_unicode_ci,
  `price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT '0',
  `discounted_price` int(11) DEFAULT NULL,
  `level` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `visibility` int(11) DEFAULT NULL,
  `is_top_course` int(11) DEFAULT '0',
  `is_admin` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_overview_provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` longtext COLLATE utf8_unicode_ci,
  `meta_description` longtext COLLATE utf8_unicode_ci,
  `is_free_course` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`, `short_description`, `description`, `outcomes`, `language`, `category_id`, `sub_category_id`, `section`, `requirements`, `price`, `discount_flag`, `discounted_price`, `level`, `user_id`, `thumbnail`, `video_url`, `date_added`, `last_modified`, `visibility`, `is_top_course`, `is_admin`, `status`, `course_overview_provider`, `meta_keywords`, `meta_description`, `is_free_course`) VALUES
(1, 'Train the Trainer Certification ', 'Hone your training, facilitation skills and equip yourself with globally acclaimed training theories.', '<p align=\"justify\"><span xss=removed>Trainers are the centerpiece of a memorable and successful training session. This course aims at providing trainers with the knowledge and skills required to design and deliver their training sessions. A trainer\'s journey on this course begins with an understanding of how adults learn and covers various learning styles, skills of trainers, various learning methods, activities and exercises, the designing of training programs and ends with the delivery of training.</span><span xss=removed>﻿</span></p><h4 xss=removed><span xss=removed>Course Methodology</span></h4><p xss=removed><span xss=removed>The course uses a practical and hands-on approach. Participants will be asked to design and develop a mini training session and deliver it while being video-taped for playback and personal development purposes.</span></p><h4 xss=removed><span xss=removed>Course Objectives</span></h4><span xss=removed>By the end of the course, participants will be able to:</span><div class=\"has-ul-one-level\" xss=removed><ul xss=removed><li xss=removed><span xss=removed>List various adult learning principles and their implications on the delivery of training</span></li><li xss=removed><span xss=removed>Identify and develop skills required in successful trainers</span></li><li xss=removed><span xss=removed>Examine training methods and determine the most appropriate one for their training workshops</span></li><li xss=removed><span xss=removed>Write specific Instructional Learning Objectives (ILOs)</span></li><li xss=removed><span xss=removed>Apply training models in the design and delivery of training programs</span></li><li xss=removed><span xss=removed>Develop blueprints for training sessions</span></li></ul><p xss=removed><span xss=removed></span><br><h4 xss=removed><span xss=removed>Target Audience</span></h4><p xss=removed><span xss=removed>Officers, specialists, team leaders, business partners, line managers and trainers involved in classroom and on-the-job training.</span></p></p><h4 xss=removed><span xss=removed>Target Audience</span></h4><p xss=removed><span xss=removed>Officers, specialists, team leaders, business partners, line managers and trainers involved in classroom and on-the-job training.</span></p><h4 xss=removed><span xss=removed>Target Competencies</span></h4><div id=\"competenciesCol1\" class=\"col-md-6 col-md-6 has-ul-one-level\" xss=removed><ul xss=removed><li xss=removed><span xss=removed>Training design and delivery</span></li><li xss=removed><span xss=removed>Presentation</span></li><li xss=removed><span xss=removed>Non-verbal communication</span></li><li xss=removed><span xss=removed>Verbal communication</span></li></ul></div><div id=\"competenciesCol2\" class=\"col-md-6 has-ul-one-level\" xss=removed><ul xss=removed><li xss=removed><span xss=removed>Public speaking</span></li><li xss=removed><span xss=removed>Rapport building</span></li><li xss=removed><span xss=removed>Listening skills</span></li></ul></div><br class=\"Apple-interchange-newline\"><p xss=removed><h4 xss=removed><br><span xss=removed></span></h4></p><p xss=removed><ul></ul></p><p xss=removed></p><br></div><p align=\"justify\"><span xss=removed></span></p>', '[\"By the end of the course, participants will be able to:\",\"List various adult learning principles and their implications on the delivery of training\",\"Identify and develop skills required in successful trainers\",\"Examine training methods and determine the most appropriate one for their training workshops\"]', 'english', 45, 49, '[1,2]', '[\"No Pre-requisite for this course \"]', 150, NULL, 0, 'beginner', 2, NULL, 'https://www.youtube.com/watch?v=1CLIbGAGpZA', 1565672400, 1590555600, NULL, 1, 0, 'pending', 'youtube', '', 'Train the Trainer ', 1),
(2, 'French Cuisine and techniques ', 'Build a solid French Culinary Foundation and  cook with Confidence!  Join Chef  Jonathan Collins to learn French Cuisine and techniques. ', '', '[\"Knife Skills \",\"Fruits, Vegetables, Herbs and Spices \",\"Meat and Poultry \",\"Fish, Shellfish and Sea Food \",\"Pasta, Rice & Gnocchi\"]', 'english', 18, 19, '[3,4]', '[]', 100, NULL, 0, 'beginner', 8, NULL, '', 1565758800, 1604469600, NULL, 0, 0, 'active', '', '', 'French Cuisines ', NULL),
(3, 'Basics of  Photography ', 'Join Serge Ramelli to learn the basics of photography with simple words. ', '', '[\"You learn the Basics of Photography \"]', 'english', 36, 37, '[5]', '[\"No Pre-requisite for this course      \"]', 10, NULL, 0, 'beginner', 8, NULL, '', 1565758800, 1604469600, NULL, 0, 0, 'active', '', '', 'Photography ', 1),
(5, 'C Programming  for Beginners', 'This course will give you a full introduction into all of the core concepts in the C programming language. Follow along with the tutorial video and you\'ll be a C programmer in no time!', '', '[\"You learn core concepts in the C programming language\"]', 'english', 55, 61, '[10]', '[\"Knowledge of Computer is required \"]', 250, NULL, 0, 'beginner', 8, NULL, '', 1565758800, 1604469600, NULL, 0, 0, 'active', '', '', 'C Programming ', NULL),
(6, 'How To Make a WordPress Website 2019 For Beginners', 'Learn the new way to create a website that makes it so much easier and faster. ', '<p><font color=\"#0d0d0d\" face=\"Roboto, Arial, sans-serif\"><span xss=removed>Learn the new way to create a website that makes it so much easier and faster.  Learn complete Step by step method how to create a stunning WordPress  website from the scratch.  In this course, you learn how to use the most popular platform in the world (WordPress) to make a professional website.\r\n\r\nYou will also Learn how to get your domain name and hosting, install WordPress, import your website and customise it in any way you want.  </span></font></p><p><span xss=removed>Finally you will learn how to make a logo and even install security.</span></p><p><font color=\"#0d0d0d\" face=\"Roboto, Arial, sans-serif\"><span xss=removed>You will have complete control of your website and have a great time creating it. </span></font></p><div><span xss=removed><br></span></div>', '[\"New way to create a website that makes it so much easier and faster\",\"How to use  WordPress  platform to make a professional website\",\"How to make a logo and install security\"]', 'english', 55, 57, '[11]', '[\"You only need to have basic knowledge of Computer and Internet. \"]', 300, NULL, 0, 'beginner', 8, NULL, '', 1565845200, 1583215200, NULL, 0, 0, 'pending', '', '', 'How to make WordPress site ', 1),
(7, 'Python Programming Language ', 'Giraffe Academy ', '<p xss=removed><span xss=removed>Python is a general purpose, dynamically typed and interpreted, object oriented programming language that was created in the late 1980s by Guido van Rossum.</span></p><p xss=removed><span xss=removed>Python’s design philosophy revolves around readability. It’s meant to be easy to read and easy to write. This is accomplished by using white-space to deliniate code blocks instead of the more traditional curly brackets and semi-colons.</span></p>', '[\"How to Install Python \",\"How to Setup Python \",\"Drawing a Shape \",\"Variables & Data Types \",\"Working with Strings & number - Math\",\"Getting User Input & Creating a calculator \",\"Building a Mad Libs Game  , Lists, List functions , Tuples \",\"Return Statements , If Statements \"]', 'english', 55, 61, '[12]', '[\"Basic IT Knowledge \"]', 350, NULL, 0, 'beginner', 8, NULL, 'https://vimeo.com/354603774', 1566104400, 1604469600, NULL, 0, 0, 'active', 'vimeo', '', 'Python, programming ', 1),
(8, 'SQL - Database Programming Language', '', '<p class=\"MsoNormal\" xss=removed><span xss=removed><span xss=removed>This course\r\ncovers the basics of working with SQL. It will enable you to </span></span><span xss=removed><span xss=removed>Work your way through everything you need to know to interact with\r\ndatabase management systems and create powerful relational databases. </span><o></o></span></p>', '[\"How to work with SQL.\",\"Interact with Database management systems. \",\" Create powerful relational databases. \"]', 'english', 55, 61, '[13,14,15,16]', '[\"Computer & Basic IT Knowledge \"]', 300, 1, 200, 'beginner', 13, NULL, 'https://vimeo.com/354713608', 1566190800, 1604469600, NULL, 0, 0, 'active', 'vimeo', '', 'SQL database Programming Language ', NULL),
(9, 'Building a Business ', 'Building a Business course  provides the basic business skills to those who would like to start a business, as well as those with an existing early stage business who are seeking to develop and enhance their skills. \r\n\r\nThis Course is brought to you by Saïd Business School, University of Oxford\r\n', '<p>Building a Business course  provides the basic business skills to those who would like to start a business, as well as those with an existing early stage business who are seeking to develop and enhance their skills. It is not aimed at established entrepreneurs or businesses; the course content is aimed at people who have limited prior knowledge of business practice. </p><p>This Course is brought to you by Saïd Business School, University of Oxford</p>', '[\"How to start a Business , steps needed to launch a venture and issues to consider\",\"Future Proofing Business \",\"Reasons for Starting a venture \",\"Business Impact Assessment Tools \",\"Business Model Canvas and Lean Approach\",\"How can i know if my idea is good \",\"How to market a business and sell products \",\"How to protect my business ideas\",\"Raising Venture Capital \",\"Financial Projections \"]', 'english', 20, 31, '[17,18,19,20,21,22,23,24]', '[\"This course is aimed at people who have limited prior knowledge of business practice. \"]', 0, NULL, 0, 'beginner', 8, NULL, '', 1567746000, 1604469600, NULL, 0, 0, 'active', '', '', '', 1),
(10, 'Industrial Organizational  Psychology (I/O)', 'Industrial organisational  psychology is the branch of psychology that applies psychological theories and principles to organisations. Often referred to as I-O psychology, this field focuses on increasing workplace productivity and related issues such as the physical and mental well-being of employees.\r\nThis Course is brought to you by University of Houston. \r\n', '<p xss=removed><br></p>', '[\"History of Industrial Organizational  Psychology (I\\/O) \",\"Importance of Industrial Organizational  Psychology (I\\/O)\",\"Methods and Statistics in Industrial Organizational  Psychology (I\\/O)\",\"Learn Individual Differences \"]', 'english', 20, 30, '[]', '[\"No Requirement to take this course \"]', 200, NULL, 0, 'beginner', 8, NULL, '', 1567832400, 1583215200, NULL, 1, 0, 'pending', '', '', 'Industrial Organisational Psychology ', 1),
(11, 'Introduction to Lean Six Sigma Methods', '', '<p xss=removed>This course covers the fundamental principles, practices and tools of Lean Six Sigma methods that underlay modern organisational productivity approaches applied in aerospace, automotive, health care, and other sectors. It includes lectures, active learning exercises, a plant tour, talks by industry practitioners, and videos. One third of the course is devoted to a physical simulation of an aircraft manufacturing enterprise or a clinic to illustrate the power of Lean Six Sigma methods.</p><p xss=removed><br></p>', '[\"Lean thinking\",\"Value stream mapping basics\",\"Lean enterprise simulation\",\"Lean healthcare simulation \",\"Accounts payable \",\"A3 thinking\",\"Improving the enterprise\"]', 'english', 55, 58, '[25]', '[\"This is Beginner Level Course \"]', 10, NULL, 0, 'beginner', 8, NULL, '', 1568091600, 1604469600, NULL, 0, 0, 'active', '', '', '', 1),
(12, 'Nuts and Bolts of Business Plans', 'This course will teach you the Practical do\'s and don\'ts in preparing a Business Plan.', '<p>&lt;!--[if gte mso 9]>&lt;xml&gt;\r\n <o>\r\n  <o>\r\n </o>\r\n&lt;/xml&gt;&lt;![endif]--&gt;&lt;!--[if gte mso 9]>&lt;xml&gt;\r\n <w>\r\n  <w>Normal</w>\r\n  <w>0</w>\r\n  <w>\r\n  <w>\r\n  <w>\r\n  <w>\r\n  <w>false</w>\r\n  <w>false</w>\r\n  <w>false</w>\r\n  <w>\r\n  <w>EN-GB</w>\r\n  <w>X-NONE</w>\r\n  <w>X-NONE</w>\r\n  <w>\r\n   <w>\r\n   <w>\r\n   <w>\r\n   <w>\r\n   <w>\r\n   <w>\r\n   <w>\r\n   <w>\r\n   <w>\r\n  </w>\r\n  <m>\r\n   <m m:val=\"Cambria Math\">\r\n   <m m:val=\"before\">\r\n   <m m:val=\"--\">\r\n   <m m:val=\"off\">\r\n   <m>\r\n   <m m:val=\"0\">\r\n   <m m:val=\"0\">\r\n   <m m:val=\"centerGroup\">\r\n   <m m:val=\"1440\">\r\n   <m m:val=\"subSup\">\r\n   <m m:val=\"undOvr\">\r\n  </m></w>\r\n&lt;/xml&gt;&lt;![endif]--&gt;&lt;!--[if gte mso 9]>&lt;xml&gt;\r\n <w DefLockedState=\"false\" DefUnhideWhenUsed=\"false\" DefSemiHidden=\"false\" DefQFormat=\"false\" DefPriority=\"99\" LatentStyleCount=\"371\">\r\n  <w Locked=\"false\" Priority=\"0\" QFormat=\"true\" Name=\"Normal\">\r\n  <w Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 1\">\r\n  <w Locked=\"false\" Priority=\"9\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 2\">\r\n  <w Locked=\"false\" Priority=\"9\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 3\">\r\n  <w Locked=\"false\" Priority=\"9\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 4\">\r\n  <w Locked=\"false\" Priority=\"9\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 5\">\r\n  <w Locked=\"false\" Priority=\"9\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 6\">\r\n  <w Locked=\"false\" Priority=\"9\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 7\">\r\n  <w Locked=\"false\" Priority=\"9\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 8\">\r\n  <w Locked=\"false\" Priority=\"9\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 9\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"index 1\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"index 2\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"index 3\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"index 4\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"index 5\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"index 6\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"index 7\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"index 8\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"index 9\">\r\n  <w Locked=\"false\" Priority=\"39\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"toc 1\">\r\n  <w Locked=\"false\" Priority=\"39\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"toc 2\">\r\n  <w Locked=\"false\" Priority=\"39\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"toc 3\">\r\n  <w Locked=\"false\" Priority=\"39\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"toc 4\">\r\n  <w Locked=\"false\" Priority=\"39\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"toc 5\">\r\n  <w Locked=\"false\" Priority=\"39\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"toc 6\">\r\n  <w Locked=\"false\" Priority=\"39\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"toc 7\">\r\n  <w Locked=\"false\" Priority=\"39\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"toc 8\">\r\n  <w Locked=\"false\" Priority=\"39\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"toc 9\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Normal Indent\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"footnote text\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"annotation text\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"header\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"footer\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"index heading\">\r\n  <w Locked=\"false\" Priority=\"35\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"caption\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"table of figures\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"envelope address\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"envelope return\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"footnote reference\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"annotation reference\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"line number\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"page number\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"endnote reference\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"endnote text\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"table of authorities\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"macro\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"toa heading\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"List\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"List Bullet\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"List Number\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"List 2\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"List 3\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"List 4\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"List 5\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"List Bullet 2\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"List Bullet 3\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"List Bullet 4\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"List Bullet 5\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"List Number 2\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"List Number 3\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"List Number 4\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"List Number 5\">\r\n  <w Locked=\"false\" Priority=\"10\" QFormat=\"true\" Name=\"Title\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Closing\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Signature\">\r\n  <w Locked=\"false\" Priority=\"1\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Default Paragraph Font\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Body Text\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Body Text Indent\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"List Continue\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"List Continue 2\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"List Continue 3\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"List Continue 4\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"List Continue 5\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Message Header\">\r\n  <w Locked=\"false\" Priority=\"11\" QFormat=\"true\" Name=\"Subtitle\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Salutation\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Date\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Body Text First Indent\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Body Text First Indent 2\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Note Heading\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Body Text 2\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Body Text 3\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Body Text Indent 2\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Body Text Indent 3\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Block Text\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Hyperlink\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"FollowedHyperlink\">\r\n  <w Locked=\"false\" Priority=\"22\" QFormat=\"true\" Name=\"Strong\">\r\n  <w Locked=\"false\" Priority=\"20\" QFormat=\"true\" Name=\"Emphasis\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Document Map\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Plain Text\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"E-mail Signature\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"HTML Top of Form\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"HTML Bottom of Form\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Normal (Web)\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"HTML Acronym\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"HTML Address\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"HTML Cite\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"HTML Code\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"HTML Definition\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"HTML Keyboard\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"HTML Preformatted\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"HTML Sample\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"HTML Typewriter\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"HTML Variable\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Normal Table\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"annotation subject\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"No List\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Outline List 1\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Outline List 2\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Outline List 3\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Simple 1\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Simple 2\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Simple 3\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Classic 1\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Classic 2\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Classic 3\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Classic 4\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Colorful 1\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Colorful 2\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Colorful 3\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Columns 1\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Columns 2\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Columns 3\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Columns 4\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Columns 5\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Grid 1\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Grid 2\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Grid 3\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Grid 4\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Grid 5\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Grid 6\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Grid 7\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Grid 8\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table List 1\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table List 2\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table List 3\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table List 4\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table List 5\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table List 6\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table List 7\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table List 8\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table 3D effects 1\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table 3D effects 2\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table 3D effects 3\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Contemporary\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Elegant\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Professional\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Subtle 1\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Subtle 2\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Web 1\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Web 2\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Web 3\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Balloon Text\">\r\n  <w Locked=\"false\" Priority=\"39\" Name=\"Table Grid\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Table Theme\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" Name=\"Placeholder Text\">\r\n  <w Locked=\"false\" Priority=\"1\" QFormat=\"true\" Name=\"No Spacing\">\r\n  <w Locked=\"false\" Priority=\"60\" Name=\"Light Shading\">\r\n  <w Locked=\"false\" Priority=\"61\" Name=\"Light List\">\r\n  <w Locked=\"false\" Priority=\"62\" Name=\"Light Grid\">\r\n  <w Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1\">\r\n  <w Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2\">\r\n  <w Locked=\"false\" Priority=\"65\" Name=\"Medium List 1\">\r\n  <w Locked=\"false\" Priority=\"66\" Name=\"Medium List 2\">\r\n  <w Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1\">\r\n  <w Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2\">\r\n  <w Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3\">\r\n  <w Locked=\"false\" Priority=\"70\" Name=\"Dark List\">\r\n  <w Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading\">\r\n  <w Locked=\"false\" Priority=\"72\" Name=\"Colorful List\">\r\n  <w Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid\">\r\n  <w Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 1\">\r\n  <w Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 1\">\r\n  <w Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 1\">\r\n  <w Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 1\">\r\n  <w Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 1\">\r\n  <w Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 1\">\r\n  <w Locked=\"false\" SemiHidden=\"true\" Name=\"Revision\">\r\n  <w Locked=\"false\" Priority=\"34\" QFormat=\"true\" Name=\"List Paragraph\">\r\n  <w Locked=\"false\" Priority=\"29\" QFormat=\"true\" Name=\"Quote\">\r\n  <w Locked=\"false\" Priority=\"30\" QFormat=\"true\" Name=\"Intense Quote\">\r\n  <w Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 1\">\r\n  <w Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 1\">\r\n  <w Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 1\">\r\n  <w Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 1\">\r\n  <w Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 1\">\r\n  <w Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 1\">\r\n  <w Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 1\">\r\n  <w Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 1\">\r\n  <w Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 2\">\r\n  <w Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 2\">\r\n  <w Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 2\">\r\n  <w Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 2\">\r\n  <w Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 2\">\r\n  <w Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 2\">\r\n  <w Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 2\">\r\n  <w Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 2\">\r\n  <w Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 2\">\r\n  <w Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 2\">\r\n  <w Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 2\">\r\n  <w Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 2\">\r\n  <w Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 2\">\r\n  <w Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 2\">\r\n  <w Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 3\">\r\n  <w Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 3\">\r\n  <w Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 3\">\r\n  <w Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 3\">\r\n  <w Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 3\">\r\n  <w Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 3\">\r\n  <w Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 3\">\r\n  <w Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 3\">\r\n  <w Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 3\">\r\n  <w Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 3\">\r\n  <w Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 3\">\r\n  <w Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 3\">\r\n  <w Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 3\">\r\n  <w Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 3\">\r\n  <w Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 4\">\r\n  <w Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 4\">\r\n  <w Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 4\">\r\n  <w Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 4\">\r\n  <w Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 4\">\r\n  <w Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 4\">\r\n  <w Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 4\">\r\n  <w Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 4\">\r\n  <w Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 4\">\r\n  <w Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 4\">\r\n  <w Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 4\">\r\n  <w Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 4\">\r\n  <w Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 4\">\r\n  <w Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 4\">\r\n  <w Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 5\">\r\n  <w Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 5\">\r\n  <w Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 5\">\r\n  <w Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 5\">\r\n  <w Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 5\">\r\n  <w Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 5\">\r\n  <w Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 5\">\r\n  <w Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 5\">\r\n  <w Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 5\">\r\n  <w Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 5\">\r\n  <w Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 5\">\r\n  <w Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 5\">\r\n  <w Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 5\">\r\n  <w Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 5\">\r\n  <w Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 6\">\r\n  <w Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 6\">\r\n  <w Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 6\">\r\n  <w Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 6\">\r\n  <w Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 6\">\r\n  <w Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 6\">\r\n  <w Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 6\">\r\n  <w Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 6\">\r\n  <w Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 6\">\r\n  <w Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 6\">\r\n  <w Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 6\">\r\n  <w Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 6\">\r\n  <w Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 6\">\r\n  <w Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 6\">\r\n  <w Locked=\"false\" Priority=\"19\" QFormat=\"true\" Name=\"Subtle Emphasis\">\r\n  <w Locked=\"false\" Priority=\"21\" QFormat=\"true\" Name=\"Intense Emphasis\">\r\n  <w Locked=\"false\" Priority=\"31\" QFormat=\"true\" Name=\"Subtle Reference\">\r\n  <w Locked=\"false\" Priority=\"32\" QFormat=\"true\" Name=\"Intense Reference\">\r\n  <w Locked=\"false\" Priority=\"33\" QFormat=\"true\" Name=\"Book Title\">\r\n  <w Locked=\"false\" Priority=\"37\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" Name=\"Bibliography\">\r\n  <w Locked=\"false\" Priority=\"39\" SemiHidden=\"true\" UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"TOC Heading\">\r\n  <w Locked=\"false\" Priority=\"41\" Name=\"Plain Table 1\">\r\n  <w Locked=\"false\" Priority=\"42\" Name=\"Plain Table 2\">\r\n  <w Locked=\"false\" Priority=\"43\" Name=\"Plain Table 3\">\r\n  <w Locked=\"false\" Priority=\"44\" Name=\"Plain Table 4\">\r\n  <w Locked=\"false\" Priority=\"45\" Name=\"Plain Table 5\">\r\n  <w Locked=\"false\" Priority=\"40\" Name=\"Grid Table Light\">\r\n  <w Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light\">\r\n  <w Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2\">\r\n  <w Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3\">\r\n  <w Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4\">\r\n  <w Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark\">\r\n  <w Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful\">\r\n  <w Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful\">\r\n  <w Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light Accent 1\">\r\n  <w Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 1\">\r\n  <w Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 1\">\r\n  <w Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 1\">\r\n  <w Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 1\">\r\n  <w Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful Accent 1\">\r\n  <w Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful Accent 1\">\r\n  <w Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light Accent 2\">\r\n  <w Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 2\">\r\n  <w Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 2\">\r\n  <w Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 2\">\r\n  <w Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 2\">\r\n  <w Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful Accent 2\">\r\n  <w Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful Accent 2\">\r\n  <w Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light Accent 3\">\r\n  <w Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 3\">\r\n  <w Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 3\">\r\n  <w Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 3\">\r\n  <w Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 3\">\r\n  <w Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful Accent 3\">\r\n  <w Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful Accent 3\">\r\n  <w Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light Accent 4\">\r\n  <w Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 4\">\r\n  <w Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 4\">\r\n  <w Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 4\">\r\n  <w Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 4\">\r\n  <w Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful Accent 4\">\r\n  <w Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful Accent 4\">\r\n  <w Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light Accent 5\">\r\n  <w Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 5\">\r\n  <w Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 5\">\r\n  <w Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 5\">\r\n  <w Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 5\">\r\n  <w Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful Accent 5\">\r\n  <w Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful Accent 5\">\r\n  <w Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light Accent 6\">\r\n  <w Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 6\">\r\n  <w Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 6\">\r\n  <w Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 6\">\r\n  <w Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 6\">\r\n  <w Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful Accent 6\">\r\n  <w Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful Accent 6\">\r\n  <w Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light\">\r\n  <w Locked=\"false\" Priority=\"47\" Name=\"List Table 2\">\r\n  <w Locked=\"false\" Priority=\"48\" Name=\"List Table 3\">\r\n  <w Locked=\"false\" Priority=\"49\" Name=\"List Table 4\">\r\n  <w Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark\">\r\n  <w Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful\">\r\n  <w Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful\">\r\n  <w Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light Accent 1\">\r\n  <w Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 1\">\r\n  <w Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 1\">\r\n  <w Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 1\">\r\n  <w Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 1\">\r\n  <w Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful Accent 1\">\r\n  <w Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful Accent 1\">\r\n  <w Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light Accent 2\">\r\n  <w Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 2\">\r\n  <w Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 2\">\r\n  <w Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 2\">\r\n  <w Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 2\">\r\n  <w Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful Accent 2\">\r\n  <w Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful Accent 2\">\r\n  <w Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light Accent 3\">\r\n  <w Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 3\">\r\n  <w Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 3\">\r\n  <w Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 3\">\r\n  <w Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 3\">\r\n  <w Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful Accent 3\">\r\n  <w Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful Accent 3\">\r\n  <w Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light Accent 4\">\r\n  <w Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 4\">\r\n  <w Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 4\">\r\n  <w Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 4\">\r\n  <w Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 4\">\r\n  <w Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful Accent 4\">\r\n  <w Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful Accent 4\">\r\n  <w Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light Accent 5\">\r\n  <w Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 5\">\r\n  <w Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 5\">\r\n  <w Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 5\">\r\n  <w Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 5\">\r\n  <w Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful Accent 5\">\r\n  <w Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful Accent 5\">\r\n  <w Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light Accent 6\">\r\n  <w Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 6\">\r\n  <w Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 6\">\r\n  <w Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 6\">\r\n  <w Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 6\">\r\n  <w Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful Accent 6\">\r\n  <w Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful Accent 6\">\r\n </w>\r\n&lt;/xml&gt;&lt;![endif]--&gt;&lt;!--[if gte mso 10]>\r\n&lt;style&gt;\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n {mso-style-name:\"Table Normal\";\r\n mso-tstyle-rowband-size:0;\r\n mso-tstyle-colband-size:0;\r\n mso-style-noshow:yes;\r\n mso-style-priority:99;\r\n mso-style-parent:\"\";\r\n mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n mso-para-margin-top:0cm;\r\n mso-para-margin-right:0cm;\r\n mso-para-margin-bottom:8.0pt;\r\n mso-para-margin-left:0cm;\r\n line-height:107%;\r\n mso-pagination:widow-orphan;\r\n font-size:11.0pt;\r\n font-family:\"Calibri\",sans-serif;\r\n mso-ascii-font-family:Calibri;\r\n mso-ascii-theme-font:minor-latin;\r\n mso-hansi-font-family:Calibri;\r\n mso-hansi-theme-font:minor-latin;\r\n mso-bidi-font-family:\"Times New Roman\";\r\n mso-bidi-theme-font:minor-bidi;\r\n mso-fareast-language:EN-US;}\r\n&lt;/style&gt;\r\n&lt;![endif]--&gt;\r\n\r\n</p><div xss=removed>\r\n\r\n<table hspace=\"0\" vspace=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"left\">\r\n <tbody><tr>\r\n  <td xss=removed valign=\"top\" align=\"left\">\r\n  <p class=\"MsoNormal\" xss=removed><span xss=removed>In Nuts and\r\n  Bolts of business plan will course, you will learn things to keep in mind in\r\n  writing a Business Plan which <span xss=removed>   </span>will\r\n  improve your chances of obtaining funding and running a successful business.</span></p>\r\n  </td>\r\n </tr>\r\n</tbody></table>\r\n\r\n</div>\r\n\r\n', '[\"The principles guiding a good business plan\",\"The elements that made up a business plan \"]', 'english', 20, 31, '[27]', '[\" No Pre-requisite for taking this course, only a positive mind. \"]', 0, NULL, 0, 'beginner', 8, NULL, '', 1583647200, 1585371600, NULL, 1, 0, 'pending', '', '', '', 1),
(13, 'Nuts and Bolts of Business Plans', 'This course will teach you the Practical do\'s and don\'ts in preparing a Business Plan.', '<p><span xss=removed>In Nuts\r\nand Bolts of business plan will course, you will learn things to keep in mind\r\nin writing a Business Plan which    will\r\nimprove your chances of obtaining funding and running a successful bu</span><br></p>', '[\"The principles guiding a good business plan\",\"The elements that made up a business plan \"]', 'english', 20, 31, '[28]', '[\"No Pre-requisite for taking this course, only a positive mind. \"]', 0, NULL, 0, 'beginner', 35, NULL, '', 1583647200, 1583647200, NULL, 0, 0, 'pending', '', '', '', 1),
(14, 'How to create courses on Bullmate ', 'Learn the steps in creating a successful course on Bullmate. ', '', '[\"You will learn how to  create courses successfully on Bullmate. \"]', 'english', 45, 51, '[29]', '[]', 0, NULL, 0, 'beginner', 2, NULL, 'https://www.youtube.com/watch?v=13CrYdp74_E&t=73s', 1585371600, 1604469600, NULL, 0, 0, 'active', 'youtube', '', '', 1),
(15, 'How to signup on Bullmate', 'Learn the signup process on Bullmate Elearning Platform,  Start learning on the go. ', '', '[\"The signup process Bullmate Elearning platform. \"]', 'english', 36, 52, '[30]', '[\"None \"]', 0, NULL, 0, 'beginner', 2, NULL, 'https://www.youtube.com/watch?v=plbBlY7YNIA&t=390s', 1585371600, 1604469600, NULL, 0, 0, 'active', 'youtube', '', '', 1),
(16, 'MBA, Marketing Course', 'MBA, marketing course, whether you\'re rebuilding your marketing program from the ground up or leading the first campaign of your career, this course will help you lay the foundation for a successful marketing endeavor. \r\nThis course is delivered by  SelfLearn-en. ', '<p><span xss=removed>MBA, marketing course, whether you\'re rebuilding your marketing program from the ground up or leading the first campaign of your career, this course  will help you lay the foundation for a successful marketing endeavor. we explain marketing\'s role business; provides frameworks for analyzing a business, its customers, and its competitors; and shows how to develop a successful marketing strategy and use that strategy to inform everything from pricing to promotion.\r\n</span></p><p><span xss=removed>you\'ll also learn to address tactical challenges and present the plan to get buy-in throughout a business, from the c-suite to the sales team, as well as use the marketing plan to guide outside agencies and vendors. finally, you\'ll learn how to launch the campaign and measure its performance.\r\n\r\nthis course  includes: marketing basics, assembling the team, creating the marketing plan, analyzing your products, customers, and market, segmenting customers, creating a value proposition, developing a strategy, setting goals, setting prices, using social media, presenting your plan to leadership, budgeting your plan, and measuring success.</span></p>', '[\"Learn the marketing basics\",\"How to assemble marketing  team\",\"How to create marketing plan\",\"How to analyze products , customers and markets \",\"How to segment  customers and  create a value proposition\"]', 'english', 20, 29, '[31]', '[\"Your Interest and dedication for this course \"]', 0, NULL, 0, 'beginner', 8, NULL, '', 1589518800, 1589518800, NULL, 0, 0, 'pending', '', '', 'marketing plan, analyzing your products, customers, and market, segmenting customers, creating a value proposition, developing a strategy, setting goals, setting prices, using social media, presenting your plan to leadership, budgeting your plan, and measuring success.', 1);
INSERT INTO `course` (`id`, `title`, `short_description`, `description`, `outcomes`, `language`, `category_id`, `sub_category_id`, `section`, `requirements`, `price`, `discount_flag`, `discounted_price`, `level`, `user_id`, `thumbnail`, `video_url`, `date_added`, `last_modified`, `visibility`, `is_top_course`, `is_admin`, `status`, `course_overview_provider`, `meta_keywords`, `meta_description`, `is_free_course`) VALUES
(17, 'Human Resources Management ', 'In this course you will Learn what it takes to run a successful human resources department. You will understand what human resources is all about , which mega trends determine future challenges in Human resources management \r\nThis course is delivered by Professor Dr. Armin Trost. ', '<p>This course you will take through what human resources is all about , which mega trends determine future challenges in Human resources management, they key fields of action in HRM, HR Strategy & Planning, Talent Aquisition, Candidate selection , Compensation & Benefits, talent management, Employee survey , Retention, Change management, HR Organization.  <br><br></p>', '[\"what is Human Resource Management (HRM) \",\"HR Strategy & Planning \",\"Talent Aquisition \",\"Candidate selection , Compensation & Benefits \",\"talent management &  Employee survey\",\"Employee Retention\",\" Change management &  HR Organization. \"]', 'english', 20, 30, '[33]', '[\"No Pre-requisite for taking this course, only a positive mind.\"]', 0, NULL, 0, 'beginner', 8, NULL, '', 1589518800, 1604469600, NULL, 0, 0, 'active', '', '', 'Human  resources , Management, Talents, Mega trends ', 1),
(18, 'Test Live Class ', 'Test Live Class ', '<p>Test Live Class .... Testing for efficiency <br></p>', '[\"testing Live Class \"]', 'english', 12, 13, '[35]', '[\"None \"]', 0, NULL, 0, 'advanced', 8, NULL, 'https://www.youtube.com/watch?v=iD-_WwCe1KU', 1590210000, 1590210000, NULL, 1, 0, 'pending', 'youtube', '', '', 1),
(19, 'Fundamentals of Blockchain Technology ', 'This course provides a complete introduction to blockchain technology and how it is changing our world. \r\n', '', '[\"Blockchain evolution\",\"Smart contracts\",\"Decentralized web\",\"Distributed applications\",\"Distributed organizations\",\"Distributed ledger\",\"Internet of value\",\"Token economies\"]', 'english', 62, 63, '[]', '[\"Access to a computer with an internet connection.\"]', 0, NULL, 0, 'beginner', 2, NULL, 'https://youtu.be/NKAanYdic9Q', 1603774800, 1604469600, NULL, 0, 0, 'active', 'youtube', 'blockchain, bitcoin, ethereum , digital asses,distributed ledger system  ', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL,
  `paystack_supported` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `paystack_supported`) VALUES
(1, 'Leke', 'ALL', 'Lek', 0, 1, 1),
(2, 'Dollars', 'USD', '$', 1, 1, 1),
(3, 'Afghanis', 'AFN', '؋', 0, 1, 1),
(4, 'Pesos', 'ARS', '$', 0, 1, 1),
(5, 'Guilders', 'AWG', 'ƒ', 0, 1, 1),
(6, 'Dollars', 'AUD', '$', 1, 1, 1),
(7, 'New Manats', 'AZN', 'ман', 0, 1, 1),
(8, 'Dollars', 'BSD', '$', 0, 1, 1),
(9, 'Dollars', 'BBD', '$', 0, 1, 1),
(10, 'Rubles', 'BYR', 'p.', 0, 0, 1),
(11, 'Euro', 'EUR', '€', 1, 1, 1),
(12, 'Dollars', 'BZD', 'BZ$', 0, 1, 1),
(13, 'Dollars', 'BMD', '$', 0, 1, 1),
(14, 'Bolivianos', 'BOB', '$b', 0, 1, 1),
(15, 'Convertible Marka', 'BAM', 'KM', 0, 1, 1),
(16, 'Pula', 'BWP', 'P', 0, 1, 1),
(17, 'Leva', 'BGN', 'лв', 0, 1, 1),
(18, 'Reais', 'BRL', 'R$', 1, 1, 1),
(19, 'Pounds', 'GBP', '£', 1, 1, 1),
(20, 'Dollars', 'BND', '$', 0, 1, 1),
(21, 'Riels', 'KHR', '៛', 0, 1, 1),
(22, 'Dollars', 'CAD', '$', 1, 1, 1),
(23, 'Dollars', 'KYD', '$', 0, 1, 1),
(24, 'Pesos', 'CLP', '$', 0, 1, 1),
(25, 'Yuan Renminbi', 'CNY', '¥', 0, 1, 1),
(26, 'Pesos', 'COP', '$', 0, 1, 1),
(27, 'Colón', 'CRC', '₡', 0, 1, 1),
(28, 'Kuna', 'HRK', 'kn', 0, 1, 1),
(29, 'Pesos', 'CUP', '₱', 0, 0, 1),
(30, 'Koruny', 'CZK', 'Kč', 1, 1, 1),
(31, 'Kroner', 'DKK', 'kr', 1, 1, 1),
(32, 'Pesos', 'DOP ', 'RD$', 0, 1, 1),
(33, 'Dollars', 'XCD', '$', 0, 1, 1),
(34, 'Pounds', 'EGP', '£', 0, 1, 1),
(35, 'Colones', 'SVC', '$', 0, 0, 1),
(36, 'Pounds', 'FKP', '£', 0, 1, 1),
(37, 'Dollars', 'FJD', '$', 0, 1, 1),
(38, 'Cedis', 'GHC', '¢', 0, 0, 1),
(39, 'Pounds', 'GIP', '£', 0, 1, 1),
(40, 'Quetzales', 'GTQ', 'Q', 0, 1, 1),
(41, 'Pounds', 'GGP', '£', 0, 0, 1),
(42, 'Dollars', 'GYD', '$', 0, 1, 1),
(43, 'Lempiras', 'HNL', 'L', 0, 1, 1),
(44, 'Dollars', 'HKD', '$', 1, 1, 1),
(45, 'Forint', 'HUF', 'Ft', 1, 1, 1),
(46, 'Kronur', 'ISK', 'kr', 0, 1, 1),
(47, 'Rupees', 'INR', 'Rp', 1, 1, 1),
(48, 'Rupiahs', 'IDR', 'Rp', 0, 1, 1),
(49, 'Rials', 'IRR', '﷼', 0, 0, 1),
(50, 'Pounds', 'IMP', '£', 0, 0, 1),
(51, 'New Shekels', 'ILS', '₪', 1, 1, 1),
(52, 'Dollars', 'JMD', 'J$', 0, 1, 1),
(53, 'Yen', 'JPY', '¥', 1, 1, 1),
(54, 'Pounds', 'JEP', '£', 0, 0, 1),
(55, 'Tenge', 'KZT', 'лв', 0, 1, 1),
(56, 'Won', 'KPW', '₩', 0, 0, 1),
(57, 'Won', 'KRW', '₩', 0, 1, 1),
(58, 'Soms', 'KGS', 'лв', 0, 1, 1),
(59, 'Kips', 'LAK', '₭', 0, 1, 1),
(60, 'Lati', 'LVL', 'Ls', 0, 0, 1),
(61, 'Pounds', 'LBP', '£', 0, 1, 1),
(62, 'Dollars', 'LRD', '$', 0, 1, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', 1, 1, 1),
(64, 'Litai', 'LTL', 'Lt', 0, 0, 1),
(65, 'Denars', 'MKD', 'ден', 0, 1, 1),
(66, 'Ringgits', 'MYR', 'RM', 1, 1, 1),
(67, 'Rupees', 'MUR', '₨', 0, 1, 1),
(68, 'Pesos', 'MXN', '$', 1, 1, 1),
(69, 'Tugriks', 'MNT', '₮', 0, 1, 1),
(70, 'Meticais', 'MZN', 'MT', 0, 1, 1),
(71, 'Dollars', 'NAD', '$', 0, 1, 1),
(72, 'Rupees', 'NPR', '₨', 0, 1, 1),
(73, 'Guilders', 'ANG', 'ƒ', 0, 1, 1),
(74, 'Dollars', 'NZD', '$', 1, 1, 1),
(75, 'Cordobas', 'NIO', 'C$', 0, 1, 1),
(76, 'Nairas', 'NGN', '₦', 0, 1, 1),
(77, 'Krone', 'NOK', 'kr', 1, 1, 1),
(78, 'Rials', 'OMR', '﷼', 0, 0, 1),
(79, 'Rupees', 'PKR', '₨', 0, 1, 1),
(80, 'Balboa', 'PAB', 'B/.', 0, 1, 1),
(81, 'Guarani', 'PYG', 'Gs', 0, 1, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', 0, 1, 1),
(83, 'Pesos', 'PHP', 'Php', 1, 1, 1),
(84, 'Zlotych', 'PLN', 'zł', 1, 1, 1),
(85, 'Rials', 'QAR', '﷼', 0, 1, 1),
(86, 'New Lei', 'RON', 'lei', 0, 1, 1),
(87, 'Rubles', 'RUB', 'руб', 1, 1, 1),
(88, 'Pounds', 'SHP', '£', 0, 1, 1),
(89, 'Riyals', 'SAR', '﷼', 0, 1, 1),
(90, 'Dinars', 'RSD', 'Дин.', 0, 1, 1),
(91, 'Rupees', 'SCR', '₨', 0, 1, 1),
(92, 'Dollars', 'SGD', '$', 1, 1, 1),
(93, 'Dollars', 'SBD', '$', 0, 1, 1),
(94, 'Shillings', 'SOS', 'S', 0, 1, 1),
(95, 'Rand', 'ZAR', 'R', 0, 1, 1),
(96, 'Rupees', 'LKR', '₨', 0, 1, 1),
(97, 'Kronor', 'SEK', 'kr', 1, 1, 1),
(98, 'Dollars', 'SRD', '$', 0, 1, 1),
(99, 'Pounds', 'SYP', '£', 0, 0, 1),
(100, 'New Dollars', 'TWD', 'NT$', 1, 1, 1),
(101, 'Baht', 'THB', '฿', 1, 1, 1),
(102, 'Dollars', 'TTD', 'TT$', 0, 1, 1),
(103, 'Lira', 'TRY', 'TL', 0, 1, 1),
(104, 'Liras', 'TRL', '£', 0, 0, 1),
(105, 'Dollars', 'TVD', '$', 0, 0, 1),
(106, 'Hryvnia', 'UAH', '₴', 0, 1, 1),
(107, 'Pesos', 'UYU', '$U', 0, 1, 1),
(108, 'Sums', 'UZS', 'лв', 0, 1, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', 0, 0, 1),
(110, 'Dong', 'VND', '₫', 0, 1, 1),
(111, 'Rials', 'YER', '﷼', 0, 1, 1),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `enrol`
--

CREATE TABLE `enrol` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `enrol`
--

INSERT INTO `enrol` (`id`, `user_id`, `course_id`, `date_added`, `last_modified`) VALUES
(1, 2, 1, 1565672400, NULL),
(2, 8, 2, 1565758800, NULL),
(3, 8, 4, 1565758800, NULL),
(4, 8, 5, 1565758800, NULL),
(5, 8, 3, 1565758800, NULL),
(6, 2, 4, 1565845200, NULL),
(7, 2, 2, 1565845200, NULL),
(8, 2, 6, 1565845200, NULL),
(9, 8, 7, 1566104400, NULL),
(10, 12, 5, 1566190800, NULL),
(11, 13, 8, 1566190800, NULL),
(12, 8, 9, 1567746000, NULL),
(13, 18, 2, 1570597200, NULL),
(14, 16, 4, 1570597200, NULL),
(15, 18, 5, 1571374800, NULL),
(16, 26, 9, 1571634000, NULL),
(17, 27, 1, 1572933600, NULL),
(18, 28, 8, 1572933600, NULL),
(19, 25, 9, 1576476000, NULL),
(20, 25, 2, 1576476000, NULL),
(21, 8, 11, 1581141600, NULL),
(22, 8, 8, 1581141600, NULL),
(23, 34, 9, 1583215200, NULL),
(24, 34, 1, 1583215200, NULL),
(25, 34, 2, 1583474400, NULL),
(26, 34, 5, 1583474400, NULL),
(27, 35, 2, 1583474400, NULL),
(28, 36, 9, 1586494800, NULL),
(29, 37, 9, 1586754000, NULL),
(30, 39, 1, 1588309200, NULL),
(31, 39, 11, 1588309200, NULL),
(32, 39, 4, 1588309200, NULL),
(33, 39, 9, 1588395600, NULL),
(34, 46, 1, 1590123600, NULL),
(35, 8, 1, 1590210000, NULL),
(36, 8, 18, 1590210000, NULL),
(37, 8, 17, 1590382800, NULL),
(38, 39, 16, 1590642000, NULL),
(39, 8, 10, 1590728400, NULL),
(40, 8, 19, 1590728400, NULL),
(41, 49, 2, 1590728400, NULL),
(42, 49, 3, 1590728400, NULL),
(43, 8, 15, 1590728400, NULL),
(44, 49, 5, 1590728400, NULL),
(45, 49, 8, 1590814800, NULL),
(46, 53, 3, 1595221200, NULL),
(47, 53, 14, 1595221200, NULL),
(48, 13, 19, 1603774800, NULL),
(49, 13, 3, 1603774800, NULL),
(50, 35, 17, 1604728800, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES
(1, 'banner_title', 'Learn at your own pace '),
(2, 'banner_sub_title', 'Build skills with courses, Study any topic, anywhere , anytime from world&#039;s best subject matter experts. '),
(4, 'about_us', '<p></p><h2></h2><h6></h6><h5></h5><h5><span xss=\"removed\"><span xss=\"removed\">﻿</span><span xss=\"removed\"><span xss=\"removed\">﻿</span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Bullmate is an online learning place </span><span xss=\"removed\">bringing</span></span></span></span><span xss=\"removed\"><span xss=\"removed\">﻿</span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"> world best team of Instructors, Training and Educational organisations\r\nboth Government and private, offering best quality courses to learners\r\neverywhere, anytime and anyday.</span></span></span></span></span></span></h5><span xss=\"removed\"><h5><span xss=\"removed\"><span xss=\"removed\">Our global partners are best in their area of\r\nspecialty which </span><span xss=\"removed\">﻿</span><span xss=\"removed\">made Bullmate a one stop shop for learners to horn their skills\r\nwith high quality courses. </span><span xss=\"removed\">We have our students from different part of the\r\nworld studying and getting their skill set in different areas of their interest\r\nraging from Oil and gas, business and Management, Health safety & Fitness\r\netc there is a course for everyone. </span><span xss=\"removed\">Our main objective is to connect students all over\r\nthe world by providing them courses that will shape th</span><span xss=\"removed\">﻿</span><span xss=\"removed\">eir lives through our\r\nsubject matter experts. </span><span xss=\"removed\">Bullmate is the E-learning community\r\nof students, schools and instructors all over the world. </span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><br></span><span xss=\"removed\" xss=removed>What makes us\r\ndifferent</span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\">Networking Opportunities</span><br></span><span xss=\"removed\"><font xss=\"removed\"><span xss=\"removed\">Learning with Bullmate  provides\r\nstudents with the </span><span xss=\"removed\">platform</span><span xss=\"removed\">  to network with peers globally. This often\r\nleads to other opportunities in terms of collaboration with other individuals\r\nin the implementation of a project. At the same time, learners are connected  </span></font><span xss=\"removed\">culturally  and able to fit into other environments easily given their\r\nexposure to other cultures.</span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><br></span><span xss=\"removed\">Flexibility<br></span><span xss=\"removed\">Our learning platform provides\r\nstudents the freedom to juggle their careers and school, students  aren’t\r\ntied down to a fixed schedule,  Learning has been flipped that the\r\nclassroom has been taking to the students  and not the students to the\r\nclassroom. They are connected with their instructors and learning can take\r\nplace anytime, anywhere.</span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><br></span><span xss=\"removed\">Increased Instructor -\r\nStudent Time<br></span><span xss=\"removed\">Students can now get the </span><span xss=\"removed\">personalised</span><span xss=\"removed\"> attention they need to have concepts clarified. Guided discussions and personal\r\ntalk time with instructors is a hallmark of Bullmate learning with\r\nsignificant  increases in student performance.</span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><br></span><span xss=\"removed\">Access to Expertise<br></span><span xss=\"removed\">Our learning platform provides students the access\r\nto </span><span xss=\"removed\">specialised</span><span xss=\"removed\"><span xss=\"removed\"> courses that may not be available in an easily accessible or\r\nlocal institution of learning. Instructors can now share their expertise with\r\nstudents and other members.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\">Learning with us enables students get control their\r\nlearning environment, which ultimately helps them develop a deeper\r\nunderstanding of their programme, they provided with varied opportunities to\r\nfashion their education into something that fits them, not the other way round. </span><span xss=\"removed\">Our aim is to open up education and learning to the world than ever before.</span></span></h5></span>');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES
(10, 'terms_and_condition', '<p></p><h2 xss=\"removed\"></h2><h5></h5><h5></h5><h3><span xss=\"removed\">Terms and Condition</span></h3><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><p class=\"MsoNormal\" xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Last updated: April 10, 2020</span><o></o></p>\r\n\r\n<p class=\"MsoNormal\" xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Please read these terms and conditions carefully before using Our\r\nService.<br></span></p></span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Interpretation and Definitions</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Interpretation<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">The words of which the initial letter is capitalised have meanings defined under the following conditions.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</span></span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Definitions<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">For the purposes of these Terms and Conditions:<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Affiliate means an entity that controls, is controlled by or is under common control with a party, where \"control\" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Account means a unique account created for You to access our Service or parts of our Service.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Company (referred to as either \"the Company\", \"We\", \"Us\" or \"Our\" in this Agreement) refers to Bullmate Limited , 8 Ayinde Giwa Street, Off Ogunlana Drive, Surulere, Lagos, Nigeria.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Content refers to content such as text, images, or other information that can be posted, uploaded, linked to or otherwise made available by You, regardless of the form of that content.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">· Country refers to: Nigeria<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·  Feedback means feedback, innovations or suggestions sent by You regarding the attributes, performance or features of our Service.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·  Goods refer to the items offered for sale on the Service.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·  Orders mean a request by You to purchase Goods from Us.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·  Service refers to the Website.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·  Terms and Conditions (also referred as \"Terms\") mean these Terms and Conditions that form the entire agreement between You and the Company regarding the use of the Service.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·  Third-party Social Media Service means any services or content (including data, information, products or services) provided by a third-party that may be displayed, included or made available by the Service.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·  Website refers to Bullmate , accessible from https://www.bullmate.com<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·  You means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Acknowledgement<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">These are the Terms and Conditions governing the use of this Service and the agreement that operates between You and the Company. These Terms and Conditions set out the rights and obligations of all users regarding the use of the Service.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Your access to and use of the Service is conditioned on Your acceptance of and compliance with these Terms and Conditions. These Terms and Conditions apply to all visitors, users and others who access or use the Service.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">By accessing or using the Service You agree to be bound by these Terms and Conditions. If You disagree with any part of these Terms and Conditions then You may not access the Service.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Your access to and use of the Service is also conditioned on Your acceptance of and compliance with the Privacy Policy of the Company. Our Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your personal information when You use the Application or the Website and tells You about Your privacy rights and how the law protects You. Please read Our Privacy Policy carefully before using Our Service.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Purchasing Courses on Bullmate<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">By placing an Order for a course through the Service, you warrant that You are legally capable of entering into binding contracts.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Your Information<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">If You wish to purchase any course available on the Service, You may be asked to supply certain information relevant to Your Order including, without limitation, Your name, Your email, Your phone number, Your credit card number, the expiration date of Your credit card, Your billing address, and Your shipping information.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">You represent and warrant that: (i) You have the legal right to use any credit or debit card(s) or other payment method(s) in connection with any Order; and that (ii) the information You supply to us is true, correct and complete.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">By submitting such information, You grant us the right to provide the information to payment processing third parties for purposes of facilitating the completion of Your Order.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Order Cancellation<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">We reserve the right to refuse or cancel Your Order at any time for certain reasons including but not limited to:<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·         Goods availability<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·         Errors in the description or prices for Goods<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·         Errors in Your Order<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">We reserve the right to refuse or cancel Your Order if fraud or an unauthorised or illegal transaction is suspected.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Your Order Cancellation Rights<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Your right to cancel an Order only applies to reasons in accordance with order cancellation. We will reimburse You no later than 14 days from the date of purchase. We will use the same means of payment as You used for the Order, and You will not incur any fees for such reimbursement.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">You will not have any right to cancel an Order for any of the following reasons:<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·         The course you purchase was made to Your specifications or clearly personalised.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·         The supply of Goods which are, after delivery, according to their nature, inseparably mixed with other items.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·         The supply of digital content which is not supplied on a tangible medium if the performance has begun with Your prior express consent and You have acknowledged Your loss of cancellation right.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Availability, Errors and Inaccuracies<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">We are constantly updating Our offerings of courses on the Service. The courses available on Our Service may be mispriced, described inaccurately, or unavailable, and We may experience delays in updating information regarding our Goods on the Service and in Our advertising on other websites.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">We cannot and do not guarantee the accuracy or completeness of any information, including prices, product images, specifications, availability, and services. We reserve the right to change or update information and to correct errors, inaccuracies, or omissions at any time without prior notice.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\"><br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">The Company reserves the right to revise its prices at any time prior to accepting an Order.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">The prices quoted may be revised by the Company subsequent to accepting an Order in the event of any occurrence affecting delivery caused by government action, variation in customs duties, increased shipping charges, higher foreign exchange costs and any other matter beyond the control of the Company. In that event, You will have the right to cancel Your Order.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Payments<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">All Goods purchased are subject to a one-time payment. Payment can be made through various payment methods we have available, such as Visa, MasterCard, Affinity Card, American Express cards or online payment methods (PayPal, for example).<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Payment cards (credit cards or debit cards) are subject to validation checks and authorization by Your card issuer. If we do not receive the required authorization, We will not be liable for any delay or non-delivery of Your Order.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">User Accounts<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">When You create an account with Us, You must provide Us information that is accurate, complete, and current at all times. Failure to do so constitutes a breach of the Terms, which may result in immediate termination of Your account on Our Service.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">You are responsible for safeguarding the password that You use to access the Service and for any activities or actions under Your password, whether Your password is with Our Service or a Third-Party Social </span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Media Service.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">You agree not to disclose Your password to any third party. You must notify Us immediately upon becoming aware of any breach of security or unauthorised use of Your account.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">You may not use as a username the name of another person or entity or that is not lawfully available for use, a name or trademark that is subject to any rights of another person or entity other than You without appropriate authorisation, or a name that is otherwise offensive, vulgar or obscene.<br></span></span></span><span xss=\"removed\"><span xss=\"removed\"><o xss=\"removed\"> <br></o></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Content<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Your Right to Post Content<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Our Service allows You to post Content. You are responsible for the Content that You post to the Service, including its legality, reliability, and appropriateness.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">By posting Content to the Service, You grant Us the right and license to use, modify, publicly perform, publicly display, reproduce, and distribute such Content on and through the Service. You retain any and all of Your rights to any Content You submit, post or display on or through the Service and You are responsible for protecting those rights. You agree that this license includes the right for Us to make Your Content available to other users of the Service, who may also use Your Content subject to these Terms.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">You represent and warrant that: (i) the Content is Yours (You own it) or You have the right to use it and grant Us the rights and license as provided in these Terms, and (ii) the posting of Your Content on or through the Service does not violate the privacy rights, publicity rights, copyrights, contract rights or any other rights of any person.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Content Restrictions<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">The Company is not responsible for the content of the Service\'s users. You expressly understand and agree that You are solely responsible for the Content and for all activity that occurs under your account, whether done so by You or any third person using Your account.<br></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">You may not transmit any Content that is unlawful, offensive, upsetting, intended to disgust, threatening, libelous, defamatory, obscene or otherwise objectionable. Examples of such objectionable Content include, but are not limited to, the following:<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·         Unlawful or promoting unlawful activity.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·         Defamatory, discriminatory, or mean-spirited content, including references or commentary about religion, race, sexual orientation, gender, national/ethnic origin, or other targeted groups.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·         Spam, machine – or randomly – generated, constituting unauthorised or unsolicited advertising, chain letters, any other form of unauthorised solicitation, or any form of lottery or gambling.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·         Containing or installing any viruses, worms, malware, Trojan horses, or other content that is designed or intended to disrupt, damage, or limit the functioning of any software, hardware or telecommunications equipment or to damage or obtain unauthorised access to any data or other information of a third person.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·         Infringing on any proprietary rights of any party, including patent, trademark, trade secret, copyright, right of publicity or other rights.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·         Impersonating any person or entity including the Company and its employees or representatives.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·         Violating the privacy of any third person.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·         False information and features</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">The Company reserves the right, but not the obligation, to, in its sole discretion, determine whether or not any Content is appropriate and complies with this Terms, refuse or remove this Content. The Company further reserves the right to make formatting and edits and change the manner any Content. The Company can also limit or revoke the use of the Service if You post such objectionable Content.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">As the Company cannot control all content posted by users and/or third parties on the Service, you agree to use the Service at your own risk. You understand that by using the Service You may be exposed to content that You may find offensive, indecent, incorrect or objectionable, and You agree that under no circumstances will the Company be liable in any way for any content, including any errors or omissions in any content, or any loss or damage of any kind incurred as a result of your use of any content</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Content Backups<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Although regular backups of Content are performed, the Company do not guarantee there will be no loss or corruption of data.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Corrupt or invalid backup points may be caused by, without limitation, Content that is corrupted prior to being backed up or that changes during the time a backup is performed.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">The Company will provide support and attempt to troubleshoot any known or discovered issues that may affect the backups of Content. But You acknowledge that the Company has no liability related to the integrity of Content or the failure to successfully restore Content to a usable state<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">You agree to maintain a complete and accurate copy of any Content in a location independent of the Service.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Copyright Policy<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Intellectual Property Infringement<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">We respect the intellectual property rights of others. It is Our policy to respond to any claim that Content posted on the Service infringes a copyright or other intellectual property infringement of any person.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">If You are a copyright owner, or authorised on behalf of one, and You believe that the copyrighted work has been copied in a way that constitutes copyright infringement that is taking place through the Service, You must submit Your notice in writing to the attention of our copyright agent via email at dmca@bullmate.com and include in Your notice a detailed description of the alleged infringement.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">You may be held accountable for damages (including costs and attorneys\' fees) for misrepresenting that any Content is infringing Your copyright<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">DMCA Notice and DMCA Procedure for Copyright Infringement Claims<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">You may submit a notification pursuant to the Digital Millennium Copyright Act (DMCA) by providing our Copyright Agent with the following information in writing (see 17 U.S.C 512(c)(3) for further detail):<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·         An electronic or physical signature of the person authorised to act on behalf of the owner of the copyright\'s interest.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·         A description of the copyrighted work that You claim has been infringed, including the URL (i.e., web page address) of the location where the copyrighted work exists or a copy of the copyrighted work.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·         Identification of the URL or other specific location on the Service where the material that You claim is infringing is located.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·         Your address, telephone number, and email address.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·         A statement by You that You have a good faith belief that the disputed use is not authorised by the copyright owner, its agent, or the law.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">·         A statement by You, made under penalty of perjury, that the above information in Your notice is accurate and that You are the copyright owner or authorised to act on the copyright owner\'s behalf.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">You can contact our copyright agent via email at dmca@bullmate.com.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Upon receipt of a notification, the Company will take whatever action, in its sole discretion, it deems appropriate, including removal of the challenged content from the Service.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Intellectual Property<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">The Service and its original content (excluding Content provided by You or other users), features and functionality are and will remain the exclusive property of the Company and its licensors.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">The Service is protected by copyright, trademark, and other laws of both the Country and foreign countries.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Our trademarks and trade dress may not be used in connection with any product or service without the prior written consent of the Company.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Your Feedback to Us<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">You assign all rights, title and interest in any Feedback You provide the Company. If for any reason such assignment is ineffective, You agree to grant the Company a non-exclusive, perpetual, irrevocable, royalty free, worldwide right and licence to use, reproduce, disclose, sub-licence, distribute, modify and exploit such Feedback without restriction.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Links to Other Websites<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Our Service may contain links to third-party web sites or services that are not owned or controlled by the Company.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">The Company has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third party web sites or services. You further acknowledge and agree that the Company shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with the use of or reliance on any such content, goods or services available on or through any such web sites or services.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">We strongly advise You to read the terms and conditions and privacy policies of any third-party web sites or services that You visit.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Termination<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">We may terminate or suspend Your Account immediately, without prior notice or liability, for any reason whatsoever, including without limitation if You breach these Terms and Conditions.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Upon termination, Your right to use the Service will cease immediately. If You wish to terminate Your Account, You may simply discontinue using the Service.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Limitation of Liability<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Notwithstanding any damages that You might incur, the entire liability of the Company and any of its suppliers under any provision of this Terms and Your exclusive remedy for all of the foregoing shall be limited to the amount actually paid by You through the Service or 100 USD if You haven\'t purchased anything through the Service.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">To the maximum extent permitted by applicable law, in no event shall the Company or its partners  be liable for any special, incidental, indirect, or consequential damages whatsoever (including, but not limited to, damages for loss of profits, loss of data or other information, for business interruption, for personal injury, loss of privacy arising out of or in any way related to the use of or inability to use the Service, third-party software and/or third-party hardware used with the Service, or otherwise in connection with any provision of this Terms), even if the Company or any supplier has been advised of the possibility of such damages and even if the remedy fails of its essential purpose.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Some states do not allow the exclusion of implied warranties or limitation of liability for incidental or consequential damages, which means that some of the above limitations may not apply. In these states, each party\'s liability will be limited to the greatest extent permitted by law.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">\"AS IS\" and \"AS AVAILABLE\" Disclaimer<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">The Service is provided to You \"AS IS\" and \"AS AVAILABLE\" and with all faults and defects without warranty of any kind. To the maximum extent permitted under applicable law, the Company, on its own behalf and on behalf of its Affiliates and its and their respective licensors and service providers, expressly disclaims all warranties, whether express, implied, statutory or otherwise, with respect to the Service, including all implied warranties of merchantability, fitness for a particular purpose, title and non-infringement, and warranties that may arise out of course of dealing, course of performance, usage or trade practice. Without limitation to the foregoing, the Company provides no warranty or undertaking, and makes no representation of any kind that the Service will meet Your requirements, achieve any intended results, be compatible or work with any other software, applications, systems or services, operate without interruption, meet any performance or reliability standards or be error free or that any errors or defects can or will be corrected.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Without limiting the foregoing, neither the Company nor any of the company\'s provider makes any representation or warranty of any kind, express or implied: (i) as to the operation or availability of the Service, or the information, content, and materials or products included thereon; (ii) that the Service will be uninterrupted or error-free; (iii) as to the accuracy, reliability, or currency of any information or content provided through the Service; or (iv) that the Service, its servers, the content, or e-mails sent from or on behalf of the Company are free of viruses, scripts, trojan horses, worms, malware, timebombs or other harmful components.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Some jurisdictions do not allow the exclusion of certain types of warranties or limitations on applicable statutory rights of a consumer, so some or all of the above exclusions and limitations may not apply to You. But in such a case the exclusions and limitations set forth in this section shall be applied to the greatest extent enforceable under applicable law.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Governing Law<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">The laws of the Country, excluding its conflicts of law rules, shall govern this Terms and Your use of the Service. Your use of the Application may also be subject to other local, state, national, or international laws.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Disputes Resolution<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">If You have any concern or dispute about the Service, You agree to first try to resolve the dispute informally by contacting the Company.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">For European Union (EU) Users<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">I<span xss=\"removed\">f You are a European Union consumer, you will benefit from any mandatory provisions of the law of the country in which you are resident in.</span></span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">United States Legal Compliance<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">You represent and warrant that (i) You are not located in a country that is subject to the United States government embargo, or that has been designated by the United States government as a “terrorist supporting” country, and (ii) You are not listed on any United States government list of prohibited or restricted parties.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Severability and Waiver<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Severability<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">If any provision of these Terms is held to be unenforceable or invalid, such provision will be changed and interpreted to accomplish the objectives of such provision to the greatest extent possible under applicable law and the remaining provisions will continue in full force and effect.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Waiver<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">Except as provided herein, the failure to exercise a right or to require performance of an obligation under this Terms shall not effect a party\'s ability to exercise such right or require such performance at any time thereafter nor shall be the waiver of a breach constitute a waiver of any subsequent breach.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Translation Interpretation<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">These Terms and Conditions may have been translated if We have made them available to You on our Service.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">You agree that the original English text shall prevail in the case of a dispute.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Changes to These Terms and Conditions<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">We reserve the right, at Our sole discretion, to modify or replace these Terms at any time. If a revision is material, We will make reasonable efforts to provide at least 30 days\' notice prior to any new terms taking effect. What constitutes a material change will be determined at Our sole discretion.<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">By continuing to access or use Our Service after those revisions become effective, you agree to be bound by the revised terms. If You do not agree to the new terms, in whole or in part, please stop using the website and the Service.</span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\"><span xss=\"removed\">Contact Us<br></span></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">If you have any questions about these Terms and Conditions, You can contact us:<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span lang=\"EN-US\" xss=\"removed\">By email: dmca@bullmate.com</span></span></span></span></h5><h5><br></h5><h5 xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><o xss=\"removed\"> </o></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"></span></span></h5><h3><p xss=\"removed\"></p></h3><h5 xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><o></o></span></span></span></h5><h4 xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><o></o></span></span></h4><p class=\"MsoNormal\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><ul xss=\"removed\" type=\"disc\"><span xss=\"removed\">\r\n </span><span xss=\"removed\">\r\n </span><span xss=\"removed\">\r\n </span><span xss=\"removed\">\r\n</span></ul><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><ul xss=\"removed\" type=\"disc\"><span xss=\"removed\">\r\n </span><span xss=\"removed\">\r\n </span><span xss=\"removed\">\r\n </span><span xss=\"removed\">\r\n </span><span xss=\"removed\">\r\n </span><span xss=\"removed\">\r\n </span><span xss=\"removed\">\r\n</span></ul><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><ul xss=\"removed\" type=\"disc\"><span xss=\"removed\">\r\n </span><span xss=\"removed\">\r\n </span><span xss=\"removed\">\r\n </span><span xss=\"removed\">\r\n </span><span xss=\"removed\">\r\n </span><span xss=\"removed\">\r\n </span><span xss=\"removed\">\r\n</span></ul><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><ul xss=\"removed\" type=\"disc\"><span xss=\"removed\">\r\n </span><span xss=\"removed\">\r\n </span><span xss=\"removed\">\r\n </span><span xss=\"removed\">\r\n </span><span xss=\"removed\">\r\n </span><span xss=\"removed\">\r\n </span><span xss=\"removed\">\r\n</span></ul><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><span xss=\"removed\">\r\n\r\n</span><p></p>');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES
(11, 'privacy_policy', '<p></p><h5><b xss=\"removed\">Privacy Policy</b><br></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Last updated: April 10, 2020<br></span></span><span xss=\"removed\"><span xss=\"removed\">This Privacy Policy describes Our policies and procedures on\r\nthe collection, use and disclosure of Your information when You use the Service\r\nand tells You about Your privacy rights and how the law protects You.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">We use Your Personal data to provide and improve the\r\nService. By using the Service, You agree to the collection and use of\r\ninformation in accordance with this Privacy Policy.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">Interpretation and\r\nDefinitions</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Interpretation<br></span></span></span><span xss=\"removed\"><span xss=\"removed\">The words of which the initial letter is capitalised have\r\nmeanings defined under the following conditions.<br></span></span><span xss=\"removed\"><span xss=\"removed\">The following definitions shall have the same meaning\r\nregardless of whether they appear in singular or in plural.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Definitions<br></span></span></span><span xss=\"removed\"><span xss=\"removed\">For the purposes of this Privacy Policy:<br></span></span><span xss=\"removed\"><span xss=\"removed\">You means the individual accessing or using the Service, or\r\nthe company, or other legal entity on behalf of which such individual is\r\naccessing or using the Service, as applicable.<br></span></span><span xss=\"removed\"><span xss=\"removed\">Under GDPR (General Data Protection Regulation), You can be\r\nreferred to as the Data Subject or as the User as you are the individual using\r\nthe Service.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">Company (referred to as either \"the Company\",\r\n\"We\", \"Us\" or \"Our\" in this Agreement) refers to\r\nBullmate Limited , 8 Ayinde Giwa Street, Off Ogunlana Drive, Surulere, Lagos,\r\nNigeria.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">For the purpose of the GDPR, the Company is the Data\r\nController.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Affiliate means an entity that controls, is controlled by or\r\nis under common control with a party, where \"control\" means ownership\r\nof 50% or more of the shares, equity interest or other securities entitled to\r\nvote for election of directors or other managing authority.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Account means a unique account created for You to access our\r\nService or parts of our Service.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Website refers to Bullmate , accessible from\r\nhttp://www.bullmate.com</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Service refers to the Website.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Country refers to: Nigeria</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">Service Provider means any natural or legal person who\r\nprocesses the data on behalf of the Company. It refers to third-party companies\r\nor individuals employed by the Company to facilitate the Service, to provide\r\nthe Service on behalf of the Company, to perform services related to the Service\r\nor to assist the Company in analysing how the Service is used.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">For the purpose of the GDPR, Service Providers are\r\nconsidered Data Processors.<br></span></span><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">Third-party Social Media Service refers to any website or\r\nany social network website through which a User can log in or create an account\r\nto use the Service.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">Facebook Fan Page is a public profile named Bullmate\r\nspecifically created by the Company on the Facebook social network, accessible\r\nfrom https://www.facebook.com/bullmatecourses/<br></span></span><span xss=\"removed\"><span xss=\"removed\">Personal Data is any information that relates to an identified\r\nor identifiable individual.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">For the purposes for GDPR, Personal Data means any\r\ninformation relating to You such as a name, an identification number, location\r\ndata, online identifier or to one or more factors specific to the physical,\r\nphysiological, genetic, mental, economic, cultural or social identity.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">Cookies are small files that are placed on Your computer,\r\nmobile device or any other device by a website, containing the details of Your\r\nbrowsing history on that website among its many uses.<br></span></span><span xss=\"removed\"><span xss=\"removed\">Usage Data refers to data collected automatically, either\r\ngenerated by the use of the Service or from the Service infrastructure itself\r\n(for example, the duration of a page visit).<br></span></span><span xss=\"removed\"><span xss=\"removed\">Data Controller, for the purposes of the GDPR (General Data\r\nProtection Regulation), refers to the Company as the legal person which alone\r\nor jointly with others determines the purposes and means of the processing of\r\nPersonal Data.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">Do Not Track (DNT) is a concept that has been promoted by US\r\nregulatory authorities, in particular the U.S. Federal Trade Commission (FTC),\r\nfor the Internet industry to develop and implement a mechanism for allowing\r\ninternet users to control the tracking of their online activities across\r\nwebsites.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">Collecting and Using\r\nYour Personal Data</span></span></span><ul><li><span xss=\"removed\">Types of Data Collected</span></li></ul><ul><li><span xss=\"removed\">Personal Data</span></li></ul><span xss=\"removed\">While using Our Service, We may ask You to provide Us with\r\ncertain personally identifiable information that can be used to contact or\r\nidentify You. Personally identifiable information may include, but is not limited\r\nto:</span><ul><li><span xss=\"removed\">Email address</span></li></ul><ul><li><span xss=\"removed\">First name and last name</span></li></ul><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Usage Data</span></span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\">Usage Data<br></span></span><span xss=\"removed\"><span xss=\"removed\">Usage Data is collected automatically when using the\r\nService.<br></span></span><span xss=\"removed\"><span xss=\"removed\">Usage Data may include information such as Your Device\'s\r\nInternet Protocol address (e.g. IP address), browser type, browser version, the\r\npages of our Service that You visit, the time and date of Your visit, the time\r\nspent on those pages, unique device identifiers and other diagnostic data.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">hen You access the Service by or through a mobile device,\r\nWe may collect certain information automatically, including, but not limited\r\nto, the type of mobile device You use, Your mobile device unique ID, the IP\r\naddress of Your mobile device, Your mobile operating system, the type of mobile\r\nInternet browser You use, unique device identifiers and other diagnostic data.<br></span></span><span xss=\"removed\"><span xss=\"removed\">We may also collect information that Your browser sends\r\nwhenever You visit our Service or when You access the Service by or through a\r\nmobile device.<span xss=\"removed\"> </span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Tracking Technologies\r\nand Cookies<br></span></span></span><span xss=\"removed\"><span xss=\"removed\">We use Cookies and similar tracking technologies to track\r\nthe activity on Our Service and store certain information. Tracking\r\ntechnologies used are beacons, tags, and scripts to collect and track\r\ninformation and to improve and analyse Our Service.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">You can instruct Your browser to refuse all Cookies or to\r\nindicate when a Cookie is being sent. However, if You do not accept Cookies,\r\nYou may not be able to use some parts of our Service.<br></span></span><span xss=\"removed\"><span xss=\"removed\">Cookies can be \"Persistent\" or \"Session\"\r\nCookies. Persistent Cookies remain on your personal computer or mobile device\r\nwhen You go offline, while Session Cookies are deleted as soon as You close\r\nyour web browser. Learn more about cookies: All About Cookies.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">We use both session and persistent Cookies for the purposes\r\nset out below:<br></span></span><span xss=\"removed\"><span xss=\"removed\">Necessary / Essential Cookies<br></span></span><span xss=\"removed\"><span xss=\"removed\">Type: Session Cookies<br></span></span><span xss=\"removed\"><span xss=\"removed\">Administered by: Us</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">Purpose: These Cookies are essential to provide You with\r\nservices available through the Website and to enable You to use some of its\r\nfeatures. They help to authenticate users and prevent fraudulent use of user\r\naccounts. Without these Cookies, the services that You have asked for cannot be\r\nprovided, and We only use these Cookies to provide You with those services.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Cookies Policy / Notice Acceptance Cookies<br></span></span><span xss=\"removed\"><span xss=\"removed\">Type: Persistent Cookies<br></span></span><span xss=\"removed\"><span xss=\"removed\">Administered by: Us<br></span></span><span xss=\"removed\"><span xss=\"removed\">Purpose: These Cookies identify if users have accepted the\r\nuse of cookies on the Website.<span xss=\"removed\"> </span></span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span></span><span xss=\"removed\"><span xss=\"removed\">Functionality Cookies<br></span></span><span xss=\"removed\"><span xss=\"removed\">Type: Persistent Cookies<br></span></span><span xss=\"removed\"><span xss=\"removed\">Administered by: Us<br></span></span><span xss=\"removed\"><span xss=\"removed\">Purpose: These Cookies allow us to remember choices You make\r\nwhen You use the Website, such as remembering your login details or language\r\npreference. The purpose of these Cookies is to provide You with a more personal\r\nexperience and to avoid You having to re-enter your preferences every time You\r\nuse the Website.<br></span></span><span xss=\"removed\"><span xss=\"removed\">For more information about the cookies we use and your\r\nchoices regarding cookies, please visit our Cookies Policy.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Use of Your Personal\r\nData<br></span></span></span><span xss=\"removed\"><span xss=\"removed\">The Company may use Personal Data for the following\r\npurposes:<br></span></span><span xss=\"removed\"><span xss=\"removed\">To provide and maintain our Service, including to monitor\r\nthe usage of our Service.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">To manage Your Account: to manage Your registration as a\r\nuser of the Service. The Personal Data You provide can give You access to\r\ndifferent functionalities of the Service that are available to You as a\r\nregistered user.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">For the performance of a contract: the development,\r\ncompliance and undertaking of the purchase contract for the products, items or\r\nservices You have purchased or of any other contract with Us through the\r\nService.<br></span></span><span xss=\"removed\"><span xss=\"removed\">To contact You: To contact You by email, telephone calls,\r\nSMS, or other equivalent forms of electronic communication, such as a mobile\r\napplication\'s push notifications regarding updates or informative\r\ncommunications related to the functionalities, products or contracted services,\r\nincluding the security updates, when necessary or reasonable for their\r\nimplementation.<br></span></span><span xss=\"removed\"><span xss=\"removed\">To provide You with news, special offers and general\r\ninformation about other goods, services and events which we offer that are\r\nsimilar to those that you have already purchased or enquired about unless You\r\nhave opted not to receive such information.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">To manage Your requests: To attend and manage Your requests\r\nto Us.<br></span></span><span xss=\"removed\"><span xss=\"removed\">We may share your personal information in the following\r\nsituations:<br></span></span><span xss=\"removed\"><span xss=\"removed\">With Service Providers: We may share Your personal\r\ninformation with Service Providers to monitor and analyze the use of our\r\nService, to show advertisements to You to help support and maintain Our\r\nService, to contact You, to advertise on third party websites to You after You\r\nvisited our Service or for payment processing.<br></span></span><span xss=\"removed\"><span xss=\"removed\">For Business transfers: We may share or transfer Your\r\npersonal information in connection with, or during negotiations of, any merger,\r\nsale of Company assets, financing, or acquisition of all or a portion of our\r\nbusiness to another company.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">With Affiliates: We may share Your information with Our\r\naffiliates, in which case we will require those affiliates to honor this\r\nPrivacy Policy. Affiliates include Our parent company and any other subsidiaries,\r\njoint venture partners or other companies that We control or that are under\r\ncommon control with Us.<br></span></span><span xss=\"removed\"><span xss=\"removed\">With Business partners: We may share Your information with\r\nOur business partners to offer You certain products, services or promotions.<br></span></span><span xss=\"removed\"><span xss=\"removed\">With other users: when You share personal information or\r\notherwise interact in the public areas with other users, such information may\r\nbe viewed by all users and may be publicly distributed outside. If You interact\r\nwith other users or register through a Third-Party Social Media Service, Your\r\ncontacts on the Third-Party Social Media Service may see Your name, profile,\r\npictures and description of Your activity. Similarly, other users will be able\r\nto view descriptions of Your activity, communicate with You and view Your profile.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Retention of Your\r\nPersonal Data<br></span></span></span><span xss=\"removed\"><span xss=\"removed\">The Company will retain Your Personal Data only for as long\r\nas is necessary for the purposes set out in this Privacy Policy. We will retain\r\nand use Your Personal Data to the extent necessary to comply with our legal obligations\r\n(for example, if we are required to retain your data to comply with applicable\r\nlaws), resolve disputes, and enforce our legal agreements and policies.<br></span></span><span xss=\"removed\"><span xss=\"removed\">The Company will also retain Usage Data for internal\r\nanalysis purposes. Usage Data is generally retained for a shorter period of\r\ntime, except when this data is used to strengthen the security or to improve\r\nthe functionality of Our Service, or We are legally obligated to retain this\r\ndata for longer time periods.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Transfer of Your\r\nPersonal Data<br></span></span></span><span xss=\"removed\"><span xss=\"removed\">Your information, including Personal Data, is processed at\r\nthe Company\'s operating offices and in any other places where the parties\r\ninvolved in the processing are located. It means that this information may be\r\ntransferred to — and maintained on — computers located outside of Your state,\r\nprovince, country or other governmental jurisdiction where the data protection\r\nlaws may differ than those from Your jurisdiction.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">Your consent to this Privacy Policy followed by Your\r\nsubmission of such information represents Your agreement to that transfer.<br></span></span><span xss=\"removed\"><span xss=\"removed\">The Company will take all steps reasonably necessary to\r\nensure that Your data is treated securely and in accordance with this Privacy\r\nPolicy and no transfer of Your Personal Data will take place to an organization\r\nor a country unless there are adequate controls in place including the security\r\nof Your data and other personal information.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Disclosure of Your\r\nPersonal Data<br></span></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Business Transactions<br></span></span></span><span xss=\"removed\"><span xss=\"removed\">If the Company is involved in a merger, acquisition or asset\r\nsale, Your Personal Data may be transferred. We will provide notice before Your\r\nPersonal Data is transferred and becomes subject to a different</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"> Privacy Policy.<br></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Law enforcement<br></span></span></span><span xss=\"removed\"><span xss=\"removed\">Under certain circumstances, the Company may be required to\r\ndisclose Your Personal Data if required to do so by law or in response to valid\r\nrequests by public authorities (e.g. a court or a government agency).</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Other legal\r\nrequirements<br></span></span><span xss=\"removed\"><span xss=\"removed\">The Company may disclose Your Personal Data in the good\r\nfaith belief that such action is necessary to:</span></span></span><ul><li xss=\"removed\"><span xss=\"removed\">Comply with a legal obligation</span></li></ul><ul><li xss=\"removed\"><span xss=\"removed\">Protect and defend the rights or property of the\r\nCompany</span></li></ul><ul><li xss=\"removed\"><span xss=\"removed\">Prevent or investigate possible wrongdoing in\r\nconnection with the Service</span></li></ul><ul><li xss=\"removed\"><span xss=\"removed\">Protect the personal safety of Users of the\r\nService or the public</span></li></ul><ul><li xss=\"removed\"><span xss=\"removed\">Protect against legal liability</span></li></ul><ul><li xss=\"removed\"><span xss=\"removed\">Security of Your Personal Data</span></li></ul><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">The security of Your Personal Data is important to Us, but\r\nremember that no method of transmission over the Internet, or method of\r\nelectronic storage is 100% secure. While We strive to use commercially\r\nacceptable means to protect Your Personal Data, We cannot guarantee its\r\nabsolute security.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">Detailed Information on the Processing of Your Personal Data<br></span></span><span xss=\"removed\"><span xss=\"removed\">Service Providers have access to Your Personal Data only to\r\nperform their tasks on Our behalf and are obligated not to disclose or use it\r\nfor any other purpose.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Email Marketing<br></span></span></span><span xss=\"removed\"><span xss=\"removed\">We may use Your Personal Data to contact You with\r\nnewsletters, marketing or promotional materials and other information that may\r\nbe of interest to You. You may opt-out of receiving any, or all, of these communications\r\nfrom Us by following the unsubscribe link or instructions provided in any email\r\nWe send or by contacting Us.<br></span></span><span xss=\"removed\"><span xss=\"removed\">We may use Email Marketing Service Providers to manage and\r\nsend emails to You.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Mailchimp<br></span></span></span><span xss=\"removed\"><span xss=\"removed\">Mailchimp is an email marketing sending service provided by\r\nThe Rocket Science Group LLC.<br></span></span><span xss=\"removed\"><span xss=\"removed\">For more information on the privacy practices of Mailchimp,\r\nplease visit their Privacy policy: </span></span></span><a href=\"https://mailchimp.com/legal/privacy/\" target=\"_blank\">https://mailchimp.com/legal/privacy/</a><span xss=\"removed\"><a href=\"https://mailchimp.com/legal/privacy/\" target=\"_blank\"></a></span></h5><h5><span xss=\"removed\"><br><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Behavioral\r\nRemarketing<br></span></span></span><span xss=\"removed\"><span xss=\"removed\">The Company uses remarketing services to advertise on third\r\nparty websites to You after You visited our Service. We and Our third-party\r\nvendors use cookies to inform, optimize and serve ads based on Your past visits\r\nto our Service.<br></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Google Ads (AdWords)<br></span></span></span><span xss=\"removed\"><span xss=\"removed\">Google Ads (AdWords) remarketing service is provided by\r\nGoogle Inc.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">You can opt-out of Google Analytics for Display Advertising\r\nand customise the Google Display Network ads by visiting the Google Ads\r\nSettings page: http://www.google.com/settings/ads<br></span></span><span xss=\"removed\"><span xss=\"removed\">Google also recommends installing the Google Analytics\r\nOpt-out Browser Add-on - https://tools.google.com/dlpage/gaoptout - for your\r\nweb browser. Google Analytics Opt-out Browser Add-on provides visitors with the\r\nability to prevent their data from being collected and used by Google\r\nAnalytics.<br></span></span><span xss=\"removed\"><span xss=\"removed\">For more information on the privacy practices of Google,\r\nplease visit the Google Privacy & Terms web page:\r\nhttps://policies.google.com/privacy?hl=en</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Payments<br></span></span></span><span xss=\"removed\"><span xss=\"removed\">We may provide paid products and/or services within the Service.\r\nIn that case, we may use third-party services for payment processing (e.g.\r\npayment processors).<br></span></span><span xss=\"removed\"><span xss=\"removed\">We will not store or collect Your payment card details. That\r\ninformation is provided directly to Our third-party payment processors whose\r\nuse of Your personal information is governed by their Privacy Policy. These\r\npayment processors adhere to the standards set by PCI-DSS as managed by the PCI\r\nSecurity Standards Council, which is a joint effort of brands like Visa,\r\nMastercard, American Express and Discover. PCI-DSS requirements help ensure the\r\nsecure handling of payment information.<br></span></span><span xss=\"removed\"><span xss=\"removed\">PayPal<br></span></span><span xss=\"removed\"><span xss=\"removed\">Their Privacy Policy can be viewed at </span></span><a href=\"https://www.paypal.com/webapps/mpp/ua/privacy-full\" target=\"_blank\">https://www.paypal.com/webapps/mpp/ua/privacy-full<br></a><span xss=\"removed\"><span xss=\"removed\">Paystack<br></span></span><span xss=\"removed\"><span xss=\"removed\">Their Privacy Policy can be viewed at </span></span></span><a href=\"https://paystack.com/terms\" target=\"_blank\">https://paystack.com/terms</a><span xss=\"removed\"><a href=\"https://paystack.com/terms\" target=\"_blank\"></a></span></h5><h5><span xss=\"removed\"><br><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">GDPR Privacy<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\">Legal Basis for Processing Personal Data under GDPR<br></span></span><span xss=\"removed\"><span xss=\"removed\">We may process Personal Data under the following conditions:<br></span></span><span xss=\"removed\"><span xss=\"removed\">Consent: You have given Your consent for processing Personal\r\nData for one or more specific purposes.<br></span></span><span xss=\"removed\"><span xss=\"removed\">Performance of a contract: Provision of Personal Data is\r\nnecessary for the performance of an agreement with You and/or for any\r\npre-contractual obligations thereof.<br></span></span><span xss=\"removed\"><span xss=\"removed\">Legal obligations: Processing Personal Data is necessary for\r\ncompliance with a legal obligation to which the Company is subject.<br></span></span><span xss=\"removed\"><span xss=\"removed\">Vital interests: Processing Personal Data is necessary in\r\norder to protect Your vital interests or of another natural person.<br></span></span><span xss=\"removed\"><span xss=\"removed\">Public interests: Processing Personal Data is related to a\r\ntask that is carried out in the public interest or in the exercise of official\r\nauthority vested in the Company.<br></span></span><span xss=\"removed\"><span xss=\"removed\">Legitimate interests: Processing Personal Data is necessary\r\nfor the purposes of the legitimate interests pursued by the Company.<br></span></span><span xss=\"removed\"><span xss=\"removed\">In any case, the Company will gladly help to clarify the\r\nspecific legal basis that applies to the processing, and in particular whether\r\nthe provision of Personal Data is a statutory or contractual requirement, or a\r\nrequirement necessary to enter into a contract.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Your Rights under the\r\nGDPR<br></span></span></span><span xss=\"removed\"><span xss=\"removed\">The Company undertakes to respect the confidentiality of\r\nYour Personal Data and to guarantee You can exercise Your rights.<br></span></span><span xss=\"removed\"><span xss=\"removed\">You have the right under this Privacy Policy, and by law if\r\nYou are within the EU, to:<br></span></span><span xss=\"removed\"><span xss=\"removed\">Request access to Your Personal Data. The right to access,\r\nupdate or delete the information We have on You. Whenever made possible, you\r\ncan access, update or request deletion of Your Personal Data directly within\r\nYour account settings section. If you are unable to perform these actions\r\nyourself, please contact Us to assist You. This also enables You to receive a\r\ncopy of the Personal Data We hold about You.<br></span></span><span xss=\"removed\"><span xss=\"removed\">Request correction of the Personal Data that We hold about\r\nYou. You have the right to to have any incomplete or inaccurate information We\r\nhold about You corrected.<br></span></span><span xss=\"removed\"><span xss=\"removed\">Object to processing of Your Personal Data. This right\r\nexists where We are relying on a legitimate interest as the legal basis for Our\r\nprocessing and there is something about Your particular situation, which makes\r\nYou want to object to our processing of Your Personal Data on this ground. You\r\nalso have the right to object where We are processing Your Personal Data for\r\ndirect marketing purposes.<br></span></span><span xss=\"removed\"><span xss=\"removed\">Request erasure of Your Personal Data. You have the right to\r\nask Us to delete or remove Personal Data when there is no good reason for Us to\r\ncontinue processing it.<br></span></span><span xss=\"removed\"><span xss=\"removed\">Request the transfer of Your Personal Data. We will provide\r\nto You, or to a third-party You have chosen, Your Personal Data in a\r\nstructured, commonly used, machine-readable format. Please note that this right\r\nonly applies to automated information which You initially provided consent for\r\nUs to use or where We used the information to perform a contract with You.<br></span></span><span xss=\"removed\"><span xss=\"removed\">Withdraw Your consent. You have the right to withdraw Your\r\nconsent on using your Personal Data. If You withdraw Your consent, We may not\r\nbe able to provide You with access to certain specific functionalities of the\r\nService.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Exercising of Your GDPR Data Protection Rights<br></span></span></span><span xss=\"removed\"><span xss=\"removed\">You may exercise Your rights of access, rectification,\r\ncancellation and opposition by contacting Us. Please note that we may ask You\r\nto verify Your identity before responding to such requests. If You make a\r\nrequest, We will try our best to respond to You as soon as possible.<br></span></span><span xss=\"removed\"><span xss=\"removed\">You have the right to complain to a Data Protection\r\nAuthority about Our collection and use of Your Personal Data. For more\r\ninformation, if You are in the European Economic Area (EEA), please contact\r\nYour local data protection authority in the EEA.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Facebook Fan Page<br></span></span></span></span><span xss=\"removed\"><span xss=\"removed\">Data Controller for the Facebook Fan Page<br></span></span><span xss=\"removed\"><span xss=\"removed\">The Company is the Data Controller of Your Personal Data\r\ncollected while using the Service. As operator of the Facebook Fan Page\r\n(https://www.facebook.com/bullmatecourses/), the Company and the operator of\r\nthe social network Facebook are Joint Controllers.<br></span></span><span xss=\"removed\"><span xss=\"removed\">The Company has entered into agreements with Facebook that\r\ndefine the terms for use of the Facebook Fan Page, among other things. These\r\nterms are mostly based on the Facebook Terms of Service: </span></span><a href=\"https://www.facebook.com/terms.php\" target=\"_blank\">https://www.facebook.com/terms.php<br></a><span xss=\"removed\"><span xss=\"removed\">Visit the Facebook Privacy Policy\r\nhttps://www.facebook.com/policy.php for more information about how Facebook\r\nmanages Personal data or contact Facebook online, or by mail: Facebook, Inc.\r\nATTN, Privacy Operations, 1601 Willow Road, Menlo Park, CA 94025, United States.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Facebook Insights<br></span></span></span><span xss=\"removed\"><span xss=\"removed\">We use the Facebook Insights function in connection with the\r\noperation of the Facebook Fan Page and on the basis of the GDPR, in order to\r\nobtain anonymized statistical data about Our users.<br></span></span><span xss=\"removed\"><span xss=\"removed\">For this purpose, Facebook places a Cookie on the device of\r\nthe user visiting Our Facebook Fan Page. Each Cookie contains a unique\r\nidentifier code and remains active for a period of two years, except when it is\r\ndeleted before the end of this period.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">Facebook receives, records and processes the information\r\nstored in the Cookie, especially when the user visits the Facebook services,\r\nservices that are provided by other members of the Facebook Fan Page and\r\nservices by other companies that use Facebook services.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">For more information on the privacy practices of Facebook,\r\nplease visit Facebook Privacy Policy here: https://www.facebook.com/full_data_use_policy<br></span></span><span xss=\"removed\"><span xss=\"removed\">\"Do Not Track\" Policy as Required by California\r\nOnline Privacy Protection Act (CalOPPA)</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">Our Service does not respond to Do Not Track signals.<br></span></span><span xss=\"removed\"><span xss=\"removed\">However, some third party websites do keep track of Your\r\nbrowsing activities. If You are visiting such websites, You can set Your\r\npreferences in Your web browser to inform websites that You do not want to be\r\ntracked. You can enable or disable DNT by visiting the preferences or settings\r\npage of Your web browser.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Children\'s Privacy<br></span></span></span><span xss=\"removed\"><span xss=\"removed\">Our Service does not address anyone under the age of 13. We\r\ndo not knowingly collect personally identifiable information from anyone under\r\nthe age of 13. If You are a parent or guardian and You are aware that Your\r\nchild has provided Us with Personal Data, please contact Us. If We become aware\r\nthat We have collected Personal Data from anyone under the age of 13 without\r\nverification of parental consent, We take steps to remove that information from\r\nOur servers.<br></span></span><span xss=\"removed\"><span xss=\"removed\">If We need to rely on consent as a legal basis for\r\nprocessing Your information and Your country requires consent from a parent, We\r\nmay require Your parent\'s consent before We collect and use that information.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">Links to Other\r\nWebsites<br></span></span><span xss=\"removed\"><span xss=\"removed\">Our Service may contain links to other websites that are not\r\noperated by Us. If You click on a third party link, You will be directed to\r\nthat third party\'s site. We strongly advise You to review the Privacy Policy of\r\nevery site You visit.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\">We have no control over and assume no responsibility for the\r\ncontent, privacy policies or practices of any third party sites or services.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Changes to this\r\nPrivacy Policy<br></span></span></span><span xss=\"removed\"><span xss=\"removed\">We may update our Privacy Policy from time to time. We will\r\nnotify You of any changes by posting the new Privacy Policy on this page.<br></span></span><span xss=\"removed\"><span xss=\"removed\">We will let You know via email and/or a prominent notice on\r\nOur Service, prior to the change becoming effective and update the \"Last\r\nupdated\" date at the top of this Privacy Policy.<br></span></span><span xss=\"removed\"><span xss=\"removed\">You are advised to review this Privacy Policy periodically\r\nfor any changes. Changes to this Privacy Policy are effective when they are\r\nposted on this page.</span></span></span></h5><h5><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><br></span></span><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Contact Us <br></span></span></span><span xss=\"removed\"><span xss=\"removed\">If you have any questions about this Privacy Policy, You can\r\ncontact us:<br></span></span><span xss=\"removed\"><span xss=\"removed\">By email: <a href=\"http://privacy@bullmate.com\" target=\"_blank\">privacy@bullmate.com<br></a></span></span><span xss=\"removed\"><span xss=\"removed\">By visiting this page on our website:\r\n<a href=\"https://www.bullmate.com\" target=\"_blank\" xss=\"removed\">https://www.bullmate.com</a></span></span></span></h5><p></p><p></p><p></p><p class=\"MsoNormal\"><o></o></p><p></p>'),
(13, 'theme', 'default'),
(14, 'instructor_terms', 'Instructor Terms test update');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext COLLATE utf8_unicode_ci,
  `english` longtext COLLATE utf8_unicode_ci,
  `Bengali` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES
(1, 'manage_profile', NULL, NULL),
(140, 'category_code', NULL, NULL),
(3, 'dashboard', NULL, NULL),
(4, 'categories', NULL, NULL),
(5, 'courses', NULL, NULL),
(6, 'students', NULL, NULL),
(7, 'enroll_history', NULL, NULL),
(8, 'message', NULL, NULL),
(9, 'settings', NULL, NULL),
(10, 'system_settings', NULL, NULL),
(11, 'frontend_settings', NULL, NULL),
(12, 'payment_settings', NULL, NULL),
(13, 'manage_language', NULL, NULL),
(14, 'edit_profile', NULL, NULL),
(15, 'log_out', NULL, NULL),
(16, 'first_name', NULL, NULL),
(17, 'last_name', NULL, NULL),
(18, 'email', NULL, NULL),
(19, 'facebook_link', NULL, NULL),
(20, 'twitter_link', NULL, NULL),
(21, 'linkedin_link', NULL, NULL),
(22, 'a_short_title_about_yourself', NULL, NULL),
(23, 'biography', NULL, NULL),
(24, 'photo', NULL, NULL),
(25, 'select_image', NULL, NULL),
(26, 'change', NULL, NULL),
(27, 'remove', NULL, NULL),
(28, 'update_profile', NULL, NULL),
(29, 'change_password', NULL, NULL),
(30, 'current_password', NULL, NULL),
(31, 'new_password', NULL, NULL),
(32, 'confirm_new_password', NULL, NULL),
(33, 'delete', NULL, NULL),
(34, 'cancel', NULL, NULL),
(35, 'are_you_sure_to_update_this_information', NULL, NULL),
(36, 'yes', NULL, NULL),
(37, 'no', NULL, NULL),
(38, 'system settings', NULL, NULL),
(39, 'system_name', NULL, NULL),
(40, 'system_title', NULL, NULL),
(41, 'slogan', NULL, NULL),
(42, 'system_email', NULL, NULL),
(43, 'address', NULL, NULL),
(44, 'phone', NULL, NULL),
(45, 'youtube_api_key', NULL, NULL),
(46, 'get_youtube_api_key', NULL, NULL),
(47, 'vimeo_api_key', NULL, NULL),
(48, 'purchase_code', NULL, NULL),
(49, 'language', NULL, NULL),
(50, 'text-align', NULL, NULL),
(51, 'update_system_settings', NULL, NULL),
(52, 'update_product', NULL, NULL),
(53, 'file', NULL, NULL),
(54, 'install_update', NULL, NULL),
(55, 'system_logo', NULL, NULL),
(56, 'update_logo', NULL, NULL),
(57, 'get_vimeo_api_key', NULL, NULL),
(58, 'add_category', NULL, NULL),
(59, 'category_title', NULL, NULL),
(60, 'sub_categories', NULL, NULL),
(61, 'actions', NULL, NULL),
(62, 'action', NULL, NULL),
(63, 'manage_sub_categories', NULL, NULL),
(64, 'edit', NULL, NULL),
(65, 'add_course', NULL, NULL),
(66, 'select_category', NULL, NULL),
(67, 'title', NULL, NULL),
(68, 'category', NULL, NULL),
(69, '#_section', NULL, NULL),
(70, '#_lesson', NULL, NULL),
(71, '#_enrolled_user', NULL, NULL),
(72, 'view_course_details', NULL, NULL),
(73, 'manage_section', NULL, NULL),
(74, 'manage_lesson', NULL, NULL),
(75, 'student', NULL, NULL),
(76, 'add_student', NULL, NULL),
(77, 'name', NULL, NULL),
(78, 'date_added', NULL, NULL),
(79, 'enrolled_courses', NULL, NULL),
(80, 'view_profile', NULL, NULL),
(81, 'admin_dashboard', NULL, NULL),
(82, 'total_courses', NULL, NULL),
(83, 'number_of_courses', NULL, NULL),
(84, 'total_lessons', NULL, NULL),
(85, 'number_of_lessons', NULL, NULL),
(86, 'total_enrollment', NULL, NULL),
(87, 'number_of_enrollment', NULL, NULL),
(88, 'total_student', NULL, NULL),
(89, 'number_of_student', NULL, NULL),
(90, 'manage_sections', NULL, NULL),
(91, 'manage sections', NULL, NULL),
(92, 'course', NULL, NULL),
(93, 'add_section', NULL, NULL),
(94, 'lessons', NULL, NULL),
(95, 'serialize_sections', NULL, NULL),
(96, 'add_lesson', NULL, NULL),
(97, 'edit_section', NULL, NULL),
(98, 'delete_section', NULL, NULL),
(99, 'course_details', NULL, NULL),
(100, 'course details', NULL, NULL),
(101, 'details', NULL, NULL),
(102, 'instructor', NULL, NULL),
(103, 'sub_category', NULL, NULL),
(104, 'enrolled_user', NULL, NULL),
(105, 'last_modified', NULL, NULL),
(106, 'manage language', NULL, NULL),
(107, 'language_list', NULL, NULL),
(108, 'add_phrase', NULL, NULL),
(109, 'add_language', NULL, NULL),
(110, 'option', NULL, NULL),
(111, 'edit_phrase', NULL, NULL),
(112, 'delete_language', NULL, NULL),
(113, 'phrase', NULL, NULL),
(114, 'value_required', NULL, NULL),
(115, 'frontend settings', NULL, NULL),
(116, 'banner_title', NULL, NULL),
(117, 'banner_sub_title', NULL, NULL),
(118, 'about_us', NULL, NULL),
(119, 'blog', NULL, NULL),
(120, 'update_frontend_settings', NULL, NULL),
(121, 'update_banner', NULL, NULL),
(122, 'banner_image', NULL, NULL),
(123, 'update_banner_image', NULL, NULL),
(124, 'payment settings', NULL, NULL),
(125, 'paypal_settings', NULL, NULL),
(126, 'client_id', NULL, NULL),
(127, 'sandbox', NULL, NULL),
(128, 'production', NULL, NULL),
(129, 'active', NULL, NULL),
(130, 'mode', NULL, NULL),
(131, 'stripe_settings', NULL, NULL),
(132, 'testmode', NULL, NULL),
(133, 'on', NULL, NULL),
(134, 'off', NULL, NULL),
(135, 'test_secret_key', NULL, NULL),
(136, 'test_public_key', NULL, NULL),
(137, 'live_secret_key', NULL, NULL),
(138, 'live_public_key', NULL, NULL),
(139, 'save_changes', NULL, NULL),
(141, 'update_phrase', NULL, NULL),
(142, 'check', NULL, NULL),
(143, 'settings_updated', NULL, NULL),
(144, 'checking', NULL, NULL),
(145, 'phrase_added', NULL, NULL),
(146, 'language_added', NULL, NULL),
(147, 'language_deleted', NULL, NULL),
(148, 'add course', NULL, NULL),
(149, 'add_courses', NULL, NULL),
(150, 'add_course_form', NULL, NULL),
(151, 'basic_info', NULL, NULL),
(152, 'short_description', NULL, NULL),
(153, 'description', NULL, NULL),
(154, 'level', NULL, NULL),
(155, 'beginner', NULL, NULL),
(156, 'advanced', NULL, NULL),
(157, 'intermediate', NULL, NULL),
(158, 'language_made_in', NULL, NULL),
(159, 'is_top_course', NULL, NULL),
(160, 'outcomes', NULL, NULL),
(161, 'category_and_sub_category', NULL, NULL),
(162, 'select_a_category', NULL, NULL),
(163, 'select_a_category_first', NULL, NULL),
(164, 'requirements', NULL, NULL),
(165, 'price_and_discount', NULL, NULL),
(166, 'price', NULL, NULL),
(167, 'has_discount', NULL, NULL),
(168, 'discounted_price', NULL, NULL),
(169, 'course_thumbnail', NULL, NULL),
(170, 'note', NULL, NULL),
(171, 'thumbnail_size_should_be_600_x_600', NULL, NULL),
(172, 'course_overview_url', NULL, NULL),
(173, '0%', NULL, NULL),
(174, 'manage profile', NULL, NULL),
(175, 'edit_course', NULL, NULL),
(176, 'edit course', NULL, NULL),
(177, 'edit_courses', NULL, NULL),
(178, 'edit_course_form', NULL, NULL),
(179, 'update_course', NULL, NULL),
(180, 'course_updated', NULL, NULL),
(181, 'number_of_sections', NULL, NULL),
(182, 'number_of_enrolled_users', NULL, NULL),
(183, 'add section', NULL, NULL),
(184, 'section', NULL, NULL),
(185, 'add_section_form', NULL, NULL),
(186, 'update', NULL, NULL),
(187, 'serialize_section', NULL, NULL),
(188, 'serialize section', NULL, NULL),
(189, 'submit', NULL, NULL),
(190, 'sections_have_been_serialized', NULL, NULL),
(191, 'select_course', NULL, NULL),
(192, 'search', NULL, NULL),
(193, 'thumbnail', NULL, NULL),
(194, 'duration', NULL, NULL),
(195, 'provider', NULL, NULL),
(196, 'add lesson', NULL, NULL),
(197, 'add_lesson_form', NULL, NULL),
(198, 'video_type', NULL, NULL),
(199, 'select_a_course', NULL, NULL),
(200, 'select_a_course_first', NULL, NULL),
(201, 'video_url', NULL, NULL),
(202, 'invalid_url', NULL, NULL),
(203, 'your_video_source_has_to_be_either_youtube_or_vimeo', NULL, NULL),
(204, 'for', NULL, NULL),
(205, 'of', NULL, NULL),
(206, 'edit_lesson', NULL, NULL),
(207, 'edit lesson', NULL, NULL),
(208, 'edit_lesson_form', NULL, NULL),
(209, 'login', NULL, NULL),
(210, 'password', NULL, NULL),
(211, 'forgot_password', NULL, NULL),
(212, 'back_to_website', NULL, NULL),
(213, 'send_mail', NULL, NULL),
(214, 'back_to_login', NULL, NULL),
(215, 'student_add', NULL, NULL),
(216, 'student add', NULL, NULL),
(217, 'add_students', NULL, NULL),
(218, 'student_add_form', NULL, NULL),
(219, 'login_credentials', NULL, NULL),
(220, 'social_information', NULL, NULL),
(221, 'facebook', NULL, NULL),
(222, 'twitter', NULL, NULL),
(223, 'linkedin', NULL, NULL),
(224, 'user_image', NULL, NULL),
(225, 'add_user', NULL, NULL),
(226, 'user_update_successfully', NULL, NULL),
(227, 'user_added_successfully', NULL, NULL),
(228, 'student_edit', NULL, NULL),
(229, 'student edit', NULL, NULL),
(230, 'edit_students', NULL, NULL),
(231, 'student_edit_form', NULL, NULL),
(232, 'update_user', NULL, NULL),
(233, 'enroll history', NULL, NULL),
(234, 'filter', NULL, NULL),
(235, 'user_name', NULL, NULL),
(236, 'enrolled_course', NULL, NULL),
(237, 'enrollment_date', NULL, NULL),
(238, 'biography2', NULL, NULL),
(239, 'home', NULL, NULL),
(240, 'search_for_courses', NULL, NULL),
(241, 'total', NULL, NULL),
(242, 'go_to_cart', NULL, NULL),
(243, 'your_cart_is_empty', NULL, NULL),
(244, 'log_in', NULL, NULL),
(245, 'sign_up', NULL, NULL),
(246, 'what_do_you_want_to_learn', NULL, NULL),
(247, 'online_courses', NULL, NULL),
(248, 'explore_a_variety_of_fresh_topics', NULL, NULL),
(249, 'expert_instruction', NULL, NULL),
(250, 'find_the_right_course_for_you', NULL, NULL),
(251, 'lifetime_access', NULL, NULL),
(252, 'learn_on_your_schedule', NULL, NULL),
(253, 'top_courses', NULL, NULL),
(254, 'last_updater', NULL, NULL),
(255, 'hours', NULL, NULL),
(256, 'add_to_cart', NULL, NULL),
(257, 'top', NULL, NULL),
(258, 'latest_courses', NULL, NULL),
(259, 'added_to_cart', NULL, NULL),
(260, 'admin', NULL, NULL),
(261, 'log_in_to_your_udemy_account', NULL, NULL),
(262, 'by_signing_up_you_agree_to_our', NULL, NULL),
(263, 'terms_of_use', NULL, NULL),
(264, 'and', NULL, NULL),
(265, 'privacy_policy', NULL, NULL),
(266, 'do_not_have_an_account', NULL, NULL),
(267, 'sign_up_and_start_learning', NULL, NULL),
(268, 'check_here_for_exciting_deals_and_personalized_course_recommendations', NULL, NULL),
(269, 'already_have_an_account', NULL, NULL),
(270, 'checkout', NULL, NULL),
(271, 'paypal', NULL, NULL),
(272, 'stripe', NULL, NULL),
(273, 'step', NULL, NULL),
(274, 'how_would_you_rate_this_course_overall', NULL, NULL),
(275, 'write_a_public_review', NULL, NULL),
(276, 'describe_your_experience_what_you_got_out_of_the_course_and_other_helpful_highlights', NULL, NULL),
(277, 'what_did_the_instructor_do_well_and_what_could_use_some_improvement', NULL, NULL),
(278, 'next', NULL, NULL),
(279, 'previous', NULL, NULL),
(280, 'publish', NULL, NULL),
(281, 'search_results', NULL, NULL),
(282, 'ratings', NULL, NULL),
(283, 'search_results_for', NULL, NULL),
(284, 'category_page', NULL, NULL),
(285, 'all', NULL, NULL),
(286, 'category_list', NULL, NULL),
(287, 'by', NULL, NULL),
(288, 'go_to_wishlist', NULL, NULL),
(289, 'hi', NULL, NULL),
(290, 'my_courses', NULL, NULL),
(291, 'my_wishlist', NULL, NULL),
(292, 'my_messages', NULL, NULL),
(293, 'purchase_history', NULL, NULL),
(294, 'user_profile', NULL, NULL),
(295, 'already_purchased', NULL, NULL),
(296, 'all_courses', NULL, NULL),
(297, 'wishlists', NULL, NULL),
(298, 'search_my_courses', NULL, NULL),
(299, 'students_enrolled', NULL, NULL),
(300, 'created_by', NULL, NULL),
(301, 'last_updated', NULL, NULL),
(302, 'what_will_i_learn', NULL, NULL),
(303, 'view_more', NULL, NULL),
(304, 'other_related_courses', NULL, NULL),
(305, 'updated', NULL, NULL),
(306, 'curriculum_for_this_course', NULL, NULL),
(307, 'about_the_instructor', NULL, NULL),
(308, 'reviews', NULL, NULL),
(309, 'student_feedback', NULL, NULL),
(310, 'average_rating', NULL, NULL),
(311, 'preview_this_course', NULL, NULL),
(312, 'includes', NULL, NULL),
(313, 'on_demand_videos', NULL, NULL),
(314, 'full_lifetime_access', NULL, NULL),
(315, 'access_on_mobile_and_tv', NULL, NULL),
(316, 'course_preview', NULL, NULL),
(317, 'instructor_page', NULL, NULL),
(318, 'buy_now', NULL, NULL),
(319, 'shopping_cart', NULL, NULL),
(320, 'courses_in_cart', NULL, NULL),
(321, 'student_name', NULL, NULL),
(322, 'amount_to_pay', NULL, NULL),
(323, 'payment_successfully_done', NULL, NULL),
(324, 'filter_by', NULL, NULL),
(325, 'instructors', NULL, NULL),
(326, 'reset', NULL, NULL),
(327, 'your', NULL, NULL),
(328, 'rating', NULL, NULL),
(329, 'course_detail', NULL, NULL),
(330, 'start_lesson', NULL, NULL),
(331, 'show_full_biography', NULL, NULL),
(332, 'terms_and_condition', NULL, NULL),
(333, 'about', NULL, NULL),
(334, 'terms_&_condition', NULL, NULL),
(335, 'sub categories', NULL, NULL),
(336, 'add_sub_category', NULL, NULL),
(337, 'sub_category_title', NULL, NULL),
(338, 'add sub category', NULL, NULL),
(339, 'add_sub_category_form', NULL, NULL),
(340, 'sub_category_code', NULL, NULL),
(341, 'data_deleted', NULL, NULL),
(342, 'edit_category', NULL, NULL),
(343, 'edit category', NULL, NULL),
(344, 'edit_category_form', NULL, NULL),
(345, 'font', NULL, NULL),
(346, 'awesome class', NULL, NULL),
(347, 'update_category', NULL, NULL),
(348, 'data_updated_successfully', NULL, NULL),
(349, 'edit_sub_category', NULL, NULL),
(350, 'edit sub category', NULL, NULL),
(351, 'sub_category_edit', NULL, NULL),
(352, 'update_sub_category', NULL, NULL),
(353, 'course_added', NULL, NULL),
(354, 'user_deleted_successfully', NULL, NULL),
(355, 'private_messaging', NULL, NULL),
(356, 'private messaging', NULL, NULL),
(357, 'messages', NULL, NULL),
(358, 'select_message_to_read', NULL, NULL),
(359, 'new_message', NULL, NULL),
(360, 'email_duplication', NULL, NULL),
(361, 'your_registration_has_been_successfully_done', NULL, NULL),
(362, 'profile', NULL, NULL),
(363, 'account', NULL, NULL),
(364, 'add_information_about_yourself_to_share_on_your_profile', NULL, NULL),
(365, 'basics', NULL, NULL),
(366, 'add_your_twitter_link', NULL, NULL),
(367, 'add_your_facebook_link', NULL, NULL),
(368, 'add_your_linkedin_link', NULL, NULL),
(369, 'credentials', NULL, NULL),
(370, 'edit_your_account_settings', NULL, NULL),
(371, 'enter_current_password', NULL, NULL),
(372, 'enter_new_password', NULL, NULL),
(373, 're-type_your_password', NULL, NULL),
(374, 'save', NULL, NULL),
(375, 'update_user_photo', NULL, NULL),
(376, 'update_your_photo', NULL, NULL),
(377, 'upload_image', NULL, NULL),
(378, 'updated_successfully', NULL, NULL),
(379, 'invalid_login_credentials', NULL, NULL),
(380, 'blank_page', NULL, NULL),
(381, 'no_section_found', NULL, NULL),
(382, 'select_a_message_thread_to_read_it_here', NULL, NULL),
(383, 'send', NULL, NULL),
(384, 'type_your_message', NULL, NULL),
(385, 'date', NULL, NULL),
(386, 'total_price', NULL, NULL),
(387, 'payment_type', NULL, NULL),
(388, 'edit section', NULL, NULL),
(389, 'edit_section_form', NULL, NULL),
(390, 'reply_message', NULL, NULL),
(391, 'reply', NULL, NULL),
(392, 'log_in_to_your_account', NULL, NULL),
(393, 'no_result_found', NULL, NULL),
(394, 'enrollment', NULL, NULL),
(395, 'enroll_a_student', NULL, NULL),
(396, 'report', NULL, NULL),
(397, 'admin_revenue', NULL, NULL),
(398, 'instructor_revenue', NULL, NULL),
(399, 'instructor_settings', NULL, NULL),
(400, 'view_frontend', NULL, NULL),
(401, 'number_of_active_courses', NULL, NULL),
(402, 'number_of_pending_courses', NULL, NULL),
(403, 'all_instructor', NULL, NULL),
(404, 'active_courses', NULL, NULL),
(405, 'pending_courses', NULL, NULL),
(406, 'no_data_found', NULL, NULL),
(407, 'view_course_on_frontend', NULL, NULL),
(408, 'mark_as_pending', NULL, NULL),
(409, 'add category', NULL, NULL),
(410, 'add_categories', NULL, NULL),
(411, 'category_add_form', NULL, NULL),
(412, 'icon_picker', NULL, NULL),
(413, 'enroll a student', NULL, NULL),
(414, 'enrollment_form', NULL, NULL),
(415, 'admin revenue', NULL, NULL),
(416, 'total_amount', NULL, NULL),
(417, 'instructor revenue', NULL, NULL),
(418, 'status', NULL, NULL),
(419, 'instructor settings', NULL, NULL),
(420, 'allow_public_instructor', NULL, NULL),
(421, 'instructor_revenue_percentage', NULL, NULL),
(422, 'admin_revenue_percentage', NULL, NULL),
(423, 'update_instructor_settings', NULL, NULL),
(424, 'payment_info', NULL, NULL),
(425, 'required_for_instructors', NULL, NULL),
(426, 'paypal_client_id', NULL, NULL),
(427, 'stripe_public_key', NULL, NULL),
(428, 'stripe_secret_key', NULL, NULL),
(429, 'mark_as_active', NULL, NULL),
(430, 'mail_subject', NULL, NULL),
(431, 'mail_body', NULL, NULL),
(432, 'paid', NULL, NULL),
(433, 'pending', NULL, NULL),
(434, 'this_instructor_has_not_provided_valid_paypal_client_id', NULL, NULL),
(435, 'pay_with_paypal', NULL, NULL),
(436, 'this_instructor_has_not_provided_valid_public_key_or_secret_key', NULL, NULL),
(437, 'pay_with_stripe', NULL, NULL),
(438, 'create_course', NULL, NULL),
(439, 'payment_report', NULL, NULL),
(440, 'instructor_dashboard', NULL, NULL),
(441, 'draft', NULL, NULL),
(442, 'view_lessons', NULL, NULL),
(443, 'course_title', NULL, NULL),
(444, 'update_your_payment_settings', NULL, NULL),
(445, 'edit_course_detail', NULL, NULL),
(446, 'edit_basic_informations', NULL, NULL),
(447, 'publish_this_course', NULL, NULL),
(448, 'save_to_draft', NULL, NULL),
(449, 'update_section', NULL, NULL),
(450, 'analyzing_given_url', NULL, NULL),
(451, 'select_a_section', NULL, NULL),
(452, 'update_lesson', NULL, NULL),
(453, 'website_name', NULL, NULL),
(454, 'website_title', NULL, NULL),
(455, 'website_keywords', NULL, NULL),
(456, 'website_description', NULL, NULL),
(457, 'author', NULL, NULL),
(458, 'footer_text', NULL, NULL),
(459, 'footer_link', NULL, NULL),
(460, 'update_backend_logo', NULL, NULL),
(461, 'update_favicon', NULL, NULL),
(462, 'favicon', NULL, NULL),
(463, 'active courses', NULL, NULL),
(464, 'product_updated_successfully', NULL, NULL),
(465, 'course_overview_provider', NULL, NULL),
(466, 'youtube', NULL, NULL),
(467, 'vimeo', NULL, NULL),
(468, 'html5', NULL, NULL),
(469, 'meta_keywords', NULL, NULL),
(470, 'meta_description', NULL, NULL),
(471, 'lesson_type', NULL, NULL),
(472, 'video', NULL, NULL),
(473, 'select_type_of_lesson', NULL, NULL),
(474, 'text_file', NULL, NULL),
(475, 'pdf_file', NULL, NULL),
(476, 'document_file', NULL, NULL),
(477, 'image_file', NULL, NULL),
(478, 'lesson_provider', NULL, NULL),
(479, 'select_lesson_provider', NULL, NULL),
(480, 'analyzing_the_url', NULL, NULL),
(481, 'attachment', NULL, NULL),
(482, 'summary', NULL, NULL),
(483, 'download', NULL, NULL),
(484, 'system_settings_updated', NULL, NULL),
(485, 'course_updated_successfully', NULL, NULL),
(486, 'please_wait_untill_admin_approves_it', NULL, NULL),
(487, 'pending courses', NULL, NULL),
(488, 'course_status_updated', NULL, NULL),
(489, 'smtp_settings', NULL, NULL),
(490, 'free_course', NULL, NULL),
(491, 'free', NULL, NULL),
(492, 'get_enrolled', NULL, NULL),
(493, 'course_added_successfully', NULL, NULL),
(494, 'update_frontend_logo', NULL, NULL),
(495, 'system_currency_settings', NULL, NULL),
(496, 'select_system_currency', NULL, NULL),
(497, 'currency_position', NULL, NULL),
(498, 'left', NULL, NULL),
(499, 'right', NULL, NULL),
(500, 'left_with_a_space', NULL, NULL),
(501, 'right_with_a_space', NULL, NULL),
(502, 'paypal_currency', NULL, NULL),
(503, 'select_paypal_currency', NULL, NULL),
(504, 'stripe_currency', NULL, NULL),
(505, 'select_stripe_currency', NULL, NULL),
(506, 'heads_up', NULL, NULL),
(507, 'please_make_sure_that', NULL, NULL),
(508, 'system_currency', NULL, NULL),
(509, 'are_same', NULL, NULL),
(510, 'smtp settings', NULL, NULL),
(511, 'protocol', NULL, NULL),
(512, 'smtp_host', NULL, NULL),
(513, 'smtp_port', NULL, NULL),
(514, 'smtp_user', NULL, NULL),
(515, 'smtp_pass', NULL, NULL),
(516, 'update_smtp_settings', NULL, NULL),
(517, 'phrase_updated', NULL, NULL),
(518, 'registered_user', NULL, NULL),
(519, 'provide_your_valid_login_credentials', NULL, NULL),
(520, 'registration_form', NULL, NULL),
(521, 'provide_your_email_address_to_get_password', NULL, NULL),
(522, 'reset_password', NULL, NULL),
(523, 'want_to_go_back', NULL, NULL),
(524, 'message_sent!', NULL, NULL),
(525, 'selected_icon', NULL, NULL),
(526, 'pick_another_icon_picker', NULL, NULL),
(527, 'show_more', NULL, NULL),
(528, 'show_less', NULL, NULL),
(529, 'all_category', NULL, NULL),
(530, 'price_range', NULL, NULL),
(531, 'price_range_withing', NULL, NULL),
(532, 'all_categories', NULL, NULL),
(533, 'all_sub_category', NULL, NULL),
(534, 'number_of_results', NULL, NULL),
(535, 'showing_on_this_page', NULL, NULL),
(536, 'welcome', NULL, NULL),
(537, 'my_account', NULL, NULL),
(538, 'logout', NULL, NULL),
(539, 'visit_website', NULL, NULL),
(540, 'navigation', NULL, NULL),
(541, 'add_new_category', NULL, NULL),
(542, 'enrolment', NULL, NULL),
(543, 'enrol_history', NULL, NULL),
(544, 'enrol_a_student', NULL, NULL),
(545, 'language_settings', NULL, NULL),
(546, 'congratulations', NULL, NULL),
(547, 'oh_snap', NULL, NULL),
(548, 'close', NULL, NULL),
(549, 'parent', NULL, NULL),
(550, 'none', NULL, NULL),
(551, 'category_thumbnail', NULL, NULL),
(552, 'the_image_size_should_be', NULL, NULL),
(553, 'choose_thumbnail', NULL, NULL),
(554, 'data_added_successfully', NULL, NULL),
(555, '', NULL, NULL),
(556, 'update_category_form', NULL, NULL),
(557, 'student_list', NULL, NULL),
(558, 'choose_user_image', NULL, NULL),
(559, 'finish', NULL, NULL),
(560, 'thank_you', NULL, NULL),
(561, 'you_are_almost_there', NULL, NULL),
(562, 'you_are_just_one_click_away', NULL, NULL),
(563, 'country', NULL, NULL),
(564, 'website_settings', NULL, NULL),
(565, 'write_down_facebook_url', NULL, NULL),
(566, 'write_down_twitter_url', NULL, NULL),
(567, 'write_down_linkedin_url', NULL, NULL),
(568, 'google_link', NULL, NULL),
(569, 'write_down_google_url', NULL, NULL),
(570, 'instagram_link', NULL, NULL),
(571, 'write_down_instagram_url', NULL, NULL),
(572, 'pinterest_link', NULL, NULL),
(573, 'write_down_pinterest_url', NULL, NULL),
(574, 'update_settings', NULL, NULL),
(575, 'upload_banner_image', NULL, NULL),
(576, 'update_light_logo', NULL, NULL),
(577, 'upload_light_logo', NULL, NULL),
(578, 'update_dark_logo', NULL, NULL),
(579, 'upload_dark_logo', NULL, NULL),
(580, 'update_small_logo', NULL, NULL),
(581, 'upload_small_logo', NULL, NULL),
(582, 'upload_favicon', NULL, NULL),
(583, 'logo_updated', NULL, NULL),
(584, 'favicon_updated', NULL, NULL),
(585, 'banner_image_update', NULL, NULL),
(586, 'frontend_settings_updated', NULL, NULL),
(587, 'setup_payment_informations', NULL, NULL),
(588, 'update_system_currency', NULL, NULL),
(589, 'setup_paypal_settings', NULL, NULL),
(590, 'update_paypal_keys', NULL, NULL),
(591, 'setup_stripe_settings', NULL, NULL),
(592, 'test_mode', NULL, NULL),
(593, 'update_stripe_keys', NULL, NULL),
(594, 'Terms_and_Conditions_for_Instructors', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `video_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `lesson_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`id`, `title`, `duration`, `course_id`, `section_id`, `video_type`, `video_url`, `date_added`, `last_modified`, `lesson_type`, `attachment`, `attachment_type`, `summary`, `order`) VALUES
(1, 'Module 1', '00:03:27', 1, 1, 'YouTube', 'https://www.youtube.com/watch?v=B6woTPpjzjo', 1565672400, 1565672400, 'video', '', 'url', 'This is the Pre-Class Training ', 0),
(2, 'Module 2 ', '00:04:53', 1, 2, 'YouTube', 'https://www.youtube.com/watch?v=Owf8emXuzAk', 1565672400, 1565672400, 'video', '', 'url', 'Ice Breaking Techiques', 0),
(5, 'Module 1 Quiz', '00:00:00', 1, 1, NULL, NULL, 1565758800, 1565758800, 'quiz', NULL, NULL, 'Answer all ', 0),
(6, 'How can we improve the class retention ', '00:00:00', 1, 1, NULL, NULL, 1565758800, NULL, 'quiz', NULL, NULL, 'The best way to do that is ', 0),
(7, 'Learn Knife Skills ', '00:20:48', 2, 3, 'YouTube', 'https://www.youtube.com/watch?v=ojZIgseX7Xo', 1565758800, 1570338000, 'video', '', 'url', 'In lesson  1 Chef Collins will teach you how to master the culinary basics, demonstrating basic knife skills, stocks, sauces and soups.\r\n\r\nOn the menu:\r\nKnife Cuts - Brunoise, Mirepoix, Paysanne, Julienne, Chiffonade\r\nBouquet Garni\r\nRoasted Vegetable Stock\r\nChicken or White Stock\r\nBeef, Veal, or Brown Stock, \r\nWhite and Brown Roux\r\nBechamel Sauce \r\nMornay Sauce\r\nPays anne Soup\r\nRoasted Butternut Squash Soup\r\n\r\nYou\'ll learn the critical knife cuts and understand their importance. See how to thicken and flavour sauces and soups with amazing results. Learn to build a wide variety of mother sauces for just a few simple ingredients. Make soup, both stock and cream effortlessly, with beautiful flavour and texture. ', 1),
(8, 'Fruits, Vegetables, Herbs and Spices ', '00:30:28', 2, 3, 'YouTube', 'https://www.youtube.com/watch?v=t0ZZaRC_F3E', 1565758800, 1565758800, 'video', '', 'url', 'In Lesson 2 Chef Collins will take a \'Fresh\' look at Greens and unlock the power of Herbs and Spices!\r\n\r\nWith thousands of types of fruits and vegetables, getting comfortable with peeling, cutting and preparing them can open up a whole new world of flavours. An understanding of the incredible aromas and flavours that come from using herbs and spices will change how you cook. \r\n\r\nPutting just a couple new greens under your belt will have you exploring new and exciting cuisine!\r\n\r\nOn the menu:\r\n\r\nMango, Avocado and Pineapple Salsa\r\nLiquid Sunrise Juice\r\nKick Start Juice\r\nSteamed Sweet Potato, Cauliflower and Broccoli\r\nBlanched Green Beans and Potatoes\r\nSautéed Asparagus and Brussels Sprouts\r\nRoasted Vine Tomatoes and Butternut Squash\r\nGrilled Zucchini, Eggplant, Mushrooms and Peppers\r\nRoasted Vegetables\r\nHerb Salt\r\nBasil-Walnut Pesto\r\nVanilla Bean\r\nFresh Ginger\r\nToasted Spice Mixture\r\n\r\nYou\'ll learn peeling, coring and slicing fruits plus the incredible benefits of raw food. Learn to steam, blanche, sauté, roast, grill, wilt, roast and stew vegetables with professional results. \r\n\r\nSee how to use fresh and dried herbs to brighten, enhance and intensify your favourite recipes. Make your own toasted spice rub and learn how and when to add spices.', 2),
(9, 'Meat &amp; Poultry ', '00:23:31', 2, 3, 'YouTube', 'https://www.youtube.com/watch?v=3cXtULqadGk', 1565758800, 1565758800, 'video', '', 'url', 'In Lesson  3  we will  explore meats & poultry!\r\n\r\nYou’ll learn how to break down a whole chicken with ease, slow-cooking it to perfection. Learn to roast, braise, sauté, grill and grind meat. See how to identify the proper cooking technique and learn to apply them anywhere. Make your own delicious hamburgers from scratch and adopt great recipes for your own!', 4),
(10, 'Fish, Shellfish &amp; Seafood ', '00:25:31', 2, 3, 'YouTube', 'https://www.youtube.com/watch?v=LF7eecZWmNc', 1565758800, 1565758800, 'video', '', 'url', 'In Lesson 4, You’ll learn how to select, store and prepare fish, shellfish and seafood, inspiring you to experiment with new dishes. Learn to sauté, deep-fry, grill and steam some of your favourites with confidence! See how to skewer shrimp, clean scallops, prepare crab cakes and more. Make lakes and oceans your new culinary territory, wowing yourself and guests with professional results!', 5),
(11, 'Pasta, Rice &amp; Gnocchi ', '00:29:12', 2, 4, 'YouTube', 'https://www.youtube.com/watch?v=BROARjHEEVQ', 1565758800, 1565758800, 'video', '', 'url', 'In lesson 5 , you’ll learn how to make fresh pasta and transform it into any size, shape of form with ease. Learn to elevate the simplicity of rice and cook it to perfection. See how easy it is to get restaurant quality risotto and learn how to incorporate your favourite flavours. Make hand-rolled gnocchi from scratch and watch as your taste buds inspire you into the kitchen!', 0),
(12, 'Custard, Pastry &amp; Cheesecake', '00:30:14', 2, 4, 'YouTube', 'https://www.youtube.com/watch?v=ZDqrMDw6QRY', 1565758800, NULL, 'video', NULL, 'url', 'In lesson 6, You’ll learn how to prepare a crème anglaise, unlocking the preparation for many classic recipes. Learn to turn crème anglaise into favourites like crème brûlée and ice cream with ease. \r\n\r\nSee how following baking steps to the letter guarantee results and eliminate frustration, turning your kitchen into a pastry shop! \r\n\r\nMake a foolproof crust and a tangy lemon curd with professional results. With just a few amazing recipes under your belt you’ll be inspired to search out other French classics.', 0),
(13, 'Photography Basics ', '01:03:09', 3, 5, 'YouTube', 'https://www.youtube.com/watch?v=-NQ2roPCuSg', 1565758800, NULL, 'video', NULL, 'url', '', 0),
(14, 'HR Management : Introduction ', '00:35:57', 4, 6, 'YouTube', 'https://www.youtube.com/watch?v=c8_avX9miag', 1565758800, 1565758800, 'video', '', 'url', '', 0),
(15, 'HR Management : Strategy and Planning', '01:07:29', 4, 7, 'YouTube', 'https://www.youtube.com/watch?v=rVyJXnZEp2A', 1565758800, 1565758800, 'video', '', 'url', '', 0),
(16, 'HR Management : Talent Acquisition', '01:49:36', 4, 7, 'YouTube', 'https://www.youtube.com/watch?v=awuJ2O2SLUs', 1565758800, 1565758800, 'video', '', 'url', '', 0),
(18, 'HR Management :  Candidate Selection part 1', '01:14:02', 4, 8, 'YouTube', 'https://www.youtube.com/watch?v=to0b5yZtchc', 1565758800, 1565758800, 'video', '', 'url', '', 0),
(19, 'HR Management :  Candidate Selection Part 2 ', '01:16:13', 4, 8, 'YouTube', 'https://www.youtube.com/watch?v=FwJ3n6KvK1A', 1565758800, 1565758800, 'video', '', 'url', '', 0),
(20, 'C Programming  for Beginners', '03:46:13', 5, 10, 'YouTube', 'https://www.youtube.com/watch?v=KJgsSFOSQv0', 1565758800, NULL, 'video', NULL, 'url', '', 0),
(21, 'How To Make a WordPress Website  2019  For Beginners', '01:12:35', 6, 11, 'YouTube', 'https://www.youtube.com/watch?v=8AZ8GqW5iak', 1565845200, NULL, 'video', NULL, 'url', '', 0),
(22, 'Wordpress blogs ', NULL, 6, 11, NULL, NULL, 1565931600, NULL, 'other', '042611e0d0f39eb71b6e35a092b35415.webp', 'txt', '', 0),
(30, 'Part 2 Quiz : ', '00:00:00', 4, 7, NULL, NULL, 1565931600, NULL, 'quiz', NULL, NULL, 'Choose the correct answer from the options below', 0),
(31, 'Python  Full Course ', '04:26:52', 7, 12, 'YouTube', 'https://youtu.be/_B-deDn41ow', 1566104400, 1566104400, 'video', '', 'url', '', 0),
(32, 'What is a Database ', '00:20:53', 8, 13, 'YouTube', 'https://youtu.be/_Q07-8e3UbI', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(33, 'Tables &amp; Keys ', '00:20:41', 8, 13, 'YouTube', 'https://youtu.be/uw6lx3R6q5A', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(34, 'SQL Basics ', '00:09:14', 8, 13, 'YouTube', 'https://youtu.be/hSv_88mDEio', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(35, 'My SQL Windows Installation ', '00:09:52', 8, 13, 'YouTube', 'https://youtu.be/iPgIBRVFG14', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(36, 'Mysql Mac Installation', '00:14:10', 8, 13, 'YouTube', 'https://youtu.be/TpOMn5_YIyw', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(37, 'Creating Tables ', '00:15:36', 8, 14, 'YouTube', 'https://youtu.be/SPPTQwx4FfE', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(38, 'Inserting Data ', '00:07:31', 8, 14, 'YouTube', 'https://youtu.be/3Qq93zqO3GE', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(39, 'Constraints - SQL ', '00:10:13', 8, 14, 'YouTube', 'https://youtu.be/9WP35xwZ3tk', 1566190800, 1566190800, 'video', '', 'url', '', 0),
(40, 'Update &amp; Delete ', '00:08:19', 8, 14, 'YouTube', 'https://youtu.be/rT7BhXLfhds', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(41, 'Basic Queries ', '00:12:45', 8, 14, 'YouTube', 'https://youtu.be/xfHqi11gjyg', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(42, 'Company Database Intro', '00:08:48', 8, 15, 'YouTube', 'https://youtu.be/avGCbVop_YQ', 1566190800, 1566190800, 'video', '', 'url', '', 0),
(43, 'Creating Company Database ', '00:13:41', 8, 15, 'YouTube', 'https://youtu.be/LzeVPZtJglE', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(44, 'More Basic Queries', '00:06:18', 8, 15, 'YouTube', 'https://youtu.be/LCVK_I5OlY8', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(45, 'Functions - SQL ', '00:09:07', 8, 15, 'YouTube', 'https://youtu.be/vMSbkOfHubg', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(46, 'Wildcards ', '00:08:59', 8, 15, 'YouTube', 'https://youtu.be/_POPNI4HFsc', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(47, 'Union', '00:08:03', 8, 16, 'YouTube', 'https://youtu.be/OLDJuELLFsA', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(48, 'Joins ', '00:10:33', 8, 16, 'YouTube', 'https://youtu.be/efpFCd8iFAQ', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(49, 'Nested Queries ', '00:10:23', 8, 16, 'YouTube', 'https://youtu.be/lBpSMeQjNqQ', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(50, 'On Delete', '00:08:32', 8, 16, 'YouTube', 'https://youtu.be/p_cQqNTuTdw', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(51, 'On Delete', '00:08:32', 8, 16, 'YouTube', 'https://youtu.be/p_cQqNTuTdw', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(52, 'Triggers ', '00:12:26', 8, 16, 'YouTube', 'https://youtu.be/gpthfJnvzY8', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(53, 'Er Diagrams Intro', '00:14:01', 8, 16, 'YouTube', 'https://youtu.be/Ql0w3x6gGI4', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(54, 'Designing An Er Diagram', '00:12:59', 8, 16, 'YouTube', 'https://youtu.be/8JFaaD1vzSY', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(55, 'Er Diagram Mapping', '00:12:25', 8, 16, 'YouTube', 'https://youtu.be/xQRRf5fOAt8', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(56, 'Converting ER Diagrams to Schemas', '00:12:25', 8, 16, 'YouTube', 'https://youtu.be/xQRRf5fOAt8', 1566190800, NULL, 'video', NULL, 'url', '', 0),
(57, 'Commercial Break ', '00:01:01', 2, 3, 'YouTube', 'https://www.youtube.com/watch?v=ZlV3t0wJBkY', 1567400400, NULL, 'video', NULL, 'url', 'We will be right back ', 3),
(58, 'Should I be an Entrepreneur?', '00:17:05', 9, 17, 'YouTube', 'https://youtu.be/PGaCqKlOG_Q', 1567746000, 1567746000, 'video', '', 'url', 'Constantin Coussios, Professor in the Institute for Biomedical Engineering at the University of Oxford, introduces the initial steps needed to launch a venture and issues to consider.  In this lesson  Prof. Coussios introduces concepts that help answering to question “Should I be an entrepreneur?', 2),
(61, 'Reasons for Starting a Venture ', '00:09:38', 9, 17, 'YouTube', 'https://youtu.be/c7RL4aiX5R8', 1567746000, NULL, 'video', NULL, 'url', '', 3),
(62, 'Practical Insights of having a Venture ', '00:10:00', 9, 17, 'YouTube', 'https://youtu.be/tebdcKVT85o', 1567746000, NULL, 'video', NULL, 'url', '', 4),
(63, 'Introduction to Basic Terms and Concepts', '00:07:53', 9, 17, 'YouTube', 'https://youtu.be/oWihSPlnKQ8', 1567746000, NULL, 'video', NULL, 'url', '', 5),
(64, 'Administrative Steps of Starting a Business in the UK ', '00:03:03', 9, 17, 'YouTube', 'https://youtu.be/xOLm1tSiWw4', 1567746000, NULL, 'video', NULL, 'url', '', 6),
(65, 'Introduction ', '00:13:59', 9, 18, 'YouTube', 'https://youtu.be/EcIUnoA66QA', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(66, 'Impact  Assessment Tools ', '00:11:49', 9, 18, 'YouTube', 'https://youtu.be/PHG6IlqhfpI', 1567746000, 1567746000, 'video', '', 'url', '', 0),
(67, 'Case Studies ', '00:24:44', 9, 18, 'YouTube', 'https://youtu.be/XaPkzStFNkM', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(68, 'Facts and Ideas - Misconceptions ', '00:09:52', 9, 19, 'YouTube', 'https://youtu.be/KRO3M_SzooA', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(69, 'Business Model Canvas ', '00:09:22', 9, 19, 'YouTube', 'https://youtu.be/V4v62pibojw', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(70, 'Customer Development and Minimum Viable Products ', '00:07:44', 9, 19, 'YouTube', 'https://youtu.be/YyvKevsOqFo', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(71, 'Summary ', '00:02:13', 9, 19, 'YouTube', 'https://youtu.be/JNVqzJ30OrM', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(72, 'Introduction ', '00:06:57', 9, 20, 'YouTube', 'https://youtu.be/i6YwnljZXvw', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(73, 'Positioning and Branding ', '00:06:04', 9, 20, 'YouTube', 'https://youtu.be/0cWxisdiOaU', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(74, 'Content Marketing ', '00:19:14', 9, 20, 'YouTube', 'https://youtu.be/Ro7dyLJctLc', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(75, 'Community and Customer Base ', '00:06:53', 9, 20, 'YouTube', 'https://youtu.be/Kgrp_GvLc7k', 1567746000, 1567746000, 'video', '', 'url', '', 0),
(76, 'Effective Pitching an Sales Techniques.', '00:10:37', 9, 20, 'YouTube', 'https://youtu.be/bRB6gRXQfJc', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(77, 'Summary ', '00:01:54', 9, 20, 'YouTube', 'https://youtu.be/ESmt5afwK9I', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(78, 'What is Customer Development?  ', '00:08:42', 9, 21, 'YouTube', 'https://youtu.be/VqdMcl2q_4g', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(79, 'Preparing for Customer Discovery ', '00:13:18', 9, 21, 'YouTube', 'https://youtu.be/1NttgAfDXng', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(80, 'Customer Development Summary ', '00:01:12', 9, 21, 'YouTube', 'https://youtu.be/cnFv9r2jgDU', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(81, 'Customer Discovery: Testing the Problem ', '00:12:02', 9, 21, 'YouTube', 'https://youtu.be/r1ZC0a534HM', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(82, 'Customer Discovery: Testing the Solution ', '00:11:21', 9, 21, 'YouTube', 'https://youtu.be/tSG55wAHK-Y', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(83, 'Customer Discovery Summary ', '00:01:08', 9, 21, 'YouTube', 'https://youtu.be/I74frpuhaco', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(84, 'What is Intellectual Property?', '00:03:41', 9, 22, 'YouTube', 'https://youtu.be/uqOZUbkCPZA', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(85, 'Trademark ', '00:11:36', 9, 22, 'YouTube', 'https://youtu.be/lUAmyguVkBw', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(86, 'Copyright ', '00:09:21', 9, 22, 'YouTube', 'https://youtu.be/8mDGT7NbStA', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(87, 'Patents ', '00:24:48', 9, 22, 'YouTube', 'https://youtu.be/_xWYL1D_lj4', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(88, 'Commercial and Practical Matters', '00:12:08', 9, 22, 'YouTube', 'https://youtu.be/uasCyujkTXc', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(89, 'Summary ', '00:02:45', 9, 22, 'YouTube', 'https://youtu.be/AV81Fh2e_eY', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(90, 'Introduction ', '00:07:57', 9, 23, 'YouTube', 'https://youtu.be/zZ1dlQho3Zg', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(91, 'Trends in Technology ', '00:05:49', 9, 23, 'YouTube', 'https://youtu.be/i_glfsEMljg', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(92, 'Venture Capitalists, Shareholders and Clients. ', '00:08:15', 9, 23, 'YouTube', 'https://youtu.be/Gr3OGKDcnko', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(93, 'Bootstrapping ', '00:05:50', 9, 23, 'YouTube', 'https://youtu.be/RFEgJMLJSaY', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(94, 'Ratio of Opportunities ', '00:19:07', 9, 23, 'YouTube', 'https://youtu.be/AnmsUAw8UOU', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(95, 'Summary ', '00:03:59', 9, 23, 'YouTube', 'https://youtu.be/sq5oQlYbQdY', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(96, 'Introduction to Financial Projections ', '00:17:05', 9, 24, 'YouTube', 'https://youtu.be/SN1YpLiY4mo', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(97, 'Revenue Projections ', '00:21:08', 9, 24, 'YouTube', 'https://youtu.be/d74HYubheXw', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(98, 'Cost Projections, Integrated Projections and Cash Flow Management', '00:08:08', 9, 24, 'YouTube', 'https://youtu.be/ax6w3bfzqaA', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(99, 'Classic Mistakes ', '00:02:14', 9, 24, 'YouTube', 'https://youtu.be/YianAYwuhII', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(100, 'Examples and Summary ', '00:07:30', 9, 24, 'YouTube', 'https://youtu.be/in8L5Ie4qGQ', 1567746000, NULL, 'video', NULL, 'url', '', 0),
(101, 'Introduction ', '00:09:45', 9, 17, 'YouTube', 'https://youtu.be/uy-Ze9LOOik', 1567746000, NULL, 'video', NULL, 'url', '', 1),
(102, 'The start of your Lean journey', '01:00:49', 11, 25, 'YouTube', 'https://youtu.be/T1K4pkhtad8', 1568091600, NULL, 'video', NULL, 'url', '', 0),
(103, 'Lean thinking Part 1', '00:43:19', 11, 25, 'YouTube', 'https://youtu.be/POBjtg7oDFg', 1568091600, NULL, 'video', NULL, 'url', '', 0),
(104, 'Lean thinking Part 2', '00:39:04', 11, 25, 'YouTube', 'https://youtu.be/u3Umk_2PVuw', 1568091600, NULL, 'video', NULL, 'url', '', 0),
(105, 'New Balance® plant tour', '00:37:08', 11, 25, 'YouTube', 'https://youtu.be/pfZ6CTEPc9s', 1568091600, NULL, 'video', NULL, 'url', '', 0),
(106, 'People: The heart of Lean', '00:48:52', 11, 25, 'YouTube', 'https://youtu.be/uVlkeGHup6E', 1568091600, NULL, 'video', NULL, 'url', '', 0),
(107, 'Value stream mapping basics', '00:33:38', 11, 25, 'YouTube', 'https://youtu.be/Ba8ZyAmffAM', 1568091600, NULL, 'video', NULL, 'url', '', 0),
(108, ' Simulation video', '00:34:13', 11, 25, 'YouTube', 'https://youtu.be/Swo3Lvw7ivg', 1568091600, 1568091600, 'video', '', 'url', '', 0),
(109, 'Lean supply chain basics', '00:32:02', 11, 25, 'YouTube', 'https://youtu.be/8RlA0D6cjDc', 1568091600, NULL, 'video', NULL, 'url', '', 0),
(110, 'Lean engineering basics', '00:38:17', 11, 25, 'YouTube', 'https://youtu.be/S_VLW77bN5E', 1568091600, NULL, 'video', NULL, 'url', '', 0),
(111, '2-1H, 2-3H, and 2-5H Simulation video', '00:17:29', 11, 25, 'YouTube', 'https://youtu.be/F3tPapv5w48', 1568091600, NULL, 'video', NULL, 'url', '', 0),
(112, 'Continuous process improvement', '00:38:12', 11, 25, 'YouTube', 'https://youtu.be/dNvt3SSm9Jc', 1568091600, NULL, 'video', NULL, 'url', '', 0),
(113, 'Improving the enterprise', '00:34:01', 11, 25, 'YouTube', 'https://youtu.be/uGkH08B05Q4', 1568091600, NULL, 'video', NULL, 'url', '', 0),
(114, 'Variability simulation', '00:35:50', 11, 25, 'YouTube', 'https://youtu.be/uDBGHmhAmT8', 1568091600, NULL, 'video', NULL, 'url', '', 0),
(115, 'Lean for healthcare: An Overview', '01:07:08', 11, 25, 'YouTube', 'https://youtu.be/I-DIXcoeaNQ', 1568091600, NULL, 'video', NULL, 'url', '', 0),
(116, ' A3 thinking', '00:24:47', 11, 25, 'YouTube', 'https://youtu.be/z1KloN7Ub0M', 1568091600, NULL, 'video', NULL, 'url', '', 0),
(117, 'Quality tools and topics', '00:26:15', 11, 25, 'YouTube', 'https://youtu.be/hQRfikgHzdg', 1568091600, NULL, 'video', NULL, 'url', '', 0),
(118, 'Six Sigma basics', '00:35:58', 11, 25, 'YouTube', 'https://youtu.be/c6-ybCfU6Zc', 1568091600, NULL, 'video', NULL, 'url', '', 0),
(121, 'Introduction and Overview of Business Plans', '01:00:12', 13, 28, 'YouTube', 'https://www.youtube.com/watch?v=ZcPNcoTbkIU&amp;lis', 1583647200, NULL, 'video', NULL, 'url', 'What is it, why do I need it and what is it used for? Practical do\'s and don\'ts in preparing a Business Plan. Things to keep in mind in writing a Business Plan which will improve your chances of obtaining funding and running a successful business.', 0),
(122, 'Refining and Presenting Your Venture Idea', '01:00:48', 13, 28, 'YouTube', 'https://www.youtube.com/watch?v=Lau7bwQAWr4&amp;list', 1583647200, NULL, 'video', NULL, 'url', 'Entrepreneurs are always \"selling\" their ideas to potential employees, customers, partners and investors. How do you position and present your ideas in the best light?', 0),
(123, 'How to create courses on Bullmate ', '00:28:21', 14, 29, 'YouTube', 'https://www.youtube.com/watch?v=13CrYdp74_E&amp;t=73s', 1585371600, NULL, 'video', NULL, 'url', '', 0),
(124, 'How to signup on Bullmate ', '00:14:59', 15, 30, 'YouTube', 'https://www.youtube.com/watch?v=plbBlY7YNIA&amp;t=390s', 1585371600, NULL, 'video', NULL, 'url', '', 0),
(125, 'MBA, Marketing Course', '01:30:32', 16, 31, 'YouTube', 'https://www.youtube.com/watch?v=UZu5orpKtJs', 1589518800, 1589518800, 'video', '', 'url', '', 0),
(126, 'Introduction to Human Resources Management', '00:35:57', 17, 33, 'YouTube', 'https://www.youtube.com/watch?v=c8_avX9miag', 1589518800, NULL, 'video', NULL, 'url', '', 0),
(127, 'HR Strategy and Planning ', '01:07:29', 17, 33, 'YouTube', 'https://www.youtube.com/watch?v=rVyJXnZEp2A', 1589518800, NULL, 'video', NULL, 'url', '', 0),
(128, 'Talent Aquisition ', '01:49:36', 17, 33, 'YouTube', 'https://www.youtube.com/watch?v=awuJ2O2SLUs', 1589518800, NULL, 'video', NULL, 'url', '', 0),
(129, 'Candidate Selection part 1 ', '01:14:02', 17, 33, 'YouTube', 'https://www.youtube.com/watch?v=to0b5yZtchc', 1589518800, NULL, 'video', NULL, 'url', '', 0),
(130, 'Candidate Selection part 2', '01:16:13', 17, 33, 'YouTube', 'https://www.youtube.com/watch?v=FwJ3n6KvK1A', 1589518800, NULL, 'video', NULL, 'url', '', 0),
(131, 'Compensation &amp; Benefits ', '02:08:56', 17, 33, 'YouTube', 'https://www.youtube.com/watch?v=iY6e_NDCJgM', 1589518800, 1589518800, 'video', '', 'url', 'what you will learn from lesson 6: You will learn \r\n\r\nWhat is equity? Which components make up total reward and based on which factors are these components determined? \r\n\r\nHow does fixed and variable pay work in practice? What are benefits and why are they there? \r\n\r\nUnder which conditions does money impact motivation for performance?', 0),
(132, 'Learning ', '01:28:30', 17, 33, 'YouTube', 'https://www.youtube.com/watch?v=VZ-MSZXnUiw&amp;t=1486s', 1589518800, NULL, 'video', NULL, 'url', 'What you will learn in Lesson 7: \r\n\r\nWe will discuss what can be learned through training and In which corporate fields are training courses typically used? \r\nHow can a training-event be designed and developed in order to meet predefined learning objectives? How to ensure employees transfer what they have learned during training into real life? How do modern media and working conditions influence the way people learn in a company?', 0),
(133, 'Talent Management Part 1', '01:03:12', 17, 33, 'YouTube', 'https://www.youtube.com/watch?v=Pk8hN7lw_RA', 1589518800, NULL, 'video', NULL, 'url', 'What you will learn in lesson 8:  \r\n\r\nHow companies ensure that they have successors ready for key positions at any time? \r\n Which methods and criteria are typically used to identify talent inside a companies?', 0),
(134, 'Talent Management Part 2', '01:25:46', 17, 33, 'YouTube', 'https://www.youtube.com/watch?v=9zQTC8bBEhs', 1589518800, 1589518800, 'video', '', 'url', 'What you will learn in Lesson 9:  \r\n\r\nWhich methods and criteria are typically used to identify talent inside a companies?,\r\n\r\nWhat are required conditions for employees to leverage their talent as part of their long-term career?', 0),
(135, 'Work ', '00:58:16', 17, 33, 'YouTube', 'https://www.youtube.com/watch?v=oDxWXBsR-ig', 1589518800, 1589605200, 'video', '', 'url', 'What you will learn in lesson 10:  \r\n\r\nWhat characterizes modern work and what will be the future of work?.   In this particular context how do work-life-balance and working hours matter?', 0),
(136, 'Employee Survey ', '01:20:23', 17, 33, 'YouTube', 'https://www.youtube.com/watch?v=yi0HPEleL8Q', 1589605200, NULL, 'video', NULL, 'url', 'What you will learn in Lesson 11:  \r\n\r\nHow  employee surveys help to improve working conditions? \r\n\r\nHow can a company strategically strengthen its employer attractiveness?', 0),
(137, 'Retention Part 1 ', '00:50:38', 17, 33, 'YouTube', 'https://www.youtube.com/watch?v=KVHhupjkT_s', 1589605200, 1589605200, 'video', '', 'url', 'What you will in lesson 12: \r\n\r\nWhat is relevant and voluntary turnover and what are related turnover costs? , \r\n\r\nHow can the risk of voluntary turnover be estimated? How and why do employees leave voluntarily?', 0),
(138, 'Retention Part 2', '00:47:44', 17, 33, 'YouTube', 'https://www.youtube.com/watch?v=D8VD1PmlJCs', 1589605200, NULL, 'video', NULL, 'url', 'What you will learn in Lesson 13: \r\nWhat are major components of a retention strategy? \r\n\r\nWhich measures help to effectively retain talent?', 0),
(139, 'Changement Management Part 1 ', '01:38:50', 17, 33, 'YouTube', 'https://www.youtube.com/watch?v=7zRvhFb9UUQ', 1589605200, 1589605200, 'video', '', 'url', 'What you will learn in this lesson:  \r\n\r\nWhat is meant by a change and what are major types of changes in organizations? \r\n\r\nWhy and how do changes often lead to dysfunctional human reactions?', 0),
(140, 'Changement Management Part 2 ', '00:54:04', 17, 33, 'YouTube', 'https://www.youtube.com/watch?v=Yw_ul_f8txU', 1589605200, 1589605200, 'video', '', 'url', 'What you will learn in lesson 15:  \r\n\r\nHow can employees be led through changes by applying change management measures? \r\n\r\nWhich conditions are required to effectively manage change?', 0),
(141, 'HR Organisation ', '01:32:34', 17, 33, 'YouTube', 'https://www.youtube.com/watch?v=VJm7wqU32ZY', 1589605200, NULL, 'video', NULL, 'url', 'What you will learn in lesson 16: \r\n\r\nWhat are central and local responsibilities in an international HR organization? \r\n\r\nHow are responsibilities of an HR department changing? What are major roles/areas in a modern HR organization?', 0),
(142, 'HR Information Technology ', '00:39:20', 17, 33, 'YouTube', 'https://www.youtube.com/watch?v=kSn_2KGKBOE', 1589605200, NULL, 'video', NULL, 'url', '', 0),
(143, 'HR Controlling and Analytics ', '01:10:36', 17, 33, 'YouTube', 'https://www.youtube.com/watch?v=DGxn_EVbENI', 1589605200, NULL, 'video', NULL, 'url', 'What you will learn in lesson 18: \r\n\r\nWhy and how are indicator systems used in HR and what are typical examples?, \r\nHow are indicators defined and implemented?, \r\n\r\nWhat is the added value of employees and how can it be estimated? Is it possible to estimate the ROI of large-scale investments in Human Resource Management?', 0),
(144, 'Social Media in HR ', '01:19:11', 17, 33, 'YouTube', 'https://www.youtube.com/watch?v=RzpUvTMgJ5U', 1589605200, NULL, 'video', NULL, 'url', 'What you will learn in lesson 19: \r\n\r\nHow are both the role of the users and the markets affected by Web 2.0 and social media? ,\r\n\r\nWhat are practical examples of Social media usage in the field of HRM? ,\r\n\r\nHow can social media be implemented and what are different types of social media usage? , \r\n\r\nWhat are relevant conditions for effective social media ', 0),
(147, 'part 1 ', '01:54:54', 19, 36, 'YouTube', 'https://youtu.be/lZdphORMFTA', 1590728400, 1603774800, 'video', '', 'url', 'This course provides you a complete introduction to blockchain technology and how it is changing our world. ', 0),
(148, 'Blockchain explained ', NULL, 19, 36, NULL, NULL, 1603774800, 1603774800, 'other', '5536babb3432869fbb9032573eda9489.pdf', 'pdf', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `live_class`
--

CREATE TABLE `live_class` (
  `id` int(11) UNSIGNED NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `zoom_meeting_id` varchar(255) DEFAULT NULL,
  `zoom_meeting_password` varchar(255) DEFAULT NULL,
  `note_to_students` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `live_class`
--

INSERT INTO `live_class` (`id`, `course_id`, `date`, `time`, `zoom_meeting_id`, `zoom_meeting_password`, `note_to_students`) VALUES
(1, 1, 1590210000, 1590633000, '784 8155 6750', '8CgJT3', 'only 20 students required '),
(2, 18, 1590296400, 1590247800, '73128570162', ' 3sduUF', 'test Live Class ');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message_thread_code` longtext,
  `message` longtext,
  `sender` longtext,
  `timestamp` longtext,
  `read_status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `message_thread_code`, `message`, `sender`, `timestamp`, `read_status`) VALUES
(1, 'c87cc68603b8947', 'you are great ', '1', '1565627272', 1),
(2, '26d639df74ebd09', 'Hello Isaac How are you , \r\n', '2', '1566039223', NULL),
(3, 'c87cc68603b8947', 'Hello ', '2', '1566041117', 1),
(4, 'c87cc68603b8947', 'Hi Isaac ', '1', '1566041176', 1),
(5, 'ecf7eecd24cddcd', 'Hi Ebere ', '2', '1566041249', NULL),
(6, '8b4954be4b9e38e', 'Hello SME,  ', '26', '1571662802', NULL),
(7, '8b4954be4b9e38e', 'Please i have a question regarding your courses \r\n', '26', '1571662837', NULL),
(8, '8b4954be4b9e38e', 'Hello  Chibunna please go ahead ,  I will be happy to help you out. ', '8', '1571662982', NULL),
(9, '312caa87d822473', 'You are now approved as an Instructor , You can now start to create courses.  ', '2', '1575655051', NULL),
(10, '99e376210d8aa80', 'Your to become an Instructor has been approved. You can now creating courses and sell on Bullmate. ', '2', '1583701987', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` longtext COLLATE utf8_unicode_ci,
  `sender` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `receiver` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `message_thread`
--

INSERT INTO `message_thread` (`message_thread_id`, `message_thread_code`, `sender`, `receiver`, `last_message_timestamp`) VALUES
(1, 'c87cc68603b8947', '1', '2', NULL),
(2, '26d639df74ebd09', '2', '8', NULL),
(3, 'ecf7eecd24cddcd', '2', '9', NULL),
(4, '8b4954be4b9e38e', '26', '8', NULL),
(5, '312caa87d822473', '2', '31', NULL),
(6, '99e376210d8aa80', '2', '35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `admin_revenue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructor_revenue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructor_payment_status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `user_id`, `payment_type`, `course_id`, `amount`, `date_added`, `last_modified`, `admin_revenue`, `instructor_revenue`, `instructor_payment_status`) VALUES
(1, 27, 'paystack', 1, 150, 1572933600, NULL, '150', '0', 1),
(2, 28, 'paystack', 8, 250, 1572933600, NULL, '125', '125', 0),
(3, 8, 'paystack', 11, 10, 1581141600, NULL, '5', '5', 0),
(4, 8, 'paystack', 8, 10, 1581141600, NULL, '5', '5', 0),
(5, 49, 'paypal', 5, 250, 1590728400, NULL, '125', '125', 0),
(6, 49, 'paypal', 8, 200, 1590814800, NULL, '100', '100', 0);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) UNSIGNED NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_options` int(11) DEFAULT NULL,
  `options` longtext COLLATE utf8_unicode_ci,
  `correct_answers` longtext COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `quiz_id`, `title`, `type`, `number_of_options`, `options`, `correct_answers`, `order`) VALUES
(1, 5, 'What is Preclass Training ', 'multiple_choice', 0, 'null', '[\"\"]', 0),
(2, 5, 'How can we improve the class retention ', 'multiple_choice', 0, 'null', '[\"\"]', 0),
(3, 30, 'Which of the following describes Talent aquisition.  ', 'multiple_choice', 3, '[\"Talent Aquisition is the best \",\"Talent Aquisition is the best almost the best \",\"Talent Aquisition is not the best \"]', '[\"2\"]', 0),
(4, 30, 'How does strategy and Planning work ', 'multiple_choice', 3, '[\"It works with the team \",\"it works with the the public \",\"It works with the company \"]', '[\"3\"]', 0),
(5, 146, 'How to create courses on Bullmate ', 'multiple_choice', 4, '[\"yes \",\"most definitely \",\"it does not worth it \",\"it is true \"]', '[\"3\"]', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) UNSIGNED NOT NULL,
  `rating` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ratable_id` int(11) DEFAULT NULL,
  `ratable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `rating`, `user_id`, `ratable_id`, `ratable_type`, `date_added`, `last_modified`, `review`) VALUES
(1, NULL, NULL, NULL, 'course', 1602738000, NULL, NULL),
(2, 1, 34, 1, 'course', 1583474400, NULL, 'Very Nice Course '),
(3, 1, 49, 2, 'course', 1590728400, NULL, 'This one of the best courses i have ever taken. Thank you so much chef Jonathan. '),
(4, 5, 13, 19, 'course', 1603947600, NULL, 'This course is rich in information about Blockchain technology  ');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES
(1, 'Admin', 1234567890, 1234567890),
(2, 'User', 1234567890, 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `title`, `course_id`, `order`) VALUES
(1, 'Pre-Class Training ', 1, 0),
(2, 'Ice Breaking Techniques ', 1, 0),
(3, 'Section 1', 2, 0),
(4, 'Section 2', 2, 0),
(5, '1', 3, 0),
(6, 'Introduction ', 4, 0),
(7, 'Part 2', 4, 0),
(8, 'Part 3', 4, 0),
(10, 'C Programming  ', 5, 0),
(11, '1', 6, 0),
(12, 'Python Programming Language ', 7, 0),
(13, 'Part 1 ', 8, 0),
(14, 'Part 2', 8, 0),
(15, 'Part 3', 8, 0),
(16, 'Part 4', 8, 0),
(17, ' How to Start a Business ', 9, 0),
(18, 'Future Proofing Business', 9, 0),
(19, 'Business Model Canvas and Lean Approach ', 9, 0),
(20, 'How to Market a Business and Sell Products ', 9, 0),
(21, 'How Can I Know If My Idea Is Good?', 9, 0),
(22, 'How can I Protect my Ideas? ', 9, 0),
(23, 'Raising Venture Capital ', 9, 0),
(24, 'Financial Projections ', 9, 0),
(25, 'Part 1 ', 11, 0),
(27, 'Part 1 ', 12, 0),
(28, 'Part 1', 13, 0),
(29, 'How to create courses on Bullmate ', 14, 0),
(30, 'How to signup on Bullmate ', 15, 0),
(31, 'MBA, Marketing Course', 16, 0),
(33, 'Part 1', 17, 0),
(35, 'Test Live Class', 18, 0),
(36, 'section 1', 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'language', 'english'),
(2, 'system_name', 'Bullmate '),
(3, 'system_title', 'Bullmate '),
(4, 'system_email', 'info@bullmate.com'),
(5, 'address', ''),
(6, 'phone', '+971569293511'),
(7, 'purchase_code', 'c3677b1e-48d6-48d0-bb05-9029291e4e08'),
(8, 'paypal', '[{\"active\":\"0\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AW6hvnejze1AIgXjC3JP-2Skf_79Bt0Po5DXzdSP-P0d1uEfaunt8F_wGrKNwTbxM_I74gAuVPNOVJdZ\",\"production_client_id\":\"ASNQxXpTnmwc3zRuGjuOwZl2m3OuBulm2FEEtEYVvbt_adohTGSwAzrXuR4FfkG-6ccMs0cg84Bq3kQd\"}]'),
(9, 'stripe_keys', '[{\"active\":\"0\",\"testmode\":\"off\",\"public_key\":\"pk_test_4410e2cad42e71d6238802f76723680112901e61\",\"secret_key\":\"sk_test_93883c075830ae33acaa746c1ef1ba216120d846\",\"public_live_key\":\"pk_live_4fbef1b1be22304bc1a36d7f4993b7eafd55123d\",\"secret_live_key\":\"sk_live_442c8c7e22a24d247f0e4537b8ece2f70964a556\"}]'),
(10, 'youtube_api_key', 'AIzaSyCRl6gMJBrK7A8Dl40wOK5Ol5nueD7gCDA'),
(11, 'vimeo_api_key', '89f986a9d72efe774312257f05ca33643173494e'),
(12, 'slogan', 'Hooked on Skilled  Learning '),
(13, 'text_align', NULL),
(14, 'allow_instructor', '1'),
(15, 'instructor_revenue', '50'),
(16, 'system_currency', 'USD'),
(17, 'paypal_currency', 'USD'),
(18, 'stripe_currency', NULL),
(19, 'author', 'Bullmate '),
(20, 'currency_position', 'right-space'),
(21, 'website_description', 'We are Hooked on Skilled Learning .  Bullmate is an online learning place bringing world best team of Instructors, Training and Educational organisations both Government and private, offering best quality courses to learners everywhere, anytime and anyday.  '),
(22, 'website_keywords', 'LMS'),
(23, 'footer_text', NULL),
(24, 'footer_link', 'http://bullmate.com/academy/'),
(25, 'protocol', 'sendmail'),
(26, 'smtp_host', 'mail.bullmate.com'),
(27, 'smtp_port', '25'),
(28, 'smtp_user', 'info@bullmate.com'),
(29, 'smtp_pass', 'Pass4321'),
(30, 'version', '2.3'),
(31, 'student_email_verification', 'enable'),
(32, 'paystack_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_4410e2cad42e71d6238802f76723680112901e61\",\"secret_key\":\"sk_test_93883c075830ae33acaa746c1ef1ba216120d846\",\"public_live_key\":\"pk_live_4fbef1b1be22304bc1a36d7f4993b7eafd55123d\",\"secret_live_key\":\"sk_live_442c8c7e22a24d247f0e4537b8ece2f70964a556\"}]'),
(33, 'paystack_currency', 'USD'),
(34, 'certificate_template', 'This is to certify that  {student} has completed the course in {course}.'),
(35, 'zoom_api_key', 'jeAVPHPPTM2u3GavX7-5nw'),
(36, 'zoom_secret_key', 'IlXrLzs8iAL4PNf8r80hC7Qfd5JErFYd5mr9');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagable_id` int(11) DEFAULT NULL,
  `tagable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` tinyint(2) DEFAULT '3' COMMENT '1=Admin, 2=Instructor, 3=Student',
  `is_request` tinyint(3) NOT NULL DEFAULT '0' COMMENT '1=Request Sent,0=Not Requested',
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_links` longtext COLLATE utf8_unicode_ci,
  `biography` longtext COLLATE utf8_unicode_ci,
  `role_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `watch_history` longtext COLLATE utf8_unicode_ci,
  `wishlist` longtext COLLATE utf8_unicode_ci,
  `title` longtext COLLATE utf8_unicode_ci,
  `paypal_keys` longtext COLLATE utf8_unicode_ci,
  `stripe_keys` longtext COLLATE utf8_unicode_ci,
  `verification_code` longtext COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL COMMENT '1=Active,0=Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `is_request`, `first_name`, `last_name`, `email`, `password`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `watch_history`, `wishlist`, `title`, `paypal_keys`, `stripe_keys`, `verification_code`, `status`) VALUES
(1, 3, 0, 'Yemi', 'Alaran', 'openimo@gmail.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 3, 0, 'Isaac ', 'Ochulor ', 'isaac.ochulor@bullmate.com', '229c78dfad9962a2d99af92fc0a458ae5c81701b', '{\"facebook\":\"https:\\/\\/www.facebook.com\\/ochulor.isaac\",\"twitter\":\"https:\\/\\/twitter.com\\/zikochulor\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/in\\/isaac-ochulor-ab4a0825\\/\"}', '<p>My mission bothers on management systems, Training, development and Implementation through building relationships, bringing value & respect and working towards a common goal. </p><p>A team player, customer focused and adaptable to any kind of challenge.</p>', 1, 1565614455, 1590832433, '[{\"lesson_id\":\"1\",\"progress\":\"1\"},{\"lesson_id\":\"2\",\"progress\":\"1\"},{\"lesson_id\":\"5\",\"progress\":\"1\"},{\"lesson_id\":\"145\",\"progress\":\"1\"}]', '[]', 'A seasoned  professional with over 13  years’ experience.\r\n\r\n', '[{\"production_client_id\":null}]', '[{\"public_live_key\":null,\"secret_live_key\":null}]', '159f563c457bc1ceba93727c781b8914', 1),
(8, 2, 0, 'Subject Matter Expert ', '', 'zikochulor@gmail.com', '229c78dfad9962a2d99af92fc0a458ae5c81701b', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '<p>An Expert in my Area of Specialty. </p>', 2, 1565780293, 1567768911, '[{\"lesson_id\":\"30\",\"progress\":\"1\"},{\"lesson_id\":\"61\",\"progress\":\"0\"},{\"lesson_id\":\"1\",\"progress\":\"1\"},{\"lesson_id\":\"5\",\"progress\":\"1\"},{\"lesson_id\":\"6\",\"progress\":\"1\"},{\"lesson_id\":\"2\",\"progress\":\"1\"},{\"lesson_id\":\"20\",\"progress\":\"1\"},{\"lesson_id\":\"15\",\"progress\":\"1\"},{\"lesson_id\":\"16\",\"progress\":\"1\"},{\"lesson_id\":\"14\",\"progress\":\"1\"},{\"lesson_id\":\"18\",\"progress\":\"1\"},{\"lesson_id\":\"19\",\"progress\":\"1\"},{\"lesson_id\":\"126\",\"progress\":\"1\"},{\"lesson_id\":\"127\",\"progress\":\"1\"},{\"lesson_id\":\"128\",\"progress\":\"1\"},{\"lesson_id\":\"129\",\"progress\":\"1\"},{\"lesson_id\":\"130\",\"progress\":\"1\"},{\"lesson_id\":\"131\",\"progress\":\"1\"},{\"lesson_id\":\"132\",\"progress\":\"1\"},{\"lesson_id\":\"133\",\"progress\":\"1\"},{\"lesson_id\":\"134\",\"progress\":\"1\"},{\"lesson_id\":\"135\",\"progress\":\"1\"},{\"lesson_id\":\"136\",\"progress\":\"1\"},{\"lesson_id\":\"137\",\"progress\":\"1\"},{\"lesson_id\":\"138\",\"progress\":\"1\"},{\"lesson_id\":\"139\",\"progress\":\"1\"},{\"lesson_id\":\"141\",\"progress\":\"1\"},{\"lesson_id\":\"140\",\"progress\":\"1\"},{\"lesson_id\":\"142\",\"progress\":\"1\"},{\"lesson_id\":\"143\",\"progress\":\"1\"},{\"lesson_id\":\"144\",\"progress\":\"1\"},{\"lesson_id\":\"7\",\"progress\":\"1\"},{\"lesson_id\":\"8\",\"progress\":\"1\"},{\"lesson_id\":\"57\",\"progress\":\"1\"},{\"lesson_id\":\"9\",\"progress\":\"1\"},{\"lesson_id\":\"10\",\"progress\":\"1\"},{\"lesson_id\":\"11\",\"progress\":\"1\"},{\"lesson_id\":\"12\",\"progress\":\"1\"},{\"lesson_id\":\"13\",\"progress\":\"1\"}]', '[]', NULL, '[{\"production_client_id\":\"AVWDmSaVIltNtCtH2FhJDj-DC8TzbveYRqEDr1WxnPTLz9_IAxbcs1FnPUD12y2bP4oZAwJdp1pQWyrw\"}]', '[{\"public_live_key\":null,\"secret_live_key\":null}]', NULL, 1),
(9, 3, 0, 'Ebere', 'Ike', 'ebereike12@gmail.com', '56b968f62a99402255206ce19ebcb06b56f3c9f6', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', 2, 1565812522, 1575554533, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', 'cbfd3bb3b9ee8accc7238a2bb2cdd1b3', 0),
(13, 2, 0, 'Girafe ', 'Academy ', 'whatsnew211@gmail.com', '8153eb9180e908aedae7cb48c956a827b19e7e17', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', 2, 1566237221, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"whatsnew211@gmail.com\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', NULL, 1),
(19, 3, 0, 'test ', 'student ', 'student@example.com', '64cb3a3ddc6063ec927db683fa0f4413cec7c83f', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1570650547, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '4d7ebf27b0b9da5155f62ddba7d07e2d', 0),
(24, 3, 0, 'Al', 'Mobin', 'mobincreativeitem@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1571551185, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', 'e573b6899c44fa51aac5d6ff70466c5a', 0),
(25, 3, 0, 'Chioma ', 'Chukwu ', 'ochulorisaac@gmail.com', '1c83099e0e6b27226a6a630b0bd3af8c469de15a', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1571563941, NULL, '[{\"lesson_id\":\"11\",\"progress\":\"0\"},{\"lesson_id\":\"12\",\"progress\":\"1\"},{\"lesson_id\":\"10\",\"progress\":\"1\"},{\"lesson_id\":\"9\",\"progress\":\"1\"},{\"lesson_id\":\"57\",\"progress\":\"1\"},{\"lesson_id\":\"8\",\"progress\":\"1\"},{\"lesson_id\":\"7\",\"progress\":\"1\"}]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '92004bd7058ece94e544952890ce0e8d', 1),
(27, 3, 1, 'Shahin', 'Alam', 'shahinict06@gmail.com', 'b980c1da040bac0d396f246073b35788b33cf909', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1572917280, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', 'e6f75b4267c194a3daa441552877b919', 1),
(28, 2, 0, 'Chinedu ', 'Noble ', 'kingnoble880@gmail.com', '64cb3a3ddc6063ec927db683fa0f4413cec7c83f', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1572978195, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '174a7c2ad01db39896b9c4df1f06a1a0', 1),
(29, 3, 0, 'shahin', 'alam', 'techtune1@yahoo.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1575599126, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', 'da4660c75dbd66c18ab618bd834b8156', 0),
(30, 3, 1, 'Shahin', 'Alam', 'shahin6@solutionart.net', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1575599214, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '65931b1abe110ae5f4376360bce42035', 0),
(31, 3, 0, 'Isaac', 'Junior', 'applications@bullmate.com', '64cb3a3ddc6063ec927db683fa0f4413cec7c83f', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1575654655, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', 'e42b0bcb702a56b1ebf087be4fdffd61', 1),
(32, 3, 1, 'maureen ', 'kyamani ', 'babiryemyrah2008@gmail.com', '5b619c55e795907f1e04a885208f4b13ff4bdaf3', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1575966576, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '15a8e193d43c99515eec6ca39b75dc67', 1),
(33, 3, 0, 'Maureen', 'Kyamani', 'babiyremyrah2008@gmail.com', '1c83099e0e6b27226a6a630b0bd3af8c469de15a', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1576078230, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '33c82b231917885926d332a44e7021ad', 0),
(35, 3, 0, 'Isaac ', 'Bullmate ', 'bullmate3@gmail.com', '1c83099e0e6b27226a6a630b0bd3af8c469de15a', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1583502389, NULL, '[{\"lesson_id\":\"127\",\"progress\":\"1\"},{\"lesson_id\":\"126\",\"progress\":\"1\"}]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '4d8ab8a986f5f97ce154fa0e412959a7', 1),
(36, 3, 0, 'Bernadette', 'Stephens', 'bernadette.stephens@gmail.com', 'bba53a4d0bcc3738ce264a8ea04d04f5d0dcd006', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1586505244, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', 'c6e49bca04ae8ee63520508176834890', 1),
(37, 3, 0, 'Roxan', 'Elliott', 'rxnelliott@gmail.com', 'd630cefde4acadeb11452d9e32ddd0669d6c5058', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1586790313, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', 'c0dece447d7514e7d8218971bd9ebdb3', 1),
(39, 3, 1, 'José', 'Angel', 'angelhc3@gmail.com', '932b0ee0aed26d63d257c9a04a401523ed8bc261', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1588309671, NULL, '[{\"lesson_id\":\"6\",\"progress\":\"1\"},{\"lesson_id\":\"2\",\"progress\":\"1\"}]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '0ab85f21fead392e939a183c086f195e', 1),
(40, 3, 1, 'Jose Angel', 'C', 'angel_hc3@hotmail.com', '9c5dd9365e9a87a82816ff7f539ec9e7394a9bc3', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1588711148, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', 'af372906e2f034e0d1c3a181438c015b', 1),
(41, 3, 1, 'IDPE ', 'School ', 'info@idpe.org', '1c83099e0e6b27226a6a630b0bd3af8c469de15a', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1588820284, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '4563b5771ee1ebb7c3db16992855ad56', 1),
(42, 3, 0, 'Bullmate ', 'Academy ', 'info@bullmate.com', '1c83099e0e6b27226a6a630b0bd3af8c469de15a', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1588820613, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', 'c070517f258e5ff49b0ddfb4b3d2eaa7', 1),
(43, 3, 0, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1588904455, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '4fcedb4db141ebcb2ab312ea3fc9a5e5', 0),
(44, 3, 1, 'hank ', 'schmidt ', 'kenzieschmidt421@gmail.com', '920deba4828be896241bef728f7c7bf2d8007023', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1589658284, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '55feb976c45ebf44972c60817f540357', 0),
(46, 3, 0, 'developer', 'developer', 'developer@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1590199694, NULL, '[{\"lesson_id\":\"1\",\"progress\":\"1\"},{\"lesson_id\":\"5\",\"progress\":\"1\"},{\"lesson_id\":\"6\",\"progress\":\"1\"},{\"lesson_id\":\"2\",\"progress\":\"1\"}]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '9200fc3bd70c7b4395c19c303168ca1a', 1),
(47, 1, 0, 'admin', 'info', 'admin@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 1, 1590199736, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', 'cf5f574fff2e87783a6c639e995259fe', 1),
(49, 3, 0, 'chilling', 'Music ', 'chillingmusic24@gmail.com', '1c83099e0e6b27226a6a630b0bd3af8c469de15a', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1590623925, NULL, '[{\"lesson_id\":\"7\",\"progress\":\"1\"},{\"lesson_id\":\"8\",\"progress\":\"1\"},{\"lesson_id\":\"57\",\"progress\":\"1\"},{\"lesson_id\":\"9\",\"progress\":\"1\"},{\"lesson_id\":\"10\",\"progress\":\"1\"},{\"lesson_id\":\"11\",\"progress\":\"1\"},{\"lesson_id\":\"12\",\"progress\":\"1\"}]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '0a4c79aabbceba11dec8b200bc9e9198', 1),
(50, 3, 0, 'Super ', 'Mum', 'munamatoc@yahoo.co.uk', '1c83099e0e6b27226a6a630b0bd3af8c469de15a', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1590817652, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', 'e471b889d931ba524e763f86e2d8bced', 0),
(51, 3, 0, 'vikrant', 'singh', 'vikrant.singh@gmail.com', '0ddeb4b4ad1786d00896dd444ebaa5534b8d36e8', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1590862519, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '0e42f72951ca20fad2fb599404f77f29', 1),
(52, 3, 0, 'Alejandro Antonio', ' Rendón Morales', 'alexrend@hotmail.com', 'cf096d1b6ae7f740f8c31a519a0043f3137b1d71', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1595263549, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '93683302140e6272d32afb16bf2e3566', 0),
(53, 3, 0, 'ventana', 'informatica', 'ventanainformatica@yahoo.com.mx', 'acc04187becaa9cba3c23f979f2fac815b0e9211', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1595264017, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '013ae4f4568b04461024c5e5461eaed5', 1),
(54, 3, 0, 'Asif', 'Fff', 'alijaani9161@gmail.com', '50fcd82e20718480d81b564ef71221b780ba7e71', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1603635885, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '89d1cc0cbd1c5aba0ddd6569be0fd9c3', 0),
(55, 3, 0, 'Questers ', 'Group', 'admin@questersgrp.com', '1c83099e0e6b27226a6a630b0bd3af8c469de15a', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1603813050, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '15344b0f57701bc8901b5c7b2a991f04', 0),
(61, 3, 0, 'umar', 'test', 'umar@armyspy.com', '4b2a5f4bbe5174b85a86aa52ed3c5b6f3dcedb17', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1604569119, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', 'b87c99a4ce9a580f3b20ee5d4bd418ac', 1),
(62, 3, 1, 'Bullmate ', 'Support ', 'support@bullmate.com', '1c83099e0e6b27226a6a630b0bd3af8c469de15a', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1604584239, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', 'af246c3742392afde2eb92911a7dc07f', 1),
(63, 3, 1, 'Banditosvkvartiras https://www.microsoft.com/', 'Banditosvkvartiras https://www.microsoft.com/', 'vorontsova_tomila@list.ru', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1604899690, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '7dd7deb044b9f21c3dad0c7d089c102d', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrol`
--
ALTER TABLE `enrol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_class`
--
ALTER TABLE `live_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `enrol`
--
ALTER TABLE `enrol`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=595;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `live_class`
--
ALTER TABLE `live_class`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
