-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2024 at 08:30 AM
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
-- Database: `weerapatdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custID` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `imageFile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custID`, `username`, `password`, `firstName`, `lastName`, `isActive`, `imageFile`) VALUES
(1, 'artz', '1', 'a', 'b', 1, 'avatar.png\r\n'),
(2, 'admin', '1234', 'admin', 'artz', 1, 'img1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rentcar`
--

CREATE TABLE `rentcar` (
  `idrent` int(10) NOT NULL,
  `idcar` int(10) NOT NULL,
  `price` char(10) NOT NULL,
  `custID` int(10) NOT NULL,
  `sdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `edate` timestamp NOT NULL DEFAULT current_timestamp(),
  `stime` time NOT NULL,
  `etime` time NOT NULL,
  `statusID` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rentcar`
--

INSERT INTO `rentcar` (`idrent`, `idcar`, `price`, `custID`, `sdate`, `edate`, `stime`, `etime`, `statusID`) VALUES
(1, 2, '1176', 1, '2024-10-21 17:00:00', '2024-10-23 17:00:00', '12:47:00', '13:47:00', 1),
(2, 1, '1065', 2, '2024-10-21 17:00:00', '2024-10-24 17:00:00', '12:49:00', '17:49:00', 1),
(3, 1, '1065', 1, '2024-10-21 17:00:00', '2024-10-24 17:00:00', '12:58:00', '15:58:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `viewcar`
--

CREATE TABLE `viewcar` (
  `idcar` int(10) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `cbrand` varchar(100) NOT NULL,
  `cgear` varchar(100) NOT NULL,
  `cprice` char(10) NOT NULL,
  `cpic` varchar(200) NOT NULL,
  `cseats` char(10) NOT NULL,
  `cyear` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `viewcar`
--

INSERT INTO `viewcar` (`idcar`, `cname`, `cbrand`, `cgear`, `cprice`, `cpic`, `cseats`, `cyear`) VALUES
(1, 'Nissan', 'Aimera', 'อัตโนมัติ', '1065', 'almera-model.jpg', '5', '2010'),
(2, 'Honda', 'City', 'อัตโนมัติ', '1176', 'hondacity.jpg', '4', '2013');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custID`);

--
-- Indexes for table `rentcar`
--
ALTER TABLE `rentcar`
  ADD PRIMARY KEY (`idrent`);

--
-- Indexes for table `viewcar`
--
ALTER TABLE `viewcar`
  ADD PRIMARY KEY (`idcar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `custID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rentcar`
--
ALTER TABLE `rentcar`
  MODIFY `idrent` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `viewcar`
--
ALTER TABLE `viewcar`
  MODIFY `idcar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
