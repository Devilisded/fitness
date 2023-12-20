-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 12:49 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitness`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `adminemail` varchar(50) NOT NULL,
  `adminname` varchar(50) NOT NULL,
  `adminpassword` varchar(50) NOT NULL,
  `weight` varchar(50) NOT NULL,
  `height` varchar(50) NOT NULL,
  `bmi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `adminemail`, `adminname`, `adminpassword`, `weight`, `height`, `bmi`) VALUES
(8, 'aksh@gmail.com', 'Akshit', '123456', '61', '170', 21);

-- --------------------------------------------------------

--
-- Table structure for table `calories`
--

CREATE TABLE `calories` (
  `id` int(11) NOT NULL,
  `mealname` varchar(50) NOT NULL,
  `calories` varchar(50) NOT NULL,
  `caloid` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calories`
--

INSERT INTO `calories` (`id`, `mealname`, `calories`, `caloid`, `date`) VALUES
(20, 'Sprouts salad', '125', 8, '18December2023'),
(21, 'sholley', '210', 8, '18December2023');

-- --------------------------------------------------------

--
-- Table structure for table `exercise`
--

CREATE TABLE `exercise` (
  `exerciseid` int(11) NOT NULL,
  `exercisetype` varchar(50) NOT NULL,
  `exercisename` varchar(50) NOT NULL,
  `exercisereps` int(11) NOT NULL,
  `exerciseset` int(11) NOT NULL,
  `exid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exercise`
--

INSERT INTO `exercise` (`exerciseid`, `exercisetype`, `exercisename`, `exercisereps`, `exerciseset`, `exid`) VALUES
(4, 'chest', 'Bench Press', 12, 3, 0),
(5, 'chest', 'Incline Bench Press', 15, 4, 0),
(6, 'chest', 'Pec Dec Fly', 20, 5, 0),
(7, 'biceps', 'Curls', 15, 4, 0),
(8, 'chest', 'Bench Press', 15, 4, 1),
(9, 'chest', 'Bench Press', 15, 4, 2),
(10, 'chest', 'Pec Dec Fly', 20, 3, 1),
(11, 'chest', 'Bench Press', 15, 4, 5),
(12, 'shoulder', 'Sofa', 1500, 500, 1),
(13, 'cardio', 'hello', 0, 0, 10),
(14, 'chest', 'Pec Dec Fly', 15, 4, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `calories`
--
ALTER TABLE `calories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercise`
--
ALTER TABLE `exercise`
  ADD PRIMARY KEY (`exerciseid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `calories`
--
ALTER TABLE `calories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `exercise`
--
ALTER TABLE `exercise`
  MODIFY `exerciseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
