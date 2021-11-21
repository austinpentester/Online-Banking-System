-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2021 at 05:56 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `account_number` int(32) NOT NULL,
  `email` varchar(20) NOT NULL,
  `current_balance` int(20) NOT NULL,
  `gender` varchar(12) NOT NULL,
  `ifsc_code` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `account_number`, `email`, `current_balance`, `gender`, `ifsc_code`) VALUES
(1, 'Austin', 55555, 'austin@gmail.com', 140200, 'male', 123344),
(2, 'Arun', 22222, 'arun@gmail.com', 70000, 'male', 369852),
(3, 'Nixen', 11111, 'nixen@gmail.com', 39900, 'male', 966325),
(4, 'siva banat', 33333, 'banat@gmail.com', 65000, 'male', 369852),
(5, 'Prisha', 44444, 'prisha@gmail.com', 58900, 'female', 789456),
(6, 'nibisha', 121212, 'nibisha@gmail.com', 75000, 'female', 258228),
(7, 'muthuraj', 888888, 'muthuraj@gmail.com', 77000, 'male', 7894562),
(8, 'nithish', 656565, 'nithish@gmail.com', 45000, 'male', 369852),
(9, 'priya', 123456789, 'priya@gmail.com', 65000, 'female', 798465),
(10, 'nelesh kanan', 141414, 'nelesh@gmail.com', 44000, 'male', 169448);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
