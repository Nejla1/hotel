-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2019 at 01:08 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) UNSIGNED NOT NULL,
  `usname` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `usname`, `pass`) VALUES
(3, 'admin', '1234'),
(4, 'nejla', 'nejla'),
(5, 'merjema', 'merjemaa');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) DEFAULT NULL,
  `title` varchar(5) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `troom` varchar(30) DEFAULT NULL,
  `tbed` varchar(30) DEFAULT NULL,
  `nroom` int(11) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `ttot` double(8,2) DEFAULT NULL,
  `fintot` double(8,2) DEFAULT NULL,
  `mepr` double(8,2) DEFAULT NULL,
  `meal` varchar(30) DEFAULT NULL,
  `btot` double(8,2) DEFAULT NULL,
  `noofdays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `title`, `fname`, `lname`, `troom`, `tbed`, `nroom`, `cin`, `cout`, `ttot`, `fintot`, `mepr`, `meal`, `btot`, `noofdays`) VALUES
(21, 'Mr.', 'Merjem', 'Merjema', 'Porodicni apartman', 'Trokrevetna', 1, '2019-06-30', '2019-07-18', 3240.00, 3628.80, 291.60, 'Polupansion', 97.20, 18),
(22, 'Miss.', 'Nejla', 'Dzafic', 'Standardna soba', 'Jednokrevetna', 1, '2019-06-30', '2019-07-11', 1650.00, 1699.50, 33.00, 'Dorucak', 16.50, 11),
(23, 'Miss.', 'mmmmm', 'uuuuuu', 'Luxury soba', 'Jednokrevetna', 1, '2019-07-02', '2019-07-05', 960.00, 988.80, 19.20, 'Dorucak', 9.60, 3),
(25, 'Mr.', 'Charli', 'Chaplin', 'Luxury soba', 'Cetverokrevetna', 2, '2019-07-04', '2019-07-11', 4480.00, 4928.00, 358.40, 'Puni pansion', 89.60, 7),
(24, 'Mrs.', 'test', 'testtest', 'Standardna soba', 'Jednokrevetna', 1, '2019-07-03', '2019-07-07', 600.00, 624.00, 18.00, 'Polupansion', 6.00, 4);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `bedding` varchar(20) DEFAULT NULL,
  `place` varchar(10) DEFAULT NULL,
  `cusid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `type`, `bedding`, `place`, `cusid`) VALUES
(1, 'Luxury soba', 'Jednokrevetna', 'Free', 0),
(2, 'Luxury soba', 'Dvokrevetna', 'FREE', 19),
(3, 'Luxury soba', 'Trokrevetna', 'Free', 0),
(4, 'Standardna soba', 'Cetverokrevetna', 'FREE', 15),
(5, 'Luxury soba', 'Cetverokrevetna', 'Free', 0),
(7, 'Deluxe soba', 'Dvokrevetna', 'Free', NULL),
(8, 'Deluxe soba', 'Trokrevetna', 'Free', NULL),
(9, 'Deluxe soba', 'Cetverokrevetna', 'FREE', 20),
(10, 'Porodicni apartman', 'Jednokrevetna', 'Free', NULL),
(11, 'Porodicni apartman', 'Dvokrevetna', 'Free', 0),
(12, 'Porodicni apartman', 'Cetverokrevetna', 'Free', NULL),
(13, 'Standardna soba', 'Jednokrevetna', 'Free', 24),
(14, 'Standardna soba', 'Dvokrevetna', 'Free', NULL),
(15, 'Standardna soba', 'Trokrevetna', 'Nije slobo', 12),
(16, 'Deluxe soba', 'Jednokrevetna', 'Free', NULL),
(17, 'Porodicni apartman', 'Trokrevetna', 'Free', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roombook`
--

CREATE TABLE `roombook` (
  `id` int(10) UNSIGNED NOT NULL,
  `Title` varchar(5) DEFAULT NULL,
  `FName` text,
  `LName` text,
  `Email` varchar(50) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `Phone` text,
  `TRoom` varchar(20) DEFAULT NULL,
  `Bed` varchar(20) DEFAULT NULL,
  `NRoom` varchar(2) DEFAULT NULL,
  `Meal` varchar(15) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `stat` varchar(15) DEFAULT NULL,
  `nodays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roombook`
--

INSERT INTO `roombook` (`id`, `Title`, `FName`, `LName`, `Email`, `Country`, `Phone`, `TRoom`, `Bed`, `NRoom`, `Meal`, `cin`, `cout`, `stat`, `nodays`) VALUES
(19, 'Dr.', 'test', 'test', 'test@gmail.com', 'Dominica', '121212121212', 'Luxury soba', 'Dvokrevetna', '1', 'Polupansion', '2019-06-29', '2019-06-30', 'Potvrdjeno', 1),
(26, 'Dr.', 'Tomislav', 'VolariÄ‡', 'tomislav@gmail.com', 'Bosnia and Herzegowina', '060606060', 'Deluxe soba', 'Cetverokrevetna', '1', 'Puni pansion', '2019-07-08', '2019-07-29', 'Nije potvrdjeno', 21);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` mediumint(8) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Email` varchar(64) NOT NULL,
  `Password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Name`, `Email`, `Password`) VALUES
(13, 'test', 'test@gmail.com', '$2y$10$sqMwzlKMfeoorh0UftSLf.6FwTSybDYbnYz/N2pOA5cDaxT3Kve1a'),
(14, 'Nejla', 'dzaficnejla1996@gmail.com', '$2y$10$q4CIlvgseSLLupo6gdgXVOVcpYe8JqwmTT106lj5OYRvcJiVbSPv.'),
(15, 'Test', 'testtest@gmail.com', '$2y$10$4hszKGFHTTBP3qWlVA.YDuIATayYz6Z0G7ijoIjBnOKb14WPCI/nm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roombook`
--
ALTER TABLE `roombook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `roombook`
--
ALTER TABLE `roombook`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
