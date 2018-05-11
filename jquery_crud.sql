-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2015 at 01:08 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jquery_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_miners`
--

CREATE TABLE IF NOT EXISTS `tbl_miners` (
  `minerId` int(11) NOT NULL AUTO_INCREMENT,
  `minerIp` varchar(15) NOT NULL,
  `macAddress` varchar(17) NOT NULL,
  `location` varchar(7) NOT NULL,
  `hashrate` varchar(8) NOT NULL,
  PRIMARY KEY (`minerId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_miners`
--

INSERT INTO `tbl_miners` (`minerId`, `minerIp`, `macAddress`, `location`, `hashrate`) VALUES
(1, '10.1.2.3', 'aa:bb:cc:dd:ee:ff', '1-1-1-1', '13.50'),
(2, '10.2.3.4', 'aa:bb:cc:aa:bb:cc', '1-1-1-2', '11.27');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
