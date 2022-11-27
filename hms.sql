-- phpMyAdmin SQL Dump
-- version 2.11.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 13, 2022 at 06:54 PM
-- Server version: 5.0.45
-- PHP Version: 5.2.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientID` varchar(10) NOT NULL,
  `name` varchar(100) default NULL,
  `contactNumber` varchar(10) default NULL,
  `age` varchar(3) default NULL,
  `gender` varchar(10) default NULL,
  `bloodGroup` varchar(20) default NULL,
  `address` varchar(100) default NULL,
  `anyMajorDisease` varchar(500) default NULL,
  PRIMARY KEY  (`patientID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientID`, `name`, `contactNumber`, `age`, `gender`, `bloodGroup`, `address`, `anyMajorDisease`) VALUES
('1', 'Safaa Belkhier Eslame', '20987654', '20', 'Female', 'O+', 'aflou', 'NO'),
('2', 'ATHMANE BELKHIER', '9825590866', '50', 'Male', 'O+', 'AFLOU.alger', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `patientreport`
--

CREATE TABLE `patientreport` (
  `patientID` varchar(10) NOT NULL,
  `symptom` varchar(200) default NULL,
  `diagnosis` varchar(200) default NULL,
  `medicines` varchar(200) default NULL,
  `wardReq` varchar(5) default NULL,
  `typeWard` varchar(10) default NULL,
  PRIMARY KEY  (`patientID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientreport`
--

INSERT INTO `patientreport` (`patientID`, `symptom`, `diagnosis`, `medicines`, `wardReq`, `typeWard`) VALUES
('1', 'fever', 'viral fever', 'dcold total', 'Yes', 'Single'),
('2', 'fever ', 'reval fever', 'dr.dcold total', 'Yes', 'General');
