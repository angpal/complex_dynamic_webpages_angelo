-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2016 at 04:34 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mailinglist`
--
CREATE DATABASE IF NOT EXISTS `mailinglist` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mailinglist`;

-- --------------------------------------------------------

--
-- Table structure for table `emaillist`
--
-- Creation: Feb 03, 2016 at 11:13 AM
--

CREATE TABLE `emaillist` (
  `userID` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `emaillist`:
--

--
-- Dumping data for table `emaillist`
--

INSERT INTO `emaillist` (`userID`, `username`, `email`) VALUES
(1, 'bob', 'bob$bobsburgers.com'),
(7, 'Tom Jones', 'tjones@here.com'),
(8, 'Bill Smith', 'bsmith@this.com'),
(9, 'paul', 'paul@paul.com'),
(11, 'paul sister', 'paulsister@ash.com'),
(12, 'fred', 'fred@ash.com'),
(13, 'guest', 'guest@ash.com'),
(28, 'tim', 'tim@a.com'),
(31, 'ted', 'ted@a.com'),
(37, 'ben', 'ben@s.com'),
(39, '', ''),
(65, 'fin', 'fin@ash.com'),
(66, 'edd', 'edd@ash.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Creation: Feb 03, 2016 at 11:13 AM
--

CREATE TABLE `users` (
  `user_ID` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `access` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `users`:
--

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_ID`, `username`, `password`, `access`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'barry', 'f9d900b378f3389d07fd328278715788', 'sales'),
(3, 'tim', 'b15d47e99831ee63e3f47cf3d4478e9a', 'accounts'),
(4, 'fred', '570a90bfbf8c7eab5dc5d4e26832d5b1', 'reception'),
(5, 'pip', '62ad1c2a46c5298f3e2c95d3babf8d0c', 'sales');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emaillist`
--
ALTER TABLE `emaillist`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_ID`),
  ADD UNIQUE KEY `Unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emaillist`
--
ALTER TABLE `emaillist`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
