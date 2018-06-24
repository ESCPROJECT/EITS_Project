-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2018 at 12:44 AM
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
  `lname` varchar(30) NOT NULL,
  `password` varchar(8) NOT NULL,
  `Uname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `fname`, `lname`, `password`, `Uname`) VALUES
(1, 'Bob', 'bobadmin', 'password', 'adminusername'),
(2, 'John', 'Johnadmin', 'password', 'adminusername2');

-- --------------------------------------------------------

--
-- Table structure for table `caseworkers`
--

CREATE TABLE `caseworkers` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `Uname` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Case-Worker Table for EITS';

--
-- Dumping data for table `caseworkers`
--

INSERT INTO `caseworkers` (`id`, `fname`, `lname`, `Uname`, `password`) VALUES
(1, 'John', 'caseworker', '20', 'Password');

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
  `Uname` varchar(30) NOT NULL,
  `type` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Customer Table For EITS';

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fname`, `lname`, `age`, `password`, `Uname`, `type`) VALUES
(1, 'Bob', 'customer', 30, 'password', '0', ''),
(2, 'fadmin', 'ladmin', 20, 'password', 'uadmin', 'ad'),
(3, 'fadmin2', 'ladmin2', 22, 'password', 'uadmin2', 'ad'),
(4, 'fadmin3', 'ladmin3', 23, 'password', 'uadmin3', 'ad'),
(5, 'fadmin4', 'ladmin4', 24, 'password', 'uadmin4', 'ad'),
(6, 'fcase', 'lcase', 25, 'password', 'ucase', 'cw'),
(7, 'fcase2', 'lcase2', 26, 'password', 'ucase2', 'cw'),
(8, 'fcus', 'lcus', 30, 'password', 'ucus', 'cu'),
(9, 'fcus2', 'lcus2', 31, 'password', 'ucu2', 'cu');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
