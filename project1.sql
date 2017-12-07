-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2017 at 05:00 PM
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
  `Place` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ItemID` int(5) NOT NULL,
  `StatusConfirm` varchar(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `confirmdetail`
--

INSERT INTO `confirmdetail` (`ConfirmNO`, `LostID`, `DateConfirm`, `Place`, `ItemID`, `StatusConfirm`) VALUES
(1, 17, '2017-12-07 22:39:58', 'ชั้น10 อาคารวิศววัฒนะ', 9, 'Y');

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
  `Username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `StaffTeamID` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `StoreID` int(5) NOT NULL,
  `TypeItem` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Place` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `DateFound` date NOT NULL,
  `DateOut` date DEFAULT NULL,
  `StatusItem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Localfile` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `KeywordDetail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `founddetail`
--

INSERT INTO `founddetail` (`ItemID`, `Username`, `StaffTeamID`, `StoreID`, `TypeItem`, `Place`, `DateFound`, `DateOut`, `StatusItem`, `Localfile`, `KeywordDetail`) VALUES
(8, 'peerakit', '002', 1, 'กระเป๋าตังค์', 'ชั้น10 อาคารวิศววัฒนะ', '2017-12-06', NULL, 'อยู่ในล๊อคเกอร์', NULL, 'สีดำหนัง'),
(9, 'NongYao', '0001', 2, 'เมาส์', 'ชั้น10 อาคารวิศววัฒนะ', '2017-12-04', '2017-12-07', 'คืนเจ้าของแล้ว Fair', NULL, NULL),
(12, 'นาว', '0002', 3, 'สาว', 'ชั้น11 อาคารวิศววัฒนะ', '2017-12-05', NULL, 'อยู่กับผู้พบเห็นยังไม่ได้จัดเก็บ', NULL, 'ท่วม ชอบหลงแถวอนุฯ'),
(14, 'boy', '0003', 4, 'กุญแจ', 'ชั้น10 อาคารวิศววัฒนะ', '2017-12-06', NULL, 'อยู่กับผู้พบเห็น', NULL, NULL);

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

--
-- Dumping data for table `lostdetail`
--

INSERT INTO `lostdetail` (`LostID`, `Username`, `TypeItem`, `Place`, `DateLost`, `Detail`, `Localfile`) VALUES
(16, 'peerakit2009', 'สาว', 'ชั้น10 อาคารวิศววัฒนะ', '2017-12-07', 'ช่วยด้วยโสดมานานแล้วTT', NULL),
(17, 'Fair', 'เมาส์', 'ชั้น10 อาคารวิศววัฒนะ', '2017-12-04', 'สีขาว ลายคิตตี้', NULL);

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
  `LineID` varchar(18) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DepartmentName` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `StaffTeamID` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Username` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Localfile` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personaldetail`
--

