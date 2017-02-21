-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2017 at 02:21 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logindata`
--

-- --------------------------------------------------------

--
-- Table structure for table `logindatas`
--

CREATE TABLE `logindatas` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `logindatas`
--

INSERT INTO `logindatas` (`id`, `username`, `password`, `name`, `lastname`, `type`, `created_at`, `updated_at`) VALUES
(1, 'ppzungAdmin', '14e1b600b1fd579f47433b88e8d85291', 'AThongchai', 'Rawangkhaem', 'admin', '2016-11-06 09:31:02', '2016-11-06 09:31:02'),
(2, 'ppzungStaff', 'e10adc3949ba59abbe56e057f20f883e', 'SThongchai', 'Rawangkhaem', 'staff', '2016-11-06 09:31:02', '2016-11-06 09:31:02'),
(3, '5630213040', 'e10adc3949ba59abbe56e057f20f883e', 'StdThongchai', 'Rawangkhaem', 'student', '2016-11-06 09:31:02', '2016-11-06 09:31:02'),
(4, '5630213033', 'e10adc3949ba59abbe56e057f20f883e', 'Sakon', 'lovesick', 'student', NULL, NULL),
(5, 'teacher', 'e10adc3949ba59abbe56e057f20f883e', 'Adisak', 'Intana', 'Instructor ', NULL, NULL),
(6, 'StudentUnion', 'e10adc3949ba59abbe56e057f20f883e', 'Mr.Surawut', 'Japrang', 'Student Union', NULL, NULL),
(7, 'hstudent', 'e10adc3949ba59abbe56e057f20f883e', 'Mr.Thawat', 'Musikatham', 'Head Student', NULL, NULL),
(8, 'director', 'e10adc3949ba59abbe56e057f20f883e', 'Mr.Surawut', 'Japrang', 'Director', NULL, NULL),
(9, 'assistant ', 'e10adc3949ba59abbe56e057f20f883e', 'Mr.Charoen', 'Phromrit', 'Assistants', NULL, NULL),
(10, 'president ', 'e10adc3949ba59abbe56e057f20f883e', 'Assoc.Prof.Dr.Worawut', 'Wisutmethangoon', 'President', NULL, NULL),
(11, 'studentcon', 'e10adc3949ba59abbe56e057f20f883e', 'Mr.Thawat', 'Japrang', 'Student Council', NULL, NULL),
(563021, '', '', '', '', '', NULL, NULL),
(563022, '5630213048', '574616997a0b59105fc603fb6be5eea4', 'Patavee', 'Thepsong', 'staff', '2016-11-27 17:00:00', '2016-11-29 17:00:00'),
(563023, '5630213049', '574616997a0b59105fc603fb6be5eea4', 'Patavee', 'Thepsong', 'student', '2016-11-27 17:00:00', '2016-11-29 17:00:00'),
(563024, '5630213051', '574616997a0b59105fc603fb6be5eea4', 'Thirawat', 'seaseaw', 'admin', '2016-10-31 17:00:00', '2016-11-29 17:00:00'),
(563025, '5630213050', '574616997a0b59105fc603fb6be5eea4', 'Thirawat', 'seaseaw', 'Student Council', '2016-10-31 17:00:00', '2016-11-29 17:00:00'),
(563026, '5630211019', '1234', '', '', '', NULL, NULL),
(563027, '5630213024', '81dc9bdb52d04dc20036dbd8313ed055', '', '', 'staff', NULL, NULL);

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
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_11_06_155407_create_logindata_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logindatas`
--
ALTER TABLE `logindatas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logindatas`
--
ALTER TABLE `logindatas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=563028;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
