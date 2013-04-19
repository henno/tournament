-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Loomise aeg: Aprill 19, 2013 kell 02:22 PM
-- Serveri versioon: 5.5.24-log
-- PHP versioon: 5.3.13

SET FOREIGN_KEY_CHECKS=0;
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
  `game_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tournament_id` int(10) unsigned NOT NULL,
  `participant_a_id` int(10) unsigned NOT NULL,
  `participant_b_id` int(10) unsigned NOT NULL,
  `participant_a_score` int(10) unsigned NOT NULL,
  `participant_b_score` int(10) unsigned NOT NULL,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`game_id`),
  KEY `participant_b_id` (`participant_b_id`),
  KEY `participant_a_id` (`participant_a_id`),
  KEY `tournament_id` (`tournament_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Andmete tõmmistamine tabelile `game`
--

INSERT INTO `game` (`game_id`, `tournament_id`, `participant_a_id`, `participant_b_id`, `participant_a_score`, `participant_b_score`, `deleted`) VALUES
(1, 1, 6, 7, 1, 2, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=7 ;

--
-- Andmete tõmmistamine tabelile `institute`
--

INSERT INTO `institute` (`institute_id`, `institute_name`, `deleted`) VALUES
(1, 'MMI', 0),
(2, '', 0),
(3, 'teine', 0),
(4, ' asd', 0),
(5, ' ', 0),
(6, ' tere', 0);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `participant`
--

DROP TABLE IF EXISTS `participant`;
CREATE TABLE IF NOT EXISTS `participant` (
  `participant_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `participant_name` varchar(255) COLLATE utf8_estonian_ci NOT NULL,
  `institute_id` int(10) unsigned DEFAULT NULL,
  `group_name` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `participant_favorite` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tournament_id` int(11) unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`participant_id`),
  KEY `institute_id` (`institute_id`),
  KEY `tournament_id` (`tournament_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=18 ;

--
-- Andmete tõmmistamine tabelile `participant`
--

INSERT INTO `participant` (`participant_id`, `participant_name`, `institute_id`, `group_name`, `participant_favorite`, `tournament_id`, `deleted`) VALUES
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
(14, 'asda', 5, '', 1, 112, 0),
(15, 'asda', 5, '', 1, 1, 0),
(16, 'fafa', 6, '', 0, 106, 0),
(17, 'fefe', 2, '', 0, 106, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=4 ;

--
-- Andmete tõmmistamine tabelile `place`
--

INSERT INTO `place` (`place_id`, `place_name`, `place_deleted`) VALUES
(1, 'Torn', 0),
(2, 'Spordisaal', 0),
(3, '', 0);

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
  `tournament_type` tinyint(4) NOT NULL,
  `tournament_game_win` tinyint(4) NOT NULL,
  `tournament_game_tie` tinyint(4) NOT NULL,
  `tournament_game_loss` tinyint(4) NOT NULL,
  `tournament_participant` varchar(50) COLLATE utf8_estonian_ci NOT NULL,
  `tournament_classification` varchar(50) COLLATE utf8_estonian_ci NOT NULL,
  PRIMARY KEY (`tournament_id`),
  KEY `place_id` (`place_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=117 ;

--
-- Andmete tõmmistamine tabelile `tournament`
--

INSERT INTO `tournament` (`tournament_id`, `tournament_name`, `tournament_year`, `tournament_place`, `place_id`, `deleted`, `tournament_start`, `tournament_end`, `tournament_loser_bracket`, `tournament_game_time`, `tournament_game_pause`, `tournament_field`, `tournament_group`, `tournament_win`, `tournament_type`, `tournament_game_win`, `tournament_game_tie`, `tournament_game_loss`, `tournament_participant`, `tournament_classification`) VALUES
(1, 'Jalgpall', 2013, 'Torn', 1, 0, '2013-04-11 00:00:00', '2013-04-30 00:00:00', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 'Võistleja', 'Firma nimi'),
(2, 'Jalgpall', 2013, 'Spordisaal', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Võistkond', 'Instituut'),
(106, 'tere', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 1, 0, '', ''),
(107, 'UUS', 0, '', 2, 0, '2013-04-09 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistleja', 'd'),
(108, 're', 0, '', 3, 0, '2013-04-01 00:00:00', '2013-04-25 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Osaleja', 'Instituut'),
(109, 'd', 0, '', 3, 0, '2013-04-01 00:00:00', '2013-04-19 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'd', 'd'),
(110, 'xz', 0, '', 3, 0, '2013-04-01 00:00:00', '2013-04-25 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(111, 'jeafk', 0, '', 3, 0, '2013-04-02 00:00:00', '2013-04-27 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(112, 'TERE JÄLLE', 0, '', 3, 0, '2013-04-11 00:00:00', '2013-04-17 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(113, 'kjsan,lop', 0, '', 3, 0, '2013-04-03 00:00:00', '2013-04-27 00:00:00', 0, 1, 1, 1, 2, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(114, 'tere', 0, '', 3, 0, '2013-04-04 00:00:00', '2013-04-24 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(115, 'sca', 0, '', 3, 0, '2013-04-04 00:00:00', '2013-04-30 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(116, 'hm', 0, '', 3, 0, '2013-04-04 00:00:00', '2013-04-27 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut');

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
  ADD CONSTRAINT `game_ibfk_2` FOREIGN KEY (`participant_b_id`) REFERENCES `participant` (`participant_id`),
  ADD CONSTRAINT `game_ibfk_3` FOREIGN KEY (`participant_a_id`) REFERENCES `participant` (`participant_id`),
  ADD CONSTRAINT `game_ibfk_4` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`tournament_id`);

--
-- Piirangud tabelile `participant`
--
ALTER TABLE `participant`
  ADD CONSTRAINT `participant_ibfk_1` FOREIGN KEY (`institute_id`) REFERENCES `institute` (`institute_id`),
  ADD CONSTRAINT `participant_ibfk_2` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`tournament_id`);

--
-- Piirangud tabelile `tournament`
--
ALTER TABLE `tournament`
  ADD CONSTRAINT `tournament_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
