-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2020 at 12:48 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `landlord`
--

CREATE TABLE `landlord` (
  `company_name` varchar(500) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `house_number` int(100) NOT NULL,
  `street_name` varchar(500) NOT NULL,
  `suburb` varchar(500) NOT NULL,
  `zip_code` int(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `landlord_email` varchar(30) NOT NULL,
  `registration_no` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `property_name` varchar(40) NOT NULL,
  `full_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `landlord`
--

INSERT INTO `landlord` (`company_name`, `telephone`, `house_number`, `street_name`, `suburb`, `zip_code`, `password`, `landlord_email`, `registration_no`, `city`, `province`, `country`, `property_name`, `full_name`) VALUES
('Palm House', '04455555888', 2365, 'Black steet', 'Mamelodi', 9652, '11111', 'cecil@gmail.com', 'hs44555', 'DBN', 'GAUTENG', 'SOUTH AFRICA', 'CECIL Kyle', 'CECIL Kyle'),
('ICEP', '0315698453', 0, 'white steet', 'Sosha', 3000, '11111', 'lwethu@gmail.com', 'fv541dsvs', 'PTA', 'GAUTENG', 'SOUTH AFRICA', 'LWETHU SMITH', 'LWETHU SMITH'),
('Red House', '04455555888', 2365, 'Black steet', 'Mamelodi', 5555, '11111', 'themba@gmail.com', 'hgg555', 'DBN', 'GAUTENG', 'SOUTH AFRICA', 'THEMBA Kyle', 'THEMBA Kyle');

-- --------------------------------------------------------

--
-- Table structure for table `landlord_issue`
--

CREATE TABLE `landlord_issue` (
  `landlord_email` int(10) NOT NULL,
  `issue-type` varchar(250) NOT NULL,
  `issue-description` varchar(500) NOT NULL,
  `admin_email` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `Id` int(11) NOT NULL,
  `landlord_email` varchar(30) NOT NULL,
  `numFemale_beds` int(11) NOT NULL,
  `numMale_beds` int(11) NOT NULL,
  `num_rooms` int(11) NOT NULL,
  `num_floors` int(11) NOT NULL,
  `bedsPerRoom` int(11) NOT NULL,
  `campus` varchar(255) NOT NULL,
  `blocks` int(11) NOT NULL DEFAULT 1,
  `date_apply` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(15) DEFAULT 'pending',
  `occupied_rooms` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`Id`, `landlord_email`, `numFemale_beds`, `numMale_beds`, `num_rooms`, `num_floors`, `bedsPerRoom`, `campus`, `blocks`, `date_apply`, `status`, `occupied_rooms`) VALUES
(0, 'cecil@gmail.com', 100, 100, 100, 2, 2, 'Arcadia', 1, '2020-07-23 15:58:31', 'pending', 0),
(0, 'lwethu@gmail.com', 300, 400, 1000, 2, 2, 'Malahleni', 1, '2020-07-23 15:59:00', 'pending', 0),
(0, 'themba@gmail.com', 700, 500, 700, 6, 2, 'Soshanguve', 1, '2020-07-23 15:59:31', 'pending', 0);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `student_no` varchar(255) NOT NULL,
  `landlord_name` varchar(255) NOT NULL,
  `property_name` varchar(100) NOT NULL,
  `floor` int(11) DEFAULT 0,
  `room_no` int(11) DEFAULT 0,
  `bed_no` int(11) DEFAULT 0,
  `date_located` date NOT NULL,
  `apply_date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `issue_type` varchar(255) NOT NULL,
  `issue_description` varchar(255) NOT NULL,
  `issue_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`student_no`, `landlord_name`, `property_name`, `floor`, `room_no`, `bed_no`, `date_located`, `apply_date`, `status`, `issue_type`, `issue_description`, `issue_date`) VALUES
('216168631', 'boss@gmail.com', '', 2, 43, NULL, '2020-05-14', '2020-05-14', 'PENDING', '', '', '2020-07-28'),
('21616554', 'john@gmail.com', '', 1, 12, 1, '0000-00-00', '0000-00-00', 'pending', '', '', '2020-07-28'),
('215843235', 'john@gmail.com', '', 1, 13, 1, '0000-00-00', '0000-00-00', 'pending', '', '', '2020-07-28'),
('219542689', 'boss@gmail.com', '', 2, 44, 2, '2020-07-13', '2020-07-08', '', '', '', '2020-07-28'),
('219874215', 'john@gmail.com', '', 1, 25, 1, '2020-07-17', '2020-07-13', '', '', '', '2020-07-28');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_no` bigint(10) NOT NULL,
  `Full_names` text NOT NULL,
  `Last_name` text NOT NULL,
  `Id_no` varchar(13) NOT NULL,
  `gender` varchar(13) NOT NULL,
  `disability` tinyint(1) DEFAULT 0,
  `contact_student` int(20) NOT NULL,
  `contact_guardian` int(20) NOT NULL,
  `campus_study` varchar(500) NOT NULL,
  `year_of_admission` year(4) NOT NULL,
  `sponsor` varchar(500) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_no`, `Full_names`, `Last_name`, `Id_no`, `gender`, `disability`, `contact_student`, `contact_guardian`, `campus_study`, `year_of_admission`, `sponsor`, `password`) VALUES
(216154845, 'james ', 'selepe', '87', '0', NULL, 0, 0, '', 0000, '', ''),
(2158745685, 'Sheron', 'Kumalo', '971227854101', 'female', 0, 872145682, 827745821, 'Soshanguve', 2018, 'NSFAS', 'sheron102@@'),
(2181478524, 'Molungisi', 'xaba', '9508211454785', 'male', 0, 824711777, 721474715, 'Soshanguve', 2019, 'NSFAS', 'hftt2j'),
(2187784751, 'Johannes', 'Kalema', '9501027854123', 'male', 1, 713214777, 827774412, 'Soshanguve', 2016, 'NSFAS', 'dodle36'),
(2191478524, 'Donald', 'seleka', '9603047854687', 'male', 0, 734785412, 822145668, 'soshanguve', 2018, 'NSFAS', '015494sdxs'),
(2191478777, 'Martin', 'Zuma', '9603201474789', 'male', 1, 824711454, 824578132, 'Soshanguve', 2019, 'NSFAS', 'you201you'),
(2197847517, 'Thapelo', 'Thantsha', '9702027854123', 'female', 1, 746587125, 824784712, 'Soshanguve', 2017, 'NSFAS', 'udfdiyfgu');

-- --------------------------------------------------------

--
-- Table structure for table `student_issue`
--

CREATE TABLE `student_issue` (
  `student_no` int(10) NOT NULL,
  `issue-type` varchar(250) NOT NULL,
  `issue-description` varchar(500) NOT NULL,
  `landlord_email` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `landlord`
--
ALTER TABLE `landlord`
  ADD PRIMARY KEY (`landlord_email`);
ALTER TABLE `landlord` ADD FULLTEXT KEY `landlord_email` (`landlord_email`);

--
-- Indexes for table `property`
--
ALTER TABLE `property` ADD FULLTEXT KEY `landlord_email` (`landlord_email`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD KEY `student_no` (`student_no`(191));

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
