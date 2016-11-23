-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2016 at 06:34 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_11_23_060432_VpUser', 1),
('2016_11_23_062950_vpuser', 2),
('2016_11_23_074751_VpCat', 3),
('2016_11_23_091013_Vp_on', 4),
('2016_11_23_113642_VpOut', 5),
('2016_11_23_114031_Vpout', 6);

-- --------------------------------------------------------

--
-- Table structure for table `vp_cat`
--

CREATE TABLE `vp_cat` (
  `cat_id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cat_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vp_cat`
--

INSERT INTO `vp_cat` (`cat_id`, `cat_name`, `cat_slug`) VALUES
(1, 'máy móc thiết bị ', 'may-moc-thiet-bi'),
(2, 'lương', 'luong'),
(4, 'văn phòng phẩm', 'van-phong-pham');

-- --------------------------------------------------------

--
-- Table structure for table `vp_incomings`
--

CREATE TABLE `vp_incomings` (
  `incomings_id` int(10) UNSIGNED NOT NULL,
  `incomings_content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `incomings_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `incomings_cat` int(11) NOT NULL,
  `incomings_money` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `incomings_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `incomings_created` timestamp NULL DEFAULT NULL,
  `incomings_updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vp_incomings`
--

INSERT INTO `vp_incomings` (`incomings_id`, `incomings_content`, `incomings_note`, `incomings_cat`, `incomings_money`, `incomings_img`, `incomings_created`, `incomings_updated`) VALUES
(1, 'Mua máy Macbook Pro cho Nhân viên 005	', 'Tiền chuyển qua ngân hàng Vietcombank', 1, '100000', 'a.png', '2016-11-23 14:09:10', NULL),
(4, 'Mua bàn ghế', 'Tiền chuyển qua ngân hàng Vietcombank', 1, '200000', '1.png', '2016-11-23 11:35:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vp_out`
--

CREATE TABLE `vp_out` (
  `out_id` int(10) UNSIGNED NOT NULL,
  `out_content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `out_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `out_cat` int(11) NOT NULL,
  `out_money` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `out_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `out_created` timestamp NULL DEFAULT NULL,
  `out_updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vp_out`
--

INSERT INTO `vp_out` (`out_id`, `out_content`, `out_note`, `out_cat`, `out_money`, `out_img`, `out_created`, `out_updated`) VALUES
(1, 'Dự án 001', 'Tiền chuyển về tài khoản công ty.', 2, '												₫30,000,000', 'Untitled1.png', '2016-11-23 15:51:22', NULL),
(2, 'Dự án 003 với Fujitsu', 'Tiền chuyển qua MoneyGram', 2, '₫100,000,000', 'Untitled1.png', '2016-11-23 11:55:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vp_user`
--

CREATE TABLE `vp_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_level` int(11) NOT NULL,
  `user_created` timestamp NULL DEFAULT NULL,
  `user_updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vp_user`
--

INSERT INTO `vp_user` (`user_id`, `user_name`, `user_password`, `user_level`, `user_created`, `user_updated`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 1, '2016-11-23 06:35:10', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vp_cat`
--
ALTER TABLE `vp_cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `vp_incomings`
--
ALTER TABLE `vp_incomings`
  ADD PRIMARY KEY (`incomings_id`);

--
-- Indexes for table `vp_out`
--
ALTER TABLE `vp_out`
  ADD PRIMARY KEY (`out_id`);

--
-- Indexes for table `vp_user`
--
ALTER TABLE `vp_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vp_cat`
--
ALTER TABLE `vp_cat`
  MODIFY `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `vp_incomings`
--
ALTER TABLE `vp_incomings`
  MODIFY `incomings_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `vp_out`
--
ALTER TABLE `vp_out`
  MODIFY `out_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `vp_user`
--
ALTER TABLE `vp_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
