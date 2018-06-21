-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2018 at 06:40 AM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
