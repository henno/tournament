-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 11, 2013 at 04:48 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET FOREIGN_KEY_CHECKS=0;
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

DROP TABLE IF EXISTS `institute`;
CREATE TABLE IF NOT EXISTS `institute` (
  `institute_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `institute_name` varchar(255) COLLATE utf8_estonian_ci NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`institute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`institute_id`, `institute_name`, `deleted`) VALUES
(1, 'MMI', 0),
(2, '', 0),
(3, 'teine', 0);

-- --------------------------------------------------------

--
-- Table structure for table `participant`
--

DROP TABLE IF EXISTS `participant`;
CREATE TABLE IF NOT EXISTS `participant` (
  `participant_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `participant_name` varchar(255) COLLATE utf8_estonian_ci NOT NULL,
  `institute_id` int(10) unsigned DEFAULT NULL,
  `participant_favorite` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tournament_id` int(11) unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`participant_id`),
  KEY `institute_id` (`institute_id`),
  KEY `tournament_id` (`tournament_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `participant`
--

INSERT INTO `participant` (`participant_id`, `participant_name`, `institute_id`, `participant_favorite`, `tournament_id`, `deleted`) VALUES
(1, 'test', 1, 0, 1, 0),
(2, 'bhgfdh', 3, 1, 1, 0),
(3, 'test', 1, 0, 1, 0),
(4, 'bhgfdh', 3, 1, 1, 0),
(5, 'test', 1, 0, 1, 0),
(6, 'bhgfdh', 3, 1, 1, 0),
(7, 'test', 1, 0, 1, 0),
(8, 'bhgfdh', 3, 1, 1, 0),
(9, 'test', 1, 0, 1, 0),
(10, 'bhgfdh', 3, 1, 1, 0),
(11, 'test', 1, 0, 1, 0),
(12, 'test', 3, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

DROP TABLE IF EXISTS `place`;
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

DROP TABLE IF EXISTS `tournament`;
CREATE TABLE IF NOT EXISTS `tournament` (
  `tournament_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tournament_name` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `tournament_year` int(11) NOT NULL,
  `tournament_place` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `place_id` int(11) unsigned NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `tournament_start` datetime NOT NULL,
  `tournament_end` datetime NOT NULL,
  `tournament_game_time` smallint(6) NOT NULL,
  `tournament_game_pause` smallint(6) NOT NULL,
  `tournament_field` smallint(6) NOT NULL,
  `tournament_group` smallint(6) NOT NULL,
  `tournament_win` smallint(6) NOT NULL,
  `tournament_type` tinyint(4) NOT NULL,
  `tournament_game_win` tinyint(4) NOT NULL,
  `tournament_game_tie` tinyint(4) NOT NULL,
  `tournament_game_loss` tinyint(4) NOT NULL,
  PRIMARY KEY (`tournament_id`),
  KEY `place_id` (`place_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=64 ;

--
-- Dumping data for table `tournament`
--

INSERT INTO `tournament` (`tournament_id`, `tournament_name`, `tournament_year`, `tournament_place`, `place_id`, `deleted`, `tournament_start`, `tournament_end`, `tournament_game_time`, `tournament_game_pause`, `tournament_field`, `tournament_group`, `tournament_win`, `tournament_type`, `tournament_game_win`, `tournament_game_tie`, `tournament_game_loss`) VALUES
(1, 'Jalgpall', 2013, 'Torn', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'Jalgpall', 2013, 'Spordisaal', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(4, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(5, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(6, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(7, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(8, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(9, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(10, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(11, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(12, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(13, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(14, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(15, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(16, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(17, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(18, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(19, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(20, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(21, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(22, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(23, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(24, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(25, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(26, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(27, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(28, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(29, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(30, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(31, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(32, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(33, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(34, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(35, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(36, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(37, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(38, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(39, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(40, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(41, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(42, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(43, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(44, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(45, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(46, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(47, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(48, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(49, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(50, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(51, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(52, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(53, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(54, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(55, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(56, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(57, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(58, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(59, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(60, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(61, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(62, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0),
(63, '', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, 1, 0, 3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
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
  ADD CONSTRAINT `participant_ibfk_2` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`tournament_id`),
  ADD CONSTRAINT `participant_ibfk_1` FOREIGN KEY (`institute_id`) REFERENCES `institute` (`institute_id`);

--
-- Constraints for table `tournament`
--
ALTER TABLE `tournament`
  ADD CONSTRAINT `tournament_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
