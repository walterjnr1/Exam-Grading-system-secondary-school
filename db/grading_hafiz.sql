-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2023 at 12:09 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grading_hafiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `school_session`
--

CREATE TABLE `school_session` (
  `ID` int(5) NOT NULL,
  `current_session` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subjectcombination`
--

CREATE TABLE `subjectcombination` (
  `ID` int(5) NOT NULL,
  `subjectID` int(5) NOT NULL,
  `classID` int(6) NOT NULL,
  `status` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `ID` int(5) NOT NULL,
  `class` varchar(14) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblgroup`
--

CREATE TABLE `tblgroup` (
  `ID` int(5) NOT NULL,
  `groupname` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgroup`
--

INSERT INTO `tblgroup` (`ID`, `groupname`) VALUES
(9, 'Admin'),
(8, 'Principal'),
(7, 'Super Admin'),
(11, 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `ID` int(5) NOT NULL,
  `position` varchar(10) NOT NULL,
  `admissionID` varchar(10) NOT NULL,
  `class_arm` varchar(15) NOT NULL,
  `school_session` varchar(11) NOT NULL,
  `term` varchar(11) NOT NULL,
  `subject1` varchar(44) NOT NULL,
  `test1` int(2) NOT NULL,
  `exam1` int(2) NOT NULL,
  `total1` int(2) NOT NULL,
  `grade1` varchar(1) NOT NULL,
  `remark1` varchar(22) NOT NULL,
  `subject2` varchar(44) NOT NULL,
  `test2` int(2) NOT NULL,
  `exam2` int(2) NOT NULL,
  `total2` int(2) NOT NULL,
  `grade2` varchar(2) NOT NULL,
  `remark2` varchar(22) NOT NULL,
  `subject3` varchar(44) NOT NULL,
  `test3` int(2) NOT NULL,
  `exam3` int(2) NOT NULL,
  `total3` int(2) NOT NULL,
  `grade3` varchar(2) NOT NULL,
  `remark3` varchar(22) NOT NULL,
  `subject4` varchar(44) NOT NULL,
  `test4` int(2) NOT NULL,
  `exam4` int(2) NOT NULL,
  `total4` int(2) NOT NULL,
  `grade4` varchar(2) NOT NULL,
  `remark4` varchar(22) NOT NULL,
  `subject5` varchar(44) NOT NULL,
  `test5` int(2) NOT NULL,
  `exam5` int(2) NOT NULL,
  `total5` int(2) NOT NULL,
  `grade5` varchar(2) NOT NULL,
  `remark5` varchar(22) NOT NULL,
  `subject6` varchar(44) NOT NULL,
  `test6` int(2) NOT NULL,
  `exam6` int(2) NOT NULL,
  `total6` int(2) NOT NULL,
  `grade6` varchar(2) NOT NULL,
  `remark6` varchar(22) NOT NULL,
  `subject7` varchar(44) NOT NULL,
  `test7` int(2) NOT NULL,
  `exam7` int(2) NOT NULL,
  `total7` int(2) NOT NULL,
  `grade7` varchar(2) NOT NULL,
  `remark7` varchar(22) NOT NULL,
  `subject8` varchar(44) NOT NULL,
  `test8` int(2) NOT NULL,
  `exam8` int(2) NOT NULL,
  `total8` int(2) NOT NULL,
  `grade8` varchar(2) NOT NULL,
  `remark8` varchar(22) NOT NULL,
  `subject9` varchar(44) NOT NULL,
  `test9` int(2) NOT NULL,
  `exam9` int(2) NOT NULL,
  `total9` int(2) NOT NULL,
  `grade9` varchar(2) NOT NULL,
  `remark9` varchar(22) NOT NULL,
  `subject10` varchar(44) NOT NULL,
  `test10` int(2) NOT NULL,
  `exam10` int(2) NOT NULL,
  `total10` int(2) NOT NULL,
  `grade10` varchar(2) NOT NULL,
  `remark10` varchar(22) NOT NULL,
  `grandtotal` int(5) NOT NULL,
  `average` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblresultsummary`
--

CREATE TABLE `tblresultsummary` (
  `ID` int(3) NOT NULL,
  `school_session` varchar(11) NOT NULL,
  `term` varchar(19) NOT NULL,
  `class_arm` varchar(15) NOT NULL,
  `teacherID` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `ID` int(4) NOT NULL,
  `admissionID` varchar(10) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(40) NOT NULL,
  `state` varchar(25) NOT NULL,
  `class` varchar(15) NOT NULL,
  `arm` varchar(1) NOT NULL,
  `class_arm` varchar(10) NOT NULL,
  `status` int(10) NOT NULL,
  `date_reg` varchar(25) NOT NULL,
  `photo` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsubject`
--

CREATE TABLE `tblsubject` (
  `ID` int(7) NOT NULL,
  `subject` varchar(70) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectallocation`
--

CREATE TABLE `tblsubjectallocation` (
  `ID` int(6) NOT NULL,
  `teacherID` int(10) NOT NULL,
  `subjectID` int(6) NOT NULL,
  `classID` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher`
--

CREATE TABLE `tblteacher` (
  `ID` int(3) NOT NULL,
  `teacherID` varchar(5) NOT NULL,
  `fullname` varchar(40) NOT NULL,
  `password` varchar(15) NOT NULL,
  `sex` varchar(7) NOT NULL,
  `email` varchar(35) NOT NULL,
  `date_reg` varchar(15) NOT NULL,
  `status` int(1) NOT NULL,
  `photo` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(4) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `lastaccess` varchar(22) NOT NULL,
  `status` int(1) NOT NULL,
  `photo` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `websiteinfo`
--

CREATE TABLE `websiteinfo` (
  `schoolname` varchar(150) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone1` varchar(15) NOT NULL,
  `phone2` varchar(15) NOT NULL,
  `website` varchar(100) NOT NULL,
  `logo` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `school_session`
--
ALTER TABLE `school_session`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `subjectcombination`
--
ALTER TABLE `subjectcombination`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblgroup`
--
ALTER TABLE `tblgroup`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblresultsummary`
--
ALTER TABLE `tblresultsummary`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsubject`
--
ALTER TABLE `tblsubject`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsubjectallocation`
--
ALTER TABLE `tblsubjectallocation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblteacher`
--
ALTER TABLE `tblteacher`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `websiteinfo`
--
ALTER TABLE `websiteinfo`
  ADD PRIMARY KEY (`schoolname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `school_session`
--
ALTER TABLE `school_session`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subjectcombination`
--
ALTER TABLE `subjectcombination`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblgroup`
--
ALTER TABLE `tblgroup`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `tblresultsummary`
--
ALTER TABLE `tblresultsummary`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblsubject`
--
ALTER TABLE `tblsubject`
  MODIFY `ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblsubjectallocation`
--
ALTER TABLE `tblsubjectallocation`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblteacher`
--
ALTER TABLE `tblteacher`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
