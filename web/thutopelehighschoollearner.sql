-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2017 at 10:57 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thutopelehighschoollearner`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE IF NOT EXISTS `administrator` (
  `adminID` int(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`adminID`, `username`, `password`) VALUES
(1, 'simphiwe.mathosa', 'portia@123');

-- --------------------------------------------------------

--
-- Table structure for table `learner`
--

CREATE TABLE IF NOT EXISTS `learner` (
  `learner_ID` int(2) NOT NULL AUTO_INCREMENT,
  `first_Name` varchar(50) NOT NULL,
  `last_Name` varchar(50) NOT NULL,
  `D_O_B` varchar(11) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `cell_No` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `parent_Name` varchar(50) NOT NULL,
  `parent_Contact` varchar(10) NOT NULL,
  `highest_Grade_Passed` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`learner_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `learner`
--

INSERT INTO `learner` (`learner_ID`, `first_Name`, `last_Name`, `D_O_B`, `gender`, `cell_No`, `address`, `parent_Name`, `parent_Contact`, `highest_Grade_Passed`, `username`, `password`) VALUES
(35, 'Portia', 'Vilakazi', '2017-03-02', 'Female', '0835771298', '2 Mabopane', 'Emily Fakude', '0785163130', 'Grade11', 'portia.fakude', 'Laposh1@123');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE IF NOT EXISTS `marks` (
  `mark_ID` int(5) NOT NULL AUTO_INCREMENT,
  `mark_Perc` int(3) NOT NULL,
  `subject_ID` int(11) NOT NULL,
  PRIMARY KEY (`mark_ID`),
  UNIQUE KEY `subject_ID` (`subject_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`mark_ID`, `mark_Perc`, `subject_ID`) VALUES
(2, 70, 2),
(3, 50, 3),
(4, 50, 5);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `subject_ID` int(5) NOT NULL AUTO_INCREMENT,
  `subject_Name` varchar(255) NOT NULL,
  PRIMARY KEY (`subject_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_ID`, `subject_Name`) VALUES
(2, 'Geography'),
(3, 'English'),
(5, 'LO');

-- --------------------------------------------------------

--
-- Table structure for table `tblenrolled`
--

CREATE TABLE IF NOT EXISTS `tblenrolled` (
  `enrollID` int(5) NOT NULL,
  `learnerID` int(5) NOT NULL,
  `year` int(4) NOT NULL,
  `resultID` int(5) NOT NULL,
  `term` varchar(40) NOT NULL,
  PRIMARY KEY (`enrollID`),
  UNIQUE KEY `learnerID` (`learnerID`,`resultID`),
  KEY `resultID` (`resultID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblexam`
--

CREATE TABLE IF NOT EXISTS `tblexam` (
  `examID` int(5) NOT NULL,
  `learnerID` int(10) NOT NULL,
  `subjectID` int(5) NOT NULL,
  PRIMARY KEY (`examID`),
  UNIQUE KEY `learnerID` (`learnerID`),
  UNIQUE KEY `subjectID` (`subjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblgrade`
--

CREATE TABLE IF NOT EXISTS `tblgrade` (
  `gradeID` int(5) NOT NULL,
  `gradeName` varchar(20) NOT NULL,
  PRIMARY KEY (`gradeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE IF NOT EXISTS `tblresult` (
  `resultID` int(5) NOT NULL,
  `dateOfPublish` date NOT NULL,
  `grade` char(1) NOT NULL,
  PRIMARY KEY (`resultID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher`
--

CREATE TABLE IF NOT EXISTS `tblteacher` (
  `teacherID` int(5) NOT NULL AUTO_INCREMENT,
  `teacher_Name` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `D_O_B` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `cell_No` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`teacherID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblteacher`
--

INSERT INTO `tblteacher` (`teacherID`, `teacher_Name`, `gender`, `D_O_B`, `address`, `cell_No`, `email`, `username`, `password`) VALUES
(1, 'Mpho Fakude', 'Female', '1998-01-02', '1 Wagner Road 8 Tempo Midrand', 785163130, 'mphofakude@gmail.com', 'mpho.fakude', 'Mpho1@tut');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
