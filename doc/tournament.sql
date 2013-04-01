-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Loomise aeg: Aprill 01, 2013 kell 10:24 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=110 ;

--
-- Andmete tõmmistamine tabelile `tournament`
--

INSERT INTO `tournament` (`tournament_id`, `tournament_name`, `tournament_year`, `tournament_place`, `place_id`, `deleted`, `tournament_start`, `tournament_end`, `tournament_loser_bracket`, `tournament_game_time`, `tournament_game_pause`, `tournament_field`, `tournament_group`, `tournament_win`, `tournament_type`, `tournament_game_win`, `tournament_game_tie`, `tournament_game_loss`, `tournament_participant`, `tournament_classification`) VALUES
(1, 'Jalgpall', 2013, 'Torn', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Võistleja', 'Firma nimi'),
(2, 'Jalgpall', 2013, 'Spordisaal', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Võistkond', 'Instituut'),
(106, 'tere', 0, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 1, 0, '', ''),
(107, 'UUS', 0, '', 2, 0, '2013-04-09 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistleja', 'd'),
(108, 're', 0, '', 3, 0, '2013-04-01 00:00:00', '2013-04-25 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Osaleja', 'Instituut'),
(109, 'd', 0, '', 3, 0, '2013-04-01 00:00:00', '2013-04-19 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'd', 'd');

--
-- Tõmmistatud tabelite piirangud
--

--
-- Piirangud tabelile `tournament`
--
ALTER TABLE `tournament`
  ADD CONSTRAINT `tournament_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
