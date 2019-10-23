-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2019 at 07:24 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `outreach`
--

-- --------------------------------------------------------

--
-- Table structure for table `empeducation`
--

CREATE TABLE `empeducation` (
  `Id` int(11) NOT NULL,
  `EmpID` int(10) DEFAULT NULL,
  `CoursePG` varchar(45) DEFAULT NULL,
  `SchoolCollegePG` varchar(45) DEFAULT NULL,
  `YearPassingPG` varchar(45) DEFAULT NULL,
  `PercentagePG` varchar(4) DEFAULT NULL,
  `CourseGra` varchar(45) DEFAULT NULL,
  `SchoolCollegeGra` varchar(45) DEFAULT NULL,
  `YearPassingGra` varchar(45) DEFAULT NULL,
  `PercentageGra` varchar(4) DEFAULT NULL,
  `CourseSSC` varchar(45) DEFAULT NULL,
  `SchoolCollegeSSC` varchar(45) DEFAULT NULL,
  `YearPassingSSC` varchar(45) DEFAULT NULL,
  `PercentageSSC` varchar(4) DEFAULT NULL,
  `CourseHSC` varchar(45) DEFAULT NULL,
  `SchoolCollegeHSC` varchar(45) DEFAULT NULL,
  `YearPassingHSC` varchar(45) DEFAULT NULL,
  `PercentageHSC` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empeducation`
--

INSERT INTO `empeducation` (`Id`, `EmpID`, `CoursePG`, `SchoolCollegePG`, `YearPassingPG`, `PercentagePG`, `CourseGra`, `SchoolCollegeGra`, `YearPassingGra`, `PercentageGra`, `CourseSSC`, `SchoolCollegeSSC`, `YearPassingSSC`, `PercentageSSC`, `CourseHSC`, `SchoolCollegeHSC`, `YearPassingHSC`, `PercentageHSC`) VALUES
(1, 4, 'NA', 'NA', 'NA', 'NA', 'B.Tech(IT)', 'LPU', '2014', '86%', 'Science', 'ABC Senoir secondary School', '2010', '64%', 'Science', 'abcd', '2008', '98%'),
(2, 2, 'abc', 'ghf', '2016', '89%', 'B.Tech(IT)', 'LPU', '2013', '86%', 'Science', 'DPS Senoir secondary School', '2009', '64%', 'Science', 'DPS Senoir secondary School', '2008', '90%'),
(3, 3, 'Master in charted accountant', 'Bhavi CA college', '2004', '89%', 'Bachelor in charted accountant', 'Bhavi CA college', '1996', '95%', 'Science', 'graimia convent school', '1993', '75%', 'Science', 'graimia convent school', '1991', '89%'),
(4, 7, 'MCA', 'KITE Ghaziabad', '1990', '64 %', 'BCA', 'TVN', '1997', '68 %', 'Science', 'TVN', '1992', '76 %', 'Science', 'TVN', '2010', '89 %'),
(5, 12, 'NA', 'NA', 'NA', 'NA', 'B.Tech', 'VIT', '1996', '75%', 'Science', 'GHI convent school', '1993', '66%', 'Science', 'GHI convent school', '1990', '65%'),
(6, 13, 'MBA', 'SMU', '2018', '70', 'B.Tech', 'LPU', '2015', '80', 'PCM', 'Test', '2010', '74', 'PCM', 'ABC', '2008', '85'),
(7, 1, 'NA', 'NA', 'NA', 'NA', 'B.Tech', 'ABC', '2012', '75', 'PCM', 'XYZ', '2008', '67', '10th', 'HGHH', '2006', '89'),
(8, 14, 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `empexpireince`
--

CREATE TABLE `empexpireince` (
  `ID` int(11) NOT NULL,
  `EmpID` varchar(5) DEFAULT NULL,
  `Employer1Name` varchar(75) DEFAULT NULL,
  `Employer1Designation` varchar(50) DEFAULT NULL,
  `Employer1CTC` varchar(50) DEFAULT NULL,
  `Employer1WorkDuration` varchar(11) DEFAULT NULL,
  `Employer2Name` varchar(75) DEFAULT NULL,
  `Employer2Designation` varchar(50) DEFAULT NULL,
  `Employer2CTC` varchar(50) DEFAULT NULL,
  `Employer2WorkDuration` varchar(11) DEFAULT NULL,
  `Employer3Name` varchar(75) DEFAULT NULL,
  `Employer3Designation` varchar(50) DEFAULT NULL,
  `Employer3CTC` varchar(50) DEFAULT NULL,
  `Employer3WorkDuration` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empexpireince`
--

INSERT INTO `empexpireince` (`ID`, `EmpID`, `Employer1Name`, `Employer1Designation`, `Employer1CTC`, `Employer1WorkDuration`, `Employer2Name`, `Employer2Designation`, `Employer2CTC`, `Employer2WorkDuration`, `Employer3Name`, `Employer3Designation`, `Employer3CTC`, `Employer3WorkDuration`) VALUES
(2, '4', 'abc.pvt.td', 'software tester', '20,000 p/m', '4 yrs', 'tch.pvt.td', 'software tester', '32000 p/m', '4 yrs', 'dfg.pvt.td', 'SR.software tester', '45000 p/m', '7 yrs'),
(7, '2', 'SAR pvt.ltd', 'Software Developer', '25000 p/m', '3 yrs', 'abc enterprise', 'software developer', '30000 p/m', '3 yrs', 'dgfhgfg.pt.ltd', 'software developer', '35000 p/m', '2 yrs till '),
(8, '3', 'GHA pvt.ltd', 'accountant', '25000', '5 yrs', 'HRCH pvt.ltd', 'accountant', '75000', '5 yrs', 'TCGHB pvt ltd', 'Sr.Accountant', '95000 ', '8 yrs till'),
(9, '7', 'FAG pvt.ltd', 'HR Executive', '25000 p/m', '6 yrs', 'TYS', 'HR Executive', '35000 p/m', '7 yrs', 'hirp pvt.ltd', 'HR Executive', '45000 p/m', '4 yrs till'),
(10, '12', 'dfg.pvt.ltd', 'accountant', '25000 p/m', '1 yrs', 'fghpvt.ltd', 'accountant', '30000 p/m', '3 yrs', 'fghpvt.ltd', 'accountant', '45000 p/m', '5 yrs till'),
(11, '13', 'ABC', 'Developer', '12000 ', '2 years', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(12, '1', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, '14', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(100) NOT NULL,
  `visit_id` int(100) NOT NULL,
  `expense` varchar(255) NOT NULL,
  `amount` int(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `exp_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `visit_id`, `expense`, `amount`, `image`, `status`, `exp_time`) VALUES
(16, 11, 'Food', 140, '1570809056.jpeg', NULL, '2019-10-18 13:34:21'),
(17, 0, 'Train', 10, '1570810287.png', NULL, '2019-10-18 13:34:21'),
(22, 13, 'Rush', 500, '1571286311.jpg', 1, '2019-10-18 13:34:21'),
(23, 14, 'train', 20, '1571290100.jpg', 1, '2019-10-18 13:34:21'),
(26, 12, 'train', 152, '1571384447.jpg', NULL, '2019-10-18 13:34:21'),
(27, 9, 'Train', 30, '1571384928.png', NULL, '2019-10-18 13:34:21'),
(28, 9, 'Auto', 20, '1571384967.png', 1, '2019-10-18 13:34:21'),
(29, 9, 'Bus', 12, '1571385056.png', 1, '2019-10-18 13:34:21'),
(30, 15, 'Auto', 15, '1571385898.png', NULL, '2019-10-18 13:34:58'),
(31, 15, 'Train', 20, '1571385933.png', NULL, '2019-10-18 13:35:33'),
(32, 16, 'Train', 20, '1571386713.jpg', 1, '2019-10-18 13:48:33'),
(33, 17, 'train', 30, '1571387647.jpg', NULL, '2019-10-18 14:04:06'),
(34, 18, 'Train', 1000, '1571388237.png', NULL, '2019-10-18 14:13:56'),
(35, 19, 'Auto', 15, '1571388713.png', 1, '2019-10-18 14:21:52'),
(36, 20, 'Train', 20, '1571389651.png', NULL, '2019-10-18 14:37:31'),
(37, 20, 'Auto', 30, '1571389665.jpg', 1, '2019-10-18 14:37:45'),
(38, 21, 'Train', 30, '1571390188.jpg', NULL, '2019-10-18 14:46:28'),
(39, 21, 'Auto', 50, '1571390196.png', 1, '2019-10-18 14:46:36'),
(40, 22, 'Train', 10, '1571393056.png', NULL, '2019-10-18 15:34:16'),
(41, 22, 'Auto', 100, '1571393068.png', 1, '2019-10-18 15:34:28');

-- --------------------------------------------------------

--
-- Table structure for table `studetail`
--

CREATE TABLE `studetail` (
  `ID` int(11) NOT NULL,
  `EmpFname` varchar(50) DEFAULT NULL,
  `EmpLName` varchar(50) NOT NULL,
  `EmpCode` varchar(50) DEFAULT NULL,
  `EmpDept` varchar(120) DEFAULT NULL,
  `EmpDesignation` varchar(120) DEFAULT NULL,
  `EmpContactNo` bigint(10) DEFAULT NULL,
  `EmpGender` enum('Male','Female') DEFAULT NULL,
  `EmpEmail` varchar(200) DEFAULT NULL,
  `EmpPassword` varchar(100) DEFAULT NULL,
  `EmpJoingdate` date DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studetail`
--

INSERT INTO `studetail` (`ID`, `EmpFname`, `EmpLName`, `EmpCode`, `EmpDept`, `EmpDesignation`, `EmpContactNo`, `EmpGender`, `EmpEmail`, `EmpPassword`, `EmpJoingdate`, `PostingDate`) VALUES
(1, 'Subhash', 'Pandey', '123465', 'IT', 'Software Developer', 1234567890, 'Male', 'abc@gmail.com', 'Test@12345', '2019-01-02', '2019-02-06 06:31:49'),
(2, 'Anuj', 'Kumar', '123465558', 'CS', 'Software Developer', 1234567890, 'Male', 'anuj@gmail.com', '123', '2017-03-23', '2019-02-06 06:41:42'),
(14, 'Harsh', 'Raval', '445566', 'COMPUTERS', '', 9128324566, NULL, 'johndoe@mail.com', 'johndoe', NULL, '2019-10-09 08:40:18'),
(17, 'Chinmay', 'Parab', '007', NULL, NULL, NULL, NULL, 'chinmayparab1999@gmail.com', '12345', NULL, '2019-10-17 02:00:19'),
(18, 'Kinal', 'Jogani', '0070', NULL, NULL, NULL, NULL, 'kikrugang@gmail.com', '12345', NULL, '2019-10-17 04:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(50) DEFAULT NULL,
  `AdminuserName` varchar(50) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `Password`, `AdminRegdate`) VALUES
(1, 'Vikas Pandey', 'Admin', 'Test@123', '2019-02-07 16:52:45'),
(2, 'Chinmay Parab', 'chinmay.parab', 'chinmay.parab', '2019-10-16 20:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` int(11) NOT NULL,
  `empcode` int(100) NOT NULL,
  `college_visited` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `assisting_faculty` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `empcode`, `college_visited`, `date`, `address`, `assisting_faculty`) VALUES
(9, 445566, 'Universal College of Engineering', '2019-10-16', 'Kaman-Bhiwandi Road, Kaman, Vasai East', 'Chinmay Raut'),
(13, 70, 'Vartak', '2019-10-25', 'Station Rd, Behind Gurudwara, Vasai West', 'Aniket Kore'),
(15, 445566, 'Thakur College of Engineering', '2019-11-21', 'Thakur Village, College Road, Kandivali East', 'Hezal Lopes'),
(16, 445566, 'Thadomal Sahani College', '2019-10-17', 'Bandra East', 'Apurva Maam'),
(17, 445566, 'IIT bombay', '2019-10-17', 'pawai', 'ravi nagar'),
(18, 445566, 'IIT Delhi', '2019-10-22', 'Delhi', 'Hezal Maam'),
(19, 445566, 'Vartak COLLEGE', '2019-10-25', 'Vasai West', 'Apurva Maam'),
(20, 445566, 'Thakur college', '2019-10-18', 'B-201, Gavdevi Prasad, Goddev Naka, B.P.Road, Bhayander(East)', 'Vikas Pandey'),
(21, 445566, 'Thakur', '2019-10-18', 'B-201, Gavdevi Prasad, Goddev Naka, B.P.Road, Bhayander(East)', 'Faculty name'),
(22, 445566, 'Vartak college of enginneering', '2019-10-18', 'B-201, Gavdevi Prasad, Goddev Naka, B.P.Road, Bhayander(East)', 'Hezal Lopes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `empeducation`
--
ALTER TABLE `empeducation`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `empexpireince`
--
ALTER TABLE `empexpireince`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studetail`
--
ALTER TABLE `studetail`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `EmpCode` (`EmpCode`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `empeducation`
--
ALTER TABLE `empeducation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `empexpireince`
--
ALTER TABLE `empexpireince`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `studetail`
--
ALTER TABLE `studetail`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
