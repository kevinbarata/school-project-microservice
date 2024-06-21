-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2024 at 05:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) NOT NULL,
  `check_in_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `check_in_location` varchar(45) DEFAULT NULL,
  `check_out_time` timestamp NULL DEFAULT NULL,
  `check_out_location` varchar(45) DEFAULT NULL,
  `attendance_hour` int(10) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `check_in_time`, `check_in_location`, `check_out_time`, `check_out_location`, `attendance_hour`, `create_time`, `update_time`) VALUES
(1, 6, '2024-06-20 05:20:55', 'SMA 70 Babelan Utara', '2024-06-20 13:21:38', 'SMA 70 Babelan Utara', 8, '2024-06-20 13:20:55', '2024-06-20 13:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `code` int(6) NOT NULL,
  `type` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `email`, `code`, `type`, `status`, `create_time`, `update_time`) VALUES
(16, 'kevin11barata@gmail.com', 699764, 'Register', 1, '2024-06-19 05:26:06', '2024-06-19 05:26:06'),
(17, 'kevin11barata@gmail.com', 613245, 'Register', 2, '2024-06-19 05:29:19', '2024-06-19 06:10:17');

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `gender` varchar(500) NOT NULL,
  `major` varchar(50) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `born_city` varchar(50) NOT NULL,
  `birth_day` varchar(20) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mother_name` varchar(50) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`id`, `student_id`, `student_name`, `gender`, `major`, `grade`, `born_city`, `birth_day`, `province`, `city`, `district`, `address`, `mother_name`, `father_name`, `religion`, `create_time`, `update_time`) VALUES
(1, 6, 'Komang', 'Laki-laki', 'IPA', 'IX', 'Bekasi', '10/09/2011', 'Jawa Barat', 'Kota Bekasi', 'Pondok Gede', 'Jalan Jatiwaringin 1 No.20', 'Sumiyati', 'Sodikin', 'Islam', '2024-06-20 10:28:50', '2024-06-20 12:57:14'),
(2, 7, 'Kumar', 'Laki-laki', 'IPS', 'IX', 'Bekasi', '11/07/2011', 'Jawa Barat', 'Kota Bekasi', 'Jaka Setia', 'Taman Galaxy Blok A No.2', 'Yanti', 'Yanto', 'Islam', '2024-06-20 10:28:50', '2024-06-20 12:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `phone`, `username`, `password`, `status`, `remark`, `create_time`, `update_time`) VALUES
(6, 'kevin11barata@gmail.com', '082299350916', 'komang', '33b2e7f44f3c403ba522549936ddf2f9', 1, NULL, '2024-06-19 13:10:17', '2024-06-21 10:29:46'),
(7, 'kevin99barata@gmail.com', '082299350916', 'kumar', '33b2e7f44f3c403ba522549936ddf2f9', 1, NULL, '2024-06-20 13:10:17', '2024-06-20 13:10:17');

-- --------------------------------------------------------

--
-- Table structure for table `user_session`
--

CREATE TABLE `user_session` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(100) NOT NULL,
  `token` varchar(500) NOT NULL,
  `create_time` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_session`
--

INSERT INTO `user_session` (`id`, `user_id`, `token`, `create_time`, `update_time`) VALUES
(9, 6, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI2IiwiZXhwIjoxNzE4NjExOTM1fQ.arUm3ezCgPCLF3ldlwL5j40VoV5L-JoCJRLpS_Y7q76jnGlHdRmaXM5re1SkDPVa8xfP1iPKGSBXUh_e7hhYUg', '2024-06-19 15:12:15', '2024-06-19 15:12:15'),
(10, 6, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI2IiwiZXhwIjoxNzE5NzQyNjY1fQ.Y9JbKqmEYeiHaJSaQ2bYDyMSQAHt21oPlYfj_Txdovrud9uMbR3wZ2xPTYK69tPWRavIUKXz4K3FZBicbJHUFQ', '2024-06-20 17:17:45', '2024-06-20 17:17:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_session`
--
ALTER TABLE `user_session`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_session`
--
ALTER TABLE `user_session`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
