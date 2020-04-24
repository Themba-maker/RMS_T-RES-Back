-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2020 at 09:03 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `password` varchar(255) NOT NULL,
  `confirm_password` int(255) NOT NULL
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
  `gender` tinyint(1) NOT NULL,
  `disability` tinyint(1) DEFAULT NULL,
  `contact_student` int(20) NOT NULL,
  `contact_guardian` int(20) NOT NULL,
  `campus_study` varchar(500) NOT NULL,
  `faculty` varchar(500) NOT NULL,
  `course` varchar(500) NOT NULL,
  `year_of_admission` year(4) NOT NULL,
  `sponsor` varchar(500) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD PRIMARY KEY (`student_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
