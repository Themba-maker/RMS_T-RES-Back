-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2020 at 05:45 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rmsdb`
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
('Ashley\'s Male Residence', '0725001445', 785, 'Dumazwe street', 'Soshanguve', 2001, '56789', 'hurambi@gmail.com', '9', 'Pretoria', 'Gauteng', 'South Africa', 'Ashley\'s Male Residence', 'Ashley Hurambi '),
('Kea Female Commune', '0742582145', 86, 'Female first Street', 'Polokwane', 7000, '12345', 'kea@gmail.com', '8', 'Pretoria', 'Gauteng', 'South Africa', 'Kea Student Female Accomdation', 'kea Kamva little'),
('ICEP', '0315698453', 0, 'white steet', 'Sosha', 3000, '11111', 'lwethu@gmail.com', 'fv541dsvs', 'PTA', 'GAUTENG', 'SOUTH AFRICA', 'LWETHU SMITH', 'LWETHU SMITH'),
('Mahlangu Student Residence', '0742586321', 5, 'Capsule street ', 'Soshanguve', 2001, '321654', 'mahlang@gmail.com', '5', 'Pretoria', 'Gauteng', 'South Africa', 'Mahlangu  Residence', 'Mandla Mahlangu'),
('Malele Commune ', '085.714.4562', 25, 'Thanda abantu street', 'Pretoria', 2001, '789456', 'malele@gmail.com', '4', 'Pretoria', 'Gauteng', 'South Africa', 'Malele Commune House', 'Amanda Malele'),
(' Mthethwa student Accommodation', '0651234565', 65, 'Autumn Street ', 'Arcadia', 2000, '54321', 'mthethwa@gmail.com', '6', 'Pretoria', 'Gauteng', 'South Africa', 'Mthethwa Accommodation', 'Thembakazi Augustine Mthethwa '),
('Ntwani Investments ', '0789945612', 789, 'Porcelain Drive ', 'Pretoria', 3000, '45612', 'ntwanano@gmail.com', '7', 'Pretoria', 'Gauteng', 'South Africa', 'Ntwani Investments', 'Ntwanano Elizabeth'),
('Red House', '04455555888', 2365, 'Black steet', 'Mamelodi', 5555, '11111', 'themba@gmail.com', 'hgg555', 'DBN', 'GAUTENG', 'SOUTH AFRICA', 'THEMBA Kyle', 'THEMBA Kyle');

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
(0, 'themba@gmail.com', 700, 500, 700, 6, 2, 'Soshanguve', 1, '2020-07-23 15:59:31', 'pending', 0),
(4, 'malele@gmail.com', 600, 600, 600, 3, 2, 'Arts', 1, '2020-07-23 17:04:28', 'Accepted', 250),
(5, 'mahlangu@gmail.com', 100, 100, 100, 2, 2, 'Soshanguve', 1, '2020-07-23 17:04:28', 'Accepted', 60),
(6, 'mthethwa@gmail.com', 50, 50, 100, 2, 2, 'Arcadia', 1, '2020-07-23 17:04:28', 'pending', 0),
(7, 'ntwanano@gmail.com', 800, 100, 450, 3, 2, 'Pretoria', 1, '2020-07-23 17:04:28', 'pending', 0),
(8, 'kea@gmail.com', 100, 0, 50, 2, 2, 'Polokwane', 1, '2020-07-23 17:10:01', 'Accepted', 10),
(9, 'hurambi@gmail.com', 0, 200, 100, 2, 2, 'Soshanguve ', 1, '2020-07-23 17:10:01', 'Accepted', 20);

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
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `student_no` varchar(255) NOT NULL,
  `landlord_name` varchar(255) NOT NULL,
  `property_name` varchar(100) NOT NULL,
  `floor` int(11) DEFAULT 0,
  `room_no` int(11) DEFAULT 0,
  `bed_no` int(11) DEFAULT 0,
  `date_located` date NOT NULL,
  `apply_date` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`student_no`, `landlord_name`, `property_name`, `floor`, `room_no`, `bed_no`, `date_located`, `apply_date`, `status`) VALUES
('216168631', 'boss@gmail.com', '', 2, 43, NULL, '2020-05-14', '2020-05-14', 'PENDING'),
('21616554', 'john@gmail.com', '', 1, 12, 1, '0000-00-00', '0000-00-00', 'pending'),
('215843235', 'john@gmail.com', '', 1, 13, 1, '0000-00-00', '0000-00-00', 'pending'),
('219542689', 'boss@gmail.com', '', 2, 44, 2, '2020-07-13', '2020-07-08', ''),
('219874215', 'john@gmail.com', '', 1, 25, 1, '2020-07-17', '2020-07-13', '');

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
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_no`);

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD KEY `student_no` (`student_no`(191));
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
