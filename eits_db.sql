-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2018 at 03:44 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eits_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `caseworkers`
--

CREATE TABLE `caseworkers` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Case-Worker Table for EITS';

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `idCourses` varchar(15) NOT NULL,
  `CoursesTitle` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses_has_units`
--

CREATE TABLE `courses_has_units` (
  `Courses_idCourses` varchar(15) NOT NULL,
  `Units_idUnits` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Customer Table For EITS';

-- --------------------------------------------------------

--
-- Table structure for table `customers_has_caseworkers`
--

CREATE TABLE `customers_has_caseworkers` (
  `customers_id` int(11) NOT NULL,
  `caseworkers_id` int(11) NOT NULL,
  `joining_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `customers_id` int(11) NOT NULL,
  `Courses_idCourses` varchar(15) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `idUnits` varchar(15) NOT NULL,
  `UnitsTitle` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caseworkers`
--
ALTER TABLE `caseworkers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`idCourses`);

--
-- Indexes for table `courses_has_units`
--
ALTER TABLE `courses_has_units`
  ADD PRIMARY KEY (`Courses_idCourses`,`Units_idUnits`),
  ADD KEY `fk_Courses_has_Units_Units1_idx` (`Units_idUnits`),
  ADD KEY `fk_Courses_has_Units_Courses1_idx` (`Courses_idCourses`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers_has_caseworkers`
--
ALTER TABLE `customers_has_caseworkers`
  ADD PRIMARY KEY (`customers_id`,`caseworkers_id`),
  ADD KEY `fk_customers_has_caseworkers_caseworkers1_idx` (`caseworkers_id`),
  ADD KEY `fk_customers_has_caseworkers_customers_idx` (`customers_id`);

--
-- Indexes for table `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`customers_id`,`Courses_idCourses`),
  ADD KEY `fk_customers_has_Courses_Courses1_idx` (`Courses_idCourses`),
  ADD KEY `fk_customers_has_Courses_customers1_idx` (`customers_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`idUnits`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `caseworkers`
--
ALTER TABLE `caseworkers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses_has_units`
--
ALTER TABLE `courses_has_units`
  ADD CONSTRAINT `fk_Courses_has_Units_Courses1` FOREIGN KEY (`Courses_idCourses`) REFERENCES `courses` (`idCourses`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Courses_has_Units_Units1` FOREIGN KEY (`Units_idUnits`) REFERENCES `units` (`idUnits`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `customers_has_caseworkers`
--
ALTER TABLE `customers_has_caseworkers`
  ADD CONSTRAINT `fk_customers_has_caseworkers_caseworkers1` FOREIGN KEY (`caseworkers_id`) REFERENCES `caseworkers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_customers_has_caseworkers_customers` FOREIGN KEY (`customers_id`) REFERENCES `customers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `enroll`
--
ALTER TABLE `enroll`
  ADD CONSTRAINT `fk_customers_has_Courses_Courses1` FOREIGN KEY (`Courses_idCourses`) REFERENCES `courses` (`idCourses`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_customers_has_Courses_customers1` FOREIGN KEY (`customers_id`) REFERENCES `customers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
