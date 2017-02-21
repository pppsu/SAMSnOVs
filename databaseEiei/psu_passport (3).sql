-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2017 at 02:22 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `psu_passport`
--

-- --------------------------------------------------------

--
-- Table structure for table `advisors`
--

CREATE TABLE `advisors` (
  `psu_passport` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `adv_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adv_fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adv_lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adv_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `advisors`
--

INSERT INTO `advisors` (`psu_passport`, `password`, `adv_title`, `adv_fname`, `adv_lname`, `adv_email`, `created_at`, `updated_at`) VALUES
('10023', '123456', 'Dr.', 'Adisak', 'Inthana', 'adisak@phuket.psu.ac.th', NULL, NULL),
('10024', '123456', 'Aj.', 'Maneenate', 'Puangmanee', 'maneenate@phuket.psu.ac.th', NULL, NULL),
('10025', '123456', 'Dr.', 'Aziz', 'Nanthaamornphong', 'aziz.n@phuket.psu.ac.th', NULL, NULL),
('10026', '123456', 'Aj.', 'Jamikorn', 'Hiranrat', 'jamikorn@phuket.psu.ac.th', NULL, NULL),
('10027', '123456', 'Aj.', 'Kanjana', 'Thongklin', 'kanjana@phuket.psu.ac.th', NULL, NULL),
('10028', '123456', 'Aj.', 'Jaedsada', 'Chaisorn', 'j.email.psu.ac.th', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_11_15_143351_create_document_table', 1),
('2016_11_19_075507_create_student_table', 1),
('2016_11_19_081633_create_advisor_table', 1),
('2016_11_21_130348_create_member_table', 2),
('2016_11_21_133108_create_association_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `stu_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pwd` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `stu_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stu_fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stu_lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stu_faculty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stu_major` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stu_start` date DEFAULT NULL,
  `stu_stop` date DEFAULT NULL,
  `stu_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `stu_facebook` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `stu_line` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `stu_phone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`stu_id`, `pwd`, `stu_title`, `stu_fname`, `stu_lname`, `stu_faculty`, `stu_major`, `stu_start`, `stu_stop`, `stu_email`, `stu_facebook`, `stu_line`, `stu_phone`) VALUES
('5630213024', '2510', 'Mr.', 'Thirawat', 'Sae-siew', 'Technology and Environment', 'Software Engineering', '2016-11-21', '2016-11-21', '', '', '', 0),
('5630213040', '', 'Mr.', 'Thongchai', 'Rawangcam', 'TE', 'SE', '2016-11-21', '2016-11-21', '', '', '', 0),
('5630213048', '123456', 'Mr.', 'Patavee', 'Tepsong', 'Technology and Environment', 'Software Engineering', '2016-11-21', '2016-11-21', '', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advisors`
--
ALTER TABLE `advisors`
  ADD PRIMARY KEY (`psu_passport`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`stu_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
