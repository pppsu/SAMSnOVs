-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2017 at 02:23 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sams-demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(255) NOT NULL,
  `club_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `begin_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `act_place` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `budget_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `budget_specify` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `budget_numeral` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `budget_alphabet` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stu_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `compulsory_type` int(11) NOT NULL,
  `awareness` int(11) NOT NULL,
  `social_skill` int(11) NOT NULL,
  `pride_institution` int(11) NOT NULL,
  `multi_culture` int(11) NOT NULL,
  `health_development` int(11) NOT NULL,
  `status_submit` int(11) NOT NULL,
  `status_pass1` int(11) NOT NULL,
  `status_pass2` int(11) NOT NULL,
  `status_pass3` int(11) NOT NULL,
  `status_pass4` int(11) NOT NULL,
  `status_pass5` int(11) NOT NULL,
  `status_pass6` int(11) NOT NULL,
  `status_pass7` int(11) NOT NULL,
  `status_pass8` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `club_id`, `location`, `activity`, `begin_date`, `end_date`, `act_place`, `budget_type`, `budget_specify`, `budget_numeral`, `budget_alphabet`, `stu_id`, `compulsory_type`, `awareness`, `social_skill`, `pride_institution`, `multi_culture`, `health_development`, `status_submit`, `status_pass1`, `status_pass2`, `status_pass3`, `status_pass4`, `status_pass5`, `status_pass6`, `status_pass7`, `status_pass8`, `created_at`, `updated_at`) VALUES
(1, '1', 'อฮฆฏอฆฏ', 'หกฆฏโฆฏฌหก', '11/01/17', '11/01/17', 'หกดหกดฟหกเ', '2', 'หกฟดกเฟหกเ', '200000', 'หกดเหเฟเ', '1', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2016-11-26 16:51:51', '2016-11-26 16:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_11_26_143006_create_staff_table', 2),
(6, '2016_11_26_143716_create_document_table', 3),
(8, '2016_11_26_141453_create_student_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `psu-passport` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` int(10) UNSIGNED NOT NULL,
  `psu_passport` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `begin_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `club_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `psu_passport` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stu_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stu_fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stu_lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stu_faculty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stu_major` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stu_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `begin_date` date NOT NULL,
  `end_date` date NOT NULL,
  `stu_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stu_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stu_line` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stu_facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `club_id`, `psu_passport`, `stu_title`, `stu_fname`, `stu_lname`, `stu_faculty`, `stu_major`, `stu_position`, `begin_date`, `end_date`, `stu_phone`, `stu_email`, `stu_line`, `stu_facebook`, `created_at`, `updated_at`) VALUES
(1, '1', '5630213021', 'นาย', 'ศักดิ์ณรงค์', 'พรหมวงค์', 'FTE', 'SE', 'ประธาน', '0000-00-00', '0000-00-00', '', '', '', '', NULL, NULL),
(2, '1', '5630211019', 'Miss', 'Juthakun', 'Chouymuang', 'Technology and Environment', 'Information Technology', '', '0000-00-00', '0000-00-00', '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `psu_passport` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `psu_passport`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '5630213021', '$2y$10$/urwgj9JONlooCQwsQTRB.4zsOcnb4.6kfAidMSIIOFIA4m..AtEa', 'student', '0dJCBXln12epoQoyycDmgoK1CrGKCfJDTXMk3Jhet39E6MMEK6gyBJ2AEwsq', '2016-11-26 08:11:55', '2016-11-26 14:45:35'),
(2, '5630214050', '$2y$10$DaN70lqzASAa.GQQYVtKfu4ccvWsQF7C5NyaDmyqg318DhsKEjYEq', 'admin', 'dcUjn0DEJSr50G53JhL07mtcDFI2g36AkbtWw29BNCDEgaohukXVmIxld5Zw', '2016-11-26 10:33:26', '2016-11-26 10:34:29'),
(3, '5630211019', '$2y$10$KFj33lJDPtEjLR9CFwW0QOS2964sIEm9BlvPuMud3NXcFpigea7Eq', 'student', 'gpAIKGnvlLshd1M7i29EkvAxqEZO08Chg6k2B59frIpNaqWrvdIoMwcJMIIg', '2016-11-27 03:01:45', '2016-11-27 03:02:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_psu_passport_index` (`psu-passport`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_psu_passport_unique` (`psu_passport`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
