-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2023 at 09:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
('EQYJaB96HcaTtxag6J7d', 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
('6crMic9DUAREexgmxlI1', 'masabuaisheh', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `user_id` varchar(20) NOT NULL,
  `booking_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `rooms` int(1) NOT NULL,
  `check_in` varchar(10) NOT NULL,
  `check_out` varchar(10) NOT NULL,
  `adults` int(1) NOT NULL,
  `childs` int(1) NOT NULL,
  `iduser` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`user_id`, `booking_id`, `name`, `email`, `number`, `rooms`, `check_in`, `check_out`, `adults`, `childs`, `iduser`) VALUES
('C1vRhlLkuffCLozy6Roe', 'euF3YzblSNYU408s6EPM', 'masa', 'misshanen30@gmail.com', '05599', 2, '2023-08-31', '2023-08-09', 2, 1, '1224588'),
('C1vRhlLkuffCLozy6Roe', 'mpCAOnlyiY49ih8MFUaU', 'masa', 'misshanen30@gmail.com', '56', 1, '2023-08-24', '2023-08-12', 1, 0, '1224588'),
('C1vRhlLkuffCLozy6Roe', '1I4Yjz2pfDBz06Rjik4P', 'baraa', 'misshanen30@gmail.com', '05544', 1, '2023-08-25', '2023-08-19', 6, 6, '2242002'),
('C1vRhlLkuffCLozy6Roe', 'PLeLvfktz1tRuuRFUtwr', 'ahmad', 'ahmad@gmail.com', '0595942310', 1, '2023-08-29', '2023-09-09', 1, 0, '3010'),
('C1vRhlLkuffCLozy6Roe', 'ugMws1unCNTz9a6VFbYW', 'rahaf', 'misshanen30@gmail.com', '0559', 2, '2023-07-08', '2023-07-09', 2, 0, '12027798'),
('C1vRhlLkuffCLozy6Roe', '1XRz7zPeuEUaoKI5iSCg', 'test', 'testuser@gmail.com', '092347633', 1, '2023-08-28', '2023-09-08', 1, 0, '120');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `NAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` bigint(12) NOT NULL,
  `Photo` varchar(1042) NOT NULL,
  `idmem` int(10) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user',
  `city` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`NAME`, `PASSWORD`, `Email`, `Phone`, `Photo`, `idmem`, `user_type`, `city`) VALUES
('abood', '123654', 'abooood.1662004@gmail.com', 599754433, 'abood.png', 1224025400, 'user', ''),
('ahmad', '12345', 'ahmad@gmail.com', 599754433, 'ahmad.png', 599754433, 'user', ''),
('Areej', '123654', 'Areej@gmail.com', 599754433, 'Areej.png', 1202587400, 'admin', ''),
('Baraa', 'c12hh', 'baraa.2242002@gmail.com', 599754433, 'baraa.png', 1202816900, 'admin', ''),
('tala', '123', 'Tala@Gmail.Com', 599754433, 'oing.png', 1202817733, 'user', '');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `number`, `message`) VALUES
('q9o3lQkLjpNIKV42NGkJ', 'morhaf abuaisheh', 'morhaf@hotmail.com', '0594563633', 'تطبيق ناجح متل صاحبو عاشو الكتائب '),
('ETJoQ5KZltVAvDeqXZDq', 'nancy', 'nancy@gmail.com', '0595948598', 'hello!'),
('aeP5ioL8r8DDrjtD1cGS', 'rahaf', 'misshanen30@gmail.com', '0599', ' !!!!!!!!!!!ويييييييييييييييييييييييييييييييييييييييييييييييين حجزييييييييييييييي');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
