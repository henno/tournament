-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 04, 2013 at 06:10 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tournament`
--

-- --------------------------------------------------------

--
-- Table structure for table `institute`
--

CREATE TABLE IF NOT EXISTS `institute` (
  `institute_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `institute_name` varchar(255) COLLATE utf8_estonian_ci NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`institute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`institute_id`, `institute_name`, `deleted`) VALUES
(1, 'MMI', 0);

-- --------------------------------------------------------

--
-- Table structure for table `participant`
--

CREATE TABLE IF NOT EXISTS `participant` (
  `participant_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `participant_name` varchar(255) COLLATE utf8_estonian_ci NOT NULL,
  `institute_id` int(10) unsigned DEFAULT NULL,
  `participant_favorite` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tournament_id` int(11) NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`participant_id`),
  KEY `institute_id` (`institute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `participant`
--

INSERT INTO `participant` (`participant_id`, `participant_name`, `institute_id`, `participant_favorite`, `tournament_id`, `deleted`) VALUES
(1, 'meeskond 1', 1, 0, 1, 0),
(3, 'meeskond 2', NULL, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE IF NOT EXISTS `place` (
  `place_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `place_name` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `place_deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`place_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`place_id`, `place_name`, `place_deleted`) VALUES
(1, 'Torn', 0),
(2, 'Spordisaal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tournament`
--

CREATE TABLE IF NOT EXISTS `tournament` (
  `tournament_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tournament_name` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `tournament_year` int(11) NOT NULL,
  `tournament_place` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `place_id` int(11) unsigned NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tournament_id`),
  KEY `place_id` (`place_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tournament`
--

INSERT INTO `tournament` (`tournament_id`, `tournament_name`, `tournament_year`, `tournament_place`, `place_id`, `deleted`) VALUES
(1, 'Jalgpall', 2013, 'Torn', 1, 0),
(2, 'Jalgpall', 2013, 'Spordisaal', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(25) COLLATE utf8_estonian_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name` varchar(50) COLLATE utf8_estonian_ci NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `deleted`) VALUES
(1, 'demouser', 'demo', 'demouser', 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `participant`
--
ALTER TABLE `participant`
  ADD CONSTRAINT `participant_ibfk_1` FOREIGN KEY (`institute_id`) REFERENCES `institute` (`institute_id`);

--
-- Constraints for table `tournament`
--
ALTER TABLE `tournament`
  ADD CONSTRAINT `tournament_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
