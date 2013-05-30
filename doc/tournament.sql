-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 30, 2013 at 11:56 AM
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
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
CREATE TABLE IF NOT EXISTS `game` (
  `game_id` varchar(50) NOT NULL,
  `tournament_id` int(10) unsigned NOT NULL,
  `participant_a_id` int(10) unsigned NOT NULL,
  `participant_b_id` int(10) unsigned NOT NULL,
  `participant_a_score` int(10) NOT NULL,
  `participant_b_score` int(10) NOT NULL,
  `pool_name` varchar(255) NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`game_id`),
  KEY `tournament_id` (`tournament_id`),
  KEY `participant_a_id` (`participant_a_id`),
  KEY `participant_b_id` (`participant_b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`game_id`, `tournament_id`, `participant_a_id`, `participant_b_id`, `participant_a_score`, `participant_b_score`, `pool_name`, `deleted`) VALUES
('427_2_427_432', 2, 427, 432, 0, 0, 'A', 0),
('427_2_427_435', 2, 427, 435, 0, 0, 'A', 0),
('429_2_429_433', 2, 429, 433, 3, 4, 'B', 0),
('429_2_429_436', 2, 429, 436, 0, 4, 'B', 0),
('432_2_432_435', 2, 432, 435, 0, 0, 'A', 0),
('433_2_433_436', 2, 433, 436, 2, 3, 'B', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=34 ;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`institute_id`, `institute_name`, `deleted`) VALUES
(1, 'MMI', 0),
(2, '', 0),
(3, 'teine', 0),
(4, ' asd', 0),
(5, ' ', 0),
(6, ' tere', 0),
(7, 'asd', 0),
(8, 'instituut1 alagrupp1', 0),
(9, 'instituut2', 0),
(10, 'instituut3', 0),
(11, 'instituut1  alagrupp1', 0),
(12, 'instituut1 A', 0),
(13, 'instituut1', 0),
(14, 'intituut1', 0),
(15, 'intituut2', 0),
(16, 'aaBBee', 0),
(17, 'a', 0),
(18, 'minuinstituut', 0),
(19, 'instituut', 0),
(20, 'koht', 0),
(21, 'aa', 0),
(22, 'aaa', 0),
(23, 'nimi', 0),
(24, 'suva', 0),
(25, 'ONSEE', 0),
(26, 'natukelühem', 0),
(27, 'natukepikem', 0),
(28, 'teineproov', 0),
(29, 'teiseksprooviks', 0),
(30, 'k', 0),
(31, 'm', 0),
(32, 'b', 0),
(33, 'c', 0);

-- --------------------------------------------------------

--
-- Table structure for table `leaderboard`
--

DROP TABLE IF EXISTS `leaderboard`;
CREATE TABLE IF NOT EXISTS `leaderboard` (
  `tournament_id` int(11) NOT NULL,
  `participant_id` int(11) NOT NULL,
  `time` varchar(12) COLLATE utf8_estonian_ci DEFAULT '00:00:00.000',
  PRIMARY KEY (`participant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

--
-- Dumping data for table `leaderboard`
--

INSERT INTO `leaderboard` (`tournament_id`, `participant_id`, `time`) VALUES
(1, 1, '00:00:00.000'),
(1, 2, '00:00:00.000'),
(1, 3, '00:00:00.000'),
(1, 4, '00:00:00.000'),
(1, 5, '00:00:00.000'),
(1, 6, '00:00:00.000'),
(1, 7, '00:00:00.000'),
(1, 8, '00:00:00.000'),
(1, 9, '00:00:00.000'),
(1, 10, '00:00:00.000'),
(1, 11, '00:00:00.000'),
(1, 12, '00:00:00.000'),
(1, 13, '00:00:00.000'),
(1, 14, '00:00:00.000'),
(1, 15, '00:00:00.000'),
(113, 21, '00:00:00.000'),
(113, 22, '00:00:00.000'),
(113, 28, '00:00:00.000'),
(113, 29, '00:00:00.000'),
(113, 30, '00:00:00.000'),
(113, 31, '00:00:00.000'),
(113, 64, '00:00:00.000'),
(113, 65, '00:00:00.000');

-- --------------------------------------------------------

--
-- Table structure for table `loser`
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
-- Dumping data for table `loser`
--

INSERT INTO `loser` (`id`, `tournament_id`, `score`, `deleted`) VALUES
('113_loser_eta', 113, 5, 0),
('113_loser_theta', 113, 6, 0),
('147_loser_asd', 147, -1, 0),
('147_loser_zxc', 147, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `participant`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=437 ;

--
-- Dumping data for table `participant`
--

INSERT INTO `participant` (`participant_id`, `participant_name`, `institute_id`, `pool_name`, `participant_favorite`, `tournament_id`, `deleted`) VALUES
(1, 'test', 1, 'A', 0, 1, 1),
(2, 'bhgfdh', 3, 'B', 1, 1, 1),
(3, 'test', 1, 'C', 0, 1, 1),
(4, 'bhgfdh', 3, 'D', 1, 1, 1),
(5, 'test', 1, 'E', 0, 1, 1),
(6, 'bhgfdh', 3, 'F', 1, 1, 1),
(7, 'test', 1, 'A', 0, 1, 1),
(8, 'bhgfdh', 3, 'B', 1, 1, 1),
(9, 'test', 1, 'C', 0, 1, 1),
(10, 'bhgfdh', 3, 'D', 1, 1, 1),
(11, 'test', 1, 'E', 0, 1, 1),
(12, 'test', 3, 'F', 0, 1, 1),
(13, 'asd', 7, 'A', 0, 1, 1),
(14, 'asda', 2, 'B', 1, 1, 1),
(15, 'asda', 2, 'C', 1, 1, 1),
(16, 'fafa', 6, '', 0, 106, 1),
(17, 'fefe', 2, '', 0, 106, 1),
(18, 'a', 2, 'B', 0, 113, 1),
(19, 'b', 2, 'A', 0, 113, 1),
(20, 'h', 2, 'A', 0, 127, 1),
(21, 'alpha', 2, 'A', 0, 113, 1),
(22, 'beta', 2, 'B', 1, 113, 1),
(23, 'fdgdgf', 1, 'A', 0, 130, 1),
(24, 'as', 7, 'A', 0, 130, 1),
(25, 'g', 2, 'A', 1, 130, 1),
(26, 'uus', 2, 'A', 0, 130, 1),
(27, 'uus2', 2, 'A', 0, 130, 1),
(28, 'gamma', 2, 'A', 0, 113, 1),
(29, 'delta', 2, 'B', 0, 113, 1),
(30, 'epsilon', 2, 'A', 0, 113, 1),
(31, 'zeta', 2, 'B', 0, 113, 1),
(39, 'eta', 2, 'A', 0, 113, 1),
(40, 'a', 2, 'A', 0, 133, 1),
(41, 'b', 2, 'A', 0, 133, 1),
(42, 'c', 2, 'A', 1, 133, 1),
(43, 'd', 2, 'A', 0, 133, 1),
(44, 'e', 2, 'A', 1, 133, 1),
(45, 'f', 2, 'A', 0, 133, 1),
(46, 'g', 2, 'A', 0, 133, 1),
(47, 'a', 2, 'A', 0, 134, 1),
(48, 'b', 2, 'A', 0, 134, 1),
(49, 'c', 2, 'A', 0, 134, 1),
(50, 'd', 2, 'A', 0, 134, 1),
(51, 'a', 2, 'A', 0, 135, 1),
(52, 'v', 2, 'A', 0, 135, 1),
(53, 'g', 2, 'A', 0, 136, 1),
(54, 'f', 2, 'A', 0, 136, 1),
(55, 'a', 2, 'A', 0, 137, 1),
(56, 'v', 2, 'A', 0, 137, 1),
(57, 'a', 2, 'A', 0, 138, 1),
(58, 'b', 2, 'A', 0, 138, 1),
(59, 'asd', 2, 'A', 0, 143, 1),
(60, 'asf', 2, 'A', 0, 143, 1),
(61, 'a', 2, 'A', 0, 144, 1),
(62, 'asd', 2, 'A', 0, 145, 1),
(64, 'eta', 2, 'A', 0, 113, 1),
(65, 'theta', 2, 'B', 0, 113, 1),
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
(83, 'a', 2, 'A', 0, 146, 1),
(84, 'b', 2, 'A', 0, 146, 1),
(85, 'c', 2, 'A', 0, 146, 1),
(86, 'd', 2, 'A', 0, 146, 1),
(87, 'e', 2, 'A', 0, 146, 1),
(88, 'e', 2, 'A', 0, 146, 1),
(89, 'asd', 2, 'A', 0, 147, 1),
(90, 'qwe', 2, 'B', 1, 147, 1),
(91, 'zxc', 2, 'A', 0, 147, 1),
(92, 'ert', 2, 'B', 0, 147, 1),
(93, 'nimi1', 8, '0', 1, 113, 1),
(94, 'nimi2', 9, 'alagrupp2', 0, 113, 1),
(95, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(96, 'nimi1', 11, '1', 1, 113, 1),
(97, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(98, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(99, 'nimi1', 12, '0', 1, 113, 1),
(100, 'nimi2', 9, 'B', 0, 113, 1),
(101, 'nimi3', 10, 'B', 1, 113, 1),
(102, 'nimi1', 13, '', 1, 113, 1),
(103, '', 2, '', 1, 113, 1),
(104, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(105, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(106, 'nimi1', 13, '', 1, 113, 1),
(107, '', 2, '', 1, 113, 1),
(108, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(109, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(110, 'nimi1', 13, '', 1, 113, 1),
(111, '', 2, '', 1, 113, 1),
(112, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(113, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(114, 'nimi1', 13, '', 1, 113, 1),
(115, '', 2, '', 1, 113, 1),
(116, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(117, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(118, 'nimi1', 13, '', 1, 113, 1),
(119, '', 2, '', 1, 113, 1),
(120, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(121, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(122, 'nimi1', 13, '', 1, 113, 1),
(123, '', 2, '', 1, 113, 1),
(124, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(125, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(126, 'nimi1', 13, '', 1, 113, 1),
(127, '', 2, '', 1, 113, 1),
(128, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(129, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(130, 'nimi1', 13, '', 1, 113, 1),
(131, '', 2, '', 1, 113, 1),
(132, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(133, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(134, 'nimi1', 13, '', 1, 113, 1),
(135, '', 2, '', 1, 113, 1),
(136, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(137, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(138, 'nimi1', 13, '', 1, 113, 1),
(139, '', 2, '', 1, 113, 1),
(140, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(141, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(142, 'nimi1', 13, '', 1, 113, 1),
(143, '', 2, '', 1, 113, 1),
(144, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(145, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(146, 'nimi1', 13, '', 1, 113, 1),
(147, '', 2, '', 1, 113, 1),
(148, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(149, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(150, 'nimi1', 13, '', 1, 113, 1),
(151, '', 2, '', 1, 113, 1),
(152, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(153, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(154, 'nimi1', 13, '', 1, 113, 1),
(155, '', 2, '', 1, 113, 1),
(156, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(157, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(158, 'nimi1', 13, '', 1, 113, 1),
(159, '', 2, '', 1, 113, 1),
(160, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(161, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(162, 'nimi1', 13, '', 1, 113, 1),
(163, '', 2, '', 1, 113, 1),
(164, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(165, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(166, 'nimi1', 13, '', 1, 113, 1),
(167, '', 2, '', 1, 113, 1),
(168, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(169, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(170, 'nimi1', 13, '', 1, 113, 1),
(171, '', 2, '', 1, 113, 1),
(172, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(173, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(174, 'nimi1', 13, '', 1, 113, 1),
(175, '', 2, '', 1, 113, 1),
(176, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(177, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(178, 'nimi1', 13, '', 1, 113, 1),
(179, '', 2, '', 1, 113, 1),
(180, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(181, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(182, 'nimi1', 13, '', 1, 113, 1),
(183, '', 2, '', 1, 113, 1),
(184, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(185, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(186, 'nimi1', 13, '', 1, 113, 1),
(187, '', 2, '', 1, 113, 1),
(188, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(189, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(190, 'nimi1', 13, '', 1, 113, 1),
(191, '', 2, '', 1, 113, 1),
(192, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(193, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(194, 'nimi1', 8, '0', 1, 113, 1),
(195, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(196, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(197, 'nimi1', 13, '', 1, 113, 1),
(198, '', 2, '', 1, 113, 1),
(199, 'nimi2', 9, 'alagrupp2', 1, 113, 1),
(200, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(201, 'nimi1', 13, '', 1, 113, 1),
(202, '', 2, '', 1, 113, 1),
(203, 'nimi2', 13, 'alagrupp2', 1, 113, 1),
(204, 'nimi3', 10, 'alagrupp3', 1, 113, 1),
(205, 'aia', 9, 'D', 0, 1, 1),
(206, 'nimi1', 13, 'E', 1, 1, 1),
(207, '', 2, 'F', 1, 1, 1),
(208, 'nimi2', 9, 'A', 1, 1, 1),
(209, 'nimi3', 10, 'B', 1, 1, 1),
(210, 'aia', 9, 'C', 1, 1, 1),
(211, 'nimi3', 10, 'D', 1, 1, 1),
(212, 'nimi2', 9, 'E', 1, 1, 1),
(213, 'nimi3', 10, 'F', 1, 1, 1),
(214, 'nimi1', 13, 'A', 1, 1, 1),
(215, '', 2, 'B', 1, 1, 1),
(216, 'nimi2', 9, 'C', 1, 1, 1),
(217, 'nimi3', 10, 'D', 1, 1, 1),
(218, 'nimi1', 13, 'E', 1, 1, 1),
(219, '', 2, 'F', 1, 1, 1),
(220, 'nimi2', 9, 'A', 1, 1, 1),
(221, 'nimi3', 10, 'B', 1, 1, 1),
(222, 'nimi1', 13, 'C', 1, 1, 1),
(223, '', 2, 'D', 1, 1, 1),
(224, 'nimi2', 9, 'E', 1, 1, 1),
(225, 'nimi3', 10, 'F', 1, 1, 1),
(226, 'nimi1', 13, 'A', 1, 1, 1),
(227, '', 2, 'B', 1, 1, 1),
(228, 'nimi2', 9, 'C', 1, 1, 1),
(229, 'nimi3', 10, 'D', 1, 1, 1),
(230, 'impro', 9, 'E', 1, 1, 1),
(231, 'nimi3', 10, 'F', 1, 1, 1),
(232, 'nimi2', 9, 'A', 1, 1, 1),
(233, 'nimi3', 10, 'B', 1, 1, 1),
(234, 'nimi1', 13, 'C', 1, 1, 1),
(235, '', 2, 'D', 1, 1, 1),
(236, 'nimi2', 9, 'E', 1, 1, 1),
(237, 'nimi3', 10, 'F', 1, 1, 1),
(238, 'nimi1', 13, 'A', 1, 1, 1),
(239, '', 2, 'B', 1, 1, 1),
(240, 'nimi2', 9, 'C', 1, 1, 1),
(241, 'nimi3', 10, 'D', 1, 1, 1),
(242, 'aiaa2', 9, 'E', 1, 1, 1),
(243, 'nimi3', 10, 'F', 1, 1, 1),
(244, 'aia', 1, 'A', 0, 146, 1),
(245, 'jee', 1, 'A', 0, 146, 1),
(246, 'ummmmm', 9, 'A', 0, 146, 1),
(247, 'kkkii', 1, 'A', 0, 146, 1),
(248, 'aia', 2, 'A', 0, 149, 1),
(249, 'papaia', 2, 'A', 0, 149, 1),
(250, 'jhb', 2, 'A', 0, 149, 1),
(251, 'bhuhb', 2, 'A', 0, 149, 1),
(252, 'h', 2, 'A', 0, 149, 1),
(253, 'af', 2, 'A', 0, 1, 1),
(254, 'qwr', 2, 'B', 0, 1, 1),
(255, 'qrw', 2, 'C', 0, 1, 1),
(256, 'nimi1', 13, '', 1, 147, 1),
(257, '', 2, '', 1, 147, 1),
(258, 'nimi2', 9, 'alagrupp2', 1, 147, 1),
(259, 'nimi3', 10, 'alagrupp3', 1, 147, 1),
(260, 'nimi1', 13, '', 1, 147, 1),
(261, '', 2, '', 1, 147, 1),
(262, 'nimi2', 9, 'alagrupp2', 1, 147, 1),
(263, 'nimi3', 10, 'alagrupp3', 1, 147, 1),
(264, 'nimi1', 13, '', 0, 147, 1),
(265, '', 2, '', 1, 147, 1),
(266, 'nimi2', 9, 'alagrupp2', 0, 147, 1),
(267, 'nimi3', 10, 'alagrupp3', 1, 147, 1),
(268, 'nimi1', 8, '0', 0, 147, 1),
(269, 'nimi2', 9, 'alagrupp2', 0, 147, 1),
(270, 'nimi3', 10, 'alagrupp3', 1, 147, 1),
(271, 'nimi1', 14, 'A', 0, 147, 1),
(272, 'nimi2', 15, 'A', 1, 147, 1),
(273, '', 2, '', 0, 147, 1),
(274, 'nimi1', 13, '', 0, 147, 1),
(275, '', 2, '', 1, 147, 1),
(276, 'nimi2', 9, 'alagrupp2', 0, 147, 1),
(277, 'nimi3', 10, 'alagrupp3', 1, 147, 1),
(278, 'nimi1', 14, 'A', 0, 147, 1),
(279, 'nimi2', 15, 'A', 1, 147, 1),
(280, '', 2, '', 0, 147, 1),
(281, '', 2, '', 0, 147, 1),
(282, '', 2, '', 0, 147, 1),
(283, '', 2, '', 0, 147, 1),
(284, '', 2, '', 0, 147, 1),
(285, '', 2, '', 0, 147, 1),
(286, '', 2, '', 0, 147, 1),
(287, '', 2, '', 0, 147, 1),
(288, 'nimi1', 14, 'A', 0, 147, 1),
(289, 'nimi2', 15, 'A', 1, 147, 1),
(290, 'aaaa', 2, '', 0, 147, 1),
(291, 'nimi1', 16, 'A', 0, 147, 1),
(292, 'nimi2', 15, 'A', 1, 147, 1),
(293, '', NULL, '', 0, 147, 1),
(294, '', NULL, '', 0, 147, 1),
(295, '', NULL, '', 0, 147, 1),
(296, '', NULL, '', 0, 147, 1),
(297, 'a', NULL, '', 0, 147, 1),
(298, '', NULL, '', 0, 147, 1),
(299, '', NULL, '', 0, 147, 1),
(300, '', NULL, '', 0, 147, 1),
(301, 'a', NULL, '', 0, 147, 1),
(302, '', NULL, '', 0, 147, 1),
(303, '', NULL, '', 0, 147, 1),
(304, '0', NULL, '', 0, 147, 1),
(305, '', NULL, '', 0, 147, 1),
(306, '', NULL, '', 0, 147, 1),
(307, '0', NULL, '', 0, 147, 1),
(308, '', NULL, '', 0, 147, 1),
(309, 'a', NULL, '', 0, 147, 1),
(310, '', NULL, '', 0, 147, 1),
(311, 'a', NULL, '', 0, 147, 1),
(312, '', NULL, '', 0, 147, 1),
(313, 'a', NULL, '', 0, 147, 1),
(314, 'nimi1', 13, '', 0, 147, 1),
(315, '', 2, '', 1, 147, 1),
(316, 'nimi2', 9, 'alagrupp2', 0, 147, 1),
(317, 'nimi3', 10, 'alagrupp3', 1, 147, 1),
(318, 'nimi1', 13, '', 0, 147, 1),
(319, '', 2, '', 1, 147, 1),
(320, 'nimi2', 9, 'alagrupp2', 0, 147, 1),
(321, 'nimi3', 10, 'alagrupp3', 1, 147, 1),
(322, 'nimi1', 13, '', 0, 147, 1),
(323, '', 2, '', 1, 147, 1),
(324, 'nimi2', 9, 'alagrupp2', 0, 147, 1),
(325, 'nimi3', 10, 'alagrupp3', 1, 147, 1),
(326, 'afs', 2, 'A', 0, 2, 1),
(327, 'asfafs', 2, 'A', 0, 2, 1),
(328, 'nimi1', 13, 'A', 0, 2, 1),
(329, '', 2, '', 1, 2, 1),
(330, 'nimi2', 9, 'A', 0, 2, 1),
(331, 'nimi3', 10, 'A', 1, 2, 1),
(332, 'nimi1', 13, 'A', 0, 2, 1),
(333, '', 2, '', 1, 2, 1),
(334, 'nimi2', 9, 'A', 0, 2, 1),
(335, 'nimi3', 10, 'A', 1, 2, 1),
(336, 'tanel aa a 1', NULL, '', 0, 2, 1),
(337, '', NULL, '', 0, 2, 1),
(338, 'nimi3', 10, 'alagrupp3', 1, 1, 1),
(339, 'nimi3', 10, 'alagrupp3', 1, 1, 1),
(340, 'nimi3', 10, 'alagrupp3', 1, 1, 1),
(341, 'ads', 2, 'asd', 0, 1, 1),
(342, 'tanel', 17, 'a', 1, 2, 1),
(343, 'nimi3', 10, 'A', 1, 2, 1),
(344, 'Minunimi', 18, 'A', 1, 2, 1),
(345, 'nimi11', 19, 'A', 1, 2, 1),
(346, 'nimi2', 9, 'alagrupp2', 0, 2, 1),
(347, 'nimi3', 10, 'alagrupp3', 1, 2, 1),
(348, 'nimi2', 9, 'alagrupp2', 0, 2, 1),
(349, 'nimi3', 10, 'alagrupp3', 1, 2, 1),
(350, 'nimi', 20, 'a', 1, 2, 1),
(351, 'a', 17, 'a', 1, 2, 1),
(352, 'aa', 21, 'a', 1, 2, 1),
(353, 'aaa', 22, 'a', 1, 2, 1),
(354, 'nimi1', 13, 'a', 1, 2, 1),
(355, 'nimi2', 9, 'a', 1, 2, 1),
(356, 'nimi3', 10, 'a', 1, 2, 1),
(357, 'nimi1', 13, 'a', 1, 2, 1),
(358, 'nimi2', 9, 'a', 1, 2, 1),
(359, 'nimi3', 10, 'a', 1, 2, 1),
(360, 'nimi1', 13, 'a', 1, 2, 1),
(361, 'nimi2', 9, 'a', 1, 2, 1),
(362, 'nimi3', 10, 'a', 1, 2, 1),
(363, 'suva', 23, 'a', 1, 2, 1),
(364, 'nimi3', 10, 'alagrupp3', 1, 2, 1),
(365, 'a', 17, 'a', 1, 2, 1),
(366, 'suva', 24, 'a', 1, 2, 1),
(367, 'Minunimi', 25, 'a', 1, 2, 1),
(368, 'nimi2', 9, 'alagrupp2', 0, 2, 1),
(369, 'nimi3', 10, 'alagrupp3', 1, 2, 1),
(370, 'nimi2', 9, 'alagrupp2', 0, 2, 1),
(371, 'nimi3', 10, 'alagrupp3', 1, 2, 1),
(372, 'suva', 26, 'a', 1, 2, 1),
(373, 'eiolesuva', 27, 'a', 1, 2, 1),
(374, 'suva', 26, 'a', 1, 2, 1),
(375, 'eiolesuva', 27, 'a', 1, 2, 1),
(376, 'suva', 26, 'a', 1, 2, 1),
(377, 'eiolesuva', 27, 'a', 1, 2, 1),
(378, 'proov', 28, 'a', 1, 2, 1),
(379, 'prooviks', 29, 'a', 1, 2, 1),
(380, 'Minunimi', 18, 'A', 1, 2, 1),
(381, 'minuteinenimi', 19, 'A', 1, 2, 1),
(382, 'fqw', 24, 'A', 0, 2, 1),
(383, 'qweq', 2, 'A', 0, 2, 1),
(384, 'asd', 2, 'A', 0, 2, 1),
(385, 'a', 17, 'a', 1, 2, 1),
(386, 'a', 17, 'a', 1, 2, 1),
(387, 'a', 17, 'a', 1, 2, 1),
(388, 'a', 17, 'a', 1, 2, 1),
(389, 'a', 17, 'a', 1, 2, 1),
(390, 'a', 17, 'a', 1, 2, 1),
(391, 'a', 17, 'a', 1, 2, 1),
(392, 'a', 17, 'a', 1, 2, 1),
(393, 'a', 17, 'a', 1, 2, 1),
(394, 'k', 30, 'k', 1, 2, 1),
(395, 'm', 31, 'A', 1, 2, 1),
(396, 'asd', 2, 'A', 0, 2, 1),
(397, 'qwe', 2, 'A', 0, 2, 1),
(398, 'asf', 2, 'A', 0, 2, 1),
(399, 'wqe', 2, 'A', 0, 2, 1),
(400, 'ads', 2, 'A', 0, 2, 1),
(401, 'a', 17, 'a', 1, 146, 0),
(402, 'b', 32, 'b', 1, 146, 0),
(403, 'c', 33, 'c', 1, 146, 0),
(404, 'a', 17, 'a', 1, 146, 0),
(405, 'a', 17, 'a', 1, 146, 0),
(406, 'a', 32, 'b', 1, 146, 0),
(407, 'a', 32, 'b', 1, 146, 0),
(408, 'a', 32, 'b', 1, 146, 0),
(409, 'a', 32, 'b', 1, 146, 0),
(410, 'a', 32, 'b', 1, 146, 0),
(411, 'a', 32, 'b', 1, 146, 0),
(412, 'üks', 2, 'A', 0, 150, 0),
(413, 'asf', 2, 'A', 0, 1, 0),
(414, 'ags', 2, 'A', 0, 1, 0),
(415, 'gasfas', 2, 'A', 0, 1, 0),
(416, '1', 2, 'A', 0, 151, 0),
(417, '2', 2, 'B', 0, 151, 0),
(418, '3', 2, 'A', 0, 151, 0),
(419, 'afs', 2, 'A', 0, 2, 1),
(420, 'qwr', 2, 'A', 0, 2, 1),
(421, 'qwer', 2, 'A', 0, 2, 1),
(422, 'asfa', 2, 'A', 0, 2, 1),
(423, 'qwe', 2, 'A', 0, 2, 1),
(424, 'asd', 2, 'A', 0, 2, 1),
(425, 'qew', 2, 'A', 0, 2, 1),
(426, 'saf', 2, 'A', 0, 2, 1),
(427, 'asd', 2, 'A', 0, 2, 0),
(428, 'zxc', 2, 'A', 0, 2, 1),
(429, 'aqq', 2, 'B', 0, 2, 0),
(430, 'afs', 2, 'A', 0, 2, 1),
(431, 'qwe', 2, 'B', 0, 2, 1),
(432, 'qqq', 2, 'A', 0, 2, 0),
(433, 'www', 2, 'B', 0, 2, 0),
(434, 'eee', 2, 'A', 0, 2, 1),
(435, 'eee', 2, 'A', 0, 2, 0),
(436, 'rrr', 2, 'B', 0, 2, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`place_id`, `place_name`, `place_deleted`) VALUES
(1, 'Torn', 0),
(2, 'Spordisaal', 0),
(3, '', 0),
(4, 'ddfddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', 1),
(5, 'afs', 0),
(6, 'gsddss', 0),
(7, 'sgddsgdg', 0),
(8, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 1),
(9, 'fq', 0),
(10, 'gas', 0);

-- --------------------------------------------------------

--
-- Table structure for table `playoff`
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
-- Dumping data for table `playoff`
--

INSERT INTO `playoff` (`id`, `score`, `tournament_id`, `deleted`) VALUES
('0_existing_participant427', 2, 2, 0),
('0_existing_participant428', 0, 2, 1),
('0_existing_participant429', 1, 2, 0),
('0_existing_participant430', 5, 2, 1),
('0_existing_participant431', 0, 2, 1),
('0_existing_participant432', 0, 2, 0),
('0_existing_participant433', 0, 2, 0),
('0_existing_participant434', 0, 2, 1),
('0_existing_participant435', 0, 2, 0),
('0_existing_participant436', 0, 2, 0),
('1_existing_participant427', 2, 2, 0),
('1_existing_participant428', 0, 2, 1),
('1_existing_participant429', 0, 2, 0),
('1_existing_participant430', 0, 2, 1),
('1_existing_participant431', 0, 2, 1),
('1_existing_participant432', 0, 2, 0),
('1_existing_participant433', 0, 2, 0),
('1_existing_participant434', 0, 2, 1),
('1_existing_participant435', 0, 2, 0),
('1_existing_participant436', 0, 2, 0),
('2_existing_participant427', 0, 2, 0),
('2_existing_participant428', 0, 2, 1),
('2_existing_participant429', 0, 2, 0),
('2_existing_participant430', 0, 2, 1),
('2_existing_participant431', 0, 2, 1),
('2_existing_participant432', 0, 2, 0),
('2_existing_participant433', 0, 2, 0),
('2_existing_participant434', 0, 2, 1),
('2_existing_participant435', 0, 2, 0),
('2_existing_participant436', 0, 2, 0),
('3_existing_participant427', 0, 2, 0),
('3_existing_participant429', 0, 2, 0),
('3_existing_participant432', 0, 2, 0),
('3_existing_participant433', 0, 2, 0),
('3_existing_participant434', 0, 2, 1),
('3_existing_participant435', 0, 2, 0),
('3_existing_participant436', 0, 2, 0);

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
  `tournament_daily_start` time NOT NULL,
  `tournament_daily_end` time NOT NULL,
  `tournament_days` varchar(7) COLLATE utf8_estonian_ci NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=152 ;

--
-- Dumping data for table `tournament`
--

INSERT INTO `tournament` (`tournament_id`, `tournament_name`, `tournament_year`, `tournament_place`, `place_id`, `deleted`, `tournament_start`, `tournament_end`, `tournament_loser_bracket`, `tournament_daily_start`, `tournament_daily_end`, `tournament_days`, `tournament_game_time`, `tournament_game_pause`, `tournament_field`, `tournament_group`, `tournament_win`, `tournament_type`, `tournament_game_win`, `tournament_game_tie`, `tournament_game_loss`, `tournament_participant`, `tournament_classification`) VALUES
(1, 'Jalgpall', 2013, 'Torn', 1, 0, '2013-05-01 00:00:00', '2013-05-29 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 0, 0, 1, 0, 0, 3, 2, 0, 'Võistleja', 'Firma nimi'),
(2, 'Jalgpall11', 2013, 'Spordisaal', 2, 0, '2013-05-02 00:00:00', '2013-05-24 00:00:00', 0, '15:03:00', '00:00:00', '', 1, 1, 1, 2, 1, 0, 5, 3, 0, 'KAaa', 'Instituut'),
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
(149, 'testimind', 0, '', 3, 0, '2013-05-01 00:00:00', '2013-05-22 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 3, 3, 2, 1, 'Võistkond', 'Instituut'),
(150, 'Turniir', 0, '', 3, 0, '2013-05-28 00:00:00', '2013-05-31 00:00:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 1, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut'),
(151, '1', 0, '', 3, 0, '2013-05-30 00:00:00', '2013-05-30 05:21:00', 0, '00:00:00', '00:00:00', '', 1, 1, 1, 2, 1, 0, 3, 2, 1, 'Võistkond', 'Instituut');

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
  ADD CONSTRAINT `participant_ibfk_1` FOREIGN KEY (`institute_id`) REFERENCES `institute` (`institute_id`),
  ADD CONSTRAINT `participant_ibfk_2` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`tournament_id`);

--
-- Constraints for table `playoff`
--
ALTER TABLE `playoff`
  ADD CONSTRAINT `playoff_ibfk_1` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`tournament_id`);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
