-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2014 at 12:01 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ftfl`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(63) NOT NULL,
  `code` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `code`) VALUES
(1, 'LARAVEl', 'P-002'),
(2, 'Photoshop', 'D-003'),
(3, 'Unity 3D', 'G-004'),
(4, 'ASP.NET', 'A-005');

-- --------------------------------------------------------

--
-- Table structure for table `final_results`
--

CREATE TABLE IF NOT EXISTS `final_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `result` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `final_results`
--

INSERT INTO `final_results` (`id`, `student_id`, `result`) VALUES
(1, 11, 5),
(2, 12, 4.5),
(3, 13, 3.5),
(4, 14, 2.5);

-- --------------------------------------------------------

--
-- Table structure for table `map_students_courses`
--

CREATE TABLE IF NOT EXISTS `map_students_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `map_students_courses`
--

INSERT INTO `map_students_courses` (`id`, `student_id`, `course_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 0, 0),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE IF NOT EXISTS `results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `education_level` varchar(15) DEFAULT NULL,
  `gpa` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `student_id`, `education_level`, `gpa`) VALUES
(1, 11, 'SSC', 5),
(2, 11, 'HSC', 3.5),
(3, 11, 'BA', 4),
(4, 14, 'BA', 3),
(5, 14, 'SSC', 5);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ftfl_id` varchar(23) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(31) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `day1_date` date DEFAULT NULL,
  `day1_presence` tinyint(1) DEFAULT NULL,
  `day2_date` date DEFAULT NULL,
  `day2_presence` tinyint(1) DEFAULT NULL,
  `day3_date` date DEFAULT NULL,
  `day3_presence` tinyint(1) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `ftfl_id`, `name`, `email`, `phone`, `day1_date`, `day1_presence`, `day2_date`, `day2_presence`, `day3_date`, `day3_presence`, `modified`, `created`) VALUES
(2, 'ITS-2014000032', 'Tanjim', 'tanjim@email.com', '+8017171451514', '2014-08-06', 1, '2014-08-07', 1, '2014-08-10', 1, '2014-08-10 11:34:34', '2014-08-10 11:34:34'),
(11, 'ITS-2014000127', 'Sajia', 'sajia@email.com', '+8801717151515', '2014-08-05', 1, '2014-08-06', 1, '2014-08-07', 1, '2014-08-10 09:06:29', '2014-08-10 09:06:29'),
(12, 'ITS-2014000128', 'Daisy', 'daisy@email.com', '+8801717121212', '2014-08-05', 1, '2014-08-06', 1, '2014-08-07', 1, '2014-08-10 09:08:59', '2014-08-10 09:08:59'),
(13, 'ITS-2014000066', 'Abrar', 'abrar@email.com', '+801717141414', '2014-08-08', 1, '2014-08-09', 1, '2014-08-10', 1, '2014-08-10 09:24:22', '2014-08-10 09:24:22'),
(14, 'ITS-2014000022', 'Jahangir', 'jahangir@email.com', '+8801717121255', '2014-08-04', 1, '2014-08-05', 1, '2014-08-06', 1, '2014-08-10 10:29:00', '2014-08-10 10:29:00'),
(15, 'ITS-2014000066', 'Tahsin Abrar', 'abrar.cste@gmail.com', '+8801717538525', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'ITS-2014000028', 'Ishrat Sharmin', 'ishrat@email.com', '+8801717454545', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'ITS-2014000088', 'piash', 'piash@email.com', '+8801845252525', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'ITS-2014000077', 'Zahid', 'zahid@email.com', '+8801845252154', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `final_results`
--
ALTER TABLE `final_results`
  ADD CONSTRAINT `final_results_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