INSERT INTO `personaldetail` (`Status`, `EmployeeID`, `StudentID`, `Firstname`, `Lastname`, `Phone`, `Facebook`, `LineID`, `Password`, `DepartmentName`, `StaffTeamID`, `Username`, `Localfile`) VALUES
('L', NULL, '58070501050', 'Fair', 'com', '080000000', 'Fairy007', NULL, 'Fair', 'วิศวกรรมคอมพิวเตอร์', '002', 'Fair', NULL),
('S', '10000000000', NULL, 'Nongyao', 'Yaoyao', '0823121231', NULL, NULL, 'cpe', 'วิศวกรรมคอมพิวเตอร์', '003', 'NongYao', NULL),
('S', NULL, '58070501046', 'พีรกิตติ์', 'บุญกิตติพร', '0823217122', 'พีรกิตติ์ บุญกิตติพร', 'peerakit2009', 'peer@kit2009', 'วิศวกรรมคอมพิวเตอร์', '002', 'peerakit2009', NULL),
('S', NULL, '58070501069', 'ศิรพงศ์', 'ภู่สวรรค์', ' 0875212861', 'sirapong', 'Tongza007', 'cpe', 'วิศวกรรมคอมพิวเตอร์', '001', 'sirapong', NULL),
('F', NULL, '58070501006', 'กานต์ตะวัน', 'อุดมลักษณ์โสภิณ', ' 0955540868', 'ฺฺBB', NULL, 'BBwon', 'คณิตศาสตร์', '004', 'ฺฺBB', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `picdetail`
--

CREATE TABLE `picdetail` (
  `PicID` int(5) NOT NULL,
  `Localfile` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Username` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ItemID` int(5) DEFAULT NULL,
  `LostID` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `picdetail`
--

INSERT INTO `picdetail` (`PicID`, `Localfile`, `Username`, `ItemID`, `LostID`) VALUES
(2, 'S__21274636.jpg', 'sirapong', NULL, NULL),
(3, 'IMG_1740.jpg', NULL, 8, NULL),
(4, 'tongbnk.png', 'peerakit2009', NULL, NULL),
(5, 'pee.jpg', NULL, NULL, 16);

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
  `Username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `TypeSearch` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `DateSearch` datetime DEFAULT CURRENT_TIMESTAMP,
  `TimeSearch` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `KeywordDetail` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `searchdetail`
--

INSERT INTO `searchdetail` (`SearchID`, `Username`, `TypeSearch`, `DateSearch`, `TimeSearch`, `KeywordDetail`) VALUES
(1, 'Fair', 'เมาส์', '2017-12-05 00:00:00', '2017-12-04 17:00:00', 'คิตตี้');

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
  `FBPage` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Place` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffdetail`
--

INSERT INTO `staffdetail` (`StaffTeamID`, `Position`, `WorkHour`, `Office`, `OfficePhone`, `FBPage`, `Place`) VALUES
('001', 'admin', 'Monday', 'ชั้น11 อาคารวิศววัฒนะ', '0821234567', 'sirapong', NULL),
('002', 'headstaff', 'Tuesday', 'ชั้น11 อาคารวิศววัฒนะ', '0821234567', '', NULL),
('003', 'staff', 'Wednesday', 'ชั้น10 อาคารวิศววัฒนะ', '0872341321', '', NULL),
('004', 'staff', 'Thursday', 'ชั้น10 อาคารวิศววัฒนะ', '0872341321', '', NULL),
('005', 'staff', 'Friday', 'ชั้น10 อาคารวิศววัฒนะ', '0872341321', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `storedetail`
--

CREATE TABLE `storedetail` (
  `StoreID` int(5) NOT NULL,
  `NumberLocker` int(5) NOT NULL,
  `Place` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storedetail`
--

INSERT INTO `storedetail` (`StoreID`, `NumberLocker`, `Place`) VALUES
(1, 101, 'ชั้น11 อาคารวิศววัฒนะ'),
(2, 102, 'ชั้น11 อาคารวิศววัฒนะ'),
(3, 103, 'ชั้น11 อาคารวิศววัฒนะ'),
(4, 104, 'ชั้น11 อาคารวิศววัฒนะ');

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
  ADD PRIMARY KEY (`ConfirmNO`),
  ADD KEY `FK_confirmdetail_place_Place` (`Place`),
  ADD KEY `FK_confirmdetail_founddetail_ItemID` (`ItemID`),
  ADD KEY `FK_confirmdetail_lostdetail_LostID` (`LostID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentName`);

--
-- Indexes for table `founddetail`
--
ALTER TABLE `founddetail`
  ADD PRIMARY KEY (`ItemID`,`StoreID`),
  ADD UNIQUE KEY `UK_founddetail_StaffTeamID` (`StaffTeamID`),
  ADD UNIQUE KEY `UK_founddetail_StoreID` (`StoreID`),
  ADD KEY `FK_founddetail_storedetail_StoreID` (`StoreID`),
  ADD KEY `FK_founddetail_typeitem_TypeItem` (`TypeItem`),
  ADD KEY `FK_founddetail_place_Place` (`Place`);

--
-- Indexes for table `lostdetail`
--
ALTER TABLE `lostdetail`
  ADD PRIMARY KEY (`LostID`),
  ADD KEY `Username` (`Username`),
  ADD KEY `FK_lostdetail_typeitem_TypeItem` (`TypeItem`),
  ADD KEY `FK_lostdetail_place_Place` (`Place`);

--
-- Indexes for table `personaldetail`
--
ALTER TABLE `personaldetail`
  ADD PRIMARY KEY (`Username`),
  ADD KEY `FK_personaldetail_department_DepartmentName` (`DepartmentName`),
  ADD KEY `FK_personaldetail_staffdetail_StaffTeamID` (`StaffTeamID`);

--
-- Indexes for table `picdetail`
--
ALTER TABLE `picdetail`
  ADD PRIMARY KEY (`PicID`),
  ADD KEY `Username` (`Username`),
  ADD KEY `ItemID` (`ItemID`),
  ADD KEY `FK_picdetail_lostdetail_LostID` (`LostID`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`Place`);

--
-- Indexes for table `searchdetail`
--
ALTER TABLE `searchdetail`
  ADD PRIMARY KEY (`SearchID`),
  ADD KEY `FK_searchdetail_personaldetail_Username` (`Username`);

--
-- Indexes for table `staffdetail`
--
ALTER TABLE `staffdetail`
  ADD PRIMARY KEY (`StaffTeamID`),
  ADD KEY `FK_staffdetail_storedetail_Place` (`Place`);

--
-- Indexes for table `storedetail`
--
ALTER TABLE `storedetail`
  ADD PRIMARY KEY (`StoreID`),
  ADD KEY `FK_storedetail_place_Place` (`Place`);

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
  MODIFY `ConfirmNO` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `founddetail`
--
ALTER TABLE `founddetail`
  MODIFY `ItemID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `lostdetail`
--
ALTER TABLE `lostdetail`
  MODIFY `LostID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `picdetail`
--
ALTER TABLE `picdetail`
  MODIFY `PicID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `searchdetail`
--
ALTER TABLE `searchdetail`
  MODIFY `SearchID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `storedetail`
--
ALTER TABLE `storedetail`
  MODIFY `StoreID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `confirmdetail`
--
ALTER TABLE `confirmdetail`
  ADD CONSTRAINT `FK_confirmdetail_founddetail_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `founddetail` (`ItemID`),
  ADD CONSTRAINT `FK_confirmdetail_lostdetail_LostID` FOREIGN KEY (`LostID`) REFERENCES `lostdetail` (`LostID`),
  ADD CONSTRAINT `FK_confirmdetail_place_Place` FOREIGN KEY (`Place`) REFERENCES `place` (`Place`);

--
-- Constraints for table `founddetail`
--
ALTER TABLE `founddetail`
  ADD CONSTRAINT `FK_founddetail_place_Place` FOREIGN KEY (`Place`) REFERENCES `place` (`Place`),
  ADD CONSTRAINT `FK_founddetail_typeitem_TypeItem` FOREIGN KEY (`TypeItem`) REFERENCES `typeitem` (`TypeItem`);

--
-- Constraints for table `lostdetail`
--
ALTER TABLE `lostdetail`
  ADD CONSTRAINT `FK_lostdetail_place_Place` FOREIGN KEY (`Place`) REFERENCES `place` (`Place`),
  ADD CONSTRAINT `FK_lostdetail_typeitem_TypeItem` FOREIGN KEY (`TypeItem`) REFERENCES `typeitem` (`TypeItem`),
  ADD CONSTRAINT `lostdetail_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `personaldetail` (`Username`);

--
-- Constraints for table `personaldetail`
--
ALTER TABLE `personaldetail`
  ADD CONSTRAINT `FK_personaldetail_department_DepartmentName` FOREIGN KEY (`DepartmentName`) REFERENCES `department` (`DepartmentName`),
  ADD CONSTRAINT `FK_personaldetail_staffdetail_StaffTeamID` FOREIGN KEY (`StaffTeamID`) REFERENCES `staffdetail` (`StaffTeamID`);

--
-- Constraints for table `picdetail`
--
ALTER TABLE `picdetail`
  ADD CONSTRAINT `FK_picdetail_lostdetail_LostID` FOREIGN KEY (`LostID`) REFERENCES `lostdetail` (`LostID`),
  ADD CONSTRAINT `FK_picdetail_personaldetail_Username` FOREIGN KEY (`Username`) REFERENCES `personaldetail` (`Username`),
  ADD CONSTRAINT `picdetail_ibfk_2` FOREIGN KEY (`ItemID`) REFERENCES `founddetail` (`ItemID`);

--
-- Constraints for table `searchdetail`
--
ALTER TABLE `searchdetail`
  ADD CONSTRAINT `FK_searchdetail_personaldetail_Username` FOREIGN KEY (`Username`) REFERENCES `personaldetail` (`Username`);

--
-- Constraints for table `staffdetail`
--
ALTER TABLE `staffdetail`
  ADD CONSTRAINT `FK_staffdetail_storedetail_Place` FOREIGN KEY (`Place`) REFERENCES `storedetail` (`Place`);

--
-- Constraints for table `storedetail`
--
ALTER TABLE `storedetail`
  ADD CONSTRAINT `FK_storedetail_founddetail_StoreID` FOREIGN KEY (`StoreID`) REFERENCES `founddetail` (`StoreID`),
  ADD CONSTRAINT `FK_storedetail_place_Place` FOREIGN KEY (`Place`) REFERENCES `place` (`Place`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
