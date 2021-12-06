-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2021 at 05:19 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fsd`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `no` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`no`, `title`, `short_description`, `long_description`, `timestamp`) VALUES
(1, 'title_1', 'short_description_1', 'long_description_1', '2021-12-05 11:45:43'),
(2, 'title_2', 'short_description_2', 'long_description_2', '2021-12-05 11:45:44'),
(3, 'title_3', 'short_description_3', 'long_description_3', '2021-12-05 11:45:45'),
(4, 'title_4', 'short_description_4', 'long_description_4', '2021-12-05 11:45:46'),
(5, 'title_5', 'short_description_5', 'long_description_5', '2021-12-05 11:45:47'),
(6, 'title_6', 'short_description_6', 'long_description_6', '2021-12-05 11:45:48'),
(7, 'title_7', 'short_description_7', 'long_description_7', '2021-12-05 11:45:49'),
(8, 'title_8', 'short_description_8', 'long_description_8', '2021-12-05 11:45:50'),
(9, 'title_9', 'short_description_9', 'long_description_9', '2021-12-05 11:45:51'),
(10, 'title_10', 'short_description_10', 'long_description_10', '2021-12-05 11:45:52'),
(11, 'title_11', 'short_description_11', 'long_description_11', '2021-12-05 11:45:53'),
(12, 'title_12', 'short_description_12', 'long_description_12', '2021-12-05 11:45:54'),
(13, 'title_13', 'short_description_13', 'long_description_13', '2021-12-05 11:45:55'),
(14, 'title_14', 'short_description_14', 'long_description_14', '2021-12-05 11:45:56'),
(15, 'title_15', 'short_description_15', 'long_description_15', '2021-12-05 11:45:57'),
(16, 'title_16', 'short_description_16', 'long_description_16', '2021-12-05 11:45:58'),
(17, 'title_17', 'short_description_17', 'long_description_17', '2021-12-05 11:45:59'),
(18, 'title_18', 'short_description_18', 'long_description_18', '2021-12-05 11:46:00'),
(19, 'title_19', 'short_description_19', 'long_description_19', '2021-12-05 11:46:01'),
(20, 'title_20', 'short_description_20', 'long_description_20', '2021-12-05 11:46:02'),
(21, 'title_21', 'short_description_21', 'long_description_21', '2021-12-05 11:46:03'),
(22, 'title_22', 'short_description_22', 'long_description_22', '2021-12-05 11:46:04'),
(23, 'title_23', 'short_description_23', 'long_description_23', '2021-12-05 11:46:05'),
(24, 'title_24', 'short_description_24', 'long_description_24', '2021-12-05 11:46:06'),
(25, 'title_25', 'short_description_25', 'long_description_25', '2021-12-05 11:46:08'),
(26, 'title_26', 'short_description_26', 'long_description_26', '2021-12-05 11:46:09'),
(27, 'title_27', 'short_description_27', 'long_description_27', '2021-12-05 11:46:10'),
(28, 'title_28', 'short_description_28', 'long_description_28', '2021-12-05 11:46:11'),
(29, 'title_29', 'short_description_29', 'long_description_29', '2021-12-05 11:46:12'),
(30, 'title_30', 'short_description_30', 'long_description_30', '2021-12-05 11:46:13'),
(31, 'title_31', 'short_description_31', 'long_description_31', '2021-12-05 11:46:14'),
(32, 'title_32', 'short_description_32', 'long_description_32', '2021-12-05 11:46:15'),
(33, 'title_33', 'short_description_33', 'long_description_33', '2021-12-05 11:46:16'),
(34, 'title_34', 'short_description_34', 'long_description_34', '2021-12-05 11:46:17'),
(35, 'title_35', 'short_description_35', 'long_description_35', '2021-12-05 11:46:18'),
(36, 'title_36', 'short_description_36', 'long_description_36', '2021-12-05 11:46:19'),
(37, 'title_37', 'short_description_37', 'long_description_37', '2021-12-05 11:46:20'),
(38, 'title_38', 'short_description_38', 'long_description_38', '2021-12-05 11:46:21'),
(39, 'title_39', 'short_description_39', 'long_description_39', '2021-12-05 11:46:22'),
(40, 'title_40', 'short_description_40', 'long_description_40', '2021-12-05 11:46:23'),
(41, 'title_41', 'short_description_41', 'long_description_41', '2021-12-05 11:46:24'),
(42, 'title_42', 'short_description_42', 'long_description_42', '2021-12-05 11:46:25'),
(43, 'title_43', 'short_description_43', 'long_description_43', '2021-12-05 11:46:26'),
(44, 'title_44', 'short_description_44', 'long_description_44', '2021-12-05 11:46:27'),
(45, 'title_45', 'short_description_45', 'long_description_45', '2021-12-05 11:46:28'),
(46, 'title_46', 'short_description_46', 'long_description_46', '2021-12-05 11:46:29'),
(47, 'title_47', 'short_description_47', 'long_description_47', '2021-12-05 11:46:30'),
(48, 'title_48', 'short_description_48', 'long_description_48', '2021-12-05 11:46:31'),
(49, 'title_49', 'short_description_49', 'long_description_49', '2021-12-05 11:46:32'),
(50, 'title_50', 'short_description_50', 'long_description_50', '2021-12-05 11:46:33'),
(51, 'title_51', 'short_description_51', 'long_description_51', '2021-12-05 11:46:34'),
(52, 'title_52', 'short_description_52', 'long_description_52', '2021-12-05 11:46:35'),
(53, 'title_53', 'short_description_53', 'long_description_53', '2021-12-05 11:46:36'),
(54, 'title_54', 'short_description_54', 'long_description_54', '2021-12-05 11:46:37'),
(55, 'title_55', 'short_description_55', 'long_description_55', '2021-12-05 11:46:38'),
(56, 'title_56', 'short_description_56', 'long_description_56', '2021-12-05 11:46:39'),
(57, 'title_57', 'short_description_57', 'long_description_57', '2021-12-05 11:46:40'),
(58, 'title_58', 'short_description_58', 'long_description_58', '2021-12-05 11:46:41'),
(59, 'title_59', 'short_description_59', 'long_description_59', '2021-12-05 11:46:42'),
(60, 'title_60', 'short_description_60', 'long_description_60', '2021-12-05 11:46:43'),
(61, 'title_61', 'short_description_61', 'long_description_61', '2021-12-05 11:46:44'),
(62, 'title_62', 'short_description_62', 'long_description_62', '2021-12-05 11:46:45'),
(63, 'title_63', 'short_description_63', 'long_description_63', '2021-12-05 11:46:46'),
(64, 'title_64', 'short_description_64', 'long_description_64', '2021-12-05 11:46:47'),
(65, 'title_65', 'short_description_65', 'long_description_65', '2021-12-05 11:46:48'),
(66, 'title_66', 'short_description_66', 'long_description_66', '2021-12-05 11:46:49'),
(67, 'title_67', 'short_description_67', 'long_description_67', '2021-12-05 11:46:50'),
(68, 'title_68', 'short_description_68', 'long_description_68', '2021-12-05 11:46:51'),
(69, 'title_69', 'short_description_69', 'long_description_69', '2021-12-05 11:46:52'),
(70, 'title_70', 'short_description_70', 'long_description_70', '2021-12-05 11:46:53'),
(71, 'title_71', 'short_description_71', 'long_description_71', '2021-12-05 11:46:54'),
(72, 'title_72', 'short_description_72', 'long_description_72', '2021-12-05 11:46:55'),
(73, 'title_73', 'short_description_73', 'long_description_73', '2021-12-05 11:46:56'),
(74, 'title_74', 'short_description_74', 'long_description_74', '2021-12-05 11:46:57'),
(75, 'title_75', 'short_description_75', 'long_description_75', '2021-12-05 11:46:58'),
(76, 'title_76', 'short_description_76', 'long_description_76', '2021-12-05 11:46:59'),
(77, 'title_77', 'short_description_77', 'long_description_77', '2021-12-05 11:47:00'),
(78, 'title_78', 'short_description_78', 'long_description_78', '2021-12-05 11:47:01'),
(79, 'title_79', 'short_description_79', 'long_description_79', '2021-12-05 11:47:02'),
(80, 'title_80', 'short_description_80', 'long_description_80', '2021-12-05 11:47:03'),
(81, 'title_81', 'short_description_81', 'long_description_81', '2021-12-05 11:47:04'),
(82, 'title_82', 'short_description_82', 'long_description_82', '2021-12-05 11:47:05'),
(83, 'title_83', 'short_description_83', 'long_description_83', '2021-12-05 11:47:06'),
(84, 'title_84', 'short_description_84', 'long_description_84', '2021-12-05 11:47:07'),
(85, 'title_85', 'short_description_85', 'long_description_85', '2021-12-05 11:47:08'),
(86, 'title_86', 'short_description_86', 'long_description_86', '2021-12-05 11:47:09'),
(87, 'title_87', 'short_description_87', 'long_description_87', '2021-12-05 11:47:10'),
(88, 'title_88', 'short_description_88', 'long_description_88', '2021-12-05 11:47:11'),
(89, 'title_89', 'short_description_89', 'long_description_89', '2021-12-05 11:47:12'),
(90, 'title_90', 'short_description_90', 'long_description_90', '2021-12-05 11:47:13'),
(91, 'title_91', 'short_description_91', 'long_description_91', '2021-12-05 11:47:14'),
(92, 'title_92', 'short_description_92', 'long_description_92', '2021-12-05 11:47:15'),
(93, 'title_93', 'short_description_93', 'long_description_93', '2021-12-05 11:47:16'),
(94, 'title_94', 'short_description_94', 'long_description_94', '2021-12-05 11:47:17'),
(95, 'title_95', 'short_description_95', 'long_description_95', '2021-12-05 11:47:18'),
(96, 'title_96', 'short_description_96', 'long_description_96', '2021-12-05 11:47:19'),
(97, 'title_97', 'short_description_97', 'long_description_97', '2021-12-05 11:47:20'),
(98, 'title_98', 'short_description_98', 'long_description_98', '2021-12-05 11:47:21'),
(99, 'title_99', 'short_description_99', 'long_description_99', '2021-12-05 11:47:22'),
(100, 'title_100', 'short_description_100', 'long_description_100', '2021-12-05 11:47:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('ashvin', '0d6be69b264717f2dd33652e212b173104b4a647b7c11ae72e9885f11cd312fb');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
