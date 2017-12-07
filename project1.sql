-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2017 at 12:17 PM
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
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `founddetail`
--

CREATE TABLE `founddetail` (
  `ItemID` int(5) NOT NULL,
  `Username` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `StaffTeamID` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `StoreID` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TypeItem` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Place` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DateFound` date NOT NULL,
  `DateOut` date DEFAULT NULL,
  `StatusItem` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Localfile` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `founddetail`
--
ALTER TABLE `founddetail`
  ADD PRIMARY KEY (`ItemID`),
  ADD UNIQUE KEY `UK_founddetail_StaffTeamID` (`StaffTeamID`),
  ADD KEY `FK_founddetail_storedetail_StoreID` (`StoreID`),
  ADD KEY `FK_founddetail_typeitem_TypeItem` (`TypeItem`),
  ADD KEY `FK_founddetail_place_Place` (`Place`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `founddetail`
--
ALTER TABLE `founddetail`
  MODIFY `ItemID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `founddetail`
--
ALTER TABLE `founddetail`
  ADD CONSTRAINT `FK_founddetail_place_Place` FOREIGN KEY (`Place`) REFERENCES `place` (`Place`),
  ADD CONSTRAINT `FK_founddetail_storedetail_StoreID` FOREIGN KEY (`StoreID`) REFERENCES `storedetail` (`StoreID`),
  ADD CONSTRAINT `FK_founddetail_typeitem_TypeItem` FOREIGN KEY (`TypeItem`) REFERENCES `typeitem` (`TypeItem`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
