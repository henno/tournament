-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Loomise aeg: Mai 08, 2013 kell 10:15 AM
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
('10_1_10_11', 1, 10, 11, 0, 0, 0),
('10_1_10_12', 1, 10, 12, 0, 0, 0),
('10_1_10_13', 1, 10, 13, 0, 0, 0),
('10_1_10_14', 1, 10, 14, 0, 0, 0),
('10_1_10_15', 1, 10, 15, 0, 0, 0),
('11_1_11_12', 1, 11, 12, 0, 0, 0),
('11_1_11_13', 1, 11, 13, 0, 0, 0),
('11_1_11_14', 1, 11, 14, 0, 0, 0),
('11_1_11_15', 1, 11, 15, 0, 0, 0),
('12_1_12_13', 1, 12, 13, 0, 0, 0),
('12_1_12_14', 1, 12, 14, 0, 0, 0),
('12_1_12_15', 1, 12, 15, 0, 0, 0),
('13_1_13_14', 1, 13, 14, 0, 0, 0),
('13_1_13_15', 1, 13, 15, 0, 0, 0),
('14_1_14_15', 1, 14, 15, 0, 0, 0),
('1_1_1_10', 1, 1, 10, 0, 0, 0),
('1_1_1_11', 1, 1, 11, 0, 0, 0),
('1_1_1_12', 1, 1, 12, 0, 0, 0),
('1_1_1_13', 1, 1, 13, 0, 0, 0),
('1_1_1_14', 1, 1, 14, 0, 0, 0),
('1_1_1_15', 1, 1, 15, 0, 0, 0),
('1_1_1_2', 1, 1, 2, 0, 0, 0),
('1_1_1_3', 1, 1, 3, 0, 0, 0),
('1_1_1_4', 1, 1, 4, 0, 0, 0),
('1_1_1_5', 1, 1, 5, 0, 0, 0),
('1_1_1_6', 1, 1, 6, 0, 0, 0),
('1_1_1_62', 1, 1, 62, 0, 0, 0),
('1_1_1_7', 1, 1, 7, 0, 0, 0),
('1_1_1_8', 1, 1, 8, 0, 0, 0),
('1_1_1_9', 1, 1, 9, 0, 0, 0),
('21_113_21_28', 113, 21, 28, 31, -1, 0),
('21_113_21_30', 113, 21, 30, 2, 3, 0),
('21_113_21_39', 113, 21, 39, 2, -2, 0),
('21_113_21_64', 113, 21, 64, 0, 0, 0),
('22_113_22_29', 113, 22, 29, 1, 0, 0),
('22_113_22_31', 113, 22, 31, 0, 0, 0),
('22_113_22_65', 113, 22, 65, 0, 0, 0),
('28_113_28_30', 113, 28, 30, -1, 0, 0),
('28_113_28_39', 113, 28, 39, -30, 0, 0),
('28_113_28_64', 113, 28, 64, 0, 0, 0),
('29_113_29_31', 113, 29, 31, 0, 0, 0),
('29_113_29_65', 113, 29, 65, 0, 0, 0),
('2_1_2_10', 1, 2, 10, 0, 0, 0),
('2_1_2_11', 1, 2, 11, 0, 0, 0),
('2_1_2_12', 1, 2, 12, 0, 0, 0),
('2_1_2_13', 1, 2, 13, 0, 0, 0),
('2_1_2_14', 1, 2, 14, 0, 0, 0),
('2_1_2_15', 1, 2, 15, 0, 0, 0),
('2_1_2_3', 1, 2, 3, 0, 0, 0),
('2_1_2_4', 1, 2, 4, 0, 0, 0),
('2_1_2_5', 1, 2, 5, 0, 0, 0),
('2_1_2_6', 1, 2, 6, 0, 0, 0),
('2_1_2_62', 1, 2, 62, 0, 0, 0),
('2_1_2_7', 1, 2, 7, 0, 0, 0),
('2_1_2_8', 1, 2, 8, 0, 0, 0),
('2_1_2_9', 1, 2, 9, 0, 0, 0),
('30_113_30_39', 113, 30, 39, 16, 0, 0),
('30_113_30_64', 113, 30, 64, 0, 0, 0),
('31_113_31_65', 113, 31, 65, 0, 0, 0),
('3_1_3_10', 1, 3, 10, 0, 0, 0),
('3_1_3_11', 1, 3, 11, 0, 0, 0),
('3_1_3_12', 1, 3, 12, 0, 0, 0),
('3_1_3_13', 1, 3, 13, 0, 0, 0),
('3_1_3_14', 1, 3, 14, 0, 0, 0),
('3_1_3_15', 1, 3, 15, 0, 0, 0),
('3_1_3_4', 1, 3, 4, 0, 0, 0),
('3_1_3_5', 1, 3, 5, 0, 0, 0),
('3_1_3_6', 1, 3, 6, 0, 0, 0),
('3_1_3_62', 1, 3, 62, 0, 0, 0),
('3_1_3_7', 1, 3, 7, 0, 0, 0),
('3_1_3_8', 1, 3, 8, 0, 0, 0),
('3_1_3_9', 1, 3, 9, 0, 0, 0),
('4_1_4_10', 1, 4, 10, 0, 0, 0),
('4_1_4_11', 1, 4, 11, 0, 0, 0),
('4_1_4_12', 1, 4, 12, 0, 0, 0),
('4_1_4_13', 1, 4, 13, 0, 0, 0),
('4_1_4_14', 1, 4, 14, 0, 0, 0),
('4_1_4_15', 1, 4, 15, 0, 0, 0),
('4_1_4_5', 1, 4, 5, 0, 0, 0),
('4_1_4_6', 1, 4, 6, 0, 0, 0),
('4_1_4_62', 1, 4, 62, 0, 0, 0),
('4_1_4_7', 1, 4, 7, 0, 0, 0),
('4_1_4_8', 1, 4, 8, 0, 0, 0),
('4_1_4_9', 1, 4, 9, 0, 0, 0),
('57_138_57_58', 138, 57, 58, 0, 0, 0),
('5_1_5_10', 1, 5, 10, 0, 0, 0),
('5_1_5_11', 1, 5, 11, 0, 0, 0),
('5_1_5_12', 1, 5, 12, 0, 0, 0),
('5_1_5_13', 1, 5, 13, 0, 0, 0),
('5_1_5_14', 1, 5, 14, 0, 0, 0),
('5_1_5_15', 1, 5, 15, 0, 0, 0),
('5_1_5_6', 1, 5, 6, 0, 0, 0),
('5_1_5_62', 1, 5, 62, 0, 0, 0),
('5_1_5_7', 1, 5, 7, 0, 0, 0),
('5_1_5_8', 1, 5, 8, 0, 0, 0),
('5_1_5_9', 1, 5, 9, 0, 0, 0),
('66_2_66_67', 2, 66, 67, 0, 0, 0),
('66_2_66_68', 2, 66, 68, 0, 0, 0),
('66_2_66_69', 2, 66, 69, 0, 0, 0),
('67_2_67_68', 2, 67, 68, 0, 0, 0),
('67_2_67_69', 2, 67, 69, 0, 0, 0),
('68_2_68_69', 2, 68, 69, 0, 0, 0),
('6_1_6_10', 1, 6, 10, 0, 0, 0),
('6_1_6_11', 1, 6, 11, 0, 0, 0),
('6_1_6_12', 1, 6, 12, 0, 0, 0),
('6_1_6_13', 1, 6, 13, 0, 0, 0),
('6_1_6_14', 1, 6, 14, 0, 0, 0),
('6_1_6_15', 1, 6, 15, 0, 0, 0),
('6_1_6_7', 1, 6, 7, 0, 0, 0),
('6_1_6_8', 1, 6, 8, 0, 0, 0),
('6_1_6_9', 1, 6, 9, 0, 0, 0),
('7_1_7_10', 1, 7, 10, 0, 0, 0),
('7_1_7_11', 1, 7, 11, 0, 0, 0),
('7_1_7_12', 1, 7, 12, 0, 0, 0),
('7_1_7_13', 1, 7, 13, 0, 0, 0),
('7_1_7_14', 1, 7, 14, 0, 0, 0),
('7_1_7_15', 1, 7, 15, 0, 0, 0),
('7_1_7_8', 1, 7, 8, 0, 0, 0),
('7_1_7_9', 1, 7, 9, 0, 0, 0),
('83_146_83_84', 146, 83, 84, 2, 0, 0),
('83_146_83_85', 146, 83, 85, 0, 0, 0),
('83_146_83_86', 146, 83, 86, 0, 0, 0),
('83_146_83_88', 146, 83, 88, 0, 0, 0),
('84_146_84_85', 146, 84, 85, -5, 0, 0),
('84_146_84_86', 146, 84, 86, 0, 0, 0),
('84_146_84_88', 146, 84, 88, 13, 0, 0),
('85_146_85_86', 146, 85, 86, 0, 0, 0),
('85_146_85_88', 146, 85, 88, 0, 0, 0),
('86_146_86_88', 146, 86, 88, 0, 0, 0),
('8_1_8_10', 1, 8, 10, 0, 0, 0),
('8_1_8_11', 1, 8, 11, 0, 0, 0),
('8_1_8_12', 1, 8, 12, 0, 0, 0),
('8_1_8_13', 1, 8, 13, 0, 0, 0),
('8_1_8_14', 1, 8, 14, 0, 0, 0),
('8_1_8_15', 1, 8, 15, 0, 0, 0),
('8_1_8_9', 1, 8, 9, 0, 0, 0),
('9_1_9_10', 1, 9, 10, 0, 0, 0),
('9_1_9_11', 1, 9, 11, 0, 0, 0),
('9_1_9_12', 1, 9, 12, 0, 0, 0),
('9_1_9_13', 1, 9, 13, 0, 0, 0),
('9_1_9_14', 1, 9, 14, 0, 0, 0),
('9_1_9_15', 1, 9, 15, 0, 0, 0);

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
  `participant_id` varchar(8) COLLATE utf8_estonian_ci NOT NULL DEFAULT '00:00:00',
  `time` time DEFAULT NULL,
  PRIMARY KEY (`participant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

--
-- Andmete tõmmistamine tabelile `leaderboard`
--

INSERT INTO `leaderboard` (`tournament_id`, `participant_id`, `time`) VALUES
(1, '1', '00:00:00'),
(1, '10', '08:00:00'),
(1, '11', '00:00:00'),
(1, '12', '00:00:00'),
(1, '13', '00:00:00'),
(1, '14', '06:00:01'),
(1, '15', '02:01:01'),
(1, '2', '00:00:00'),
(113, '21', '00:00:00'),
(113, '22', '00:00:00'),
(113, '28', '00:00:00'),
(113, '29', '00:00:00'),
(1, '3', '11:00:00'),
(113, '30', '00:00:00'),
(113, '31', '00:00:00'),
(1, '4', '00:00:00'),
(1, '5', '00:00:00'),
(1, '6', '04:01:01'),
(113, '64', '00:00:00'),
(113, '65', '00:00:00'),
(1, '7', '00:00:00'),
(1, '8', '00:00:00'),
(146, '83', '08:00:00'),
(146, '84', '16:00:00'),
(146, '85', '00:00:00'),
(146, '86', '00:00:00'),
(146, '88', '00:00:00'),
(1, '9', '00:00:00');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `loser`
--

DROP TABLE IF EXISTS `loser`;
CREATE TABLE IF NOT EXISTS `loser` (
  `id` varchar(50) NOT NULL,
  `tournament_id` int(10) unsigned NOT NULL,
  `score` int(11) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `loser`
--

INSERT INTO `loser` (`id`, `tournament_id`, `score`, `deleted`) VALUES
('113_loser_eta', 113, 5, 0),
('113_loser_theta', 113, 6, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=89 ;

--
-- Andmete tõmmistamine tabelile `participant`
--

INSERT INTO `participant` (`participant_id`, `participant_name`, `institute_id`, `pool_name`, `participant_favorite`, `tournament_id`, `deleted`) VALUES
(1, 'test', 1, 'A', 0, 1, 0),
(2, 'bhgfdh', 3, 'A', 1, 1, 0),
(3, 'test', 1, 'A', 0, 1, 0),
(4, 'bhgfdh', 3, 'A', 1, 1, 0),
(5, 'test', 1, 'A', 0, 1, 0),
(6, 'bhgfdh', 3, 'A', 1, 1, 0),
(7, 'test', 1, 'A', 0, 1, 0),
(8, 'bhgfdh', 3, 'A', 1, 1, 0),
(9, 'test', 1, 'A', 0, 1, 0),
(10, 'bhgfdh', 3, 'A', 1, 1, 0),
(11, 'test', 1, 'A', 0, 1, 0),
(12, 'test', 3, 'A', 0, 1, 0),
(13, 'asd', 7, 'A', 0, 1, 0),
(14, 'asda', 2, 'A', 1, 1, 0),
(15, 'asda', 2, 'A', 1, 1, 0),
(16, 'fafa', 6, '', 0, 106, 0),
(17, 'fefe', 2, '', 0, 106, 0),
(18, 'a', 2, 'B', 0, 113, 1),
(19, 'b', 2, 'A', 0, 113, 1),
(20, 'h', 2, 'A', 0, 127, 1),
(21, 'alpha', 2, 'A', 0, 113, 0),
(22, 'beta', 2, 'B', 1, 113, 0),
(23, 'fdgdgf', 1, 'A', 0, 130, 0),
(24, 'as', 7, 'A', 0, 130, 0),
(25, 'g', 2, 'A', 1, 130, 0),
(26, 'uus', 2, 'A', 0, 130, 0),
(27, 'uus2', 2, 'A', 0, 130, 0),
(28, 'gamma', 2, 'A', 0, 113, 0),
(29, 'delta', 2, 'B', 0, 113, 0),
(30, 'epsilon', 2, 'A', 0, 113, 0),
(31, 'zeta', 2, 'B', 0, 113, 0),
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
(65, 'theta', 2, 'B', 0, 113, 0),
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
(78, 'kappa', 2, 'A', 0, 113, 1),
(79, 'kappa', 2, 'A', 0, 113, 1),
(80, 'lambda', 2, 'A', 0, 113, 1),
(81, 'omega', 2, 'A', 0, 113, 1),
(82, 'lambda', 2, 'A', 0, 113, 1),
(83, 'a', 2, 'A', 0, 146, 0),
(84, 'b', 2, 'A', 0, 146, 0),
(85, 'c', 2, 'A', 0, 146, 0),
(86, 'd', 2, 'A', 0, 146, 0),
(87, 'e', 2, 'A', 0, 146, 1),
(88, 'e', 2, 'A', 0, 146, 0);

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
-- Tabeli struktuur tabelile `playoff`
--

DROP TABLE IF EXISTS `playoff`;
CREATE TABLE IF NOT EXISTS `playoff` (
  `id` varchar(50) NOT NULL,
  `score` smallint(6) NOT NULL,
  `tournament_id` int(10) unsigned NOT NULL,
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tournament_id` (`tournament_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `playoff`
--

INSERT INTO `playoff` (`id`, `score`, `tournament_id`, `deleted`) VALUES
('0_existing_participant1', 0, 1, 0),
('0_existing_participant10', 0, 1, 0),
('0_existing_participant11', 0, 1, 0),
('0_existing_participant12', 0, 1, 0),
('0_existing_participant13', 0, 1, 0),
('0_existing_participant14', 0, 1, 0),
('0_existing_participant15', 0, 1, 0),
('0_existing_participant2', 0, 1, 0),
('0_existing_participant21', 3, 113, 0),
('0_existing_participant22', 0, 113, 0),
('0_existing_participant28', 2, 113, 0),
('0_existing_participant29', 1, 113, 0),
('0_existing_participant3', 0, 1, 0),
('0_existing_participant30', 1, 113, 0),
('0_existing_participant31', 0, 113, 0),
('0_existing_participant4', 0, 1, 0),
('0_existing_participant5', 0, 1, 0),
('0_existing_participant6', 0, 1, 0),
('0_existing_participant64', 2, 113, 0),
('0_existing_participant65', 2, 113, 0),
('0_existing_participant7', 0, 1, 0),
('0_existing_participant8', 0, 1, 0),
('0_existing_participant82', 0, 113, 0),
('0_existing_participant83', 1, 146, 0),
('0_existing_participant84', 3, 146, 0),
('0_existing_participant85', 2, 146, 0),
('0_existing_participant86', 0, 146, 0),
('0_existing_participant88', 0, 146, 0),
('0_existing_participant9', 0, 1, 0),
('1_existing_participant1', 0, 1, 0),
('1_existing_participant10', 0, 1, 0),
('1_existing_participant11', 0, 1, 0),
('1_existing_participant12', 0, 1, 0),
('1_existing_participant13', 0, 1, 0),
('1_existing_participant14', 0, 1, 0),
('1_existing_participant15', 0, 1, 0),
('1_existing_participant2', 0, 1, 0),
('1_existing_participant21', 3, 113, 0),
('1_existing_participant22', 0, 113, 0),
('1_existing_participant28', 6, 113, 0),
('1_existing_participant29', 2, 113, 0),
('1_existing_participant3', 0, 1, 0),
('1_existing_participant30', 0, 113, 0),
('1_existing_participant31', 0, 113, 0),
('1_existing_participant4', 0, 1, 0),
('1_existing_participant5', 0, 1, 0),
('1_existing_participant6', 0, 1, 0),
('1_existing_participant64', 2, 113, 0),
('1_existing_participant65', 1, 113, 0),
('1_existing_participant7', 0, 1, 0),
('1_existing_participant8', 0, 1, 0),
('1_existing_participant82', 0, 113, 0),
('1_existing_participant83', 4, 146, 0),
('1_existing_participant84', 3, 146, 0),
('1_existing_participant85', 1, 146, 0),
('1_existing_participant86', 1, 146, 0),
('1_existing_participant88', 2, 146, 0),
('1_existing_participant9', 0, 1, 0),
('2_existing_participant1', 0, 1, 0),
('2_existing_participant10', 0, 1, 0),
('2_existing_participant11', 0, 1, 0),
('2_existing_participant12', 0, 1, 0),
('2_existing_participant13', 0, 1, 0),
('2_existing_participant14', 0, 1, 0),
('2_existing_participant15', 0, 1, 0),
('2_existing_participant2', 0, 1, 0),
('2_existing_participant21', 4, 113, 0),
('2_existing_participant22', 0, 113, 0),
('2_existing_participant28', 6, 113, 0),
('2_existing_participant29', 5, 113, 0),
('2_existing_participant3', 0, 1, 0),
('2_existing_participant30', 0, 113, 0),
('2_existing_participant31', 5, 113, 0),
('2_existing_participant4', 0, 1, 0),
('2_existing_participant5', 0, 1, 0),
('2_existing_participant6', 0, 1, 0),
('2_existing_participant64', 13, 113, 0),
('2_existing_participant65', 0, 113, 0),
('2_existing_participant7', 0, 1, 0),
('2_existing_participant8', 0, 1, 0),
('2_existing_participant82', 1, 113, 0),
('2_existing_participant83', 4, 146, 0),
('2_existing_participant84', 2, 146, 0),
('2_existing_participant85', 0, 146, 0),
('2_existing_participant86', 3, 146, 0),
('2_existing_participant88', 3, 146, 0),
('2_existing_participant9', 0, 1, 0),
('3_existing_participant1', 0, 1, 0),
('3_existing_participant10', 0, 1, 0),
('3_existing_participant11', 0, 1, 0),
('3_existing_participant12', 0, 1, 0),
('3_existing_participant13', 0, 1, 0),
('3_existing_participant14', 0, 1, 0),
('3_existing_participant15', 0, 1, 0),
('3_existing_participant2', 0, 1, 0),
('3_existing_participant21', 0, 113, 0),
('3_existing_participant22', 2, 113, 0),
('3_existing_participant28', 2, 113, 0),
('3_existing_participant29', 0, 113, 0),
('3_existing_participant3', 0, 1, 0),
('3_existing_participant30', 0, 113, 0),
('3_existing_participant31', 3, 113, 0),
('3_existing_participant4', 0, 1, 0),
('3_existing_participant5', 0, 1, 0),
('3_existing_participant6', 0, 1, 0),
('3_existing_participant64', 2, 113, 0),
('3_existing_participant65', 0, 113, 0),
('3_existing_participant7', 0, 1, 0),
('3_existing_participant8', 0, 1, 0),
('3_existing_participant82', 0, 113, 0),
('3_existing_participant83', 0, 146, 0),
('3_existing_participant84', 0, 146, 0),
('3_existing_participant85', 0, 146, 0),
('3_existing_participant86', 0, 146, 0),
('3_existing_participant88', 0, 146, 0),
('3_existing_participant9', 0, 1, 0),
('4_existing_participant1', 0, 1, 0),
('4_existing_participant10', 0, 1, 0),
('4_existing_participant11', 0, 1, 0),
('4_existing_participant12', 0, 1, 0),
('4_existing_participant13', 0, 1, 0),
('4_existing_participant14', 0, 1, 0),
('4_existing_participant15', 0, 1, 0),
('4_existing_participant2', 0, 1, 0),
('4_existing_participant21', 0, 113, 0),
('4_existing_participant22', 0, 113, 0),
('4_existing_participant28', 0, 113, 0),
('4_existing_participant29', 0, 113, 0),
('4_existing_participant3', 0, 1, 0),
('4_existing_participant30', 0, 113, 0),
('4_existing_participant31', 0, 113, 0),
('4_existing_participant4', 0, 1, 0),
('4_existing_participant5', 0, 1, 0),
('4_existing_participant6', 0, 1, 0),
('4_existing_participant64', 0, 113, 0),
('4_existing_participant65', 0, 113, 0),
('4_existing_participant7', 0, 1, 0),
('4_existing_participant8', 0, 1, 0),
('4_existing_participant82', 0, 113, 0),
('4_existing_participant9', 0, 1, 0),
('undefined', 0, 113, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=147 ;

--
-- Andmete tõmmistamine tabelile `tournament`
--

INSERT INTO `tournament` (`tournament_id`, `tournament_name`, `tournament_year`, `tournament_place`, `place_id`, `deleted`, `tournament_start`, `tournament_end`, `tournament_loser_bracket`, `tournament_game_time`, `tournament_game_pause`, `tournament_field`, `tournament_group`, `tournament_win`, `tournament_type`, `tournament_game_win`, `tournament_game_tie`, `tournament_game_loss`, `tournament_participant`, `tournament_classification`) VALUES
(1, 'Jalgpall', 2013, 'Torn', 1, 0, '2013-05-01 00:00:00', '2013-05-29 00:00:00', 0, 1, 0, 0, 1, 0, 3, 0, 0, 0, 'Võistleja', 'Firma nimi'),
(2, 'Jalgpall', 2013, 'Spordisaal', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Võistkond', 'Instituut'),
(106, 'tere', 0, '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, 1, 1, 1, 1, 0, 3, 1, 0, '', ''),
(111, 'sdgfsgfd', 0, '', 1, 1, '2013-04-02 00:00:00', '2013-04-19 00:00:00', 0, 1, 1, 1, 3, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(113, 'test 3', 0, '', 3, 0, '2013-04-01 10:00:00', '2013-04-19 13:00:00', 1, 1, 1, 1, 2, 1, 2, 4, 2, 1, 'Võistkond', 'Instituut'),
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
(145, '1', 0, '', 1, 1, '2013-04-01 00:00:00', '2013-04-26 00:00:00', 0, 1, 1, 1, 1, 1, 1, 3, 2, 1, 'Võistkond', 'Instituut'),
(146, 'test5', 0, '', 3, 0, '2013-05-08 00:00:00', '2013-05-23 00:00:00', 1, 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut');

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
-- Piirangud tabelile `participant`
--
ALTER TABLE `participant`
  ADD CONSTRAINT `participant_ibfk_1` FOREIGN KEY (`institute_id`) REFERENCES `institute` (`institute_id`),
  ADD CONSTRAINT `participant_ibfk_2` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`tournament_id`);

--
-- Piirangud tabelile `playoff`
--
ALTER TABLE `playoff`
  ADD CONSTRAINT `playoff_ibfk_1` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`tournament_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
