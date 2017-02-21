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
-- Database: `regist`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_hours`
--

CREATE TABLE `activity_hours` (
  `prop_id` int(11) NOT NULL,
  `act_id` int(11) NOT NULL,
  `hours` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activity_type`
--

CREATE TABLE `activity_type` (
  `act_id` int(11) NOT NULL,
  `act_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `approval3_detail`
--

CREATE TABLE `approval3_detail` (
  `app3_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `budget` int(1) NOT NULL,
  `other_budget` int(1) NOT NULL,
  `identify` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expense1` int(7) NOT NULL,
  `expense2` int(7) NOT NULL,
  `expense3` int(7) NOT NULL,
  `expense4` int(7) NOT NULL,
  `expense5` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `approval3_detail`
--

INSERT INTO `approval3_detail` (`app3_id`, `app_id`, `budget`, `other_budget`, `identify`, `expense1`, `expense2`, `expense3`, `expense4`, `expense5`) VALUES
(3, 52, 1, 1, 'Test ja!!', 100, 200, 300, 400, 500),
(4, 77, 0, 0, '', 0, 0, 0, 0, 0),
(5, 85, 0, 1, 'budget test', 100, 100, 100, 100, 100),
(6, 96, 1, 1, 'Test3', 100, 200, 300, 400, 500),
(7, 8, 0, 0, '', 0, 0, 0, 0, 0),
(8, 4, 0, 0, '', 0, 0, 200, 0, 0),
(9, 17, 1, 0, '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `approval4_detail`
--

CREATE TABLE `approval4_detail` (
  `app4_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `activity1` int(2) NOT NULL,
  `activity2` int(2) NOT NULL,
  `activity3` int(2) NOT NULL,
  `activity4` int(2) NOT NULL,
  `activity5` int(2) NOT NULL,
  `activity6` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `approval4_detail`
--

INSERT INTO `approval4_detail` (`app4_id`, `app_id`, `activity1`, `activity2`, `activity3`, `activity4`, `activity5`, `activity6`) VALUES
(1, 53, 6, 5, 4, 3, 2, 1),
(2, 78, 0, 0, 0, 0, 0, 0),
(3, 86, 1, 2, 3, 4, 5, 6),
(4, 97, 6, 5, 4, 3, 2, 0),
(5, 9, 0, 0, 0, 0, 0, 0),
(6, 5, 0, 5, 0, 0, 0, 0),
(7, 18, 0, 0, 0, 0, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `approval_status`
--

CREATE TABLE `approval_status` (
  `app_id` int(11) NOT NULL,
  `prop_id` int(11) NOT NULL,
  `app_type` int(2) NOT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` date NOT NULL,
  `app_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `approval_status`
--

INSERT INTO `approval_status` (`app_id`, `prop_id`, `app_type`, `comments`, `editor`, `created`, `app_active`) VALUES
(1, 22, 1, '', '5630213024', '2017-01-09', 1),
(2, 22, 2, '', '10023', '2017-01-09', 1),
(3, 22, 3, '', '5630213070', '2017-01-09', 1),
(4, 22, 4, '', '5630213034', '2017-01-09', 1),
(5, 22, 5, '', '10028', '2017-01-09', 1),
(6, 22, 6, '', '10024', '2017-01-09', 1),
(7, 22, 7, '', '10025', '2017-01-09', 1),
(8, 22, 8, '', '10026', '2017-01-09', 0),
(9, 23, 1, '', '5630213024', '2017-01-09', 1),
(10, 23, 2, '', '10023', '2017-01-09', 0),
(11, 24, 1, '', '5630213024', '2017-01-09', 1),
(12, 25, 1, '', '5630213024', '2017-01-09', 1),
(13, 24, 2, '', '10023', '2017-01-09', 1),
(14, 26, 1, '', '5630213024', '2017-01-09', 1),
(15, 26, 2, 'gg', '10023', '2017-01-09', 1),
(16, 26, 3, '', '5630213070', '2017-01-09', 1),
(17, 26, 4, '', '5630213034', '2017-01-09', 1),
(18, 26, 5, '', '10028', '2017-01-09', 1),
(19, 26, 6, '', '10024', '2017-01-09', 1),
(20, 26, 7, '', '10025', '2017-01-09', 1),
(21, 26, 8, '', '10026', '2017-01-09', 0),
(22, 24, 3, '', '5630213070', '2017-01-09', 2),
(23, 27, 1, '', '5630213048', '2017-01-26', 0),
(24, 28, 1, '', '5630213048', '2017-01-26', 0),
(25, 25, 2, '', '10023', '2017-01-26', 1),
(26, 25, 3, '', '5630213070', '2017-01-26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `associations`
--

CREATE TABLE `associations` (
  `ass_id` int(255) NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  `club_taoo` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `associations`
--

INSERT INTO `associations` (`ass_id`, `ass_name`, `activity_name`, `ass_start`, `ass_stop`, `type_budjed`, `ass_location`, `budjed`, `budjed_alphabet`, `compulsory_type`, `awareness`, `social_skill`, `pride_institution`, `multi_culture`, `health_development`, `student_name`, `created_at`, `updated_at`, `club_taoo`) VALUES
(5555, '555', '', '0000-00-00', '0000-00-00', '', '', 0, '', 0, 0, 0, 0, 0, 0, '', NULL, NULL, '5555'),
(11111, 'hhhhh', '', '0000-00-00', '0000-00-00', '', '', 0, '', 0, 0, 0, 0, 0, 0, '', NULL, NULL, '1111111'),
(591121001, 'Test1', 'Test_proj1', '2016-11-21', '2016-11-30', 'ทุนคณะ', 'อาคาร 7', 20000, 'สองหมื่นบาทถ้วน', 40, 12, 12, 12, 12, 12, 'Thirawat Sae-siew', '2016-11-21 07:58:21', '2016-11-21 07:58:21', 'TE'),
(591121002, 'Test2', 'Test_proj2', '2016-11-21', '2016-11-30', 'ทุนคณะ', 'อาคาร 7', 20000, 'สองหมื่นบาทถ้วน', 40, 12, 12, 12, 12, 12, 'Thirawat Sae-siew', '2016-11-21 07:58:21', '2016-11-21 07:58:21', 'FHT');

-- --------------------------------------------------------

--
-- Table structure for table `club_position`
--

CREATE TABLE `club_position` (
  `pos_id` int(11) NOT NULL,
  `pos_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `member_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `member_fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `member_lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `member_faculty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `member_major` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `org_id` int(11) NOT NULL,
  `member_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `member_start` date NOT NULL,
  `member_stop` date NOT NULL,
  `member_tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `member_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `member_line` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `member_facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `psu_pass` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `member_title`, `member_fname`, `member_lname`, `member_faculty`, `member_major`, `org_id`, `member_position`, `member_start`, `member_stop`, `member_tel`, `member_email`, `member_line`, `member_facebook`, `created_at`, `updated_at`, `psu_pass`) VALUES
('5630213019', 'Mr.', 'Patavee', 'Tepsong', 'Technology and Environment', 'Software Engineering', 3, 'Vice President', '0000-00-00', '0000-00-00', '', '', '', '', NULL, NULL, ''),
('5630213024', 'Mr.', 'Thirawat', 'Sae-siew', 'Technology and Environment', 'Software Engineering', 3, 'Vice President', '0000-00-00', '0000-00-00', '', '', '', '', NULL, NULL, ''),
('5630213034', 'Mr.', 'Thirawat', 'Sae-siew', 'Technology and Environment', 'Software Engineering', 0, '', '0000-00-00', '0000-00-00', '', '', '', '', NULL, NULL, ''),
('5630213040', 'Mr.', 'Thongchai', 'Rawangcam', 'TE', 'SE', 0, '', '0000-00-00', '0000-00-00', '', '', '', '', NULL, NULL, ''),
('5630213048', 'Mr.', 'Patavee', 'Tepsong', 'Technology and Environment', 'Software Engineering', 4, 'president', '0000-00-00', '0000-00-00', '', '', '', '', NULL, NULL, ''),
('5630213070', 'Mr.', 'Thirawat', 'Sae-siew', 'Technology and Environment', 'Software Engineering', 0, '', '0000-00-00', '0000-00-00', '', '', '', '', NULL, NULL, ''),
('5630213076', 'Mr', 'Anan', '', '', '', 0, '', '0000-00-00', '0000-00-00', '', '', '', '', NULL, NULL, ''),
('5630213128', 'Mr.', 'Thirawat', 'Sae-siew', 'Technology and Environment', 'Software Engineering', 0, '', '0000-00-00', '0000-00-00', '', '', '', '', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `org_id` int(11) NOT NULL,
  `staff_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `org_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `org_acronym` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `org_status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `org_attribute` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`org_id`, `staff_id`, `org_name`, `org_acronym`, `org_status`, `org_attribute`) VALUES
(3, '10023', 'Test1', 't1', '', ''),
(4, '10027', 'Test2', 't2', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `project_prop`
--

CREATE TABLE `project_prop` (
  `prop_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` date NOT NULL,
  `activity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `begin_date` date NOT NULL,
  `end_date` date NOT NULL,
  `act_place` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `budget` int(8) NOT NULL,
  `other_budget` int(8) NOT NULL,
  `identify` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `member_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `compulsory_type` int(11) NOT NULL,
  `awareness` int(11) NOT NULL,
  `social_skill` int(11) NOT NULL,
  `pride_institution` int(11) NOT NULL,
  `multi_culture` int(11) NOT NULL,
  `health_development` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_prop`
--

INSERT INTO `project_prop` (`prop_id`, `org_id`, `location`, `date_created`, `activity`, `begin_date`, `end_date`, `act_place`, `budget`, `other_budget`, `identify`, `member_id`, `compulsory_type`, `awareness`, `social_skill`, `pride_institution`, `multi_culture`, `health_development`) VALUES
(1, 3, 'PSU', '2016-12-26', 'activityTest', '2016-12-01', '2016-12-26', 'Building 6', 0, 0, '', '5630213024', 1, 2, 3, 4, 5, 6),
(7, 3, 'PSU Phuket', '2017-01-06', 'Test code', '2017-01-06', '2017-01-09', 'Building 6', 0, 0, '', '5630213019', 1, 1, 1, 1, 1, 1),
(8, 3, 'PSU Phuket Building 7', '2017-01-08', 'activityTest', '2017-04-13', '2017-04-14', 'PSU Phuket', 0, 5000, 'budget test', '5630213024', 1, 2, 3, 4, 5, 6),
(9, 3, '', '2017-01-08', '', '0000-00-00', '0000-00-00', '', 0, 0, '', '5630213024', 0, 0, 0, 0, 0, 0),
(10, 3, '', '2017-01-08', '', '0000-00-00', '0000-00-00', '', 0, 0, '', '5630213024', 0, 0, 0, 0, 0, 0),
(11, 3, '', '2017-01-08', '', '0000-00-00', '0000-00-00', '', 0, 0, '', '5630213024', 0, 0, 0, 0, 0, 0),
(12, 3, '', '2017-01-08', '', '0000-00-00', '0000-00-00', '', 0, 0, '', '5630213024', 0, 0, 0, 0, 0, 0),
(13, 3, '', '2017-01-08', 'Q test', '0000-00-00', '0000-00-00', '', 0, 0, '', '5630213024', 0, 0, 0, 0, 0, 0),
(14, 3, 'PSU Phuket Building 7', '2017-01-08', 'GuGu', '2017-01-24', '2017-01-16', 'PSU Phuket', 130, 70, '', '5630213024', 1, 2, 3, 4, 5, 6),
(18, 3, 'Test3', '2017-01-09', 'Test3', '2017-01-01', '2017-01-09', 'Test3', 150, 50, 'Test3', '5630213024', 1, 2, 3, 4, 5, 6),
(19, 3, 'PSU Phuket Building 7', '2017-01-09', 'Traveling', '2017-01-01', '2017-01-09', 'PSU Phuket', 1000, 0, '', '5630213024', 1, 2, 3, 4, 5, 6),
(20, 3, 'PSU Phuket Building 7', '2017-01-09', 'Q test', '2017-01-01', '2017-01-09', 'PSU Phuket', 0, 0, '', '5630213024', 0, 0, 0, 0, 0, 0),
(21, 3, '', '2017-01-09', '', '0000-00-00', '0000-00-00', '', 0, 0, '', '5630213024', 0, 0, 0, 0, 0, 0),
(22, 3, '', '2017-01-09', 'GuGu', '0000-00-00', '0000-00-00', '', 0, 0, '', '5630213024', 0, 0, 0, 0, 0, 0),
(23, 3, '', '2017-01-09', 'Q test', '0000-00-00', '0000-00-00', '', 0, 0, '', '5630213024', 0, 0, 0, 0, 0, 0),
(24, 3, '8', '2017-01-09', 'à¸„à¹ˆà¸²à¸¢à¸­à¸²à¸ªà¸²', '2017-01-10', '2017-01-11', 'à¸ à¸¹à¹€à¸à¹‡à¸•', 2000, 0, '', '5630213024', 2, 2, 2, 3, 4, 5),
(25, 3, '', '2017-01-09', 'à¸„à¹ˆà¸²à¸¢à¸­à¸²à¸ªà¸²', '2017-01-10', '2017-01-11', 'à¸ à¹€à¸à¹‡à¸•', 2000, 0, '', '5630213024', 2, 3, 4, 5, 6, 7),
(26, 3, '89', '2017-01-09', 'run', '0000-00-00', '0000-00-00', 'PSU Phuket', 600, 0, '', '5630213024', 2, 3, 4, 5, 6, 7),
(27, 4, '1234', '2017-01-26', 'bbbb', '0000-00-00', '0000-00-00', '', 50000, 0, '', '5630213048', 10, 3, 3, 4, 5, 6),
(28, 4, '11111', '2017-01-26', 'test123', '2017-01-26', '2017-01-31', 'fffffffff', 50000, 0, '', '5630213048', 10, 20, 30, 40, 50, 60);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` varchar(255) NOT NULL,
  `staff_title` varchar(255) NOT NULL,
  `staff_fname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `staff_lname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `begin_date` date NOT NULL,
  `end_date` date NOT NULL,
  `staff_tel` varchar(255) NOT NULL,
  `staff_email` varchar(255) NOT NULL,
  `staff_line` varchar(255) CHARACTER SET utf8 NOT NULL,
  `staff_facebook` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_title`, `staff_fname`, `staff_lname`, `begin_date`, `end_date`, `staff_tel`, `staff_email`, `staff_line`, `staff_facebook`) VALUES
('10023', 'Dr.', 'Adisak', 'Inthana', '0000-00-00', '0000-00-00', '', 'adisak@phuket.psu.ac.th', '', ''),
('10024', 'Aj.', 'Maneenate', 'Puangmanee', '2016-08-24', '2016-12-19', '', 'maneenate@phuket.psu.ac.th', '', ''),
('10025', 'Dr.', 'Aziz', 'Nanthaamornphong', '2016-09-08', '2016-12-26', '', 'aziz.n@phuket.psu.ac.th', '', ''),
('10026', 'Aj.', 'Jamikorn', 'Hiranrat', '2016-12-01', '2016-12-31', '', 'jamikorn@phuket.psu.ac.th', '', ''),
('10027', 'Aj.', 'Kanjana', 'Thongklin', '0000-00-00', '0000-00-00', '', 'kanjana@phuket.psu.ac.th', '', ''),
('10028', 'Aj.', 'Jaedsada', 'Chaisorn', '0000-00-00', '0000-00-00', '', 'j.email.psu.ac.th', '', ''),
('5630211019', 'Miss', 'Juthakun', 'Chouymuang', '0000-00-00', '0000-00-00', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(15, '5630213049', '123456', 'Student Council'),
(16, '5630213036', '2510', 'Student Council'),
(25, '5630213089', '2510', 'Student Union'),
(26, '5630213076', '2510', 'Student Union'),
(29, '5630213088', '123456', 'Student Council'),
(31, '5630213035', '123456', 'Student Council'),
(33, '5630213123', '2510', 'Student Council'),
(46, '10024', '123456', 'Head of Student Affairs division'),
(48, '10025', '123456', 'Assistant to the President for Student Development'),
(51, '10026', '123456', 'Vice President for Academic Affairs for Phuket Campus'),
(55, '10023', '123456', 'Advisors'),
(60, '5630213128', '2510', 'Student Council'),
(61, '5630213024', '2510', 'Members'),
(62, '5630211019', '123', 'Staff'),
(63, '5630213034', '2510', 'Student Council'),
(64, '5630213048', '123456', 'Members'),
(65, '10027', '123456', 'Advisors'),
(66, '5630213019', '123456', 'Members'),
(67, '5630213070', '2510', 'Student Union'),
(68, '10028', '123456', 'Head of Student Activity section'),
(69, '5630213040', '123456', 'Student Council');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_type`
--
ALTER TABLE `activity_type`
  ADD PRIMARY KEY (`act_id`);

--
-- Indexes for table `approval3_detail`
--
ALTER TABLE `approval3_detail`
  ADD PRIMARY KEY (`app3_id`);

--
-- Indexes for table `approval4_detail`
--
ALTER TABLE `approval4_detail`
  ADD PRIMARY KEY (`app4_id`);

--
-- Indexes for table `approval_status`
--
ALTER TABLE `approval_status`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `associations`
--
ALTER TABLE `associations`
  ADD PRIMARY KEY (`ass_id`);

--
-- Indexes for table `club_position`
--
ALTER TABLE `club_position`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`org_id`);

--
-- Indexes for table `project_prop`
--
ALTER TABLE `project_prop`
  ADD PRIMARY KEY (`prop_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_type`
--
ALTER TABLE `activity_type`
  MODIFY `act_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `approval3_detail`
--
ALTER TABLE `approval3_detail`
  MODIFY `app3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `approval4_detail`
--
ALTER TABLE `approval4_detail`
  MODIFY `app4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `approval_status`
--
ALTER TABLE `approval_status`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `associations`
--
ALTER TABLE `associations`
  MODIFY `ass_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=591121003;
--
-- AUTO_INCREMENT for table `club_position`
--
ALTER TABLE `club_position`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `project_prop`
--
ALTER TABLE `project_prop`
  MODIFY `prop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
