-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2023 at 02:10 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homes`
--
CREATE DATABASE IF NOT EXISTS `homes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `homes`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `mobile` varchar(11) NOT NULL,
  `A_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `admin`:
--

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `mobile`, `A_date`) VALUES
(11, 'mohamed_2', 'new@ddsf', 'sdfDf3dsf', '01012928814', '2023-12-05 22:28:18'),
(12, 'mohamed', 'new@new.com', 'New10juuyoi', '01012928817', '2023-12-05 22:49:50'),
(13, 'mohamed_10', 'dk@dsf', 'Mdefwf324', '01012243453', '2023-12-08 08:38:53');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `d_message` datetime NOT NULL DEFAULT current_timestamp(),
  `id_product` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `comments`:
--   `id_user`
--       `users` -> `id`
--   `id_product`
--       `products` -> `id`
--

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `message`, `id_user`, `d_message`, `id_product`) VALUES
(1, 'this is first message', 14, '2023-12-08 22:50:17', 4),
(2, 'this is first message', 14, '2023-12-08 22:51:43', 4),
(3, 'hjkhhkgbnhh', 14, '2023-12-09 13:50:17', 5),
(4, 'hghjgkhghgk gjhbg khbkjfytieyrkhggjfg,hgfgvhgfnmvhdhmbgdh bhghj gfjbjgchhnbfkjbjgv', 14, '2023-12-09 13:50:54', 5),
(5, 'hghjgkhghgk gjhbg khbkjfytieyrkhggjfg,hgfgvhgfnmvhdhmbgdh bhghj gfjbjgchhnbfkjbjgv', 14, '2023-12-09 13:52:52', 5),
(6, 'hghjgkhghgk gjhbg khbkjfytieyrkhggjfg,hgfgvhgfnmvhdhmbgdh bhghj gfjbjgchhnbfkjbjgv', 14, '2023-12-09 13:55:01', 5),
(7, 'هذه رساله جديده', 14, '2023-12-09 13:55:56', 5);

-- --------------------------------------------------------

--
-- Table structure for table `messege`
--

DROP TABLE IF EXISTS `messege`;
CREATE TABLE `messege` (
  `id` int(11) NOT NULL,
  `text` varchar(500) DEFAULT NULL,
  `Mdate` datetime NOT NULL DEFAULT current_timestamp(),
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `messege`:
--   `id_user`
--       `users` -> `id`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `price` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `citys` varchar(50) NOT NULL,
  `text` varchar(200) NOT NULL,
  `img_name` varchar(200) NOT NULL,
  `C_date` datetime NOT NULL DEFAULT current_timestamp(),
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `products`:
--   `id_user`
--       `users` -> `id`
--

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `price`, `category`, `duration`, `citys`, `text`, `img_name`, `C_date`, `id_user`) VALUES
(2, '400', 'Room', 'Year', 'ismailia', 'this is text', '177_FB_IMG_1699085318664.jpg?1255_FB_IMG_1699085326162.jpg?277_FB_IMG_1699085331828.jpg', '2023-12-08 08:20:49', 13),
(4, '100', 'Room', 'Year', 'Asyut', 'this is text', '9644_FB_IMG_1698938124075.jpg?7396_FB_IMG_1698938126563.jpg?9655_FB_IMG_1698938131540.jpg?2942_FB_IMG_1698938133751.jpg', '2023-12-08 08:22:48', 13),
(5, '200', 'Apartment', 'Six_months', 'Asyut', 'this is new text', '479_FB_IMG_1699010020354.jpg?6780_FB_IMG_1699010023957.jpg?4810_FB_IMG_1699010028510.jpg?785_FB_IMG_1699010035534.jpg', '2023-12-08 10:54:38', 13),
(6, '140', 'Apartment', 'Six_months', 'Asyut', 'this is new text', '8294_FB_IMG_1698940032753.jpg?3490_FB_IMG_1698940037439.jpg?301_FB_IMG_1698940049428.jpg?7216_FB_IMG_1698940133654.jpg', '2023-12-08 10:55:20', 13),
(8, '700', 'Bed', 'Year', 'Asyut', 'this is new test', '8541_FB_IMG_1699090409017.jpg?1513_FB_IMG_1699090410806.jpg?5974_FB_IMG_1699090419624.jpg?9231_FB_IMG_1699090430826.jpg', '2023-12-08 21:59:23', 14),
(9, '67', 'Bed', 'Month', 'ismailia', 'i\'am mohuhj', '4913_FB_IMG_1699086899281.jpg?4939_FB_IMG_1699086901724.jpg?7681_FB_IMG_1699086903856.jpg?3890_FB_IMG_1699086907446.jpg?2579_FB_IMG_1699086911277.jpg', '2023-12-09 14:43:33', 15),
(10, '6000', 'Room', 'Month', 'ismailia', 'tjyghkj', '4102_FB_IMG_1699086678247.jpg?960_FB_IMG_1699086680634.jpg?6901_FB_IMG_1699086683187.jpg?5801_FB_IMG_1699086691953.jpg', '2023-12-09 15:05:16', 15);

-- --------------------------------------------------------

--
-- Table structure for table `test_uploade`
--

DROP TABLE IF EXISTS `test_uploade`;
CREATE TABLE `test_uploade` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `citys` varchar(11) NOT NULL,
  `text` varchar(200) NOT NULL,
  `img_name` varchar(200) NOT NULL,
  `C_date` datetime NOT NULL DEFAULT current_timestamp(),
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `test_uploade`:
--   `id_user`
--       `users` -> `id`
--

--
-- Dumping data for table `test_uploade`
--

INSERT INTO `test_uploade` (`id`, `price`, `category`, `duration`, `citys`, `text`, `img_name`, `C_date`, `id_user`) VALUES
(17, 900, 'Apartment', 'Month', 'ismailia', 'this is new text', '6700_FB_IMG_1699001114672.jpg?3100_FB_IMG_1699001118276.jpg?7116_FB_IMG_1699001123130.jpg?6004_FB_IMG_1699001141894.jpg', '2023-12-08 22:00:04', 14),
(18, 100, 'Apartment', 'Six_months', 'Asyut', 'this is new text', '6475_FB_IMG_1699083622650.jpg?8897_FB_IMG_1699083623575.jpg?1466_FB_IMG_1699083625894.jpg?6005_FB_IMG_1699083627956.jpg', '2023-12-08 22:00:40', 14),
(19, 32, 'Room', 'Six_months', 'ismailia', 'dsf', '3337_FB_IMG_1699086231524.jpg?3153_FB_IMG_1699086235313.jpg?8739_FB_IMG_1699086238289.jpg', '2023-12-08 22:02:28', 14),
(20, 454, 'Apartment', 'Six_months', 'Asyut', 'sdf', '2796_FB_IMG_1698999925438.jpg?8931_FB_IMG_1698999930615.jpg?7971_FB_IMG_1698999938837.jpg', '2023-12-08 22:04:43', 14);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `User_name` varchar(100) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `currtime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `users`:
--

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `User_name`, `Email`, `Password`, `currtime`) VALUES
(13, 'mohamed', 'mohamed@d.com', 'Ddwf323rds', '2023-12-07 21:00:19'),
(14, 'new_user', 'new@ds.com', 'sdfD342dfdf', '2023-12-08 21:35:23'),
(15, 'abdallah _samir', 'hjf@fghj', 'Serfhg675hg', '2023-12-09 14:41:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `messege`
--
ALTER TABLE `messege`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ibfk_1` (`id_user`);

--
-- Indexes for table `test_uploade`
--
ALTER TABLE `test_uploade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `messege`
--
ALTER TABLE `messege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `test_uploade`
--
ALTER TABLE `test_uploade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Constraints for table `messege`
--
ALTER TABLE `messege`
  ADD CONSTRAINT `messege_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `test_uploade`
--
ALTER TABLE `test_uploade`
  ADD CONSTRAINT `test_uploade_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
