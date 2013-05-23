-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 23, 2013 at 12:06 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

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
  `tournament_loser_bracket` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `daily_start` time NOT NULL,
  `daily_end` time NOT NULL,
  `days` varchar(7) COLLATE utf8_estonian_ci NOT NULL,
  `tournament_game_time` smallint(6) NOT NULL,
  `tournament_game_pause` smallint(6) NOT NULL,
  `tournament_field` smallint(6) NOT NULL,
  `tournament_group` smallint(6) NOT NULL,
  `tournament_win` smallint(6) NOT NULL,
  `tournament_type` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '0 = Alagrupid + playoff 1= Alagrupid 2= Playoff 3= Paremusjärjestus',
  `tournament_game_win` tinyint(4) NOT NULL,
  `tournament_game_tie` tinyint(4) NOT NULL,
  `tournament_game_loss` tinyint(4) NOT NULL,
  `tournament_participant` varchar(50) COLLATE utf8_estonian_ci NOT NULL,
  `tournament_classification` varchar(50) COLLATE utf8_estonian_ci NOT NULL,
  PRIMARY KEY (`tournament_id`),
  KEY `place_id` (`place_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=150 ;

--
-- Dumping data for table `tournament`
--

INSERT INTO `tournament` (`tournament_id`, `tournament_name`, `tournament_year`, `tournament_place`, `place_id`, `deleted`, `tournament_start`, `tournament_end`, `tournament_loser_bracket`, `daily_start`, `daily_end`, `days`, `tournament_game_time`, `tournament_game_pause`, `tournament_field`, `tournament_group`, `tournament_win`, `tournament_type`, `tournament_game_win`, `tournament_game_tie`, `tournament_game_loss`, `tournament_participant`, `tournament_classification`) VALUES
(1, 'Jalgpall', 2013, 'Torn', 1, 0, '2013-05-01 00:00:00', '2013-05-29 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 0, 0, 6, 0, 1, 3, 2, 0, 'Võistleja', 'Firma nimi'),
(2, 'Jalgpall', 2013, 'Spordisaal', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '00:00:00', '00:00:00', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Võistkond', 'Instituut'),
(106, 'tere', 0, '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 0, 3, 1, 0, '', ''),
(111, 'sdgfsgfd', 0, '', 1, 1, '2013-04-02 00:00:00', '2013-04-19 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 3, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(113, 'test 3', 0, '', 3, 0, '2013-04-01 10:00:00', '2013-04-19 13:00:00', 1, '00:00:00', '00:00:00', '', 1, 1, 1, 2, 5, 1, 4, 2, 1, 'Võistkond', 'Instituut'),
(114, 'gsgsgd', 0, '', 3, 1, '2013-04-03 15:14:00', '2013-04-19 10:09:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(115, 'sg', 0, '', 3, 1, '2013-04-03 00:00:00', '2013-04-19 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(127, 'test', 0, '', 3, 1, '2013-04-03 00:00:00', '2013-04-22 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(129, 'f', 0, '', 3, 1, '2013-04-02 00:00:00', '2013-04-22 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(130, 'turniir 2', 0, '', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(131, 'turniir 3', 0, '', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(132, 'aeg', 0, '', 2, 1, '2013-04-10 13:00:00', '2013-04-25 11:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(133, 'games_test', 0, '', 1, 1, '2013-04-02 00:00:00', '2013-04-24 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 1, 3, 2, 1, 'Võistkond', 'Instituut'),
(134, 'mängijate test', 0, '', 1, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(135, 'fgfdg', 0, '', 1, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(136, 'gf', 0, '', 1, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(137, 'f', 0, '', 1, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(138, 'dgf', 0, '', 1, 1, '2013-04-01 00:00:00', '2013-04-26 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(139, 'sdf', 0, '', 3, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(140, 'what', 0, '', 1, 1, '2013-04-01 00:00:00', '2013-04-26 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(141, 'af', 0, '', 5, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(142, 'miks', 0, '', 3, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(143, 'afd', 0, '', 3, 1, '2013-04-01 00:00:00', '2013-04-26 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, -1, 3, 2, 1, 'Võistkond', 'Instituut'),
(144, 'sf', 0, '', 3, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(145, '1', 0, '', 1, 1, '2013-04-01 00:00:00', '2013-04-26 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 1, 3, 2, 1, 'Võistkond', 'Instituut'),
(146, 'test5', 0, '', 3, 0, '2013-05-08 00:00:00', '2013-05-23 00:00:00', 1, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(147, 'kaskfdkasfs', 0, '', 2, 0, '2013-05-16 00:00:00', '2013-05-31 00:00:00', 1, '00:00:00', '00:00:00', '', 1, 1, 1, 2, 2, 0, 5, 3, 1, 'Võistkond', 'Instituut'),
(148, 'asd', 0, '', 3, 0, '2013-05-21 00:00:00', '2013-05-31 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, -1, 3, 2, 1, 'Võistkond', 'Instituut'),
(149, 'testimind', 0, '', 3, 0, '2013-05-01 00:00:00', '2013-05-22 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 3, 3, 2, 1, 'Võistkond', 'Instituut');
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
