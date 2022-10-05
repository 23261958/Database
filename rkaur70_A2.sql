-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 21, 2020 at 10:09 PM
-- Server version: 5.1.73
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rkaur70StudentEnrolmentSystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `ASSESSMENT`
--

CREATE TABLE IF NOT EXISTS `ASSESSMENT` (
  `AssessmentID` int(12) NOT NULL,
  `UnitOfferingID` int(12) NOT NULL,
  `AssessmentName` varchar(25) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `DueDate` date NOT NULL,
  `PossibleMarks` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`AssessmentID`),
  KEY `ASSESSMENT_UNIT_OFFERING_FK` (`UnitOfferingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ASSESSMENT`
--

INSERT INTO `ASSESSMENT` (`AssessmentID`, `UnitOfferingID`, `AssessmentName`, `Description`, `DueDate`, `PossibleMarks`) VALUES
(2111, 1, 'Online quiz 1', NULL, '2019-03-25', '10'),
(2112, 2, 'Practical skills', NULL, '2019-03-25', '20'),
(2113, 3, 'Report', NULL, '2019-03-25', '30'),
(2114, 4, 'Essay', NULL, '2019-03-25', '10'),
(2115, 5, 'Online quiz 1', NULL, '2019-07-25', '10'),
(2116, 6, 'Online quiz 1', NULL, '2019-07-25', '10'),
(2117, 7, 'Report', NULL, '2019-07-25', '30'),
(2118, 8, 'Essay', NULL, '2019-10-25', '20'),
(2119, 9, 'Report', NULL, '2019-10-25', '20'),
(21110, 10, 'Practical skills', NULL, '2019-10-25', '30');

-- --------------------------------------------------------

--
-- Table structure for table `COURSE`
--

CREATE TABLE IF NOT EXISTS `COURSE` (
  `CourseCode` int(12) NOT NULL AUTO_INCREMENT,
  `CourseName` varchar(40) NOT NULL,
  `CreditPoints` int(5) DEFAULT NULL,
  `Notes` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CourseCode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3002112 ;

--
-- Dumping data for table `COURSE`
--

INSERT INTO `COURSE` (`CourseCode`, `CourseName`, `CreditPoints`, `Notes`) VALUES
(3002111, 'Bachelor of Information Technology', 288, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `COURSE_ENROLMENT`
--

CREATE TABLE IF NOT EXISTS `COURSE_ENROLMENT` (
  `StudentID` int(12) NOT NULL AUTO_INCREMENT,
  `CourseCode` varchar(40) NOT NULL,
  `EnrolmentdDate` date NOT NULL,
  `Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`StudentID`,`CourseCode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2326200 ;

--
-- Dumping data for table `COURSE_ENROLMENT`
--

INSERT INTO `COURSE_ENROLMENT` (`StudentID`, `CourseCode`, `EnrolmentdDate`, `Status`) VALUES
(2326110, '3002111', '2019-02-26', NULL),
(2326120, '3002111', '2019-02-27', NULL),
(2326130, '3002111', '2019-02-20', NULL),
(2326140, '3002111', '2019-06-24', NULL),
(2326150, '3002111', '2019-06-26', NULL),
(2326160, '3002111', '2019-06-27', NULL),
(2326170, '3002111', '2019-09-20', NULL),
(2326180, '3002111', '2019-09-24', NULL),
(2326190, '3002111', '2019-09-26', NULL),
(2326199, '3002111', '2019-02-24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT`
--

CREATE TABLE IF NOT EXISTS `STUDENT` (
  `StudentID` int(12) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(30) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Postcode` varchar(20) DEFAULT NULL,
  `Phone` varchar(12) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2326200 ;

--
-- Dumping data for table `STUDENT`
--

INSERT INTO `STUDENT` (`StudentID`, `FirstName`, `LastName`, `Address`, `City`, `State`, `Postcode`, `Phone`, `Email`) VALUES
(2326110, 'Katrina', 'Raven', NULL, NULL, NULL, NULL, NULL, NULL),
(2326120, 'Shala', 'Power', NULL, NULL, NULL, NULL, NULL, NULL),
(2326130, 'Manpreet', 'khosa', NULL, NULL, NULL, NULL, NULL, NULL),
(2326140, 'Preetkaran', 'Sekhon', NULL, NULL, NULL, NULL, NULL, NULL),
(2326150, 'Raj', 'Khosa', NULL, NULL, NULL, NULL, NULL, NULL),
(2326160, 'Katrina', 'Raven', NULL, NULL, NULL, NULL, NULL, NULL),
(2326170, 'Shilpa', 'Shatty', NULL, NULL, NULL, NULL, NULL, NULL),
(2326180, 'Piya', 'Bajaj', NULL, NULL, NULL, NULL, NULL, NULL),
(2326190, 'John', 'Torres', NULL, NULL, NULL, NULL, NULL, NULL),
(2326199, 'Katrina', 'Raven', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_ASSESSMENT`
--

CREATE TABLE IF NOT EXISTS `STUDENT_ASSESSMENT` (
  `AssessmentID` int(12) NOT NULL AUTO_INCREMENT,
  `StudentID` int(40) NOT NULL,
  `DateSubmitted` date DEFAULT NULL,
  `DaysExtension` varchar(12) DEFAULT NULL,
  `MarksAwarded` int(10) DEFAULT NULL,
  PRIMARY KEY (`AssessmentID`,`StudentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21111 ;

--
-- Dumping data for table `STUDENT_ASSESSMENT`
--

INSERT INTO `STUDENT_ASSESSMENT` (`AssessmentID`, `StudentID`, `DateSubmitted`, `DaysExtension`, `MarksAwarded`) VALUES
(2111, 2326199, '2019-03-27', '2', 8),
(2112, 2326110, '2019-03-27', '2', 15),
(2113, 2326120, '2019-03-26', '1', 25),
(2114, 2326130, '2019-03-25', '0', 4),
(2115, 2326140, '2019-07-27', '2', 6),
(2116, 2326150, '2019-07-27', '2', 7),
(2117, 2326160, '2019-07-25', '0', 12),
(2118, 2326170, '2019-10-27', '2', 7),
(2119, 2326180, '2019-10-27', '2', 10),
(21110, 2326190, '2019-10-25', '0', 25);

-- --------------------------------------------------------

--
-- Table structure for table `TEACHER`
--

CREATE TABLE IF NOT EXISTS `TEACHER` (
  `STAFFID` int(12) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(30) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `Campus` varchar(50) DEFAULT NULL,
  `OfficeLocation` varchar(50) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Phone` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`STAFFID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50066 ;

--
-- Dumping data for table `TEACHER`
--

INSERT INTO `TEACHER` (`STAFFID`, `FirstName`, `LastName`, `Campus`, `OfficeLocation`, `Email`, `Phone`) VALUES
(50061, 'Katrina', 'Raven', 'GoldCoast', 'SCU', NULL, NULL),
(50062, 'Aintik', 'Bala', 'GoldCoast', 'SCU', NULL, NULL),
(50063, 'Megha', 'Pathan', 'Sydney', 'SCU', NULL, NULL),
(50064, 'Ann', 'Danehar', 'Melbourne', 'SCU', NULL, NULL),
(50065, 'Kiya', 'Karen', 'Sydney', 'SCU', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `UNIT`
--

CREATE TABLE IF NOT EXISTS `UNIT` (
  `UnitCode` int(12) NOT NULL AUTO_INCREMENT,
  `UnitName` varchar(30) NOT NULL,
  `UnitCreditPoints` int(30) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`UnitCode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2147483647 ;

--
-- Dumping data for table `UNIT`
--

INSERT INTO `UNIT` (`UnitCode`, `UnitName`, `UnitCreditPoints`, `Description`) VALUES
(10011, 'programming 2', 12, NULL),
(10012, 'Web Development2', 12, NULL),
(10013, 'Database systems', 12, NULL),
(10014, 'Securing Networks', 12, NULL),
(10015, 'Cybersecurity', 12, NULL),
(10016, 'Web Development', 12, NULL),
(10017, 'programming 1', 12, NULL),
(10018, 'Managing Organisation', 12, NULL),
(10019, 'Communication Organisation', 12, NULL),
(100110, 'Data Networks', 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `UNIT_ENROLMENT`
--

CREATE TABLE IF NOT EXISTS `UNIT_ENROLMENT` (
  `UnitENROLMENTID` int(12) NOT NULL,
  `StudentID` int(12) NOT NULL,
  `UnitOfferingID` int(12) NOT NULL,
  `Year` date DEFAULT NULL,
  `Session` varchar(25) DEFAULT NULL,
  `EnrolmentType` varchar(30) DEFAULT NULL,
  `FinaLGrade` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`UnitENROLMENTID`),
  KEY `STUDENT_FK` (`StudentID`),
  KEY `UNIT_OFFERING_FK` (`UnitOfferingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `UNIT_ENROLMENT`
--

INSERT INTO `UNIT_ENROLMENT` (`UnitENROLMENTID`, `StudentID`, `UnitOfferingID`, `Year`, `Session`, `EnrolmentType`, `FinaLGrade`) VALUES
(82001, 2326199, 1, '2019-03-01', 'First', 'external', 'P'),
(82002, 2326110, 2, '2019-03-01', 'First', 'external', 'P'),
(82003, 2326120, 3, '2019-03-01', 'First', 'external', 'F'),
(82004, 2326130, 4, '2019-03-01', 'First', 'external', 'P'),
(82005, 2326140, 5, '2019-07-01', 'Second', 'external', 'F'),
(82006, 2326150, 6, '2019-07-01', 'Second', 'internal', 'C'),
(82007, 2326160, 7, '2019-07-01', 'Second', 'internal', 'D'),
(82008, 2326170, 8, '2019-10-01', 'Third', 'internal', 'HD'),
(82009, 2326180, 9, '2019-10-01', 'Third', 'external', 'D'),
(82010, 2326190, 10, '2019-10-01', 'Third', 'external', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `UNIT_OFFERING`
--

CREATE TABLE IF NOT EXISTS `UNIT_OFFERING` (
  `UnitOfferingID` int(12) NOT NULL,
  `UnitCode` int(12) NOT NULL,
  `Year` date DEFAULT NULL,
  `Session` varchar(12) DEFAULT NULL,
  `UnitAssessorID` int(12) NOT NULL,
  `Locations` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`UnitOfferingID`),
  KEY `UNIT_FK` (`UnitCode`),
  KEY `TEACHER_FK` (`UnitAssessorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `UNIT_OFFERING`
--

INSERT INTO `UNIT_OFFERING` (`UnitOfferingID`, `UnitCode`, `Year`, `Session`, `UnitAssessorID`, `Locations`) VALUES
(1, 10017, '2019-03-01', 'First', 50061, 'SCU'),
(2, 10016, '2019-03-01', 'First', 50062, 'SCU'),
(3, 10018, '2019-03-01', 'First', 50061, 'SCU'),
(4, 10019, '2019-03-01', 'First', 50063, 'SCU'),
(5, 10011, '2019-07-01', 'Second', 50063, 'SCU'),
(6, 10012, '2019-07-01', 'Second', 50065, 'SCU'),
(7, 10015, '2019-07-01', 'Second', 50065, 'SCU'),
(8, 10013, '2019-10-01', 'Third', 50061, 'SCU'),
(9, 10014, '2019-10-01', 'Third', 50062, 'SCU'),
(10, 100110, '2019-10-01', 'Third', 50064, 'SCU');

-- --------------------------------------------------------

--
-- Table structure for table `WORKSHOP`
--

CREATE TABLE IF NOT EXISTS `WORKSHOP` (
  `WORKSHOPID` int(12) NOT NULL,
  `UnitOfferingID` int(12) NOT NULL,
  `Campus` varchar(50) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `TeacherID` int(12) NOT NULL,
  `Weekday` varchar(12) DEFAULT NULL,
  `ClassTimes` time DEFAULT NULL,
  PRIMARY KEY (`WORKSHOPID`),
  KEY `WORKSHOP_UNIT_OFFERING_FK` (`UnitOfferingID`),
  KEY `WORKSHOP_TEACHER_FK` (`TeacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `WORKSHOP`
--

INSERT INTO `WORKSHOP` (`WORKSHOPID`, `UnitOfferingID`, `Campus`, `Location`, `TeacherID`, `Weekday`, `ClassTimes`) VALUES
(98001, 1, 'GoldCoast', 'SCU', 50061, 'Monday', '09:00:00'),
(98002, 2, 'GoldCoast', 'SCU', 50062, 'Tuesday', '09:00:00'),
(98003, 3, 'GoldCoast', 'SCU', 50061, 'Tuesday', '11:00:00'),
(98004, 4, 'Sydney', 'SCU', 50063, 'Wednesday', '13:00:00'),
(98005, 5, 'Sydney', 'SCU', 50063, 'Tuesday', '14:00:00'),
(98006, 6, 'Sydney', 'SCU', 50065, 'Thursday', '16:00:00'),
(98007, 7, 'Sydney', 'SCU', 50065, 'Friday', '14:00:00'),
(98008, 8, 'GoldCoast', 'SCU', 50061, 'Friday', '09:00:00'),
(98009, 9, 'GoldCoast', 'SCU', 50062, 'Tuesday', '12:00:00'),
(980010, 10, 'Melbourne', 'SCU', 50064, 'Tuesday', '09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `WORKSHOP_ENROLMENT`
--

CREATE TABLE IF NOT EXISTS `WORKSHOP_ENROLMENT` (
  `WorkshopID` int(12) NOT NULL AUTO_INCREMENT,
  `StudentID` int(40) NOT NULL,
  PRIMARY KEY (`WorkshopID`,`StudentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=980011 ;

--
-- Dumping data for table `WORKSHOP_ENROLMENT`
--

INSERT INTO `WORKSHOP_ENROLMENT` (`WorkshopID`, `StudentID`) VALUES
(98001, 2326199),
(98002, 2326110),
(98003, 2326120),
(98004, 2326130),
(98005, 2326140),
(98006, 2326150),
(98007, 2326160),
(98008, 2326170),
(98009, 2326180),
(980010, 2326190);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ASSESSMENT`
--
ALTER TABLE `ASSESSMENT`
  ADD CONSTRAINT `ASSESSMENT_UNIT_OFFERING_FK` FOREIGN KEY (`UnitOfferingID`) REFERENCES `UNIT_OFFERING` (`UnitOfferingID`) ON UPDATE CASCADE;

--
-- Constraints for table `UNIT_ENROLMENT`
--
ALTER TABLE `UNIT_ENROLMENT`
  ADD CONSTRAINT `STUDENT_FK` FOREIGN KEY (`StudentID`) REFERENCES `STUDENT` (`StudentID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `UNIT_OFFERING_FK` FOREIGN KEY (`UnitOfferingID`) REFERENCES `UNIT_OFFERING` (`UnitOfferingID`);

--
-- Constraints for table `UNIT_OFFERING`
--
ALTER TABLE `UNIT_OFFERING`
  ADD CONSTRAINT `UNIT_FK` FOREIGN KEY (`UnitCode`) REFERENCES `UNIT` (`UnitCode`) ON UPDATE CASCADE,
  ADD CONSTRAINT `TEACHER_FK` FOREIGN KEY (`UnitAssessorID`) REFERENCES `TEACHER` (`STAFFID`);

--
-- Constraints for table `WORKSHOP`
--
ALTER TABLE `WORKSHOP`
  ADD CONSTRAINT `WORKSHOP_UNIT_OFFERING_FK` FOREIGN KEY (`UnitOfferingID`) REFERENCES `UNIT_OFFERING` (`UnitOfferingID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `WORKSHOP_TEACHER_FK` FOREIGN KEY (`TeacherID`) REFERENCES `TEACHER` (`STAFFID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
