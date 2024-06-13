-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2022 at 10:18 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `cust_id` int(5) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`cust_id`, `details`) VALUES
(1, 'Your Booking details are: \n\nMovie: RRR\nTheater: Cosmoplex\nTime: 7:00 AM\nNo. of tickets: 3\n\nThanks for Booking.....'),
(2, 'Your Booking details are: \n\nMovie: Bhrmashatra\nTheater: Reliance INOX\nTime: 9:00 PM\nNo. of tickets: 9\n\nThanks for Booking.....');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `uname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`uname`, `password`) VALUES
('meet', 'meet'),
('riddhi', 'riddhi'),
('ritik', 'ritik');

-- --------------------------------------------------------

--
-- Table structure for table `table3`
--

CREATE TABLE `table3` (
  `theatre` varchar(30) NOT NULL,
  `shows` varchar(30) NOT NULL,
  `tickets` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table3`
--

INSERT INTO `table3` (`theatre`, `shows`, `tickets`) VALUES
('srivishnu', '11:00AM', 250),
('srivishnu', '7:00AM', 296),
('asscars', '9:00PM', 250),
('galaxy', '7:00AM', 250),
('PVR', '7:00AM', 255),
('srivishnu', '9:00PM', 300),
('srivishnu', '2:00PM', 260),
('srivishnu', '6:00PM', 250),
('asscars', '6:00PM', 345),
('asscars', '2:00PM', 241),
('asscars', '11:00AM', 300),
('galaxy', '11:00AM', 300),
('galaxy', '2:00PM', 250),
('galaxy', '6:00PM', 350),
('galaxy', '9:00PM', 250),
('asscars', '7:00AM', 260),
('PVR', '11:00AM', 300),
('PVR', '2:00PM', 250),
('PVR', '6:00PM', 350),
('PVR', '9:00PM', 250),
('srivishnu', '6:00PM', 3),
('galaxy', '11:00AM', 5);

-- --------------------------------------------------------

--
-- Table structure for table `table4`
--

CREATE TABLE `table4` (
  `cust_id` int(5) NOT NULL,
  `movie_name` varchar(30) NOT NULL,
  `theater` varchar(30) NOT NULL,
  `show_time` varchar(30) NOT NULL,
  `tickets` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table4`
--

INSERT INTO `table4` (`cust_id`, `movie_name`, `theater`, `show_time`, `tickets`) VALUES
(1, 'RRR', 'Cosmoplex', '7:00 AM', 3),
(2, 'Bhrmashatra', 'Reliance INOX', '9:00 PM', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `table4`
--
ALTER TABLE `table4`
  ADD PRIMARY KEY (`cust_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `cust_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table4`
--
ALTER TABLE `table4`
  MODIFY `cust_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
