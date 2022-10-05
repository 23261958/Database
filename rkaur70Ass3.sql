-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 29, 2020 at 12:46 AM
-- Server version: 5.1.73
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rkaur70FIT`
--

-- --------------------------------------------------------

--
-- Table structure for table `CLASSES`
--

CREATE TABLE IF NOT EXISTS `CLASSES` (
  `MemberID` int(11) NOT NULL AUTO_INCREMENT,
  `Class_Timetable` varchar(11) NOT NULL,
  `PersonalTrainerID` int(11) NOT NULL,
  `Class_Day` varchar(20) NOT NULL,
  `Class_Name` varchar(20) NOT NULL,
  PRIMARY KEY (`MemberID`),
  KEY `CLASSES_TRAINERS_FK` (`PersonalTrainerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=334430 ;

--
-- Dumping data for table `CLASSES`
--

INSERT INTO `CLASSES` (`MemberID`, `Class_Timetable`, `PersonalTrainerID`, `Class_Day`, `Class_Name`) VALUES
(334420, '6pm-8pm', 156844, 'Wednesday', 'Tone&Strength'),
(334421, '12pm-1pm', 156845, 'Tuesday', 'MusclesDevelopment'),
(334422, '2pm-4pm', 156846, 'Wednesday', 'Nutition Knowledge'),
(334423, '7pm-9pm', 156847, 'Thursday', 'InstanceMovement'),
(334424, '4pm-5pm', 156848, 'Friday', 'BasicExercise'),
(334425, '6am-7am', 156849, 'Monday', 'BodyBuilding'),
(334426, '10am-12am', 156845, 'Friday', 'WeightTips'),
(334427, '8am-9am', 156844, 'Tuesday', 'HealthDiet'),
(334428, '11am-1pm', 156844, 'Monday', 'DiseaseControl'),
(334429, '9am-11am', 156844, 'Friday', 'GymmingExercise');

-- --------------------------------------------------------

--
-- Table structure for table `CLUBS`
--

