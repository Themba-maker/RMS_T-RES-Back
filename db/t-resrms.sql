-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2020 at 06:38 PM
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
-- Database: `t-resrms`
--

-- --------------------------------------------------------

--
-- Table structure for table `landlord`
--

CREATE TABLE `landlord` (
  `email_address` varchar(255) NOT NULL,
  `registration_no` varchar(500) NOT NULL,
  `company_name` varchar(500) NOT NULL,
  `telephone` int(20) NOT NULL,
  `house_number` int(100) NOT NULL,
  `street_name` varchar(500) NOT NULL,
  `suburb` varchar(500) NOT NULL,
  `city/town` varchar(500) NOT NULL,
  `Zip_code` int(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `landlord`
--

INSERT INTO `landlord` (`email_address`, `registration_no`, `company_name`, `telephone`, `house_number`, `street_name`, `suburb`, `city/town`, `Zip_code`, `province`, `country`, `status`, `password`) VALUES
('scorpionking@monster', '', '', 0, 0, '', '', '', 0, '', '', 0, 'password');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `property_name` varchar(255) NOT NULL,
  `landlord_email` varchar(255) NOT NULL,
  `occupied_beds` int(11) NOT NULL,
  `vacant_beds` int(11) NOT NULL,
  `applications` int(11) NOT NULL,
  `occupied_male_beds` int(11) NOT NULL,
  `occupied_female_beds` int(11) NOT NULL,
  `ratings` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_no` int(255) NOT NULL,
  `Full_names` text NOT NULL,
  `Last_name` text NOT NULL,
  `Id_no` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `disability` varchar(255) NOT NULL,
  `contact_student` int(20) NOT NULL,
  `student_email` varchar(255) NOT NULL,
  `guardian_FullName` text NOT NULL,
  `guardian_lastName` text NOT NULL,
  `contact_guardian` int(20) NOT NULL,
  `medicalAid_name` varchar(255) NOT NULL,
  `medicalAid_no` int(255) NOT NULL,
  `medicalAid_plan` varchar(255) NOT NULL,
  `mainMember_title` varchar(255) NOT NULL,
  `mainMember_FullNames` varchar(255) NOT NULL,
  `mainMember_lastName` varchar(255) NOT NULL,
  `mainID_no` varchar(255) NOT NULL,
  `mainContact_no` int(255) NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `campus_study` varchar(500) NOT NULL,
  `faculty` varchar(500) NOT NULL,
  `course` varchar(500) NOT NULL,
  `year_of_admission` year(4) NOT NULL,
  `sponsor` varchar(500) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_no`, `Full_names`, `Last_name`, `Id_no`, `gender`, `disability`, `contact_student`, `student_email`, `guardian_FullName`, `guardian_lastName`, `contact_guardian`, `medicalAid_name`, `medicalAid_no`, `medicalAid_plan`, `mainMember_title`, `mainMember_FullNames`, `mainMember_lastName`, `mainID_no`, `mainContact_no`, `relationship`, `campus_study`, `faculty`, `course`, `year_of_admission`, `sponsor`, `password`) VALUES
(12345, 'Othandwayo', 'Manzi', 122425635, '0', '0', 78546321, '', '', '', 76545421, '', 0, '', '', '', '', '', 0, '', 'sosha south', 'Humanities', 'BED:Foundation phase', 2018, 'Funza lushaka', '$2a$10$L6CEv82uaIWoCBkICVYWnuPjS3E9TRhm2GZSANSI/OS/XR5wkqCIy');

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `student_no` varchar(255) DEFAULT NULL,
  `landlord_email` varchar(255) NOT NULL,
  `floor` int(255) NOT NULL DEFAULT 0,
  `room_no` int(255) NOT NULL DEFAULT 0,
  `bed_no` int(255) NOT NULL DEFAULT 0,
  `date_located` date NOT NULL DEFAULT current_timestamp(),
  `apply_date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`student_no`, `landlord_email`, `floor`, `room_no`, `bed_no`, `date_located`, `apply_date`, `status`) VALUES
('216168631', 'boss@gmail.com', 2, 12, 1, '0000-00-00', '0000-00-00', 'Pending'),
('216168631', 'boss@gmail.com', 2, 12, 1, '0000-00-00', '0000-00-00', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `landlord`
--
ALTER TABLE `landlord`
  ADD PRIMARY KEY (`registration_no`),
  ADD UNIQUE KEY `email_address` (`email_address`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_no`),
  ADD UNIQUE KEY `mainID_no` (`mainID_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
