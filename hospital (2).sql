-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2025 at 09:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_branch`
--

CREATE TABLE `account_branch` (
  `id` int(11) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_reg` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_branch`
--

INSERT INTO `account_branch` (`id`, `full_name`, `username`, `password`, `status`, `profile`, `gender`, `email`, `date_reg`, `role`) VALUES
(14, 'jhon abraham', 'jhon_abraham24', 'jhon_abraham54', '', '', '', 'jhon_abraham@gmail.com', '', 'account_branch'),
(16, 'fgfg', 'asdf', 'adsf', '', '', '', 'asf', '', 'ipd/opd'),
(18, 'milan', 'manager', 'admin', 'approved', 'photo_2024-08-28_14-03-58.jpg', '', 'milan@hms', '', 'ipd/opd');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL,
  `admin_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `phone`, `username`, `gender`, `password`, `profile`, `status`, `admin_status`) VALUES
(3, 'admin', 'admin@gmail.com', '41488', 'admin', 'male', 'admin', 'doctor_1.jpg', 'approved', 'main admin'),
(4, 'admin123', 'admin123@gmail.com', '484748', 'admin12345', 'male', 'admin', '', 'active', ''),
(5, 'jhon abraham', 'admin456465@gmail.com', '8454545454', 'admin30', 'female', 'admin', '', 'active', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `full_name` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `department` varchar(55) NOT NULL,
  `salary` varchar(30) NOT NULL,
  `role` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `full_name`, `email`, `department`, `salary`, `role`, `username`, `password`, `status`) VALUES
(1, 'Dr. Monica Bambroo', 'drjulieofficial@gmail.com', 'Dermatology', '5000', '', 'arif', 'admin', 'approved'),
(2, 'Dr. Rahul Gupta', 'Dr.Jhon@gmail.com', 'Neurology', '2500', '', 'jhon', 'admin', 'approved'),
(3, 'Dr.Ariful Islam', 'dr.ariful@gmail.com', 'Orthopedics', '3500', '', 'doctor2', 'admin', 'approved'),
(4, 'hossain arif', 'hossainarif@gmail.com', 'Cardiology', '2300', '', '', '', 'pending'),
(5, 'sdfgsdfg', 'sdfgdfsg@gmail.com', 'Orthopedics', '25000', '', '', '', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `date_reg` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `date_join` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `full_name`, `email`, `username`, `password`, `date_reg`, `profile`, `role`, `gender`, `date_join`, `status`) VALUES
(25, 'Sharmin Akter', 'employee@hms.com', 'staff', 'admin', '22/10/2024', 'admin.jpeg', 'employee', 'female', '', 'approved'),
(26, 'employee2', 'employee@hms.com', 'eployee2', 'admin', '', 'asdfsdfprocoder.jpg', 'employee', '', '', 'pending'),
(27, 'employee3', 'employee3@hms.com', 'employee3', 'employee3', '', 'doctor_1.jpg', 'employee', '', '', ''),
(28, 'shs', 'asdfgasdf', 'sdfg', 'fdgdsfg', '', '4654567487sdfasd.jpg', 'staff', '', '', ''),
(29, '', '', '', '', '', '4654567487sdfasd.jpg', 'staff', '', '', ''),
(30, '1654654', 'sdfg', 'sdfg', 'sdfgsdfg', '', '', 'staff', '', '', ''),
(31, 'sdgfg', 'sfdgsfg@gmail.com', 'sdfg', 'sfg', '', '', 'staff', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `link_visibility`
--

CREATE TABLE `link_visibility` (
  `id` int(11) NOT NULL,
  `visible` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `link_visibility`
--

INSERT INTO `link_visibility` (`id`, `visible`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `email` varchar(55) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `full_name`, `username`, `password`, `status`, `phone`, `email`, `profile`, `file_path`, `image`) VALUES
(21, 'Alex Sunny', 'patient3', 'admin', 'approved', '54654654', 'alexsunny@gmail.com', 'accountant@4x.png', '', ''),
(27, 'new patient', 'patient22', 'admin', 'pending', '4654654', 'newpatioent@gmail.com', 'admin.jpeg', '../patient/uploads/admin.jpeg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_branch`
--
ALTER TABLE `account_branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link_visibility`
--
ALTER TABLE `link_visibility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_branch`
--
ALTER TABLE `account_branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `link_visibility`
--
ALTER TABLE `link_visibility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
