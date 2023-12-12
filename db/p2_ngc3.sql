-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 09:48 AM
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
-- Database: `p2_ngc3`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `ItemCode` varchar(50) NOT NULL,
  `Stock` int(11) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL CHECK (`Status` in ('active','broken'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ID`, `Name`, `ItemCode`, `Stock`, `Description`, `Status`) VALUES
(2, 'Item2', 'CODE002', 50, 'Description for Item2', 'broken'),
(3, 'Item3', 'CODE003', 75, 'Description for Item3', 'active'),
(4, 'Item4', 'CODE004', 120, 'Description for Item4', 'broken'),
(5, 'Item5', 'CODE005', 30, 'Description for Item5', 'active'),
(6, 'Item6', 'CODE006', 100, 'Description for Item6', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
