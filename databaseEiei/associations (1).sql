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
-- Database: `proj_assoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `associations`
--

CREATE TABLE `associations` (
  `ass_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ass_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activity_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ass_start` date NOT NULL,
  `ass_stop` date NOT NULL,
  `type_budjed` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ass_location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `budjed` int(11) NOT NULL,
  `budjed_alphabet` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `compulsory_type` int(11) NOT NULL,
  `awareness` int(11) NOT NULL,
  `social_skill` int(11) NOT NULL,
  `pride_institution` int(11) NOT NULL,
  `multi_culture` int(11) NOT NULL,
  `health_development` int(11) NOT NULL,
  `student_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `associations`
--

INSERT INTO `associations` (`ass_id`, `ass_name`, `activity_name`, `ass_start`, `ass_stop`, `type_budjed`, `ass_location`, `budjed`, `budjed_alphabet`, `compulsory_type`, `awareness`, `social_skill`, `pride_institution`, `multi_culture`, `health_development`, `student_name`, `created_at`, `updated_at`) VALUES
('591121001', 'Test1', 'Test_proj1', '2016-11-21', '2016-11-30', 'ทุนคณะ', 'อาคาร 7', 20000, 'สองหมื่นบาทถ้วน', 40, 12, 12, 12, 12, 12, 'Thirawat Sae-siew', '2016-11-21 07:58:21', '2016-11-21 07:58:21'),
('591121002', 'Test2', 'Test_proj2', '2016-11-21', '2016-11-30', 'ทุนคณะ', 'อาคาร 7', 20000, 'สองหมื่นบาทถ้วน', 40, 12, 12, 12, 12, 12, 'Thirawat Sae-siew', '2016-11-21 07:58:21', '2016-11-21 07:58:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `associations`
--
ALTER TABLE `associations`
  ADD PRIMARY KEY (`ass_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
