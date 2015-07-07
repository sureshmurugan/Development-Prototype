-- phpMyAdmin SQL Dump
-- version 4.2.3deb1.precise~ppa.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 07, 2015 at 07:01 AM
-- Server version: 5.6.24-2+deb.sury.org~precise+2
-- PHP Version: 5.3.10-1ubuntu3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fda`
--

-- --------------------------------------------------------

--
-- Table structure for table `devices_events_data`
--

CREATE TABLE IF NOT EXISTS `devices_events_data` (
`id` int(3) NOT NULL,
  `md_id` int(3) NOT NULL,
  `event_id` int(3) NOT NULL,
  `year` varchar(5) DEFAULT NULL,
  `count` int(10) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=176 ;

--
-- Dumping data for table `devices_events_data`
--

INSERT INTO `devices_events_data` (`id`, `md_id`, `event_id`, `year`, `count`) VALUES
(1, 1, 1, '2010', 5790),
(2, 1, 2, '2010', 1622),
(3, 1, 3, '2010', 61),
(4, 1, 4, '2010', 0),
(5, 1, 5, '2010', 0),
(6, 1, 6, '2010', 68),
(7, 1, 7, '2010', 1),
(8, 1, 1, '2011', 6250),
(9, 1, 2, '2011', 1638),
(10, 1, 3, '2011', 115),
(11, 1, 4, '2011', 0),
(12, 1, 5, '2011', 0),
(13, 1, 6, '2011', 0),
(14, 1, 7, '2011', 0),
(15, 1, 1, '2012', 3860),
(16, 1, 2, '2012', 1501),
(17, 1, 3, '2012', 62),
(18, 1, 4, '2012', 0),
(19, 1, 5, '2012', 1),
(20, 1, 6, '2012', 0),
(21, 1, 7, '2012', 0),
(22, 1, 1, '2013', 3236),
(23, 1, 2, '2013', 1435),
(24, 1, 3, '2013', 44),
(25, 1, 4, '2013', 0),
(26, 1, 5, '2013', 0),
(27, 1, 6, '2013', 0),
(28, 1, 7, '2013', 0),
(29, 1, 1, '2014', 2998),
(30, 1, 2, '2014', 1552),
(31, 1, 3, '2014', 55),
(32, 1, 4, '2014', 0),
(33, 1, 5, '2014', 2),
(34, 1, 6, '2014', 0),
(35, 1, 7, '2014', 0),
(36, 2, 1, '2010', 1635),
(37, 2, 2, '2010', 3386),
(38, 2, 3, '2010', 39),
(39, 2, 4, '2010', 0),
(40, 2, 5, '2010', 14),
(41, 2, 6, '2010', 0),
(42, 2, 7, '2010', 0),
(43, 2, 1, '2011', 6016),
(44, 2, 2, '2011', 10490),
(45, 2, 3, '2011', 155),
(46, 2, 4, '2011', 0),
(47, 2, 5, '2011', 65),
(48, 2, 6, '2011', 2),
(49, 2, 7, '2011', 0),
(50, 2, 1, '2012', 2408),
(51, 2, 2, '2012', 12729),
(52, 2, 3, '2012', 62),
(53, 2, 4, '2012', 0),
(54, 2, 5, '2012', 80),
(55, 2, 6, '2012', 3),
(56, 2, 7, '2012', 0),
(57, 2, 1, '2013', 2489),
(58, 2, 2, '2013', 24463),
(59, 2, 3, '2013', 46),
(60, 2, 4, '2013', 0),
(61, 2, 5, '2013', 0),
(62, 2, 6, '2013', 150),
(63, 2, 7, '2013', 11),
(64, 2, 1, '2014', 2100),
(65, 2, 2, '2014', 36970),
(66, 2, 3, '2014', 13),
(67, 2, 4, '2014', 0),
(68, 2, 5, '2014', 130),
(69, 2, 6, '2014', 6),
(70, 2, 7, '2014', 0),
(71, 3, 1, '2010', 3155),
(72, 3, 2, '2010', 2309),
(73, 3, 3, '2010', 158),
(74, 3, 4, '2010', 0),
(75, 3, 5, '2010', 28),
(76, 3, 6, '2010', 1),
(77, 3, 7, '2010', 0),
(78, 3, 1, '2011', 5586),
(79, 3, 2, '2011', 1788),
(80, 3, 3, '2011', 626),
(81, 3, 4, '2011', 0),
(82, 3, 5, '2011', 0),
(83, 3, 6, '2011', 0),
(84, 3, 7, '2011', 0),
(85, 3, 1, '2012', 3177),
(86, 3, 2, '2012', 1141),
(87, 3, 3, '2012', 1020),
(88, 3, 4, '2012', 0),
(89, 3, 5, '2012', 0),
(90, 3, 6, '2012', 0),
(91, 3, 7, '2012', 0),
(92, 3, 1, '2013', 625),
(93, 3, 2, '2013', 0),
(94, 3, 3, '2013', 10),
(95, 3, 4, '2013', 15),
(96, 3, 5, '2013', 30),
(97, 3, 6, '2013', 5),
(98, 3, 7, '2013', 0),
(99, 3, 1, '2014', 968),
(100, 3, 2, '2014', 409),
(101, 3, 3, '2014', 8),
(102, 3, 4, '2014', 80),
(103, 3, 5, '2014', 90),
(104, 3, 6, '2014', 41),
(105, 3, 7, '2014', 0),
(106, 4, 1, '2010', 1659),
(107, 4, 2, '2010', 198),
(108, 4, 3, '2010', 34),
(109, 4, 4, '2010', 0),
(110, 4, 5, '2010', 83),
(111, 4, 6, '2010', 0),
(112, 4, 7, '2010', 0),
(113, 4, 1, '2011', 2349),
(114, 4, 2, '2011', 497),
(115, 4, 3, '2011', 72),
(116, 4, 4, '2011', 0),
(117, 4, 5, '2011', 0),
(118, 4, 6, '2011', 0),
(119, 4, 7, '2011', 0),
(120, 4, 1, '2012', 2923),
(121, 4, 2, '2012', 2611),
(122, 4, 3, '2012', 110),
(123, 4, 4, '2012', 0),
(124, 4, 5, '2012', 0),
(125, 4, 6, '2012', 0),
(126, 4, 7, '2012', 0),
(127, 4, 1, '2013', 2772),
(128, 4, 2, '2013', 2709),
(129, 4, 3, '2013', 166),
(130, 4, 4, '2013', 0),
(131, 4, 5, '2013', 0),
(132, 4, 6, '2013', 0),
(133, 4, 7, '2013', 0),
(134, 4, 1, '2014', 3916),
(135, 4, 2, '2014', 2747),
(136, 4, 3, '2014', 298),
(137, 4, 4, '2014', 0),
(138, 4, 5, '2014', 3),
(139, 4, 6, '2014', 0),
(140, 4, 7, '2014', 0),
(141, 5, 1, '2010', 1448),
(142, 5, 2, '2010', 589),
(143, 5, 3, '2010', 19),
(144, 5, 4, '2010', 0),
(145, 5, 5, '2010', 1),
(146, 5, 6, '2010', 0),
(147, 5, 7, '2010', 0),
(148, 5, 1, '2011', 2267),
(149, 5, 2, '2011', 771),
(150, 5, 3, '2011', 94),
(151, 5, 4, '2011', 0),
(152, 5, 5, '2011', 0),
(153, 5, 6, '2011', 0),
(154, 5, 7, '2011', 0),
(155, 5, 1, '2012', 2687),
(156, 5, 2, '2012', 582),
(157, 5, 3, '2012', 117),
(158, 5, 4, '2012', 0),
(159, 5, 5, '2012', 0),
(160, 5, 6, '2012', 0),
(161, 5, 7, '2012', 0),
(162, 5, 1, '2013', 2537),
(163, 5, 2, '2013', 2262),
(164, 5, 3, '2013', 301),
(165, 5, 4, '2013', 0),
(166, 5, 5, '2013', 0),
(167, 5, 6, '2013', 0),
(168, 5, 7, '2013', 0),
(169, 5, 1, '2014', 4440),
(170, 5, 2, '2014', 5246),
(171, 5, 3, '2014', 605),
(172, 5, 4, '2014', 0),
(173, 5, 5, '2014', 20),
(174, 5, 6, '2014', 0),
(175, 5, 7, '2014', 0);

-- --------------------------------------------------------

--
-- Table structure for table `disease_list`
--

CREATE TABLE IF NOT EXISTS `disease_list` (
`disease_id` int(3) NOT NULL,
  `disease_name` varchar(25) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `disease_list`
--

INSERT INTO `disease_list` (`disease_id`, `disease_name`) VALUES
(1, 'Rheumatoid Arthritis'),
(2, 'Hypertension'),
(3, 'Depression'),
(4, 'Osteoporosis'),
(5, 'Pain');

-- --------------------------------------------------------

--
-- Table structure for table `drugs_classes_data`
--

CREATE TABLE IF NOT EXISTS `drugs_classes_data` (
`id` int(3) NOT NULL,
  `drug_id` int(3) NOT NULL,
  `drug_type_id` int(3) NOT NULL,
  `year` varchar(5) DEFAULT NULL,
  `count` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `drugs_indication_data`
--

CREATE TABLE IF NOT EXISTS `drugs_indication_data` (
`id` int(3) NOT NULL,
  `disease_id` int(3) NOT NULL,
  `gender_id` int(3) NOT NULL,
  `gender_category_id` int(3) NOT NULL,
  `year` varchar(5) DEFAULT NULL,
  `count` int(10) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=151 ;

--
-- Dumping data for table `drugs_indication_data`
--

INSERT INTO `drugs_indication_data` (`id`, `disease_id`, `gender_id`, `gender_category_id`, `year`, `count`) VALUES
(1, 1, 1, 1, '2006', 8),
(2, 2, 1, 1, '2006', 11),
(3, 3, 1, 1, '2006', 78),
(4, 4, 1, 1, '2006', 186),
(5, 5, 1, 1, '2006', 25),
(6, 1, 1, 1, '2007', 11),
(7, 2, 1, 1, '2007', 7),
(8, 3, 1, 1, '2007', 70),
(9, 4, 1, 1, '2007', 224),
(10, 5, 1, 1, '2007', 16),
(11, 1, 1, 1, '2008', 13),
(12, 2, 1, 1, '2008', 15),
(13, 3, 1, 1, '2008', 51),
(14, 4, 1, 1, '2008', 406),
(15, 5, 1, 1, '2008', 23),
(16, 1, 1, 1, '2009', 0),
(17, 2, 1, 1, '2009', 26),
(18, 3, 1, 1, '2009', 86),
(19, 4, 1, 1, '2009', 232),
(20, 5, 1, 1, '2009', 39),
(21, 1, 1, 1, '2010', 7),
(22, 2, 1, 1, '2010', 20),
(23, 3, 1, 1, '2010', 44),
(24, 4, 1, 1, '2010', 204),
(25, 5, 1, 1, '2010', 25),
(26, 1, 1, 2, '2006', 203),
(27, 2, 1, 2, '2006', 627),
(28, 3, 1, 2, '2006', 1136),
(29, 4, 1, 2, '2006', 275),
(30, 5, 1, 2, '2006', 746),
(31, 1, 1, 2, '2007', 135),
(32, 2, 1, 2, '2007', 754),
(33, 3, 1, 2, '2007', 1094),
(34, 4, 1, 2, '2007', 326),
(35, 5, 1, 2, '2007', 498),
(36, 1, 1, 2, '2008', 125),
(37, 2, 1, 2, '2008', 754),
(38, 3, 1, 2, '2008', 1094),
(39, 4, 1, 2, '2008', 326),
(40, 5, 1, 2, '2008', 498),
(41, 1, 1, 2, '2009', 141),
(42, 2, 1, 2, '2009', 685),
(43, 3, 1, 2, '2009', 1001),
(44, 4, 1, 2, '2009', 254),
(45, 5, 1, 2, '2009', 430),
(46, 1, 1, 2, '2010', 149),
(47, 2, 1, 2, '2010', 806),
(48, 3, 1, 2, '2010', 1103),
(49, 4, 1, 2, '2010', 296),
(50, 5, 1, 2, '2010', 587),
(51, 1, 1, 3, '2006', 487),
(52, 2, 1, 3, '2006', 1995),
(53, 3, 1, 3, '2006', 748),
(54, 4, 1, 3, '2006', 315),
(55, 5, 1, 3, '2006', 991),
(56, 1, 1, 3, '2007', 391),
(57, 2, 1, 3, '2007', 2422),
(58, 3, 1, 3, '2007', 789),
(59, 4, 1, 3, '2007', 440),
(60, 5, 1, 3, '2007', 748),
(61, 1, 1, 3, '2008', 356),
(62, 2, 1, 3, '2008', 2252),
(63, 3, 1, 3, '2008', 665),
(64, 4, 1, 3, '2008', 295),
(65, 5, 1, 3, '2008', 646),
(66, 1, 1, 3, '2009', 411),
(67, 2, 1, 3, '2009', 2624),
(68, 3, 1, 3, '2009', 648),
(69, 4, 1, 3, '2009', 292),
(70, 5, 1, 3, '2009', 636),
(71, 1, 1, 3, '2010', 494),
(72, 2, 1, 3, '2010', 3209),
(73, 3, 1, 3, '2010', 777),
(74, 4, 1, 3, '2010', 373),
(75, 5, 1, 3, '2010', 904),
(76, 1, 2, 1, '2006', 10),
(77, 2, 2, 1, '2006', 0),
(78, 3, 2, 1, '2006', 112),
(79, 4, 2, 1, '2006', 154),
(80, 5, 2, 1, '2006', 18),
(81, 1, 2, 1, '2007', 34),
(82, 2, 2, 1, '2007', 9),
(83, 3, 2, 1, '2007', 119),
(84, 4, 2, 1, '2007', 128),
(85, 5, 2, 1, '2007', 23),
(86, 1, 2, 1, '2008', 19),
(87, 2, 2, 1, '2008', 6),
(88, 3, 2, 1, '2008', 53),
(89, 4, 2, 1, '2008', 268),
(90, 5, 2, 1, '2008', 15),
(91, 1, 2, 1, '2009', 17),
(92, 2, 2, 1, '2009', 10),
(93, 3, 2, 1, '2009', 101),
(94, 4, 2, 1, '2009', 150),
(95, 5, 2, 1, '2009', 33),
(96, 1, 2, 1, '2010', 17),
(97, 2, 2, 1, '2010', 12),
(98, 3, 2, 1, '2010', 86),
(99, 4, 2, 1, '2010', 162),
(100, 5, 2, 1, '2010', 38),
(101, 1, 2, 2, '2006', 564),
(102, 2, 2, 2, '2006', 514),
(103, 3, 2, 2, '2006', 2389),
(104, 4, 2, 2, '2006', 654),
(105, 5, 2, 2, '2006', 863),
(106, 1, 2, 2, '2007', 577),
(107, 2, 2, 2, '2007', 718),
(108, 3, 2, 2, '2007', 2350),
(109, 4, 2, 2, '2007', 770),
(110, 5, 2, 2, '2007', 663),
(111, 1, 2, 2, '2008', 587),
(112, 2, 2, 2, '2008', 662),
(113, 3, 2, 2, '2008', 2128),
(114, 4, 2, 2, '2008', 757),
(115, 5, 2, 2, '2008', 585),
(116, 1, 2, 2, '2009', 548),
(117, 2, 2, 2, '2009', 719),
(118, 3, 2, 2, '2009', 2072),
(119, 4, 2, 2, '2009', 596),
(120, 5, 2, 2, '2009', 620),
(121, 1, 2, 2, '2010', 660),
(122, 2, 2, 2, '2010', 833),
(123, 3, 2, 2, '2010', 2333),
(124, 4, 2, 2, '2010', 727),
(125, 5, 2, 2, '2010', 961),
(126, 1, 2, 3, '2006', 1072),
(127, 2, 2, 3, '2006', 2145),
(128, 3, 2, 3, '2006', 1457),
(129, 4, 2, 3, '2006', 634),
(130, 5, 2, 3, '2006', 1023),
(131, 1, 2, 3, '2007', 1089),
(132, 2, 2, 3, '2007', 3142),
(133, 3, 2, 3, '2007', 1470),
(134, 4, 2, 3, '2007', 839),
(135, 5, 2, 3, '2007', 861),
(136, 1, 2, 3, '2008', 1035),
(137, 2, 2, 3, '2008', 2618),
(138, 3, 2, 3, '2008', 1265),
(139, 4, 2, 3, '2008', 698),
(140, 5, 2, 3, '2008', 722),
(141, 1, 2, 3, '2009', 1066),
(142, 2, 2, 3, '2009', 3126),
(143, 3, 2, 3, '2009', 1209),
(144, 4, 2, 3, '2009', 596),
(145, 5, 2, 3, '2009', 788),
(146, 1, 2, 3, '2010', 1269),
(147, 2, 2, 3, '2010', 3986),
(148, 3, 2, 3, '2010', 1613),
(149, 4, 2, 3, '2010', 972),
(150, 5, 2, 3, '2010', 1180);

-- --------------------------------------------------------

--
-- Table structure for table `drugs_list`
--

CREATE TABLE IF NOT EXISTS `drugs_list` (
`drug_id` int(3) NOT NULL,
  `drug_name` varchar(25) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `drugs_list`
--

INSERT INTO `drugs_list` (`drug_id`, `drug_name`) VALUES
(1, 'Tumor Necrosis Factor Blo'),
(2, 'Benzodiazepine [EPC]'),
(3, 'Anti-epileptic Agent [EPC'),
(4, 'Corticosteroid [EPC]'),
(5, 'Calcium [EPC]'),
(6, 'Atypical Antipsychotic [E'),
(7, 'Serotonin Reuptake Inhibi'),
(8, 'l-Thyroxine [EPC]'),
(9, 'Anticholinergic [EPC]'),
(10, 'Insulin [EPC]');

-- --------------------------------------------------------

--
-- Table structure for table `drugs_reported_reaction_data`
--

CREATE TABLE IF NOT EXISTS `drugs_reported_reaction_data` (
`id` int(3) NOT NULL,
  `reactions_id` int(3) NOT NULL,
  `gender_id` int(3) NOT NULL,
  `year` varchar(5) DEFAULT NULL,
  `count` int(10) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `drugs_reported_reaction_data`
--

INSERT INTO `drugs_reported_reaction_data` (`id`, `reactions_id`, `gender_id`, `year`, `count`) VALUES
(1, 1, 1, '2006', 2761),
(2, 2, 1, '2006', 4172),
(3, 3, 1, '2006', 2776),
(4, 4, 1, '2006', 3454),
(5, 5, 1, '2006', 1890),
(6, 6, 1, '2006', 2604),
(7, 7, 1, '2006', 1519),
(8, 8, 1, '2006', 2758),
(9, 9, 1, '2006', 2995),
(10, 10, 1, '2006', 2918),
(11, 1, 1, '2007', 2635),
(12, 2, 1, '2007', 4405),
(13, 3, 1, '2007', 3204),
(14, 4, 1, '2007', 3315),
(15, 5, 1, '2007', 1883),
(16, 6, 1, '2007', 2721),
(17, 7, 1, '2007', 1780),
(18, 8, 1, '2007', 2899),
(19, 9, 1, '2007', 3139),
(20, 10, 1, '2007', 1569),
(21, 1, 1, '2008', 2732),
(22, 2, 1, '2008', 4394),
(23, 3, 1, '2008', 3206),
(24, 4, 1, '2008', 3719),
(25, 5, 1, '2008', 1756),
(26, 6, 1, '2008', 2933),
(27, 7, 1, '2008', 1966),
(28, 8, 1, '2008', 3061),
(29, 9, 1, '2008', 3046),
(30, 10, 1, '2008', 1556),
(31, 1, 1, '2009', 3015),
(32, 2, 1, '2009', 3814),
(33, 3, 1, '2009', 3072),
(34, 4, 1, '2009', 3937),
(35, 5, 1, '2009', 1759),
(36, 6, 1, '2009', 3097),
(37, 7, 1, '2009', 1870),
(38, 8, 1, '2009', 3192),
(39, 9, 1, '2009', 3360),
(40, 10, 1, '2009', 1777),
(41, 1, 1, '2010', 4408),
(42, 2, 1, '2010', 6110),
(43, 3, 1, '2010', 4126),
(44, 4, 1, '2010', 5063),
(45, 5, 1, '2010', 3093),
(46, 6, 1, '2010', 4918),
(47, 7, 1, '2010', 2943),
(48, 8, 1, '2010', 4310),
(49, 9, 1, '2010', 3899),
(50, 10, 1, '2010', 2280),
(51, 1, 2, '2006', 5325),
(52, 2, 2, '2006', 9384),
(53, 3, 2, '2006', 5456),
(54, 4, 2, '2006', 4967),
(55, 5, 2, '2006', 3322),
(56, 6, 2, '2006', 4103),
(57, 7, 2, '2006', 2869),
(58, 8, 2, '2006', 4429),
(59, 9, 2, '2006', 3253),
(60, 10, 1, '2006', 3752),
(61, 1, 2, '2007', 6179),
(62, 2, 2, '2007', 10505),
(63, 3, 2, '2007', 6330),
(64, 4, 2, '2007', 5827),
(65, 5, 2, '2007', 3292),
(66, 6, 2, '2007', 5109),
(67, 7, 2, '2007', 3385),
(68, 8, 2, '2007', 5329),
(69, 9, 2, '2007', 3651),
(70, 10, 1, '2007', 2808),
(71, 1, 2, '2008', 6895),
(72, 2, 2, '2008', 10587),
(73, 3, 2, '2008', 6355),
(74, 4, 2, '2008', 6011),
(75, 5, 2, '2008', 3118),
(76, 6, 2, '2008', 5716),
(77, 7, 2, '2008', 3956),
(78, 8, 2, '2008', 5348),
(79, 9, 2, '2008', 3890),
(80, 10, 1, '2008', 2619),
(81, 1, 2, '2009', 6931),
(82, 2, 2, '2009', 8943),
(83, 3, 2, '2009', 5966),
(84, 4, 2, '2009', 6409),
(85, 5, 2, '2009', 3015),
(86, 6, 2, '2009', 5838),
(87, 7, 2, '2009', 3770),
(88, 8, 2, '2009', 5505),
(89, 9, 2, '2009', 4201),
(90, 10, 1, '2009', 2978),
(91, 1, 2, '2010', 11555),
(92, 2, 2, '2010', 18159),
(93, 3, 2, '2010', 9364),
(94, 4, 2, '2010', 8731),
(95, 5, 2, '2010', 6349),
(96, 6, 2, '2010', 11028),
(97, 7, 2, '2010', 6921),
(98, 8, 2, '2010', 7774),
(99, 9, 2, '2010', 5165),
(100, 10, 1, '2010', 3847);

-- --------------------------------------------------------

--
-- Table structure for table `drugs_type`
--

CREATE TABLE IF NOT EXISTS `drugs_type` (
`drug_type_id` int(3) NOT NULL,
  `drug_type` varchar(25) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `drugs_type`
--

INSERT INTO `drugs_type` (`drug_type_id`, `drug_type`) VALUES
(1, 'Serious'),
(2, 'Less Serious');

-- --------------------------------------------------------

--
-- Table structure for table `events_type`
--

CREATE TABLE IF NOT EXISTS `events_type` (
`event_id` int(3) NOT NULL,
  `event_name` varchar(25) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `events_type`
--

INSERT INTO `events_type` (`event_id`, `event_name`) VALUES
(1, 'Injury'),
(2, 'Malfunction'),
(3, 'Death'),
(4, 'Other'),
(5, 'No answer provided'),
(6, 'Null / No Value Provided'),
(7, '?');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE IF NOT EXISTS `gender` (
`gender_id` int(3) NOT NULL,
  `gender_name` varchar(25) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`gender_id`, `gender_name`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `gender_category`
--

CREATE TABLE IF NOT EXISTS `gender_category` (
`gender_category_id` int(3) NOT NULL,
  `gender_category` varchar(25) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `gender_category`
--

INSERT INTO `gender_category` (`gender_category_id`, `gender_category`) VALUES
(1, 'Age - (5 to 17)'),
(2, 'Age - (18 to 54)'),
(3, 'Age - (55 to 90)');

-- --------------------------------------------------------

--
-- Table structure for table `medical_devices`
--

CREATE TABLE IF NOT EXISTS `medical_devices` (
`md_id` int(3) NOT NULL,
  `md_name` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `medical_devices`
--

INSERT INTO `medical_devices` (`md_id`, `md_name`) VALUES
(1, 'Implantable lead'),
(2, 'Insulin infusion pump'),
(3, 'Implantable pulse generator'),
(4, 'Defibrillation lead'),
(5, 'Permanent pacemaker electrode');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`product_id` int(3) NOT NULL,
  `product_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`) VALUES
(1, 'Drugs'),
(2, 'Medical Devices'),
(3, 'Foods');

-- --------------------------------------------------------

--
-- Table structure for table `products_month_data`
--

CREATE TABLE IF NOT EXISTS `products_month_data` (
`id` int(3) NOT NULL,
  `product_id` int(3) NOT NULL,
  `year` varchar(5) NOT NULL,
  `month` varchar(5) DEFAULT NULL,
  `count` int(3) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=145 ;

--
-- Dumping data for table `products_month_data`
--

INSERT INTO `products_month_data` (`id`, `product_id`, `year`, `month`, `count`) VALUES
(1, 1, '2012', '1', 0),
(2, 1, '2012', '2', 0),
(3, 1, '2012', '3', 0),
(4, 1, '2012', '4', 0),
(5, 1, '2012', '5', 0),
(6, 1, '2012', '6', 22),
(7, 1, '2012', '7', 34),
(8, 1, '2012', '8', 219),
(9, 1, '2012', '9', 23),
(10, 1, '2012', '10', 53),
(11, 1, '2012', '11', 28),
(12, 1, '2012', '12', 36),
(13, 1, '2013', '1', 38),
(14, 1, '2013', '2', 31),
(15, 1, '2013', '3', 44),
(16, 1, '2013', '4', 53),
(17, 1, '2013', '5', 185),
(18, 1, '2013', '6', 157),
(19, 1, '2013', '7', 110),
(20, 1, '2013', '8', 92),
(21, 1, '2013', '9', 144),
(22, 1, '2013', '10', 19),
(23, 1, '2013', '11', 34),
(24, 1, '2013', '12', 366),
(25, 1, '2014', '1', 384),
(26, 1, '2014', '2', 32),
(27, 1, '2014', '3', 87),
(28, 1, '2014', '4', 84),
(29, 1, '2014', '5', 98),
(30, 1, '2014', '6', 57),
(31, 1, '2014', '7', 76),
(32, 1, '2014', '8', 72),
(33, 1, '2014', '9', 48),
(34, 1, '2014', '10', 59),
(35, 1, '2014', '11', 267),
(36, 1, '2014', '12', 71),
(37, 1, '2015', '1', 53),
(38, 1, '2015', '2', 13),
(39, 1, '2015', '3', 25),
(40, 1, '2015', '4', 540),
(41, 1, '2015', '5', 115),
(42, 1, '2015', '6', 0),
(43, 1, '2015', '7', 0),
(44, 1, '2015', '8', 0),
(45, 1, '2015', '9', 0),
(46, 1, '2015', '10', 0),
(47, 1, '2015', '11', 0),
(48, 1, '2015', '12', 0),
(49, 2, '2012', '1', 0),
(50, 2, '2012', '2', 0),
(51, 2, '2012', '3', 0),
(52, 2, '2012', '4', 0),
(53, 2, '2012', '5', 0),
(54, 2, '2012', '6', 78),
(55, 2, '2012', '7', 190),
(56, 2, '2012', '8', 201),
(57, 2, '2012', '9', 167),
(58, 2, '2012', '10', 213),
(59, 2, '2012', '11', 276),
(60, 2, '2012', '12', 164),
(61, 2, '2013', '1', 129),
(62, 2, '2013', '2', 131),
(63, 2, '2013', '3', 107),
(64, 2, '2013', '4', 171),
(65, 2, '2013', '5', 219),
(66, 2, '2013', '6', 189),
(67, 2, '2013', '7', 243),
(68, 2, '2013', '8', 228),
(69, 2, '2013', '9', 217),
(70, 2, '2013', '10', 117),
(71, 2, '2013', '11', 321),
(72, 2, '2013', '12', 171),
(73, 2, '2014', '1', 270),
(74, 2, '2014', '2', 212),
(75, 2, '2014', '3', 224),
(76, 2, '2014', '4', 247),
(77, 2, '2014', '5', 142),
(78, 2, '2014', '6', 168),
(79, 2, '2014', '7', 269),
(80, 2, '2014', '8', 215),
(81, 2, '2014', '9', 361),
(82, 2, '2014', '10', 185),
(83, 2, '2014', '11', 140),
(84, 2, '2014', '12', 643),
(85, 2, '2015', '1', 132),
(86, 2, '2015', '2', 116),
(87, 2, '2015', '3', 178),
(88, 2, '2015', '4', 216),
(89, 2, '2015', '5', 126),
(90, 2, '2015', '6', 0),
(91, 2, '2015', '7', 0),
(92, 2, '2015', '8', 0),
(93, 2, '2015', '9', 0),
(94, 2, '2015', '10', 0),
(95, 2, '2015', '11', 0),
(96, 2, '2015', '12', 0),
(97, 3, '2012', '1', 0),
(98, 3, '2012', '2', 0),
(99, 3, '2012', '3', 0),
(100, 3, '2012', '4', 0),
(101, 3, '2012', '5', 0),
(102, 3, '2012', '6', 159),
(103, 3, '2012', '7', 200),
(104, 3, '2012', '8', 332),
(105, 3, '2012', '9', 343),
(106, 3, '2012', '10', 613),
(107, 3, '2012', '11', 200),
(108, 3, '2012', '12', 129),
(109, 3, '2013', '1', 84),
(110, 3, '2013', '2', 69),
(111, 3, '2013', '3', 242),
(112, 3, '2013', '4', 88),
(113, 3, '2013', '5', 112),
(114, 3, '2013', '6', 102),
(115, 3, '2013', '7', 201),
(116, 3, '2013', '8', 95),
(117, 3, '2013', '9', 62),
(118, 3, '2013', '10', 111),
(119, 3, '2013', '11', 158),
(120, 3, '2013', '12', 861),
(121, 3, '2014', '1', 423),
(122, 3, '2014', '2', 151),
(123, 3, '2014', '3', 139),
(124, 3, '2014', '4', 202),
(125, 3, '2014', '5', 83),
(126, 3, '2014', '6', 59),
(127, 3, '2014', '7', 185),
(128, 3, '2014', '8', 121),
(129, 3, '2014', '9', 137),
(130, 3, '2014', '10', 133),
(131, 3, '2014', '11', 453),
(132, 3, '2014', '12', 215),
(133, 3, '2015', '1', 46),
(134, 3, '2015', '2', 415),
(135, 3, '2015', '3', 347),
(136, 3, '2015', '4', 456),
(137, 3, '2015', '5', 290),
(138, 3, '2015', '6', 0),
(139, 3, '2015', '7', 0),
(140, 3, '2015', '8', 0),
(141, 3, '2015', '9', 0),
(142, 3, '2015', '10', 0),
(143, 3, '2015', '11', 0),
(144, 3, '2015', '12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reactions_list`
--