CREATE TABLE IF NOT EXISTS `CLUBS` (
  `PersonalTrainerID` int(10) NOT NULL,
  `ClassInstructorID` int(10) NOT NULL,
  `Club_Name` varchar(20) NOT NULL,
  `Clubs_State` varchar(20) NOT NULL,
  `Club_Phone_Number` int(20) NOT NULL,
  `Standard_Facilities` varchar(20) NOT NULL,
  `Other_Facilities` varchar(20) NOT NULL,
  `TeacherFirstName` varchar(20) NOT NULL,
  `TeacherLastName` varchar(20) NOT NULL,
  PRIMARY KEY (`ClassInstructorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CLUBS`
--

INSERT INTO `CLUBS` (`PersonalTrainerID`, `ClassInstructorID`, `Club_Name`, `Clubs_State`, `Club_Phone_Number`, `Standard_Facilities`, `Other_Facilities`, `TeacherFirstName`, `TeacherLastName`) VALUES
(156843, 456780, 'HighPoint', 'Queensland', 468234145, 'Gym', 'Training_Park', 'Mukesh', 'Ambani'),
(156842, 456781, 'HillView', 'New_South_Wales', 468235890, 'Gym', 'Kids_Playroom', 'Bill', 'Gates'),
(156848, 456782, 'BlueDragon', 'New_South_Wales', 468123489, 'Swimming_Pool', 'Sauna_Room', 'Kush', 'Dhillon'),
(156849, 456783, 'AshField', 'Western_Australia', 468222999, 'Swimming_Pool', 'Cycle_Studio', 'Bill', 'Smart'),
(156847, 456784, 'DownField', 'Tasmania', 468129000, 'Gym', 'Kids_Playroom', 'Milly', 'Power'),
(156846, 456785, 'MaryHill', 'Victoria', 468244433, 'Gym', 'Kids_Playroom', 'Katrina', 'Best'),
(156845, 456786, 'Girvin', 'Queensland', 468234888, 'Gym', 'Sauna_Room', 'Shala', 'Raven'),
(156844, 456787, 'LongSide', 'Southern_Australia', 468214005, 'Swimming_Pool', 'Cycle_Studio', 'Linc', 'Warren');

-- --------------------------------------------------------

--
-- Table structure for table `CLUBS_MEMBERS`
--

CREATE TABLE IF NOT EXISTS `CLUBS_MEMBERS` (
  `ClassInstructorID` int(10) NOT NULL,
  `MemberID` int(10) NOT NULL,
  KEY `ClassInstructorID_ibfk_1` (`ClassInstructorID`),
  KEY `MemberID_ibfk_1` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CLUBS_MEMBERS`
--

INSERT INTO `CLUBS_MEMBERS` (`ClassInstructorID`, `MemberID`) VALUES
(456783, 334421),
(456782, 334422),
(456784, 334423),
(456785, 334424),
(456786, 334425),
(456787, 334426),
(456780, 334427),
(456782, 334428),
(456787, 334429),
(456782, 334420);

-- --------------------------------------------------------

--
-- Table structure for table `CLUB_MANAGER`
--

CREATE TABLE IF NOT EXISTS `CLUB_MANAGER` (
  `ClassInstructorID` int(11) NOT NULL AUTO_INCREMENT,
  `Club_Name` varchar(25) NOT NULL,
  `Manager_First_Name` varchar(25) NOT NULL,
  `Manager_Last_Name` varchar(25) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Phone_Number` int(11) NOT NULL,
  PRIMARY KEY (`ClassInstructorID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=456788 ;

--
-- Dumping data for table `CLUB_MANAGER`
--

INSERT INTO `CLUB_MANAGER` (`ClassInstructorID`, `Club_Name`, `Manager_First_Name`, `Manager_Last_Name`, `Email`, `Phone_Number`) VALUES
(456780, 'HighPoint', 'Mahesh', 'Kumar', 'Mahesh456@gmail.com', 456794390),
(456781, 'HillView', 'John', 'Smith', 'John7456@gmail.com', 456794391),
(456782, 'BlueDragon', 'Warren', 'Linc', 'Warren234@gmail.com', 456794392),
(456783, 'AshField', 'Janet', 'Power', 'Janet456@gmail.com', 456794398),
(456784, 'DownField', 'Gurjap', 'Sandhu', 'Gurjap123@gmail.com', 456794393),
(456785, 'MaryHill', 'Priyanka', 'Chopra', 'Priyanka003@gmail.com', 456794395),
(456786, 'Girvin', 'Sonam', 'kapoor', 'Sonam105@gmail.com', 456794399),
(456787, 'LongSide', 'Sanam', 'Brar', 'Sanam234@gmail.com', 456794396);

-- --------------------------------------------------------

--
-- Table structure for table `MEMBERS`
--

CREATE TABLE IF NOT EXISTS `MEMBERS` (
  `MemberID` int(10) NOT NULL,
  `PersonalTrainerID` int(10) NOT NULL,
  `Member_Fee` varchar(20) DEFAULT NULL,
  `MemberShip_Status` varchar(20) NOT NULL,
  `Member_First_Name` varchar(20) NOT NULL,
  `Member_Last_Name` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone` int(15) DEFAULT NULL,
  PRIMARY KEY (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MEMBERS`
--

INSERT INTO `MEMBERS` (`MemberID`, `PersonalTrainerID`, `Member_Fee`, `MemberShip_Status`, `Member_First_Name`, `Member_Last_Name`, `Email`, `Phone`) VALUES
(334420, 156848, '$5', 'Classonly_Members', 'Preet', 'Gill', 'Preet122@gmail.com', 468341057),
(334421, 156845, '$15', 'Inactive_Member', 'Tracy', 'Phiri', 'Phiri122@gmail.com', 468341052),
(334422, 156844, '$15', 'All_Access_Member', 'Katrina', 'Best', 'Katrina33@@gmail.com', 468341051),
(334423, 156847, '$15', 'All_Access_Member', 'Harpreet', 'Kaur', 'Harkpreet46474@gmail.com', 468341059),
(334424, 156846, '$15', 'All_Access_Member', 'Ankit', 'Kumar', 'Ankit3634@gmail.com', 468341036),
(334425, 156849, '$15', 'All_Access_Member', 'Deepika', 'Padukon', 'Deepika14@gmail.com', 468341051),
(334426, 156845, '$5', 'Onhold_Member', 'Sidhu', 'Moosewala', '        Sidhu2525@gmail.com', 468302056),
(334427, 156844, '$5', 'Classonly_Members', 'Karan', 'Sekhon', 'Karan182@gmail.com', 468211056),
(334428, 156844, '$5', 'Classonly_Members', 'Jannella', 'Best', 'Jannella722@gmail.com', 468301056),
(334429, 156844, '$5', 'Classonly_Members', 'Sophia', 'Kaur', 'Sophia1227@gmail.com', 468341056);

-- --------------------------------------------------------

--
-- Table structure for table `PERSONAL_TRAINING_SERVICE`
--

CREATE TABLE IF NOT EXISTS `PERSONAL_TRAINING_SERVICE` (
  `PersonalTrainerID` int(20) NOT NULL,
  `Specialisation` varchar(20) NOT NULL,
  `NutritionRange` varchar(20) NOT NULL,
  `WeightLoss` varchar(20) DEFAULT NULL,
  `BodyBuilding` varchar(20) DEFAULT NULL,
  `Exercise` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`PersonalTrainerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PERSONAL_TRAINING_SERVICE`
--

INSERT INTO `PERSONAL_TRAINING_SERVICE` (`PersonalTrainerID`, `Specialisation`, `NutritionRange`, `WeightLoss`, `BodyBuilding`, `Exercise`) VALUES
(156844, 'CorrectiveExerciseSp', 'CalorieManagementStr', 'AvoidJunkFood', 'WeightTraining', 'Plies'),
(156845, 'FitnessManager', 'PostWorkoutNutrition', 'Running', 'ColoricRestriction', 'Skaters'),
(156846, 'SeniorFitnessSpecial', 'AdequateHydration', 'Gymming', 'ProteinShake', 'Squats'),
(156847, 'WeightLossSpecialist', 'AdequateFood', 'RefinedCarbs', 'WeightTraining', 'Bridges'),
(156848, 'HealthCoaching', 'AdequateSleep', 'Hydration', 'LowFatDiet', 'Plank'),
(156849, 'PhilosophyTraining', 'HealthyLifestyleChoi', 'AvoidAlcohol', 'ColoricRestriction', 'Pushups');

-- --------------------------------------------------------

--
-- Table structure for table `SERVICE_CRITERIA`
--

CREATE TABLE IF NOT EXISTS `SERVICE_CRITERIA` (
  `PersonalTrainerID` int(10) NOT NULL,
  `MemberID` int(10) NOT NULL,
  `AdditionalCharges` varchar(20) DEFAULT NULL,
  `WeeklyFee` varchar(20) DEFAULT NULL,
  `PersonalTrainer_Phone_Number` int(11) NOT NULL,
  PRIMARY KEY (`PersonalTrainerID`),
  KEY `SERVICE_CRITERIA_MEMBERS_FK` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SERVICE_CRITERIA`
--

INSERT INTO `SERVICE_CRITERIA` (`PersonalTrainerID`, `MemberID`, `AdditionalCharges`, `WeeklyFee`, `PersonalTrainer_Phone_Number`) VALUES
(156844, 334426, '$68', '$600', 468345211),
(156845, 334425, '$17', '$450', 468345212),
(156846, 334424, '$5', '$400', 468345213),
(156847, 334423, '$2', '$220', 468345214),
(156848, 334422, '$12', '$320', 468345215),
(156849, 334421, '$10', '$300', 468345216);

-- --------------------------------------------------------

--
-- Table structure for table `TRAINERS`
--

CREATE TABLE IF NOT EXISTS `TRAINERS` (
  `PersonalTrainerID` int(10) NOT NULL,
  `ClassInstructorID` int(10) NOT NULL,
  `Personal_Trainer_First_Name` varchar(30) NOT NULL,
  `Personal_Trainer_Last_Name` varchar(30) NOT NULL,
  `ClassInstructor_First_Name` varchar(36) NOT NULL,
  `ClassInstructor_Last_Name` varchar(30) NOT NULL,
  PRIMARY KEY (`PersonalTrainerID`),
  KEY `TRAINERS_CLUBS_FK` (`ClassInstructorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TRAINERS`
--

INSERT INTO `TRAINERS` (`PersonalTrainerID`, `ClassInstructorID`, `Personal_Trainer_First_Name`, `Personal_Trainer_Last_Name`, `ClassInstructor_First_Name`, `ClassInstructor_Last_Name`) VALUES
(156842, 456781, 'Jiya', 'Mann', 'Ash', 'Preet'),
(156843, 456780, 'Kim', 'Berner', 'Ritu', 'Kaur'),
(156844, 456787, 'Ankita', 'Sharma', 'Reet', 'Brar'),
(156845, 456786, 'Priniti', 'Chopra', 'Gurjit', 'Gill'),
(156846, 456785, 'Guru', 'Randhawa', 'Gagan', 'Sran'),
(156847, 456784, 'Kiya', 'Jill', 'kash', 'Dhaliwal'),
(156848, 456782, 'Joy', 'Power', 'Faraz', 'Mahomad'),
(156849, 456783, 'Aruniti', 'Singh', 'Arifaz', 'Ali');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `CLASSES`
--
ALTER TABLE `CLASSES`
  ADD CONSTRAINT `CLASSES_MEMBERS_FK` FOREIGN KEY (`MemberID`) REFERENCES `MEMBERS` (`MemberID`),
  ADD CONSTRAINT `CLASSES_TRAINERS_FK` FOREIGN KEY (`PersonalTrainerID`) REFERENCES `TRAINERS` (`PersonalTrainerID`);

--
-- Constraints for table `CLUBS_MEMBERS`
--
ALTER TABLE `CLUBS_MEMBERS`
  ADD CONSTRAINT `MemberID_ibfk_1` FOREIGN KEY (`MemberID`) REFERENCES `MEMBERS` (`MemberID`),
  ADD CONSTRAINT `ClassInstructorID_ibfk_1` FOREIGN KEY (`ClassInstructorID`) REFERENCES `CLUBS` (`ClassInstructorID`);

--
-- Constraints for table `CLUB_MANAGER`
--
ALTER TABLE `CLUB_MANAGER`
  ADD CONSTRAINT `CLUB_MANAGER_CLUBS_FK` FOREIGN KEY (`ClassInstructorID`) REFERENCES `CLUBS` (`ClassInstructorID`);

--
-- Constraints for table `PERSONAL_TRAINING_SERVICE`
--
ALTER TABLE `PERSONAL_TRAINING_SERVICE`
  ADD CONSTRAINT `PERSONAL_TRAINING_SERVICE_ibfk_1` FOREIGN KEY (`PersonalTrainerID`) REFERENCES `TRAINERS` (`PersonalTrainerID`) ON DELETE CASCADE;

--
-- Constraints for table `SERVICE_CRITERIA`
--
ALTER TABLE `SERVICE_CRITERIA`
  ADD CONSTRAINT `SERVICE_CRITERIA_MEMBERS_FK` FOREIGN KEY (`MemberID`) REFERENCES `MEMBERS` (`MemberID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `SERVICE_CRITERIA_TRAINERS_FK` FOREIGN KEY (`PersonalTrainerID`) REFERENCES `TRAINERS` (`PersonalTrainerID`);

--
-- Constraints for table `TRAINERS`
--
ALTER TABLE `TRAINERS`
  ADD CONSTRAINT `TRAINERS_CLUBS_FK` FOREIGN KEY (`ClassInstructorID`) REFERENCES `CLUBS` (`ClassInstructorID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
