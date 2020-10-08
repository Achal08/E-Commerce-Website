-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2020 at 10:46 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'One Indian Girl - Chetan Bhagat', 700),
(2, 'Power of your subconscious mind', 999),
(3, 'The Missing American', 950),
(4, 'Three Mistakes Of My Life - Chetan Bhagat', 590),
(5, 'Harry Potter Series', 2200),
(6, 'Lord OF The Rings - By J.R.R TOLKIEN', 3000),
(7, 'Fictional Book Set', 4000),
(8, 'Stephen King\r\n', 6000),
(9, 'Artificial Intelligence & Machine Learning for Business', 800),
(10, 'Artificial Intelligence : A Modern Approach - Stuart Russell & Peter Norvig', 1000),
(11, 'Elaine Rich, Kevin Knight - \"Artificial Intelligence\"', 1500),
(12, 'A Classical Approach to Artificial Intelligence', 1300);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--
(1, 'Achal Vaidya', 'achal.v123@gmail.com', 'a0a475cf454cf9a06979034098167b9e', '8444844844', 'INDORE', 'Ch-68, Sukhliya'),
(2, 'Yash', 'yash@gmail.com', 'a0a475cf454cf9a06979034098167b9e', '7894561230', 'Lucknow', '125 ABC'),
(3, 'Achal Vaidya', 'achal@ymail.com', 'a0a475cf454cf9a06979034098167b9e', '8444844845', 'INDORE', 'acb 1234');

-- --------------------------------------------------------

--
-- Table structure for table `user_item`
--

CREATE TABLE `user_item` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed','','') NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_item`
--

INSERT INTO `user_item` (`id`, `user_id`, `item_id`, `status`, `date_time`) VALUES
(1, 7, 3, 'Confirmed', '2020-09-24 15:44:29'),
(2, 7, 2, 'Confirmed', '2020-09-24 15:44:31'),
(3, 7, 4, 'Confirmed', '2020-09-24 15:49:23'),
(4, 8, 1, 'Confirmed', '2020-09-24 17:50:41'),
(5, 8, 8, 'Confirmed', '2020-09-24 17:50:46'),
(6, 8, 10, 'Confirmed', '2020-09-24 17:50:51'),
(7, 9, 2, 'Confirmed', '2020-10-01 11:43:42'),
(8, 9, 3, 'Confirmed', '2020-10-01 11:43:46'),
(9, 9, 5, 'Confirmed', '2020-10-01 11:43:53'),
(10, 9, 12, 'Confirmed', '2020-10-01 11:44:04'),
(11, 9, 1, 'Confirmed', '2020-10-01 14:29:44'),
(12, 9, 2, 'Confirmed', '2020-10-01 14:29:47'),
(13, 9, 7, 'Confirmed', '2020-10-01 14:30:03'),
(14, 9, 10, 'Confirmed', '2020-10-01 14:30:06'),
(15, 9, 1, 'Confirmed', '2020-10-01 14:51:37'),
(16, 9, 2, 'Confirmed', '2020-10-01 14:51:40'),
(17, 9, 7, 'Confirmed', '2020-10-01 14:51:49'),
(18, 9, 4, 'Confirmed', '2020-10-01 14:51:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_item`
--
ALTER TABLE `user_item`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_item`
--
ALTER TABLE `user_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
