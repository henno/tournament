-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Loomise aeg: Mai 02, 2013 kell 11:25 AM
-- Serveri versioon: 5.5.27
-- PHP versioon: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Andmebaas: `tournament`
--
CREATE DATABASE `tournament` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tournament`;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `game`
--

CREATE TABLE IF NOT EXISTS `game` (
  `game_id` varchar(50) NOT NULL,
  `tournament_id` int(10) unsigned NOT NULL,
  `participant_a_id` int(10) unsigned NOT NULL,
  `participant_b_id` int(10) unsigned NOT NULL,
  `participant_a_score` int(10) NOT NULL,
  `participant_b_score` int(10) NOT NULL,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`game_id`),
  KEY `tournament_id` (`tournament_id`),
  KEY `participant_a_id` (`participant_a_id`),
  KEY `participant_b_id` (`participant_b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `game`
--

INSERT INTO `game` (`game_id`, `tournament_id`, `participant_a_id`, `participant_b_id`, `participant_a_score`, `participant_b_score`, `deleted`) VALUES
('21_113_21_22', 113, 21, 22, 0, 0, 0),
('21_113_21_28', 113, 21, 28, 0, 0, 0),
('21_113_21_29', 113, 21, 29, 0, 0, 0),
('21_113_21_30', 113, 21, 30, 0, 0, 0),
('21_113_21_31', 113, 21, 31, 0, 0, 0),
('21_113_21_39', 113, 21, 39, 0, 0, 0),
('21_113_21_64', 113, 21, 64, 0, 0, 0),
('21_113_21_65', 113, 21, 65, 0, 0, 0),
('21_113_21_75', 113, 21, 75, 0, 0, 0),
('21_113_21_76', 113, 21, 76, 0, 0, 0),
('22_113_22_28', 113, 22, 28, 0, 0, 0),
('22_113_22_29', 113, 22, 29, 0, 0, 0),
('22_113_22_30', 113, 22, 30, 0, 0, 0),
('22_113_22_31', 113, 22, 31, 0, 0, 0),
('22_113_22_64', 113, 22, 64, 0, 0, 0),
('22_113_22_65', 113, 22, 65, 0, 0, 0),
('22_113_22_75', 113, 22, 75, 0, 0, 0),
('22_113_22_76', 113, 22, 76, 0, 0, 0),
('28_113_28_29', 113, 28, 29, 0, 0, 0),
('28_113_28_30', 113, 28, 30, 0, 0, 0),
('28_113_28_31', 113, 28, 31, 0, 0, 0),
('28_113_28_39', 113, 28, 39, 0, 0, 0),
('28_113_28_64', 113, 28, 64, 0, 0, 0),
('28_113_28_65', 113, 28, 65, 0, 0, 0),
('28_113_28_75', 113, 28, 75, 0, 0, 0),
('28_113_28_76', 113, 28, 76, 0, 0, 0),
('29_113_29_30', 113, 29, 30, 0, 0, 0),
('29_113_29_31', 113, 29, 31, 0, 0, 0),
('29_113_29_64', 113, 29, 64, 0, 0, 0),
('29_113_29_65', 113, 29, 65, 0, 0, 0),
('29_113_29_75', 113, 29, 75, 0, 0, 0),
('29_113_29_76', 113, 29, 76, 0, 0, 0),
('30_113_30_31', 113, 30, 31, 0, 0, 0),
('30_113_30_39', 113, 30, 39, 0, 0, 0),
('30_113_30_64', 113, 30, 64, 0, 0, 0),
('30_113_30_65', 113, 30, 65, 0, 0, 0),
('30_113_30_75', 113, 30, 75, 0, 0, 0),
('30_113_30_76', 113, 30, 76, 0, 0, 0),
('31_113_31_64', 113, 31, 64, 0, 0, 0),
('31_113_31_65', 113, 31, 65, 0, 0, 0),
('31_113_31_75', 113, 31, 75, 0, 0, 0),
('31_113_31_76', 113, 31, 76, 0, 0, 0),
('57_138_57_58', 138, 57, 58, 0, 0, 0),
('64_113_64_65', 113, 64, 65, 0, 0, 0),
('64_113_64_75', 113, 64, 75, 0, 0, 0),
('64_113_64_76', 113, 64, 76, 0, 0, 0),
('65_113_65_75', 113, 65, 75, 0, 0, 0),
('65_113_65_76', 113, 65, 76, 0, 0, 0),
('75_113_75_76', 113, 75, 76, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `institute`
--

CREATE TABLE IF NOT EXISTS `institute` (
  `institute_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `institute_name` varchar(255) COLLATE utf8_estonian_ci NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`institute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=8 ;

--
-- Andmete tõmmistamine tabelile `institute`
--

INSERT INTO `institute` (`institute_id`, `institute_name`, `deleted`) VALUES
(1, 'MMI', 0),
(2, '', 0),
(3, 'teine', 0),
(4, ' asd', 0),
(5, ' ', 0),
(6, ' tere', 0),
(7, 'asd', 0);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `participant`
--

CREATE TABLE IF NOT EXISTS `participant` (
  `participant_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `participant_name` varchar(255) COLLATE utf8_estonian_ci NOT NULL,
  `institute_id` int(10) unsigned DEFAULT NULL,
  `pool_name` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `participant_favorite` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tournament_id` int(11) unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`participant_id`),
  KEY `institute_id` (`institute_id`),
  KEY `tournament_id` (`tournament_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=79 ;

--
-- Andmete tõmmistamine tabelile `participant`
--

INSERT INTO `participant` (`participant_id`, `participant_name`, `institute_id`, `pool_name`, `participant_favorite`, `tournament_id`, `deleted`) VALUES
(1, 'test', 1, '', 0, 1, 0),
(2, 'bhgfdh', 3, 'A', 1, 1, 0),
(3, 'test', 1, '', 0, 1, 0),
(4, 'bhgfdh', 3, '', 1, 1, 0),
(5, 'test', 1, '', 0, 1, 0),
(6, 'bhgfdh', 3, '', 1, 1, 0),
(7, 'test', 1, '', 0, 1, 0),
(8, 'bhgfdh', 3, '', 1, 1, 0),
(9, 'test', 1, '', 0, 1, 0),
(10, 'bhgfdh', 3, '', 1, 1, 0),
(11, 'test', 1, '', 0, 1, 0),
(12, 'test', 3, '', 0, 1, 0),
(13, 'asd', 4, '', 0, 1, 0),
(14, 'asda', 5, '', 1, 1, 0),
(15, 'asda', 5, '', 1, 1, 0),
(16, 'fafa', 6, '', 0, 106, 0),
(17, 'fefe', 2, '', 0, 106, 0),
(18, 'a', 2, 'B', 0, 113, 1),
(19, 'b', 2, 'A', 0, 113, 1),
(20, 'h', 2, 'A', 0, 127, 1),
(21, 'alpha', 2, 'A', 0, 113, 0),
(22, 'beta', 2, 'A', 1, 113, 0),
(23, 'fdgdgf', 1, 'A', 0, 130, 0),
(24, 'as', 7, 'A', 0, 130, 0),
(25, 'g', 2, 'A', 1, 130, 0),
(26, 'uus', 2, 'A', 0, 130, 0),
(27, 'uus2', 2, 'A', 0, 130, 0),
(28, 'gamma', 2, 'A', 0, 113, 0),
(29, 'delta', 2, 'A', 0, 113, 0),
(30, 'epsilon', 2, 'A', 0, 113, 0),
(31, 'zeta', 2, 'A', 0, 113, 0),
(39, 'eta', 2, 'A', 0, 113, 1),
(40, 'a', 2, 'A', 0, 133, 0),
(41, 'b', 2, 'A', 0, 133, 0),
(42, 'c', 2, 'A', 1, 133, 0),
(43, 'd', 2, 'A', 0, 133, 0),
(44, 'e', 2, 'A', 1, 133, 0),
(45, 'f', 2, 'A', 0, 133, 0),
(46, 'g', 2, 'A', 0, 133, 0),
(47, 'a', 2, 'A', 0, 134, 0),
(48, 'b', 2, 'A', 0, 134, 0),
(49, 'c', 2, 'A', 0, 134, 0),
(50, 'd', 2, 'A', 0, 134, 0),
(51, 'a', 2, 'A', 0, 135, 0),
(52, 'v', 2, 'A', 0, 135, 0),
(53, 'g', 2, 'A', 0, 136, 0),
(54, 'f', 2, 'A', 0, 136, 0),
(55, 'a', 2, 'A', 0, 137, 0),
(56, 'v', 2, 'A', 0, 137, 0),
(57, 'a', 2, 'A', 0, 138, 0),
(58, 'b', 2, 'A', 0, 138, 0),
(59, 'asd', 2, 'A', 0, 143, 0),
(60, 'asf', 2, 'A', 0, 143, 0),
(61, 'a', 2, 'A', 0, 144, 0),
(62, 'asd', 2, 'A', 0, 145, 0),
(64, 'eta', 2, 'A', 0, 113, 0),
(65, 'theta', 2, 'A', 0, 113, 0),
(66, 'iota', 2, 'A', 0, 113, 1),
(67, 'kappa', 2, 'A', 0, 113, 1),
(68, 'lambda', 2, 'A', 0, 113, 1),
(69, 'mu', 2, 'A', 0, 113, 1),
(70, 'kappa', 2, 'A', 0, 113, 1),
(71, 'asd', 2, 'A', 0, 113, 1),
(72, 'dg', 2, 'A', 0, 113, 1),
(73, 'af', 2, 'A', 0, 113, 1),
(74, 'kappa', 2, 'A', 0, 113, 1),
(75, 'kappa', 2, 'A', 0, 113, 1),
(76, 'lambda', 2, 'A', 0, 113, 1),
(77, 'a', 2, 'A', 0, 113, 1),
(78, 'kappa', 2, 'A', 0, 113, 1);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `place`
--

CREATE TABLE IF NOT EXISTS `place` (
  `place_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `place_name` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `place_deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`place_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=6 ;

--
-- Andmete tõmmistamine tabelile `place`
--

INSERT INTO `place` (`place_id`, `place_name`, `place_deleted`) VALUES
(1, 'Torn', 0),
(2, 'Spordisaal', 0),
(3, '', 0),
(4, 'ddfddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', 0),
(5, 'afs', 0);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `tournament`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=146 ;

--
-- Andmete tõmmistamine tabelile `tournament`
--

INSERT INTO `tournament` (`tournament_id`, `tournament_name`, `tournament_year`, `tournament_place`, `place_id`, `deleted`, `tournament_start`, `tournament_end`, `tournament_loser_bracket`, `tournament_game_time`, `tournament_game_pause`, `tournament_field`, `tournament_group`, `tournament_win`, `tournament_type`, `tournament_game_win`, `tournament_game_tie`, `tournament_game_loss`, `tournament_participant`, `tournament_classification`) VALUES
(1, 'Jalgpall', 2013, 'Torn', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Võistleja', 'Firma nimi'),
(2, 'Jalgpall', 2013, 'Spordisaal', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Võistkond', 'Instituut'),
(106, 'tere', 0, '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 1, 0, '', ''),
(111, 'sdgfsgfd', 0, '', 1, 1, '2013-04-02 00:00:00', '2013-04-19 00:00:00', 0, 1, 1, 1, 3, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(113, 'test 3', 0, '', 2, 0, '2013-04-01 10:00:00', '2013-04-19 13:00:00', 0, 1, 1, 1, 1, 1, 2, 4, 2, 1, 'Võistkond', 'Instituut'),
(114, 'gsgsgd', 0, '', 3, 1, '2013-04-03 15:14:00', '2013-04-19 10:09:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(115, 'sg', 0, '', 3, 1, '2013-04-03 00:00:00', '2013-04-19 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(127, 'test', 0, '', 3, 1, '2013-04-03 00:00:00', '2013-04-22 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(129, 'f', 0, '', 3, 1, '2013-04-02 00:00:00', '2013-04-22 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(130, 'turniir 2', 0, '', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(131, 'turniir 3', 0, '', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(132, 'aeg', 0, '', 2, 1, '2013-04-10 13:00:00', '2013-04-25 11:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(133, 'games_test', 0, '', 1, 1, '2013-04-02 00:00:00', '2013-04-24 00:00:00', 0, 1, 1, 1, 1, 1, 1, 3, 2, 1, 'Võistkond', 'Instituut'),
(134, 'mängijate test', 0, '', 1, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(135, 'fgfdg', 0, '', 1, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(136, 'gf', 0, '', 1, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(137, 'f', 0, '', 1, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(138, 'dgf', 0, '', 1, 1, '2013-04-01 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(139, 'sdf', 0, '', 3, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(140, 'what', 0, '', 1, 1, '2013-04-01 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(141, 'af', 0, '', 5, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(142, 'miks', 0, '', 3, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(143, 'afd', 0, '', 3, 1, '2013-04-01 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, -1, 3, 2, 1, 'Võistkond', 'Instituut'),
(144, 'sf', 0, '', 3, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(145, '1', 0, '', 1, 1, '2013-04-01 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 1, 3, 2, 1, 'Võistkond', 'Instituut');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `user`
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
-- Andmete tõmmistamine tabelile `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `deleted`) VALUES
(1, 'demouser', 'demo', 'demouser', 0);

--
-- Tõmmistatud tabelite piirangud
--

--
-- Piirangud tabelile `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_ibfk_1` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`tournament_id`),
  ADD CONSTRAINT `game_ibfk_2` FOREIGN KEY (`participant_a_id`) REFERENCES `participant` (`participant_id`),
  ADD CONSTRAINT `game_ibfk_3` FOREIGN KEY (`participant_b_id`) REFERENCES `participant` (`participant_id`);

--
-- Piirangud tabelile `participant`
--
ALTER TABLE `participant`
  ADD CONSTRAINT `participant_ibfk_1` FOREIGN KEY (`institute_id`) REFERENCES `institute` (`institute_id`),
  ADD CONSTRAINT `participant_ibfk_2` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`tournament_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
