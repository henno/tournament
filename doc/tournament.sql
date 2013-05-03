-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Loomise aeg: Mai 03, 2013 kell 01:43 PM
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

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `game`
--

DROP TABLE IF EXISTS `game`;
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
('1_1_1_2', 1, 1, 2, 0, 0, 0),
('1_1_1_3', 1, 1, 3, 0, 0, 0),
('1_1_1_4', 1, 1, 4, 0, 0, 0),
('1_1_1_5', 1, 1, 5, 0, 0, 0),
('1_1_1_6', 1, 1, 6, 0, 0, 0),
('1_1_1_62', 1, 1, 62, 0, 0, 0),
('1_1_1_9', 1, 1, 9, 0, 0, 0),
('21_113_21_28', 113, 21, 28, 31, -1, 0),
('21_113_21_30', 113, 21, 30, 2, 3, 0),
('21_113_21_39', 113, 21, 39, 2, -2, 0),
('22_113_22_29', 113, 22, 29, 1, 0, 0),
('22_113_22_31', 113, 22, 31, 0, 0, 0),
('28_113_28_30', 113, 28, 30, -1, 0, 0),
('28_113_28_39', 113, 28, 39, -30, 0, 0),
('29_113_29_31', 113, 29, 31, 0, 0, 0),
('2_1_2_3', 1, 2, 3, 0, 0, 0),
('2_1_2_4', 1, 2, 4, 0, 0, 0),
('2_1_2_5', 1, 2, 5, 0, 0, 0),
('2_1_2_6', 1, 2, 6, 0, 0, 0),
('2_1_2_62', 1, 2, 62, 0, 0, 0),
('2_1_2_9', 1, 2, 9, 0, 0, 0),
('30_113_30_39', 113, 30, 39, 16, 0, 0),
('3_1_3_4', 1, 3, 4, 0, 0, 0),
('3_1_3_5', 1, 3, 5, 0, 0, 0),
('3_1_3_6', 1, 3, 6, 0, 0, 0),
('3_1_3_62', 1, 3, 62, 0, 0, 0),
('3_1_3_9', 1, 3, 9, 0, 0, 0),
('4_1_4_5', 1, 4, 5, 0, 0, 0),
('4_1_4_6', 1, 4, 6, 0, 0, 0),
('4_1_4_62', 1, 4, 62, 0, 0, 0),
('4_1_4_9', 1, 4, 9, 0, 0, 0),
('57_138_57_58', 138, 57, 58, 0, 0, 0),
('5_1_5_6', 1, 5, 6, 0, 0, 0),
('5_1_5_62', 1, 5, 62, 0, 0, 0),
('5_1_5_9', 1, 5, 9, 0, 0, 0),
('66_2_66_67', 2, 66, 67, 0, 0, 0),
('66_2_66_68', 2, 66, 68, 0, 0, 0),
('66_2_66_69', 2, 66, 69, 0, 0, 0),
('67_2_67_68', 2, 67, 68, 0, 0, 0),
('67_2_67_69', 2, 67, 69, 0, 0, 0),
('68_2_68_69', 2, 68, 69, 0, 0, 0),
('6_1_6_9', 1, 6, 9, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `institute`
--

DROP TABLE IF EXISTS `institute`;
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
-- Tabeli struktuur tabelile `leaderboard`
--

DROP TABLE IF EXISTS `leaderboard`;
CREATE TABLE IF NOT EXISTS `leaderboard` (
  `tournament_id` int(11) NOT NULL,
  `participant_id` int(11) NOT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`participant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

--
-- Andmete tõmmistamine tabelile `leaderboard`
--

INSERT INTO `leaderboard` (`tournament_id`, `participant_id`, `time`) VALUES
(1, 0, '00:00:06'),
(1, 1, '00:00:59'),
(1, 2, '00:00:02'),
(1, 3, '00:00:03'),
(1, 4, '00:00:02'),
(1, 5, '00:00:00'),
(1, 62, '00:00:06');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `participant`
--

DROP TABLE IF EXISTS `participant`;
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=70 ;

--
-- Andmete tõmmistamine tabelile `participant`
--

INSERT INTO `participant` (`participant_id`, `participant_name`, `institute_id`, `pool_name`, `participant_favorite`, `tournament_id`, `deleted`) VALUES
(1, 'test', 1, 'A', 0, 1, 0),
(2, 'bhgfdh', 3, 'A', 1, 1, 0),
(3, 'test', 1, 'A', 0, 1, 0),
(4, 'bhgfdh', 3, 'A', 1, 1, 0),
(5, 'test', 1, 'A', 0, 1, 0),
(6, 'bhgfdh', 3, 'A', 1, 1, 1),
(7, 'test', 1, '', 0, 1, 1),
(8, 'bhgfdh', 3, '', 1, 1, 1),
(9, 'test', 1, 'A', 0, 1, 1),
(10, 'bhgfdh', 3, '', 1, 1, 1),
(11, 'test', 1, '', 0, 1, 1),
(12, 'test', 3, '', 0, 1, 1),
(13, 'asd', 4, '', 0, 1, 1),
(14, 'asda', 5, '', 1, 1, 1),
(15, 'asda', 5, '', 1, 1, 1),
(16, 'fafa', 6, '', 0, 106, 0),
(17, 'fefe', 2, '', 0, 106, 0),
(18, 'a', 2, 'B', 0, 113, 1),
(19, 'b', 2, 'A', 0, 113, 1),
(20, 'h', 2, 'A', 0, 127, 1),
(21, 'alpha', 2, 'A', 0, 113, 0),
(22, 'beta', 2, 'B', 1, 113, 1),
(23, 'fdgdgf', 1, 'A', 0, 130, 0),
(24, 'as', 7, 'A', 0, 130, 0),
(25, 'g', 2, 'A', 1, 130, 0),
(26, 'uus', 2, 'A', 0, 130, 0),
(27, 'uus2', 2, 'A', 0, 130, 0),
(28, 'gamma', 2, 'A', 0, 113, 1),
(29, 'delta', 2, 'B', 0, 113, 1),
(30, 'epsilon', 2, 'A', 0, 113, 1),
(31, 'zeta', 2, 'B', 0, 113, 1),
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
(62, 'gfdhdf', 2, 'A', 0, 1, 0),
(63, 'hgfsdgfgfd', 2, 'A', 0, 1, 1),
(64, 'hgfdhgsjs', 2, 'A', 0, 1, 1),
(65, 'jgsjfgfdjg', 2, 'A', 0, 1, 1),
(66, 'bla', 2, 'A', 0, 2, 0),
(67, 'gfdhhjgdf', 2, 'A', 0, 2, 0),
(68, 'wut', 2, 'A', 0, 2, 0),
(69, 'dolan', 2, 'A', 0, 2, 0);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `place`
--

DROP TABLE IF EXISTS `place`;
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=145 ;

--
-- Andmete tõmmistamine tabelile `tournament`
--

INSERT INTO `tournament` (`tournament_id`, `tournament_name`, `tournament_year`, `tournament_place`, `place_id`, `deleted`, `tournament_start`, `tournament_end`, `tournament_loser_bracket`, `tournament_game_time`, `tournament_game_pause`, `tournament_field`, `tournament_group`, `tournament_win`, `tournament_type`, `tournament_game_win`, `tournament_game_tie`, `tournament_game_loss`, `tournament_participant`, `tournament_classification`) VALUES
(1, 'Jalgpall', 2013, 'Torn', 1, 0, '2013-05-14 00:00:00', '2013-05-15 00:00:00', 0, 1, 1, 1, 1, 1, 3, 1, 1, 1, 'Võistleja', 'Firma nimi'),
(2, 'Jalgpall', 2013, 'Spordisaal', 2, 0, '2013-05-01 00:00:00', '2013-05-24 00:00:00', 0, 1, 0, 0, 1, 0, 3, 0, 0, 0, 'Võistkond', 'Instituut'),
(106, 'tere', 0, '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 1, 0, '', ''),
(111, 'sdgfsgfd', 0, '', 1, 1, '2013-04-02 00:00:00', '2013-04-19 00:00:00', 0, 1, 1, 1, 3, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(113, 'test 3', 0, '', 2, 0, '2013-04-01 10:00:00', '2013-04-19 13:00:00', 0, 1, 1, 1, 2, 1, 1, 4, 2, 1, 'Võistkond', 'Instituut'),
(114, 'gsgsgd', 0, '', 3, 1, '2013-04-03 15:14:00', '2013-04-19 10:09:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(115, 'sg', 0, '', 3, 1, '2013-04-03 00:00:00', '2013-04-19 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(127, 'test', 0, '', 3, 1, '2013-04-03 00:00:00', '2013-04-22 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(129, 'f', 0, '', 3, 1, '2013-04-02 00:00:00', '2013-04-22 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(130, 'turniir 2', 0, '', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(131, 'turniir 3', 0, '', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(132, 'aeg', 0, '', 2, 1, '2013-04-10 13:00:00', '2013-04-25 11:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(133, 'games_test', 0, '', 1, 1, '2013-04-02 00:00:00', '2013-04-24 00:00:00', 0, 1, 1, 1, 1, 1, 1, 3, 2, 1, 'Võistkond', 'Instituut'),
(134, 'mängijate test', 0, '', 1, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(135, 'fgfdg', 0, '', 1, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(136, 'gf', 0, '', 1, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(137, 'f', 0, '', 1, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(138, 'dgf', 0, '', 1, 1, '2013-04-01 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(139, 'sdf', 0, '', 3, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(140, 'what', 0, '', 1, 0, '2013-04-01 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(141, 'af', 0, '', 5, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(142, 'miks', 0, '', 3, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(143, 'afd', 0, '', 3, 1, '2013-04-01 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, -1, 3, 2, 1, 'Võistkond', 'Instituut'),
(144, 'sf', 0, '', 3, 1, '2013-04-02 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `user`
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