CREATE TABLE IF NOT EXISTS `reactions_list` (
`reactions_id` int(3) NOT NULL,
  `reactions_name` varchar(25) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `reactions_list`
--

INSERT INTO `reactions_list` (`reactions_id`, `reactions_name`) VALUES
(1, 'Headache'),
(2, 'Nausea'),
(3, 'Vomiting'),
(4, 'Dyspnoea'),
(5, 'Insomnia'),
(6, 'Fatigue'),
(7, 'Malaise'),
(8, 'Diarrhoea'),
(9, 'Pyrexia'),
(10, 'Chest Pain');

-- --------------------------------------------------------

--
-- Table structure for table `user_credientials`
--

CREATE TABLE IF NOT EXISTS `user_credientials` (
`id` int(3) NOT NULL,
  `user_name` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_credientials`
--

INSERT INTO `user_credientials` (`id`, `user_name`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `devices_events_data`
--
ALTER TABLE `devices_events_data`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_devices_events_data_medical_devices_md_id_idx` (`md_id`), ADD KEY `fk_devices_events_data_event_type_event_id_idx` (`event_id`);

--
-- Indexes for table `disease_list`
--
ALTER TABLE `disease_list`
 ADD PRIMARY KEY (`disease_id`);

--
-- Indexes for table `drugs_classes_data`
--
ALTER TABLE `drugs_classes_data`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_drugs_classes_data_drugs_list_drug_id_idx` (`drug_id`), ADD KEY `fk_drugs_classes_data_drugs_type_drug_type_id_idx` (`drug_type_id`);

--
-- Indexes for table `drugs_indication_data`
--
ALTER TABLE `drugs_indication_data`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_drugs_indication_data_disease_list_disease_id_idx` (`disease_id`), ADD KEY `fk_drugs_indication_data_gender_gender_id_idx` (`gender_id`), ADD KEY `fk_drugs_indication_data_gender_category_gender_category_id_idx` (`gender_category_id`);

--
-- Indexes for table `drugs_list`
--
ALTER TABLE `drugs_list`
 ADD PRIMARY KEY (`drug_id`);

--
-- Indexes for table `drugs_reported_reaction_data`
--
ALTER TABLE `drugs_reported_reaction_data`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_drugs_reported_reaction_data_reactions_list_reactions_id_idx` (`reactions_id`), ADD KEY `fk_drugs_reported_reaction_data_gender_gender_id_idx` (`gender_id`);

--
-- Indexes for table `drugs_type`
--
ALTER TABLE `drugs_type`
 ADD PRIMARY KEY (`drug_type_id`);

--
-- Indexes for table `events_type`
--
ALTER TABLE `events_type`
 ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
 ADD PRIMARY KEY (`gender_id`);

--
-- Indexes for table `gender_category`
--
ALTER TABLE `gender_category`
 ADD PRIMARY KEY (`gender_category_id`);

--
-- Indexes for table `medical_devices`
--
ALTER TABLE `medical_devices`
 ADD PRIMARY KEY (`md_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `products_month_data`
--
ALTER TABLE `products_month_data`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_products_month_data_products_product_id_idx` (`product_id`);

--
-- Indexes for table `reactions_list`
--
ALTER TABLE `reactions_list`
 ADD PRIMARY KEY (`reactions_id`);

--
-- Indexes for table `user_credientials`
--
ALTER TABLE `user_credientials`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `devices_events_data`
--
ALTER TABLE `devices_events_data`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=176;
--
-- AUTO_INCREMENT for table `disease_list`
--
ALTER TABLE `disease_list`
MODIFY `disease_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `drugs_classes_data`
--
ALTER TABLE `drugs_classes_data`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `drugs_indication_data`
--
ALTER TABLE `drugs_indication_data`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT for table `drugs_list`
--
ALTER TABLE `drugs_list`
MODIFY `drug_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `drugs_reported_reaction_data`
--
ALTER TABLE `drugs_reported_reaction_data`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `drugs_type`
--
ALTER TABLE `drugs_type`
MODIFY `drug_type_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `events_type`
--
ALTER TABLE `events_type`
MODIFY `event_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
MODIFY `gender_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gender_category`
--
ALTER TABLE `gender_category`
MODIFY `gender_category_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `medical_devices`
--
ALTER TABLE `medical_devices`
MODIFY `md_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `product_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `products_month_data`
--
ALTER TABLE `products_month_data`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `reactions_list`
--
ALTER TABLE `reactions_list`
MODIFY `reactions_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_credientials`
--
ALTER TABLE `user_credientials`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `devices_events_data`
--
ALTER TABLE `devices_events_data`
ADD CONSTRAINT `fk_devices_events_data_event_type_event_id` FOREIGN KEY (`event_id`) REFERENCES `events_type` (`event_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_devices_events_data_medical_devices_md_id` FOREIGN KEY (`md_id`) REFERENCES `medical_devices` (`md_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `drugs_classes_data`
--
ALTER TABLE `drugs_classes_data`
ADD CONSTRAINT `fk_drugs_classes_data_drugs_list_drug_id` FOREIGN KEY (`drug_id`) REFERENCES `drugs_list` (`drug_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_drugs_classes_data_drugs_type_drug_type_id` FOREIGN KEY (`drug_type_id`) REFERENCES `drugs_type` (`drug_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `drugs_indication_data`
--
ALTER TABLE `drugs_indication_data`
ADD CONSTRAINT `fk_drugs_indication_data_disease_list_disease_id` FOREIGN KEY (`disease_id`) REFERENCES `disease_list` (`disease_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_drugs_indication_data_gender_category_gender_category_id` FOREIGN KEY (`gender_category_id`) REFERENCES `gender_category` (`gender_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_drugs_indication_data_gender_gender_id` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`gender_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `drugs_reported_reaction_data`
--
ALTER TABLE `drugs_reported_reaction_data`
ADD CONSTRAINT `fk_drugs_reported_reaction_data_gender_gender_id` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`gender_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_drugs_reported_reaction_data_reactions_list_reactions_id` FOREIGN KEY (`reactions_id`) REFERENCES `reactions_list` (`reactions_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `products_month_data`
--
ALTER TABLE `products_month_data`
ADD CONSTRAINT `fk_products_month_data_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
