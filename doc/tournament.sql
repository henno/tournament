-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Loomise aeg: Märts 22, 2013 kell 10:40 PM
-- Serveri versioon: 5.5.25
-- PHP versioon: 5.4.4

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Andmebaas: `tournament`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `institute`
--

DROP TABLE IF EXISTS `institute`;
CREATE TABLE `institute` (
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
CREATE TABLE `participant` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=18 ;

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
(17, 'fefe', 2, '', 0, 106, 0);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `place`
--

DROP TABLE IF EXISTS `place`;
CREATE TABLE `place` (
  `place_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `place_name` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `place_deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`place_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=3 ;

--
-- Andmete tõmmistamine tabelile `place`
--

INSERT INTO `place` (`place_id`, `place_name`, `place_deleted`) VALUES
(1, 'Torn', 0),
(2, 'Spordisaal', 0);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `tournament`
--

DROP TABLE IF EXISTS `tournament`;
CREATE TABLE `tournament` (
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
  PRIMARY KEY (`tournament_id`),
  KEY `place_id` (`place_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=107 ;

--
-- Andmete tõmmistamine tabelile `tournament`
--

INSERT INTO `tournament` (`tournament_id`, `tournament_name`, `tournament_year`, `tournament_place`, `place_id`, `deleted`, `tournament_start`, `tournament_end`, `tournament_loser_bracket`, `tournament_game_time`, `tournament_game_pause`, `tournament_field`, `tournament_group`, `tournament_win`, `tournament_type`, `tournament_game_win`, `tournament_game_tie`, `tournament_game_loss`) VALUES
(1, 'Jalgpall', 2013, 'Torn', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'Jalgpall', 2013, 'Spordisaal', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(106, 'tere', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 1, 0);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
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
