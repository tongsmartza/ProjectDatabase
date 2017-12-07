-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2017 at 07:37 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `confirmdetail`
--

CREATE TABLE `confirmdetail` (
  `ConfirmNO` varchar(12) CHARACTER SET utf8 NOT NULL,
  `LostID` varchar(5) NOT NULL,
  `DateConfirm` date NOT NULL,
  `Place` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `ItemID` varchar(5) NOT NULL,
  `StatusConfirm` varchar(2) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentName` varchar(30) NOT NULL,
  `Facalty` varchar(30) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `founddetail`
--

CREATE TABLE `founddetail` (
  `ItemID` varchar(5) NOT NULL,
  `Username` varchar(30) CHARACTER SET utf8 NOT NULL,
  `StaffTeamID` varchar(5) CHARACTER SET utf8 NOT NULL,
  `StoreID` varchar(5) DEFAULT NULL,
  `TypeItem` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `Place` varchar(30) CHARACTER SET utf8 NOT NULL,
  `DateFound` date NOT NULL,
  `DateOut` date NOT NULL,
  `StatusItem` varchar(11) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lostdetail`
--

CREATE TABLE `lostdetail` (
  `LostID` varchar(5) NOT NULL,
  `Username` varchar(30) CHARACTER SET utf8 NOT NULL,
  `TypeItem` varchar(30) CHARACTER SET utf8 NOT NULL,
  `Place` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `DateLost` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personaldetail`
--

CREATE TABLE `personaldetail` (
  `Status` varchar(1) CHARACTER SET utf8 NOT NULL,
  `EmployeeID` varchar(5) NOT NULL,
  `StudentID` varchar(12) CHARACTER SET utf8 NOT NULL,
  `Firstname` varchar(15) CHARACTER SET utf8 NOT NULL,
  `Lastname` varchar(15) CHARACTER SET utf8 NOT NULL,
  `Nickname` varchar(10) CHARACTER SET utf8 NOT NULL,
  `Phone` varchar(11) CHARACTER SET utf8 NOT NULL,
  `Facebook` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `LineID` varchar(18) CHARACTER SET utf8 DEFAULT NULL,
  `Password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `DepartmentName` varchar(30) CHARACTER SET utf8 NOT NULL,
  `StaffTeamID` varchar(5) NOT NULL,
  `Username` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personaldetail`
--


-- --------------------------------------------------------

--
-- Table structure for table `picdetail`
--

CREATE TABLE `picdetail` (
  `PicID` varchar(5) NOT NULL,
  `Localfile` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Username` varchar(30) CHARACTER SET utf8 NOT NULL,
  `ItemID` varchar(5) NOT NULL,
  `LostID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `Place` varchar(30) CHARACTER SET utf8 NOT NULL,
  `Worktime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `searchdetail`
--

CREATE TABLE `searchdetail` (
  `SearchID` varchar(5) NOT NULL,
  `Username` varchar(30) CHARACTER SET utf8 NOT NULL,
  `TypeSearch` varchar(30) CHARACTER SET utf8 NOT NULL,
  `DateSearch` date NOT NULL,
  `TimeSearch` time NOT NULL,
  `KeywordDetail` varchar(30) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staffdetail`
--

CREATE TABLE `staffdetail` (
  `StaffTeamID` varchar(5) NOT NULL,
  `Position` varchar(30) CHARACTER SET utf8 NOT NULL,
  `WorkHour` time NOT NULL,
  `Office` varchar(30) CHARACTER SET utf8 NOT NULL,
  `OfficePhone` varchar(11) NOT NULL,
  `FBPage` varchar(30) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `storedetail`
--

CREATE TABLE `storedetail` (
  `StoreID` varchar(5) NOT NULL,
  `NumberLocker` int(5) NOT NULL,
  `Place` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `typeitem`
--

CREATE TABLE `typeitem` (
  `TypeItem` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `confirmdetail`
--
ALTER TABLE `confirmdetail`
  ADD PRIMARY KEY (`ConfirmNO`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentName`);

--
-- Indexes for table `founddetail`
--
ALTER TABLE `founddetail`
  ADD PRIMARY KEY (`ItemID`),
  ADD KEY `FK_founddetail_storedetail_StoreID` (`StoreID`);

--
-- Indexes for table `lostdetail`
--
ALTER TABLE `lostdetail`
  ADD PRIMARY KEY (`LostID`);

--
-- Indexes for table `personaldetail`
--
ALTER TABLE `personaldetail`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `picdetail`
--
ALTER TABLE `picdetail`
  ADD PRIMARY KEY (`PicID`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`Place`);

--
-- Indexes for table `searchdetail`
--
ALTER TABLE `searchdetail`
  ADD PRIMARY KEY (`SearchID`);

--
-- Indexes for table `staffdetail`
--
ALTER TABLE `staffdetail`
  ADD PRIMARY KEY (`StaffTeamID`);

--
-- Indexes for table `storedetail`
--
ALTER TABLE `storedetail`
  ADD PRIMARY KEY (`StoreID`);

--
-- Indexes for table `typeitem`
--
ALTER TABLE `typeitem`
  ADD PRIMARY KEY (`TypeItem`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
