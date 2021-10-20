-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 28, 2021 at 09:57 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tsf_bank_db`
--
CREATE DATABASE IF NOT EXISTS `tsf_bank_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `tsf_bank_db`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `curr_balance` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `curr_balance`) VALUES
(1, 'Abhishek Kumar', 'abhishekkumar@gmail.com', 10000),
(2, 'Bhavya Gupta', 'bhavyagupta@gmail.com', 19990),
(3, 'Damini Sharma', 'damini@gmail.com', 30000),
(4, 'Drishtyadum Shrivastava', 'dshrivastava@gmail.com', 40000),
(5, 'Firoz Khan', 'firozkhan@gmail.com', 50000),
(6, 'Govind Thakur', 'govindthakur@gmail.com', 60000),
(7, 'Harsh Verma', 'harshverma@gmail.com', 70000),
(8, 'Krishna Tale', 'krishh@gmail.com', 80000),
(9, 'Manisha Rajput', 'manisharajput@gmail.com', 90010),
(10, 'Vernita Singh', 'vernitas@gmail.com', 95000);

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

DROP TABLE IF EXISTS `transfers`;
CREATE TABLE IF NOT EXISTS `transfers` (
  `sno` int(50) NOT NULL AUTO_INCREMENT,
  `sender` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(50) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`sno`, `sender`, `receiver`, `amount`) VALUES
(1, 'Firoz Khan', 'Harsh Verma', 4),
(2, 'Krishna Tale', 'Harsh Verma', 120),
(3, 'Harsh Verma', 'Bhavya Gupta', 300),
(4, 'Bhavya Gupta', 'Manisha Rajput', 10),
(5, 'Bhavya Gupta', 'Manisha Rajput', 10),
(6, 'Govind Thakur', 'Bhavya Gupta', 10),
(7, 'Manisha Rajput', 'Govind Thakur', 10);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
