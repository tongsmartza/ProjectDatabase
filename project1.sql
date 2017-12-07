-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2017 at 10:59 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

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
-- Table structure for table `confirmdetail`
--

CREATE TABLE `confirmdetail` (
  `ConfirmNO` int(12) NOT NULL,
  `LostID` int(5) NOT NULL,
  `DateConfirm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Place` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ItemID` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `StatusConfirm` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Facalty` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartmentName`, `Facalty`) VALUES
('คณิตศาสตร์', 'วิทยาศาสตร์'),
('ครุศาสตร์อุตสาหการ', 'ครุศาสตร์อุตสาหกรรมและเทคโนโลยี'),
('ครุศาสตร์เครื่องกล', 'ครุศาสตร์อุตสาหกรรมและเทคโนโลยี'),
('ครุศาสตร์โยธา', 'ครุศาสตร์อุตสาหกรรมและเทคโนโลยี'),
('คอมพิวเตอร์และเทคโนโลยีสารสนเทศ', 'ครุศาสตร์อุตสาหกรรมและเทคโนโลยี'),
('จุลชีววิทยา', 'วิทยาศาสตร์'),
('ฟิสิกส์', 'วิทยาศาสตร์'),
('วิทยาการคอมพิวเตอร์', 'เทคโนโลยีสารสนเทศ'),
('วิศวกรรมคอมพิวเตอร์', 'วิศวกรรมศาสตร์'),
('วิศวกรรมระบบควบคุมและเครื่องมือวัด', 'วิศวกรรมศาสตร์'),
('วิศวกรรมสิ่งแวดล้อม', 'วิศวกรรมศาสตร์'),
('วิศวกรรมหุ่นยนต์และระบบอัตโนมัติ ', 'สถาบันวิทยาการหุ่นยนต์ภาคสนาม (FIBO)'),
('วิศวกรรมอิเล็กทรอนิกส์และโทรคมนาคม', 'วิศวกรรมศาสตร์'),
('วิศวกรรมอุตสาหการ', 'วิศวกรรมศาสตร์'),
('วิศวกรรมเคมี', 'วิศวกรรมศาสตร์'),
('วิศวกรรมเครื่องกล', 'วิศวกรรมศาสตร์'),
('วิศวกรรมเครื่องมือและวัสดุ', 'วิศวกรรมศาสตร์'),
('วิศวกรรมเมคคาทรอนิกส์', 'วิศวกรรมศาสตร์'),
('วิศวกรรมโยธา', 'วิศวกรรมศาสตร์'),
('วิศวกรรมไฟฟ้า', 'วิศวกรรมศาสตร์'),
('สถาปัตยกรรมศาสตร์และการออกแบบ', 'สถาปัตยกรรมศาสตร์และการออกแบบ'),
('เคมี', 'วิทยาศาสตร์'),
('เทคโนโลยีการพิมพ์และบรรจุภัณฑ์', 'ครุศาสตร์อุตสาหกรรมและเทคโนโลยี'),
('เทคโนโลยีสารสนเทศ', 'เทคโนโลยีสารสนเทศ'),
('เทคโนโลยีและสื่อสารการศึกษา', 'ครุศาสตร์อุตสาหกรรมและเทคโนโลยี'),
('โครงการร่วมบริหารหลักสูตรฯ (มีเดีย)', 'ครุศาสตร์อุตสาหกรรมและเทคโนโลยี');

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

-- --------------------------------------------------------

--
-- Table structure for table `lostdetail`
--

CREATE TABLE `lostdetail` (
  `LostID` int(5) NOT NULL,
  `Username` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TypeItem` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Place` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DateLost` date NOT NULL,
  `Detail` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Localfile` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personaldetail`
--

CREATE TABLE `personaldetail` (
  `Status` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `EmployeeID` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `StudentID` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Firstname` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Lastname` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Facebook` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LineID` varchar(18) CHARACTER SET utf32 COLLATE utf32_unicode_ci DEFAULT NULL,
  `Password` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `DepartmentName` varchar(30) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `StaffTeamID` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Username` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Localfile` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personaldetail`
--

INSERT INTO `personaldetail` (`Status`, `EmployeeID`, `StudentID`, `Firstname`, `Lastname`, `Phone`, `Facebook`, `LineID`, `Password`, `DepartmentName`, `StaffTeamID`, `Username`, `Localfile`) VALUES
('', '', '58070501069', 'Sirapong', 'Phoosawan', '0875212861', 'Sirapong Phoosawan', '?????????', '', '????????????????????', '', '', ''),
('', '', '98765432101', 'OPA', 'POA', '9876543210', 'Peerakit Ingon', '????????????', '1????????', '????????????????????', '', 'peerakit', ''),
('', '', '98765432101', 'OPA', 'POA', '0812345678', 'Suky Boonkittiporn', '????????????', '7????????', '????????????????????', '', 'zasmarttong', '');

-- --------------------------------------------------------

--
-- Table structure for table `picdetail`
--

CREATE TABLE `picdetail` (
  `PicID` int(5) NOT NULL,
  `Localfile` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Username` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ItemID` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LostID` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `Place` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Worktime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`Place`, `Worktime`) VALUES
('CPE', '09:43:06'),
('ชั้น10 อาคารวิศววัฒนะ', '08:00:00'),
('ชั้น11 อาคารวิศววัฒนะ', '08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `searchdetail`
--

CREATE TABLE `searchdetail` (
  `SearchID` int(5) NOT NULL,
  `Username` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TypeSearch` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DateSearch` datetime DEFAULT CURRENT_TIMESTAMP,
  `TimeSearch` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `KeywordDetail` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `searchdetail`
--

INSERT INTO `searchdetail` (`SearchID`, `Username`, `TypeSearch`, `DateSearch`, `TimeSearch`, `KeywordDetail`) VALUES
(1, 'peerakit', '&#3650;&#3609;&#3658;&#3605;&#', '0000-00-00 00:00:00', '2017-12-05 17:00:00', '&#3626;&#3637;&#3604;&#3635; '),
(2, 'peerakit', 'Notebook', '2017-12-06 19:24:49', '2017-12-06 12:24:49', 'black'),
(4, 'peerakit', 'Notebook', '2017-12-06 21:17:10', '2017-12-06 14:17:10', 'black');

-- --------------------------------------------------------

--
-- Table structure for table `staffdetail`
--

CREATE TABLE `staffdetail` (
  `StaffTeamID` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Position` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `WorkHour` varchar(30) NOT NULL,
  `Office` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `OfficePhone` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `FBPage` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffdetail`
--

INSERT INTO `staffdetail` (`StaffTeamID`, `Position`, `WorkHour`, `Office`, `OfficePhone`, `FBPage`) VALUES
('001', 'admin', 'Monday', 'ชั้น11 อาคารวิศววัฒนะ', '0821234567', 'sirapong'),
('002', 'headstaff', 'Tuesday', 'ชั้น11 อาคารวิศววัฒนะ', '0821234567', ''),
('003', 'staff', 'Wednesday', 'ชั้น10 อาคารวิศววัฒนะ', '0872341321', ''),
('004', 'staff', 'Thursday', 'ชั้น10 อาคารวิศววัฒนะ', '0872341321', ''),
('005', 'staff', 'Friday', 'ชั้น10 อาคารวิศววัฒนะ', '0872341321', '');

-- --------------------------------------------------------

--
-- Table structure for table `storedetail`
--

CREATE TABLE `storedetail` (
  `StoreID` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NumberLocker` int(5) NOT NULL,
  `Place` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storedetail`
--

INSERT INTO `storedetail` (`StoreID`, `NumberLocker`, `Place`) VALUES
('001', 101, 'ชั้น11 อาคารวิศววัฒนะ'),
('002', 102, 'ชั้น11 อาคารวิศววัฒนะ'),
('003', 103, 'ชั้น11 อาคารวิศววัฒนะ'),
('004', 104, 'ชั้น11 อาคารวิศววัฒนะ');

-- --------------------------------------------------------

--
-- Table structure for table `typeitem`
--

CREATE TABLE `typeitem` (
  `TypeItem` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `typeitem`
--

INSERT INTO `typeitem` (`TypeItem`) VALUES
('กระเป๋าตังค์'),
('กระเป๋าทั่วไป'),
('กุญแจ'),
('สาว'),
('หนังสือ'),
('หูฟัง'),
('เมาส์'),
('แว่นตา'),
('โทรศัพท์มือถือ'),
('โน๊ตบุ๊ค');

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

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `confirmdetail`
--
ALTER TABLE `confirmdetail`
  MODIFY `ConfirmNO` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `founddetail`
--
ALTER TABLE `founddetail`
  MODIFY `ItemID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lostdetail`
--
ALTER TABLE `lostdetail`
  MODIFY `LostID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `picdetail`
--
ALTER TABLE `picdetail`
  MODIFY `PicID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `searchdetail`
--
ALTER TABLE `searchdetail`
  MODIFY `SearchID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
