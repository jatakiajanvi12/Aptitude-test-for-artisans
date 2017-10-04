-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2015 at 11:25 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chikankari`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `age` varchar(3) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `caste` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `occupation` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `score1` float DEFAULT NULL,
  `score21` float DEFAULT NULL,
  `score22` int(5) DEFAULT NULL,
  `score23` int(5) DEFAULT NULL,
  `score31` int(5) DEFAULT NULL,
  `score32` int(5) DEFAULT NULL,
  `score33` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
