-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 17, 2024 at 09:20 PM
-- Server version: 10.6.17-MariaDB-cll-lve
-- PHP Version: 8.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `81support_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(0, 'admin@admin.com', '$2y$10$rYRAM9ymvGUHGUy3KBKmDu/FYJ7OKwIQGi/iLntvb.x17J1gf9v0K', '2023-02-06 10:23:28', '2023-03-23 02:01:53');

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` int(11) NOT NULL,
  `productId` int(6) DEFAULT NULL,
  `color` int(11) NOT NULL,
  `userId` int(6) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bookmarks`
--

INSERT INTO `bookmarks` (`id`, `productId`, `color`, `userId`, `created_at`, `updated_at`) VALUES
(79, 47, 3, 6, '2023-04-24 23:07:45', '2023-04-24 23:07:45'),
(92, 47, -1, 51, '2023-04-25 00:53:23', '2023-04-25 00:53:23'),
(93, 49, -1, 51, '2023-04-25 00:55:29', '2023-04-25 00:55:29'),
(94, 48, -1, 51, '2023-04-25 00:56:46', '2023-04-25 00:56:46'),
(95, 51, -1, 51, '2023-04-25 01:06:25', '2023-04-25 01:06:25'),
(96, 53, -1, 51, '2023-04-25 01:08:06', '2023-04-25 01:08:06'),
(97, 55, -1, 51, '2023-04-25 01:09:19', '2023-04-25 01:09:19'),
(98, 52, -1, 51, '2023-04-25 07:09:12', '2023-04-25 07:09:12'),
(99, 54, -1, 51, '2023-04-25 07:12:09', '2023-04-25 07:12:09'),
(100, 50, -1, 51, '2023-04-25 07:15:20', '2023-04-25 07:15:20'),
(101, 61, -1, 51, '2023-04-25 07:16:08', '2023-04-25 07:16:08'),
(102, 58, -1, 51, '2023-04-25 07:19:16', '2023-04-25 07:19:16'),
(103, 63, -1, 51, '2023-04-25 07:19:32', '2023-04-25 07:19:32'),
(104, 64, -1, 51, '2023-04-25 07:19:52', '2023-04-25 07:19:52'),
(105, 65, -1, 51, '2023-04-25 07:20:23', '2023-04-25 07:20:23'),
(106, 67, -1, 51, '2023-04-25 07:20:30', '2023-04-25 07:20:30'),
(107, 66, -1, 51, '2023-04-25 07:20:35', '2023-04-25 07:20:35'),
(108, 62, -1, 51, '2023-04-25 07:39:26', '2023-04-25 07:39:26'),
(109, 60, -1, 51, '2023-04-25 07:40:03', '2023-04-25 07:40:03'),
(110, 46, -1, 51, '2023-04-25 07:59:43', '2023-04-25 07:59:43'),
(111, 59, -1, 51, '2023-04-25 17:44:32', '2023-04-25 17:44:32'),
(112, 47, -1, 55, '2023-04-25 19:35:58', '2023-04-25 19:35:58'),
(113, 46, -1, 55, '2023-04-25 19:36:27', '2023-04-25 19:36:27'),
(114, 48, -1, 55, '2023-04-25 19:36:31', '2023-04-25 19:36:31'),
(115, 49, -1, 55, '2023-04-26 03:07:02', '2023-04-26 03:07:02'),
(116, 52, -1, 2, '2023-04-27 22:35:18', '2023-04-27 22:35:18'),
(117, 46, -1, 2, '2023-04-27 22:35:29', '2023-04-27 22:35:29'),
(118, 55, -1, 55, '2023-04-28 22:46:46', '2023-04-28 22:46:46'),
(119, 53, -1, 2, '2023-04-29 22:51:57', '2023-04-29 22:51:57'),
(120, 49, 3, 6, '2023-05-05 16:54:46', '2023-05-05 16:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `productId` int(6) DEFAULT NULL,
  `size` int(11) NOT NULL,
  `color` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `userId` int(6) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `productId`, `size`, `color`, `quantity`, `userId`, `created_at`, `updated_at`) VALUES
(76, 46, 1, 3, 2, 6, '2023-04-25 00:18:22', '2023-04-25 00:18:22'),
(110, 47, 1, 1, 1, 55, '2023-04-26 03:06:16', '2023-04-26 03:06:16'),
(111, 46, 6, 8, 1, 2, '2023-04-27 22:35:48', '2023-04-27 22:35:48');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoryImage` varchar(200) DEFAULT NULL,
  `categoryName` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryImage`, `categoryName`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Kids', '2023-04-20 05:08:21', '2023-04-20 17:38:08'),
(2, NULL, 'Shirt', '2023-02-06 00:45:02', '2023-02-06 00:45:02'),
(3, NULL, 'Footwear', '2023-04-20 05:08:43', '2023-04-20 17:38:32'),
(4, NULL, 'Bottomwear', '2023-02-06 12:55:57', '2023-02-06 12:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `hex` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `hex`, `created_at`, `updated_at`) VALUES
(1, 'Purple', '7B519A', '2023-04-18 04:30:05', '2023-04-20 04:43:22'),
(2, 'Blue', '0000FF', '2023-04-18 04:30:31', '2023-04-20 04:13:18'),
(3, 'Green', '3CBA4C', '2023-04-18 04:30:54', '2023-04-20 04:44:09'),
(4, 'Yellow', 'FFFF00', '2023-04-18 04:31:10', '2023-04-20 04:13:18'),
(5, 'Black', '000000', '2023-04-19 02:27:45', '2023-04-20 04:13:18'),
(6, 'Lemon Yell', 'FEFF33', '2023-04-20 04:31:48', '2023-04-20 05:02:55'),
(7, 'Turquoise', '33E6FF', '2023-04-20 04:32:24', '2023-04-20 04:32:24'),
(8, 'Red Orange', 'FF3333', '2023-04-20 04:32:45', '2023-04-20 04:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `id` int(11) NOT NULL,
  `productId` int(6) DEFAULT NULL,
  `rc_id` int(6) DEFAULT NULL,
  `dealDesc` varchar(200) DEFAULT NULL,
  `bannerImage` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`id`, `productId`, `rc_id`, `dealDesc`, `bannerImage`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Get this amazing deal!!', 'https://quantumit.online/81support/public/deals/deals.webp', '2023-02-24 03:28:10', '2023-02-24 03:28:38');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filter`
--

CREATE TABLE `filter` (
  `id` int(11) NOT NULL,
  `filterName` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filter`
--

INSERT INTO `filter` (`id`, `filterName`, `created_at`, `updated_at`) VALUES
(2, 'Top Rated', '2023-02-13 13:08:49', '2023-02-13 13:08:49'),
(3, 'Popular', '2023-02-13 13:08:59', '2023-02-13 13:08:59'),
(5, 'Newest', '2023-03-03 21:09:32', '2023-03-03 21:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `new_users`
--

CREATE TABLE `new_users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `otp` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT '0' COMMENT '0=inact 1=act',
  `image` varchar(200) DEFAULT NULL,
  `device_token` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_users`
--

INSERT INTO `new_users` (`id`, `name`, `email`, `mobile`, `password`, `dob`, `otp`, `address`, `status`, `image`, `device_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'ashutosh', 'aashutosh.quantum@gmail.com', '8468921901', '$2y$10$e95jMX3BvABuuOxstaBU4.dm//XzthEMLoHZuZsRrxMNOcPIcGUEW', NULL, '2700', NULL, '1', NULL, NULL, NULL, '2023-02-18 09:09:12', '2023-05-05 10:53:18'),
(4, 'Rajat Khoware', 'rajat@gmail.com', '6260002320', '$2y$10$hMdjeaeP0kf0pQctxzVCh.8wVuWsIVud8NcRj/VDvGuZGCjsXKwLC', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-02-20 11:55:56', '2023-04-18 16:43:01'),
(5, 'rajat', 'rajat123@gmail.com', '6260002321', '$2y$10$Bjle2RLg82C7cjK4sLg1SO/qatLI40Tgb1O4ABTrzk0xfWHQ8bg9y', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-02-21 06:36:45', '2023-03-26 13:00:27'),
(6, 'Sam', 'sam@email.com', '1234567890', '$2y$10$j9Jg6XVn/QteGYhdkYGyeO8XH4/arSZ89Em0LKaBZQk7FMZp6IiX.', '2001-04-20', NULL, NULL, '1', NULL, NULL, NULL, '2023-02-24 11:49:32', '2023-04-20 19:05:57'),
(7, 'jayjjj', 'jay@gmail.com', '9090909090', '$2y$10$1X1WCFJbauk.6vdlcuJ3COecHyfpcxejyUf5eGH.e4DwgQOQhfkUG', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-02-24 12:08:18', '2023-03-26 13:00:28'),
(8, 'John', 'jphn@gmail.com', '6262626262', '$2y$10$LN1MXg53DCHXhVQqnRd24eRnhTocmoyHGOHkB0tkDeAwZpEFOjzsW', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-02-28 03:59:05', '2023-03-26 13:00:29'),
(9, 'rajatffft', 'john@gmail.com', '9977748880', '$2y$10$GQiDlmQbYApnV7.D/Mc4CeU4794B7QqFtSbbMwiKISi0PrHxXqNZW', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-02-28 04:05:57', '2023-03-26 13:00:30'),
(10, 'johnn', 'johnn@gmail.com', '6262626261', '$2y$10$XMS2UW3fe6JC9zbRPQyEw./7e64LXC7r/hrG8Fn0LULMQxF8g1YfS', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-02-28 04:07:55', '2023-03-26 13:00:32'),
(11, 'rajatffft', 'johnnn@gmail.com', '9977748883', '$2y$10$hfbQsD/yHeozI6mpaOBWTuTCJW1JG/axKjpWzRA0lYhVwZSh1zZYS', NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-02-28 04:21:10', '2023-02-28 04:21:10'),
(12, 'john', 'johns@gmail.com', '6262626200', '$2y$10$y9NdMXcLRk4Nx.YzKl3kSuQsAMBoNviSSotvGYBiOSbl89eQGgOGq', NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-02-28 04:43:34', '2023-02-28 04:43:34'),
(13, 'john', 'johndd@gmail.com', '6262626212', '$2y$10$D9XyWB0qauURawRlpBMLpef1a2fy6stxQlawv9N3lTpg2ZKU6Zk7C', NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-02-28 04:49:00', '2023-02-28 04:49:00'),
(14, 'Johnny', 'Johnny@gmail.com', '6260002396', '$2y$10$w4tP2KCwvV4a6v/SMvH4uu3XFRtZALWKsQ30ZdWG9A7wFU7WbJJmy', NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-02-28 05:25:48', '2023-02-28 05:25:48'),
(15, 'Johnny', 'Johnnys@gmail.com', '6260002391', '$2y$10$b7SmECyO/V55YMBIPvA2CuTjVrOgG67MPJO6Llk98zlCX9.ESn/NW', NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-02-28 05:27:45', '2023-02-28 05:27:45'),
(16, 'a', 'a@gmail.com', '9292929292', '$2y$10$g0V4RyW3Kp85JFYoOlhcu.f.IMgYx25OjREwIJdPsKCDN7hfZJvz2', NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-02-28 05:29:07', '2023-02-28 05:29:07'),
(17, 'b', 'b@gmail.com', '6260002222', '$2y$10$TJgAHhPSC4RgkWneVLks7.YaJps5sZzkl11Hlrd3DNOIdrQU0W8O.', NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-02-28 05:36:30', '2023-02-28 05:36:30'),
(18, 'tom', 'tom@gmail.com', '6363636363', '$2y$10$15n10jxHpEhzEp7XM8o/8O6hSt9pGg.lIHAoHc4HxY4oTNsZ7Q58e', NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-02-28 05:50:59', '2023-02-28 05:50:59'),
(19, 'tommy', 'tommy@gmail.com', '6362626262', '$2y$10$rtQ.As7iCuxgWt5PX1YVK.Zi/7r5LkDHbf6N06Q1h.N6cCprQcS8G', NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-02-28 05:52:30', '2023-02-28 05:52:30'),
(20, 'guest', 'guest@gmail.com', '6868686868', '$2y$10$ciBMiy/ZFynxFO9PsUr2Ru5iHd2/kK7nm/zZX86vin5XPGFgYup.a', NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-02-28 05:55:04', '2023-02-28 05:55:04'),
(21, 'guest', 'first@gmail.com', '6868686867', '$2y$10$JYTKBgBvzKgNQJobnm97e.mFMCxe8V2qF9CG7nMCCtccwAVSao9j.', NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-02-28 05:55:32', '2023-02-28 05:55:32'),
(22, 'aks', 'aks@gmail.com', '6565656565', '$2y$10$mZd/gMeSLouB0.xVNIG46uI710LGAX0J/6ISCCxYvJwxA.zoVIgEa', NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-02-28 05:58:12', '2023-02-28 12:08:37'),
(23, 'aks', 'aksss@gmail.com', '6266666666', '$2y$10$dsxShrWZ332oD4wCyWcNmes8uttDAw2rnEHgiQPWrf6bxR2GSZWLa', NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-02-28 05:58:54', '2023-02-28 12:08:39'),
(24, 'aks', 'akssssss@gmail.com', '6565656561', '$2y$10$LUgnmmAaodhiR/jEmB8th.HZNbOi0N7h4C7zvjQuhGnqvg8MU.Fuq', NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-02-28 05:59:12', '2023-02-28 12:27:07'),
(25, 'test', 'test45@gmail.com', '6212312312', '$2y$10$.lb6sXvkhjI.2iNLj5MaX.hsjmRjP2/eJcctGeqp2Xrs3blWdLOA6', NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-02-28 06:02:30', '2023-02-28 12:08:32'),
(26, 'yu', 'yu@gmail.com', '6210101010', '$2y$10$uSV8.jXw45yuL3Q7qqyyle.sRwUPYm48/v3JfyFU1RDEXYTE/v17u', NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-02-28 06:05:07', '2023-03-02 14:43:19'),
(27, 'abc', 'bcc@gmail.com', '9696966969', '$2y$10$Rx4HDYEmNAuCZZl55LGTb.ckHgOEhz7Eyo4ypgX4p39mcxEQCFVO.', NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-02-28 06:08:31', '2023-03-01 04:22:25'),
(29, 'Utsav', 'utsavratan@gmail.com', '7060704671', '$2y$10$QbETN3dFjw2c84TO/GzLfu3sj.8nxa7IkbPV8DOCCmZnruW7IO90S', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-03-01 19:31:40', '2023-03-02 18:04:37'),
(30, 'shivam', 'shivam@gmail.com', '090909', '$2y$10$fPFsrBvptlc5VW2Ml3CsgO0vOI6aT9RbwlBqAVwbuwa/LPdfD6Q5.', NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-03-03 12:35:25', '2023-03-03 12:35:25'),
(31, NULL, NULL, NULL, '$2y$10$C1KBhGN8gr08cwX3CTXjl.PT20Q4d3wytbEvahsPkulbk2Q9Zq29.', NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-03-03 13:10:06', '2023-04-18 18:22:49'),
(32, 'book', 'book@gmail.com', '6565656560', '$2y$10$pLZoYHjQXXiWIlCIje9PCuc5olPOoKLwFNNJRmbQa0XBqEf4bg.9K', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-03-03 13:18:49', '2023-03-03 19:57:55'),
(33, 'bookm', 'bookm@gmail.com', '9999900000', '$2y$10$643Z.6eWV2y4JpZoZrnYwe2xR2HgCto8txXuCJ1ukqEWw1qW5xY4O', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-03-03 13:30:33', '2023-03-22 17:39:55'),
(34, 'sahil', 'sahil@gmail.com', '8507893333', '$2y$10$I.xtS7NfQI63Za4eGiDyVeA8GDa1G/NTCvoPxwCmmOml6t1ycC/hO', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-03-03 20:15:57', '2023-03-22 17:39:54'),
(39, 'ShoeBuyer', 'shoeadmin@admin.com', '1234567889', '$2y$10$CzQeE0UpSBVfajjoJyIaV.PKCgIYdcudVbFE1H3/1Nn8joGeiyQ1e', NULL, NULL, NULL, '1', 'https://quantumit.online/81support/public/uploads/new_user/1678372180.png', NULL, 'Ef3K5yWOlZ1nVxxr0IVfYH6cEjoM8iAEhQknTSBRjFJ8Vr0YQV', '2023-03-09 19:59:40', '2023-03-22 17:39:54'),
(40, 'Utsav', 'utsavrattan@gmail.com', '7895707093', '$2y$10$fmuKYAvaD66zvZNQNsswIutZXySsk52jC3ReTCNXSvcOe.fBu5gTm', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-03-10 10:58:03', '2023-03-22 17:39:53'),
(41, 'jay shah', 'j@gmail.com', '2653598201', '$2y$10$7EzVSOYl.pYD/UnkDOl7IeJp6sy.Rl2MHLqdRrfLx.tFKS3KFaVwm', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-03-10 12:53:07', '2023-03-31 09:49:12'),
(42, 'h', 'h@gmail.com', '6868682525', '$2y$10$FDYRBB6pKJ37S7qWGEXcbu1.3PAR01iddkdS4ePT2HK9D2bCArZu.', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-03-10 19:00:47', '2023-03-22 17:39:52'),
(43, 'Avinash', 'akavinashk07@gmail.com', '8954881102', '$2y$10$8V5nMj8kTB5MI.MRBZaNSOyIrBQzA7/Fxm3mbHDrZ3t8/0FwJNcsy', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-03-13 13:02:43', '2023-03-15 12:25:53'),
(44, 'fkfj', 'r@gmail.com', '9988550000', '$2y$10$wz9fQlhlSX9GKa8paa9lu.LahQSJ6VgmYxNHxxLPj6QXVhd9uR072', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-03-14 21:51:07', '2023-03-22 17:39:51'),
(45, 'jie', 'i@gmail.com', '2015325671', '$2y$10$IhnYarrf5JW8/JMzHqO97OIcOctQ/A1roMMTt/24cfobHgBgiIcsO', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-03-14 21:54:48', '2023-04-10 11:44:44'),
(46, 'swaraj testing', 'swarajporflow@gmail.com', '9404685985', '$2y$10$Udu5IqfjF0lMlv3p/jy6U.Y8s8WBCB7D2UH5n1sGdKoVaLZtDDa8.', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-03-27 18:11:46', '2023-03-28 15:57:23'),
(47, 'Akshay', 'Asks@gmail.com', '9568425863', '$2y$10$3BBE4jhc9AWlUfaur7Q0OuD4j7MW.8vmhPiaK3AlNmS7PC8amyPX6', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-04-11 10:08:06', '2023-04-11 11:29:08'),
(48, 'aaa', 'aaa@gmail.com', '7582456230', '$2y$10$PZkEFLM6JjW81buxKu3QGeaK.2DP1u.0my.JP018YEVDndZGlenW.', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-04-11 10:16:49', '2023-04-11 11:29:08'),
(49, 'ashutosh', 'ashutoshchauha2n@gmail.com', '8468921902', '$2y$10$1Rb5XDMG/tRROoT1ylz4/ufpTG1XQFJIf24ummS77hs/cdXVgMjta', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-04-11 10:33:29', '2023-05-09 10:19:47'),
(50, 'aaa', 'aaaaa@gmail.com', '7582456210', '$2y$10$ta.6M9k8A9Zk8FptAwn6K.Oj2oqt.22UV2jn6SkVo0GIv61.XHIi.', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-04-18 09:22:54', '2023-05-09 10:19:45'),
(51, 'xyx@gmail.com', 'xyx@gmail.com', '9425612352', '$2y$10$S6hlkx/EswdvynD39oCXIuR39QBpGvOcGgb8kNRc01aXanyp7P3zq', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-04-18 16:12:53', '2023-05-09 10:19:44'),
(52, 'shivamchawla', 'shivamc.2002@gmail.com', 'shivam123', '$2y$10$ZF24sufxCMbjox9BF/gTPOrO9GSH8Ka2Zwb2isSi7pM0eo4M3DAaS', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-04-18 17:09:42', '2023-05-09 10:19:43'),
(53, NULL, NULL, NULL, '$2y$10$/ArMsn2wCuUUWvVqiscSCuS2zdzHl7oRCZgpnW3oXJ.kYIVrso/OK', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-04-18 18:30:36', '2023-05-09 10:19:42'),
(54, 'edf', 'asfiffkdj@gmail', '940465980', '$2y$10$heBTGPqNjRV1UPwbisXwX.quq5hatoFhq32Eso9NKBFXuoGQVRiYq', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-04-19 12:09:21', '2023-05-09 10:19:41'),
(55, 'bot', 'bot@gmail.com', '9524862486', '$2y$10$t5JBcuT8GN2Kh2VAaVnH2O4VKf.ChZiPPjt/bfMgayIEkeufOAJvm', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-04-25 12:07:24', '2023-05-09 10:19:40'),
(56, 'yes', 'yes@gmail.com', '9977734567', '$2y$10$C9ZdJ.ejZym2rU80gRfZoOi0raBAEW6qB8P7nUbROwxmoMQublOwm', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-04-25 12:12:23', '2023-05-09 10:19:40');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `image`, `title`, `description`, `category`, `status`, `updated_at`, `created_at`) VALUES
(8, 1, '1677828430.png', 'To Test', 'Swaraj Testing notification flow', 'new', 0, '2023-03-03 19:57:10', '2023-03-03 19:57:10'),
(9, 2, '1677828430.png', 'To Test', 'Swaraj Testing notification flow', 'new', 0, '2023-03-03 19:57:10', '2023-03-03 19:57:10'),
(10, 3, '1677828430.png', 'To Test', 'Swaraj Testing notification flow', 'new', 0, '2023-03-03 19:57:10', '2023-03-03 19:57:10'),
(11, 39, '1678372298.png', 'icons', 'these are few icons', 'hot', 0, '2023-03-10 03:01:38', '2023-03-10 03:01:38'),
(12, 2, '1679816098.jpg', 'Test', 'Test Message', 'new', 0, '2023-03-26 20:04:58', '2023-03-26 20:04:58'),
(13, 2, '1679816193.jpg', 'test', 'test', 'new', 0, '2023-03-26 20:06:33', '2023-03-26 20:06:33'),
(14, 4, '1679816809.jpg', 'Test', 'Test', 'new', 0, '2023-03-26 20:16:49', '2023-03-26 20:16:49'),
(15, 4, '1679817989.jpg', 'Test', 'Test', 'new', 0, '2023-03-26 20:36:30', '2023-03-26 20:36:30'),
(16, 4, '1679819143.jpg', 'Test', 'Test', 'new', 0, '2023-03-26 20:55:43', '2023-03-26 20:55:43'),
(17, 4, '1679819161.jpg', 'Test', 'Test', 'new', 0, '2023-03-26 20:56:01', '2023-03-26 20:56:01'),
(18, 10, '1679819161.jpg', 'Test', 'Test', 'new', 0, '2023-03-26 20:56:06', '2023-03-26 20:56:06'),
(19, 5, '1679823353.jpg', 'New Noti', 'Trial notification', 'hot', 0, '2023-03-26 22:05:53', '2023-03-26 22:05:53'),
(20, 2, '1679823689.png', 'John wick', 'John wick', 'new', 0, '2023-03-26 22:11:29', '2023-03-26 22:11:29'),
(21, 4, '1679906959.jpg', 'Test', 'Test', 'new', 0, '2023-03-27 21:19:19', '2023-03-27 21:19:19'),
(22, 31, '1679921428.png', 'Testing', 'To test notification', 'new', 0, '2023-03-28 01:20:28', '2023-03-28 01:20:28'),
(23, 46, '1679921428.png', 'Testing', 'To test notification', 'new', 0, '2023-03-28 01:20:28', '2023-03-28 01:20:28'),
(24, 2, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(25, 4, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(26, 5, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(27, 6, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(28, 7, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(29, 8, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(30, 9, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(31, 10, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(32, 11, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(33, 12, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(34, 13, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(35, 14, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(36, 15, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(37, 16, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(38, 17, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(39, 18, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(40, 19, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(41, 20, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(42, 21, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(43, 22, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(44, 23, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(45, 24, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(46, 25, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(47, 26, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(48, 27, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(49, 29, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(50, 30, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(51, 31, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(52, 32, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(53, 33, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(54, 34, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(55, 39, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(56, 40, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(57, 41, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(58, 42, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(59, 43, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(60, 44, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(61, 45, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(62, 46, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(63, 47, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(64, 48, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(65, 49, '1681719351.jpg', 'Black Angel Shoes Arrival', 'velit ut tortor pretium viverra suspendisse potenti nullam ac tortor', 'new', 0, '2023-04-17 20:45:51', '2023-04-17 20:45:51'),
(66, 2, '1683263597.jpg', '1oPgR6BFJu', '0qpa4q5XtE', 'return', 0, '2023-05-05 17:43:18', '2023-05-05 17:43:18'),
(67, 2, '1683263807.jpg', 'o6T7HIGDW3', 'rhlXXS2LFL', 'event', 0, '2023-05-05 17:46:47', '2023-05-05 17:46:47'),
(68, 2, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(69, 4, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(70, 5, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(71, 6, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(72, 7, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(73, 8, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(74, 9, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(75, 10, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(76, 11, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(77, 12, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(78, 13, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(79, 14, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(80, 15, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(81, 16, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(82, 17, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(83, 18, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(84, 19, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(85, 20, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(86, 21, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(87, 22, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(88, 23, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(89, 24, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(90, 25, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(91, 26, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(92, 27, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(93, 29, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(94, 30, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(95, 31, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(96, 32, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(97, 33, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(98, 34, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(99, 39, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(100, 40, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(101, 41, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(102, 42, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(103, 43, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(104, 44, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(105, 45, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(106, 46, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(107, 47, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(108, 48, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(109, 49, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(110, 50, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(111, 51, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(112, 52, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(113, 53, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(114, 54, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(115, 55, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(116, 56, '1683263836.png', 'UOa7Q0XUv8', 'BNesV96dw9', 'offer', 0, '2023-05-05 17:47:16', '2023-05-05 17:47:16'),
(117, 2, '1683263862.png', 'k16zPyNAKn', 'Nsv7YH2NEX', 'order', 0, '2023-05-05 17:47:42', '2023-05-05 17:47:42'),
(118, 2, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(119, 4, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(120, 5, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(121, 6, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(122, 7, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(123, 8, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(124, 9, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(125, 10, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(126, 11, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(127, 12, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(128, 13, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(129, 14, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(130, 15, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(131, 16, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(132, 17, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(133, 18, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(134, 19, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(135, 20, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(136, 21, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(137, 22, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(138, 23, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(139, 24, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(140, 25, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(141, 26, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(142, 27, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(143, 29, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(144, 30, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(145, 31, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(146, 32, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(147, 33, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(148, 34, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(149, 39, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(150, 40, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(151, 41, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(152, 42, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(153, 43, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(154, 44, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(155, 45, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(156, 46, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(157, 47, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(158, 48, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(159, 49, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(160, 50, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(161, 51, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(162, 52, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(163, 53, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(164, 54, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(165, 55, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(166, 56, '1683263882.jpg', 'YrWPtJ9BFl', 'BABgO5PUzr', 'hot', 0, '2023-05-05 17:48:02', '2023-05-05 17:48:02'),
(167, 2, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(168, 4, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(169, 5, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(170, 6, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(171, 7, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(172, 8, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(173, 9, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(174, 10, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(175, 11, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(176, 12, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(177, 13, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(178, 14, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(179, 15, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(180, 16, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(181, 17, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(182, 18, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(183, 19, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(184, 20, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(185, 21, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(186, 22, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(187, 23, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(188, 24, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(189, 25, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(190, 26, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(191, 27, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(192, 29, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(193, 30, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(194, 31, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(195, 32, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(196, 33, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(197, 34, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(198, 39, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(199, 40, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(200, 41, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(201, 42, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(202, 43, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(203, 44, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(204, 45, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(205, 46, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(206, 47, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(207, 48, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(208, 49, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(209, 50, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(210, 51, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(211, 52, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(212, 53, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(213, 54, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(214, 55, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24'),
(215, 56, '1683263904.png', 'Ac6s5ZIBT9', '4iD2m9qvwJ', 'new', 0, '2023-05-05 17:48:24', '2023-05-05 17:48:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\New_User', 9, 'het@gmail.com', '0ba206691fccade88f9f3a5e5e845474b5b33ff153ffc1953203d69878ae0350', '[\"*\"]', '2023-02-11 11:16:28', '2023-02-10 18:44:33', '2023-02-11 11:16:28'),
(2, 'App\\Models\\New_User', 9, 'het@gmail.com', 'd9315f1e7bf2555d8167f2c693088cd760e32e2f94206085f93ed62a7a84a0ad', '[\"*\"]', NULL, '2023-02-10 18:59:20', '2023-02-10 18:59:20'),
(3, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', 'f9bce42070c50511fd90c193010d0777ccf689008c3c0d1fbe997a6f49159a4d', '[\"*\"]', NULL, '2023-02-15 22:41:09', '2023-02-15 22:41:09'),
(4, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', '1684a5acf4d10798bcf1938673c13ea22b69dea807d347c0ce88c4ff0451e60e', '[\"*\"]', NULL, '2023-02-15 22:41:51', '2023-02-15 22:41:51'),
(5, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', '951a0c563fd1e03a657fe024d8583bd22f484f2fd0e9e56fb121298700bee9cd', '[\"*\"]', '2023-02-15 23:26:52', '2023-02-15 22:42:11', '2023-02-15 23:26:52'),
(6, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', 'af263fc0e682aaee2b5796488c62e5dfdf373c9bc3cec6b8b18edcd88a087269', '[\"*\"]', NULL, '2023-02-15 23:22:28', '2023-02-15 23:22:28'),
(7, 'App\\Models\\New_User', 3, 'ashutoshchauha2n@gmail.com', '1508357b7fbb3a33e103e9fc0f247dc1724ba4687a8123f7bcf31f40b19a8724', '[\"*\"]', NULL, '2023-02-18 16:11:17', '2023-02-18 16:11:17'),
(8, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', 'a1930375648c4afe4e56a35e81970a36cf108086bc6db2aae0696030b85dd254', '[\"*\"]', '2023-03-04 01:59:01', '2023-02-18 16:15:57', '2023-03-04 01:59:01'),
(9, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', '1dbb092922aa284e22ecfe711966893d74aecac8605362a7a96c644941851790', '[\"*\"]', NULL, '2023-02-20 16:39:28', '2023-02-20 16:39:28'),
(10, 'App\\Models\\New_User', 4, 'rajat@gmail.com', '24deec1fdd516377fb524210bfa4834effe4bbc55d33779c7909977f14c7391f', '[\"*\"]', NULL, '2023-02-20 18:55:56', '2023-02-20 18:55:56'),
(11, 'App\\Models\\New_User', 5, 'rajat123@gmail.com', 'ad0c806d43b5159249ba3191154fe6688f3b8e1abc35f169100e822a7b3b93d3', '[\"*\"]', NULL, '2023-02-21 13:36:45', '2023-02-21 13:36:45'),
(12, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', 'd8398d9b07ff48481e81a4531c3ba7ec0883c8dec5ac858ab2a84b91fefd839c', '[\"*\"]', NULL, '2023-02-21 15:48:27', '2023-02-21 15:48:27'),
(13, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', '58747fd1436d5033e1fe764faabaaac9fa25dafee970b2a07e04fcf7eb78a836', '[\"*\"]', NULL, '2023-02-21 15:53:10', '2023-02-21 15:53:10'),
(14, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', '051aeacfd76e603df3ef17a20a2155453507ad6d749b00fbed97dec3d5c0f5c8', '[\"*\"]', NULL, '2023-02-21 15:55:53', '2023-02-21 15:55:53'),
(15, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', '72677f5ac98a11da70172bf9da5ad6512d2de462632d377c50a701069573743f', '[\"*\"]', NULL, '2023-02-21 15:56:14', '2023-02-21 15:56:14'),
(16, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', 'a5c9bceb6d463f100d07f9bc718b87ce23d045c40d3d77b9274cebffc1b9b04b', '[\"*\"]', NULL, '2023-02-21 15:57:37', '2023-02-21 15:57:37'),
(17, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', 'cf5708a44134f97dfcca6f8cec75e0b91fae752f270d6d09dc13fe1bfdfc5454', '[\"*\"]', NULL, '2023-02-21 16:04:06', '2023-02-21 16:04:06'),
(18, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', 'c9130f620910ef3a90a8895443ee078302bf61a4077241ec87141b6acf854ace', '[\"*\"]', NULL, '2023-02-21 16:08:19', '2023-02-21 16:08:19'),
(19, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', '930ac816a4b4bfb8bc1969b029e918b3260ccf1d97d1f50cd40f54423838e223', '[\"*\"]', NULL, '2023-02-21 16:09:12', '2023-02-21 16:09:12'),
(20, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', '437742702bcacf72ef318f9461eef69cccbe9e34c50e5a7c95238e49dc7e50aa', '[\"*\"]', NULL, '2023-02-21 17:14:29', '2023-02-21 17:14:29'),
(21, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', 'ef46f3c694018fd9e4ef31aff60c13ffce8c30444f7b6f9361f99218d48bd315', '[\"*\"]', NULL, '2023-02-21 17:14:32', '2023-02-21 17:14:32'),
(22, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', 'c4f58851f017e1a7a3b1fbaf710bd9649ebb690cd74f2203861ced57dbac2337', '[\"*\"]', NULL, '2023-02-21 19:16:16', '2023-02-21 19:16:16'),
(23, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', '7bf1bf426afbc2573034cb5386f8ae52772a8b0d85430d99fa3dd2bf8358d073', '[\"*\"]', NULL, '2023-02-21 19:16:19', '2023-02-21 19:16:19'),
(24, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', 'fb2e22c61476724dd4758bafb09e7e5085ef39740e4410c744d1f567f2b9613d', '[\"*\"]', NULL, '2023-02-21 19:20:15', '2023-02-21 19:20:15'),
(25, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', 'b057934a8225bf142a8fd028e63fa4df68687c90a25c0d64c49ff33e2d5b1a84', '[\"*\"]', NULL, '2023-02-21 19:22:19', '2023-02-21 19:22:19'),
(26, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', 'aa6bef75a28f55932ff0a98c37bdd47e0b104236b65f944cbfab6ae7501ceddd', '[\"*\"]', NULL, '2023-02-21 19:23:07', '2023-02-21 19:23:07'),
(27, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', 'dd9abec61410ea600b5cb6f68b39aebc5ed3c57159f389c8a3849352e8233e3f', '[\"*\"]', NULL, '2023-02-21 19:24:03', '2023-02-21 19:24:03'),
(28, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', 'e963ba077aa913a5c20c4c32639353e0316833137bd26aa04ffd7b091a3566c8', '[\"*\"]', NULL, '2023-02-21 19:32:37', '2023-02-21 19:32:37'),
(29, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', '308727ccfbbe52d93891c10f6d128e39f9a53d3f727f87296d6047a6c2879858', '[\"*\"]', NULL, '2023-02-21 19:32:57', '2023-02-21 19:32:57'),
(30, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', 'a6e0910495c0e35b1c3106b1063057f36f958cd79132129d42c1abf23142b434', '[\"*\"]', NULL, '2023-02-21 19:38:39', '2023-02-21 19:38:39'),
(31, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', 'bef0869c95a90945ce4f4c9275816a287082c130c30abdc0f5b7fbb5765fdd86', '[\"*\"]', '2023-03-02 22:26:43', '2023-02-21 19:43:01', '2023-03-02 22:26:43'),
(32, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', '34b37c976680443bb202f68e1626cb94fe2b5389c2370f36ddb329a41b9eedf1', '[\"*\"]', NULL, '2023-02-22 12:16:02', '2023-02-22 12:16:02'),
(33, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', 'a6df48fc324a158f60e36e0b1cf2c9c9b58adc9254567148c0fc2ae13e4f49bc', '[\"*\"]', NULL, '2023-02-22 12:43:02', '2023-02-22 12:43:02'),
(34, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', '6e6d12daace1b6d6f96a7ed377e94a318bc3e676023350a1b35b604bc8e80caf', '[\"*\"]', NULL, '2023-02-23 13:17:35', '2023-02-23 13:17:35'),
(35, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', 'c348a1516eb253b565fcfeb077361aba959cdf64d3685392e1fc7a9c7e52dff2', '[\"*\"]', '2023-02-24 16:54:25', '2023-02-24 16:52:57', '2023-02-24 16:54:25'),
(36, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', '2aa8c8e1f5760d2000b2b00cdbeeb82496cacc946a4a4363be70da1423a57d81', '[\"*\"]', '2023-02-24 17:08:36', '2023-02-24 16:55:55', '2023-02-24 17:08:36'),
(37, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', '7ab3e24bf58b720d23dce2391b31ffd2f7f6bbd54a89d9e842bb7d2672db53da', '[\"*\"]', '2023-02-24 19:04:17', '2023-02-24 17:09:04', '2023-02-24 19:04:17'),
(38, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', 'fc4fd6672616c43f00dd0d8dc1df31de4cd0b0c911d28c6be261b4815b01e15a', '[\"*\"]', '2023-02-24 18:34:49', '2023-02-24 18:34:20', '2023-02-24 18:34:49'),
(39, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', '656892f97d925565546035ce0b720c835f3960bfae34b2511f744c6bd48f497c', '[\"*\"]', NULL, '2023-02-24 18:45:46', '2023-02-24 18:45:46'),
(40, 'App\\Models\\New_User', 4, 'rajat@gmail.com', '6b4f0c7ee89cf838b13e60244a400069f0bcaca6bbc3f7871b0054fcd291dd1e', '[\"*\"]', NULL, '2023-02-24 18:46:00', '2023-02-24 18:46:00'),
(41, 'App\\Models\\New_User', 6, 'ashu@gmail.com', '7304cee78c03422963a6de462934d9c9e4a2240272f8f87bbad7909e5b355019', '[\"*\"]', NULL, '2023-02-24 18:49:32', '2023-02-24 18:49:32'),
(42, 'App\\Models\\New_User', 6, 'ashu@gmail.com', '131297c08e574f5e18400829e9162e7c798fc17a98a0c82eed082c819a159b66', '[\"*\"]', '2023-02-24 18:50:18', '2023-02-24 18:50:17', '2023-02-24 18:50:18'),
(43, 'App\\Models\\New_User', 7, 'jay@gmail.com', 'fb9bd6f15d7336dbfe418fb512b59cedf119149a21c7cd03e8ff4f8ea84669a7', '[\"*\"]', NULL, '2023-02-24 19:08:18', '2023-02-24 19:08:18'),
(44, 'App\\Models\\New_User', 8, 'jphn@gmail.com', '6bd8ea4b005ec5cae4cc3b3c61d202a493937a207d22f368a6085f6e8ef1882d', '[\"*\"]', NULL, '2023-02-28 10:59:05', '2023-02-28 10:59:05'),
(45, 'App\\Models\\New_User', 6, 'ashu@gmail.com', 'fa521be26d04acfdba92125d09b3804d5d929a759e141f35e62772de0e65f0f7', '[\"*\"]', NULL, '2023-02-28 11:04:19', '2023-02-28 11:04:19'),
(46, 'App\\Models\\New_User', 6, 'ashu@gmail.com', '84db7fd96e4179657e04120afcc8fdb8845a112c063bbc2f6304003f0093d488', '[\"*\"]', '2023-02-28 11:04:44', '2023-02-28 11:04:43', '2023-02-28 11:04:44'),
(47, 'App\\Models\\New_User', 9, 'john@gmail.com', 'c1be03cb06a297a9f27f0c651f0b25fe1441506629854735586ba54da43f279f', '[\"*\"]', NULL, '2023-02-28 11:05:57', '2023-02-28 11:05:57'),
(48, 'App\\Models\\New_User', 9, 'john@gmail.com', '60e50c62b2118a062e900a7c612600e07d2f081ed8cc883346fbd7c28cb19438', '[\"*\"]', '2023-02-28 11:06:26', '2023-02-28 11:06:26', '2023-02-28 11:06:26'),
(49, 'App\\Models\\New_User', 10, 'johnn@gmail.com', '297293d3b2ce161e675d597ff48637f74711373011c8fb21fb50072b3672f3bf', '[\"*\"]', NULL, '2023-02-28 11:07:55', '2023-02-28 11:07:55'),
(50, 'App\\Models\\New_User', 10, 'johnn@gmail.com', 'cbf25ae84dc10887cd2fb021cd914cf958fabf645701e30d191cc556d5bc8163', '[\"*\"]', NULL, '2023-02-28 11:08:12', '2023-02-28 11:08:12'),
(51, 'App\\Models\\New_User', 10, 'johnn@gmail.com', '19d5fda35f92d7f6424dd96b296142b60f5616eddbafd7b8508ad24abe9b7eef', '[\"*\"]', '2023-02-28 11:41:34', '2023-02-28 11:08:37', '2023-02-28 11:41:34'),
(52, 'App\\Models\\New_User', 10, 'johnn@gmail.com', 'dee15e979a4a84ffb421b3a96735037f9843ab1d9d4af99f415bd8f8546a5f01', '[\"*\"]', NULL, '2023-02-28 11:11:25', '2023-02-28 11:11:25'),
(53, 'App\\Models\\New_User', 11, 'johnnn@gmail.com', '0cb51cdf6ece619fd37f4138fc5ae8538756a0ef357948c36f454fa2b96bffa0', '[\"*\"]', NULL, '2023-02-28 11:21:10', '2023-02-28 11:21:10'),
(54, 'App\\Models\\New_User', 12, 'johns@gmail.com', '0ae8c703fafbbe771cc9885d56cb1ef40375c5df27358e31a72a646ae3213fd2', '[\"*\"]', NULL, '2023-02-28 11:43:34', '2023-02-28 11:43:34'),
(55, 'App\\Models\\New_User', 13, 'johndd@gmail.com', '89f213dce848c2f5cd58f49fd3f1c4b60de24a0b49c9711963ced6a6c610f7ca', '[\"*\"]', NULL, '2023-02-28 11:49:00', '2023-02-28 11:49:00'),
(56, 'App\\Models\\New_User', 10, 'johnn@gmail.com', '23bc2c6a0cc925ffbecf5a460579e4e408a716575e4bbc867c8d24fc015ee054', '[\"*\"]', NULL, '2023-02-28 11:55:53', '2023-02-28 11:55:53'),
(57, 'App\\Models\\New_User', 10, 'johnn@gmail.com', '80fe93304c25ef6f1fe86a7d61a1f2b82b31d654d3f4335e4b6efc02368750fc', '[\"*\"]', NULL, '2023-02-28 12:12:03', '2023-02-28 12:12:03'),
(58, 'App\\Models\\New_User', 10, 'johnn@gmail.com', '92caf615711fdbc5c11e1c715fdaf6e4bc5aae356927ac448880b31b187a8d0c', '[\"*\"]', '2023-02-28 12:15:25', '2023-02-28 12:15:24', '2023-02-28 12:15:25'),
(59, 'App\\Models\\New_User', 10, 'johnn@gmail.com', 'fa3ac25350dc64876cf21043a1a30e51517e91cba52121b1417dd4786b9e2e7e', '[\"*\"]', '2023-02-28 12:28:15', '2023-02-28 12:16:50', '2023-02-28 12:28:15'),
(60, 'App\\Models\\New_User', 14, 'Johnny@gmail.com', '7014c951de5a6466cbca96c821bff8b1ae6d5655bb463db5965599167fe9ea5e', '[\"*\"]', NULL, '2023-02-28 12:25:48', '2023-02-28 12:25:48'),
(61, 'App\\Models\\New_User', 15, 'Johnnys@gmail.com', 'c5ef0187e7be8d623aa5f359577362bb64a40cc9a29ef122d23745a4dda5ea14', '[\"*\"]', NULL, '2023-02-28 12:27:45', '2023-02-28 12:27:45'),
(62, 'App\\Models\\New_User', 16, 'a@gmail.com', 'e80cd5a8e3461c7c70b672835c1c05746c431e2cd655e1dee28d950390c69196', '[\"*\"]', NULL, '2023-02-28 12:29:07', '2023-02-28 12:29:07'),
(63, 'App\\Models\\New_User', 17, 'b@gmail.com', 'f2211cde1d57fdaba2259878ab031e94ed6400c0bb43aadc97e1d0666c4c0eff', '[\"*\"]', NULL, '2023-02-28 12:36:30', '2023-02-28 12:36:30'),
(64, 'App\\Models\\New_User', 18, 'tom@gmail.com', 'c3cbf072d82e7cb271f3e73979a5d1199ecefb5f1246fab6c4f9f9ac2b48805d', '[\"*\"]', '2023-02-28 12:51:55', '2023-02-28 12:50:59', '2023-02-28 12:51:55'),
(65, 'App\\Models\\New_User', 19, 'tommy@gmail.com', '34d2572c0d676d89b4672fdc67df8f3106755027ab2f8c4c0f501f4926389239', '[\"*\"]', '2023-02-28 12:55:57', '2023-02-28 12:52:30', '2023-02-28 12:55:57'),
(66, 'App\\Models\\New_User', 20, 'guest@gmail.com', '798b7fbcfbc49a6b212378fa829e16293c905fa45a5a713d36278ca311da640d', '[\"*\"]', NULL, '2023-02-28 12:55:04', '2023-02-28 12:55:04'),
(67, 'App\\Models\\New_User', 21, 'first@gmail.com', '0e42523344772d3098581cdbc7ca49b1a024129303cb1b209b157fee27819519', '[\"*\"]', NULL, '2023-02-28 12:55:32', '2023-02-28 12:55:32'),
(68, 'App\\Models\\New_User', 22, 'aks@gmail.com', 'fb7f0eb958187ada2f03b6ef66cb8e5626b839f9f19c9dcf142cd7609b0d8482', '[\"*\"]', NULL, '2023-02-28 12:58:12', '2023-02-28 12:58:12'),
(69, 'App\\Models\\New_User', 23, 'aksss@gmail.com', 'ca7036135b84ebf402610527c72b77c27ff2a425b89829c77877c0425fed45be', '[\"*\"]', '2023-02-28 13:00:15', '2023-02-28 12:58:54', '2023-02-28 13:00:15'),
(70, 'App\\Models\\New_User', 24, 'akssssss@gmail.com', '3ab227130e7fe5f3986146d534156b6c652cbf526ac968703c957d5f05436db8', '[\"*\"]', NULL, '2023-02-28 12:59:12', '2023-02-28 12:59:12'),
(71, 'App\\Models\\New_User', 25, 'test45@gmail.com', '2a42ea75de78dd55e02128fe3f353ca2c50e043f04a8c2ba068b02fb0492d8b5', '[\"*\"]', NULL, '2023-02-28 13:02:30', '2023-02-28 13:02:30'),
(72, 'App\\Models\\New_User', 26, 'yu@gmail.com', '5b2ee9da31a99ffb00606ce961da55e8049bea3f2cca53d093f4d31a87bd33e0', '[\"*\"]', '2023-02-28 13:05:26', '2023-02-28 13:05:07', '2023-02-28 13:05:26'),
(73, 'App\\Models\\New_User', 9, 'john@gmail.com', '80dfe82a6a880dd051731d4bbc76552d7f1721cfa0b64311998aeecb6cda05b5', '[\"*\"]', NULL, '2023-02-28 13:05:48', '2023-02-28 13:05:48'),
(74, 'App\\Models\\New_User', 9, 'john@gmail.com', '8afb3dd4f062ed503f4bdd0f6feb0936a157fc3b84d4d4dd9fed5cc9acc4afe6', '[\"*\"]', '2023-02-28 13:07:57', '2023-02-28 13:07:55', '2023-02-28 13:07:57'),
(75, 'App\\Models\\New_User', 27, 'bcc@gmail.com', 'f32c4d6ce62572f12c0bd3af362b88951cc9c21fd35b21e5975b723bbe82034b', '[\"*\"]', '2023-03-01 13:19:07', '2023-02-28 13:08:31', '2023-03-01 13:19:07'),
(76, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', '8496a3b89d73f3ab6e3b342d4538a8ab6c7b8330d9fdc1dd817b90ce85d1ef90', '[\"*\"]', '2023-03-02 18:40:33', '2023-02-28 13:11:34', '2023-03-02 18:40:33'),
(77, 'App\\Models\\New_User', 1, 'ashutoshchauhan@gmail.com', 'eda832119a9c704eaf36f36ad724f91377b43dc9696a986437777393a7112ecc', '[\"*\"]', NULL, '2023-02-28 13:11:36', '2023-02-28 13:11:36'),
(78, 'App\\Models\\New_User', 28, 'swarajchangole504@gmail.com', '648da4bff5e42721f6ebce4a31a4a4046a7c91bdaa96586a6e1e944aea253684', '[\"*\"]', '2023-02-28 13:58:45', '2023-02-28 13:58:44', '2023-02-28 13:58:45'),
(79, 'App\\Models\\New_User', 28, 'swarajchangole504@gmail.com', 'ec453b462ccc694aee0fe9ecc3be056afbb4e25473949d52dffef3d88f90377b', '[\"*\"]', '2023-03-03 18:31:50', '2023-02-28 13:59:33', '2023-03-03 18:31:50'),
(80, 'App\\Models\\New_User', 6, 'ashu@gmail.com', '0b8dc373ed52efbf0a945dcb9efe02ea88fb7efd8fd27733cceefbcb2ec4431c', '[\"*\"]', '2023-03-10 17:33:12', '2023-02-28 15:08:31', '2023-03-10 17:33:12'),
(81, 'App\\Models\\New_User', 6, 'ashu@gmail.com', '2a1e5c42f3452de74ebae2c79f7ab67e37c71d2621ff09042194be06b3233752', '[\"*\"]', '2023-03-02 16:42:24', '2023-03-01 16:45:28', '2023-03-02 16:42:24'),
(82, 'App\\Models\\New_User', 6, 'ashu@gmail.com', '965bd94eaf57fbf81892f3ba0fee8c14b5dd36d21ce68869b952987c80df96d8', '[\"*\"]', '2023-03-01 17:19:12', '2023-03-01 17:13:13', '2023-03-01 17:19:12'),
(83, 'App\\Models\\New_User', 6, 'ashu@gmail.com', 'c24cfa9a0adff33630dbd71e0770e74286b218a919c34d29cb31e8a8e3c6a43e', '[\"*\"]', '2023-03-02 01:13:48', '2023-03-02 01:12:32', '2023-03-02 01:13:48'),
(84, 'App\\Models\\New_User', 6, 'ashu@gmail.com', '0ecb3a9be54ee65dd45368909345bb1d9186b3174b20f6e689663d7ec4ebfd94', '[\"*\"]', '2023-03-02 01:16:52', '2023-03-02 01:16:02', '2023-03-02 01:16:52'),
(85, 'App\\Models\\New_User', 29, 'utsavratan@gmail.com', '5af4063dfdfbf3efd64b2a4a57e3ffc27dd7d537931896dd7fdfcc0a518515c5', '[\"*\"]', '2023-03-02 02:35:30', '2023-03-02 02:31:40', '2023-03-02 02:35:30'),
(86, 'App\\Models\\New_User', 6, 'ashu@gmail.com', '901e0dccbb19699e81144d41dc321f67e2b65533117ea9eb0ff4702323f6a47c', '[\"*\"]', '2023-03-02 18:11:28', '2023-03-02 16:59:54', '2023-03-02 18:11:28'),
(87, 'App\\Models\\New_User', 6, 'ashu@gmail.com', 'c8bbde54a2d61200f2dd08d554408dca53d58d5278d622cea01af863a55c4d77', '[\"*\"]', '2023-03-03 20:16:14', '2023-03-02 18:24:05', '2023-03-03 20:16:14'),
(88, 'App\\Models\\New_User', 6, 'ashu@gmail.com', '69ca7df30027e3892310b21ee9c8c6bd720948c8a1985303e3da07fbf6f785c9', '[\"*\"]', '2023-03-10 02:35:43', '2023-03-02 18:26:20', '2023-03-10 02:35:43'),
(89, 'App\\Models\\New_User', 28, 'swarajchangole504@gmail.com', 'e9af9a0216c113fc82037c1e2ea5757baa715d92e3f37d4bc835a9b84f738410', '[\"*\"]', '2023-03-03 18:32:09', '2023-03-03 18:32:09', '2023-03-03 18:32:09'),
(90, 'App\\Models\\New_User', 28, 'swarajchangole504@gmail.com', '6161565cc54c9f30d89689162acfb9267d5cf201a43ed6904318041458951866', '[\"*\"]', NULL, '2023-03-03 18:32:09', '2023-03-03 18:32:09'),
(91, 'App\\Models\\New_User', 28, 'swarajchangole504@gmail.com', '74923f68ec73f5223ef35965e38869ff2344e3cff986bec6d9d243e0588548d4', '[\"*\"]', '2023-03-03 18:32:31', '2023-03-03 18:32:31', '2023-03-03 18:32:31'),
(92, 'App\\Models\\New_User', 28, 'swarajchangole504@gmail.com', 'ebf13b5c1a51f98c79b7048901ab56b56612dc1c63f2eb137d1f0db580462a95', '[\"*\"]', NULL, '2023-03-03 18:32:32', '2023-03-03 18:32:32'),
(93, 'App\\Models\\New_User', 30, 'shivam@gmail.com', '9dcd5b2766f23d2025038be1084231fd458076a21d3b154a2469a0dcc4e58eb3', '[\"*\"]', '2023-03-14 21:20:03', '2023-03-03 19:35:25', '2023-03-14 21:20:03'),
(94, 'App\\Models\\New_User', 30, 'shivam@gmail.com', 'ce22f8f0cb6b6d913abdecc61c12f828be104fb4e93be4cd82c002b235660adc', '[\"*\"]', '2023-03-03 19:41:46', '2023-03-03 19:41:35', '2023-03-03 19:41:46'),
(95, 'App\\Models\\New_User', 30, 'shivam@gmail.com', 'c9ff865d5dd9e2b987fcfb821fc6f4a5bd847e3b850a94551ac67c9c02bdad5c', '[\"*\"]', '2023-03-11 05:22:38', '2023-03-03 19:49:15', '2023-03-11 05:22:38'),
(96, 'App\\Models\\New_User', 2, 'ashutoshchauha1n@gmail.com', '70bb1e656129a0b8f2774cd75b79823d888d05105d5dd5e1fd151e78b51e9445', '[\"*\"]', '2023-05-10 06:55:23', '2023-03-03 19:53:05', '2023-05-10 06:55:23'),
(97, 'App\\Models\\New_User', 6, 'ashu@gmail.com', '2245509f28095b4f72c2532d298a3a1e54d6d1445a0b0651d2ebf15834d7c243', '[\"*\"]', '2023-03-03 20:26:56', '2023-03-03 19:57:34', '2023-03-03 20:26:56'),
(98, 'App\\Models\\New_User', 31, 'swarajchangole504@gmail.com', 'bd4eec16e3de2fecae334d68643a5cc395da48723fb3d7e294b215fff07fe82a', '[\"*\"]', '2023-03-03 21:05:43', '2023-03-03 20:10:06', '2023-03-03 21:05:43'),
(99, 'App\\Models\\New_User', 9, 'john@gmail.com', '7e39022197a6e7e84df7d56e69d65f0650ae0b42f40537e3ad6fafe0d14a0571', '[\"*\"]', '2023-03-03 20:16:53', '2023-03-03 20:16:50', '2023-03-03 20:16:53'),
(100, 'App\\Models\\New_User', 16, 'a@gmail.com', 'a495e46462d93350017803294c768ca0da4cf7777d2c92ab8ff3faac97dbb519', '[\"*\"]', '2023-03-03 20:17:30', '2023-03-03 20:17:27', '2023-03-03 20:17:30'),
(101, 'App\\Models\\New_User', 32, 'book@gmail.com', '95dd47a0dd44d3fc7c6b3f72cd526fb5c14ccdf7308b06904fd5fe37b54da45b', '[\"*\"]', '2023-03-03 20:29:57', '2023-03-03 20:18:49', '2023-03-03 20:29:57'),
(102, 'App\\Models\\New_User', 33, 'bookm@gmail.com', 'f84b777cd487d07311b8034e91bc320139e82691f925698d3fd06a10a9ebbf55', '[\"*\"]', '2023-03-06 17:18:10', '2023-03-03 20:30:33', '2023-03-06 17:18:10'),
(103, 'App\\Models\\New_User', 6, 'ashu@gmail.com', '6dcdad2c0e07c507e687a0fc33f60d0dbc7dfc83efb4cdc02d955d30ba70b80a', '[\"*\"]', '2023-03-06 22:09:55', '2023-03-03 20:34:17', '2023-03-06 22:09:55'),
(104, 'App\\Models\\New_User', 31, 'swarajchangole504@gmail.com', 'ee51c4f4c57f3abb9ac854b43e8c53c707d9cd841459db74a5b46726cf412871', '[\"*\"]', '2023-03-28 01:08:31', '2023-03-03 21:06:04', '2023-03-28 01:08:31'),
(105, 'App\\Models\\New_User', 29, 'utsavratan@gmail.com', '3ad9cb90b9d8854c41e5575212f44bd422ead30de596565197d7643351664b89', '[\"*\"]', '2023-03-03 22:22:00', '2023-03-03 21:55:21', '2023-03-03 22:22:00'),
(106, 'App\\Models\\New_User', 34, 'sahil@gmail.com', '15e89e81eea79ec916413a14408e75f7c36ab03b177ed25e57d3cbf52ab0ed25', '[\"*\"]', '2023-03-04 03:15:58', '2023-03-04 03:15:57', '2023-03-04 03:15:58'),
(107, 'App\\Models\\New_User', 6, 'ashu@gmail.com', '553efa76f734166e3069d379836df3186cd05ae6297e725cbbb79eb0135cac1b', '[\"*\"]', '2023-03-06 16:16:04', '2023-03-06 16:15:47', '2023-03-06 16:16:04'),
(108, 'App\\Models\\New_User', 6, 'ashu@gmail.com', '8a37a523bc67314b86386c32f2e42cd90e58d2701a97e265602c9ab8c144558c', '[\"*\"]', '2023-03-06 17:21:34', '2023-03-06 16:34:21', '2023-03-06 17:21:34'),
(109, 'App\\Models\\New_User', 6, 'ashu@gmail.com', 'c59f688b8e9314ca98b589fcdf826257ebd90fecd230193ea2003eb572e4bb5a', '[\"*\"]', '2023-04-15 19:55:07', '2023-03-06 17:23:59', '2023-04-15 19:55:07'),
(110, 'App\\Models\\New_User', 6, 'ashu@gmail.com', 'f600c73329fdcd9baa01479375ed8ad2ce7825120c4f6669c2399b3efe560411', '[\"*\"]', '2024-01-30 00:20:02', '2023-03-06 17:44:36', '2024-01-30 00:20:02'),
(111, 'App\\Models\\New_User', 35, 'ashutoshchauhan@gmail.com', '7651a61fdcd7ee42c53934196455878cdefe8b2368ada8d35e30f02685b4b348', '[\"*\"]', '2023-03-06 21:58:57', '2023-03-06 19:34:47', '2023-03-06 21:58:57'),
(112, 'App\\Models\\New_User', 6, 'ashu@gmail.com', '8292fbab234b281980461a358eefa4cc2320bd3318f4781a4071a57ba1c1e694', '[\"*\"]', '2023-03-10 19:52:02', '2023-03-07 22:26:00', '2023-03-10 19:52:02'),
(113, 'App\\Models\\New_User', 6, 'ashu@gmail.com', '044916577a6321e69cdc2e9d0e2040f7a0c42d615d5f3f1519e793af9a6b6284', '[\"*\"]', NULL, '2023-03-07 22:26:04', '2023-03-07 22:26:04'),
(114, 'App\\Models\\New_User', 6, 'ashu@gmail.com', 'da3c306e15c1618bd985e9273b5581697080f4244a4af5f735d69b9c1cf59e28', '[\"*\"]', '2023-03-10 16:21:47', '2023-03-10 02:54:10', '2023-03-10 16:21:47'),
(115, 'App\\Models\\New_User', 39, 'shoeadmin@admin.com', 'fd2a7fd5d91081afcb7029b50b9e1547b515446b2a0daa36cc3a2308747518e5', '[\"*\"]', '2023-03-10 03:03:50', '2023-03-10 03:00:09', '2023-03-10 03:03:50'),
(116, 'App\\Models\\New_User', 40, 'utsavrattan@gmail.com', '38709a626d322235c21c06c52ef8dd1134af93c1aa63bb1828d2f85734a68147', '[\"*\"]', '2023-04-19 19:16:52', '2023-03-10 17:58:03', '2023-04-19 19:16:52'),
(117, 'App\\Models\\New_User', 41, 'j@gmail.com', '4d8425c8ba20816faa1f54757d70d12542b4f8646436a7d1bd05baa408bb7919', '[\"*\"]', '2023-03-15 04:49:45', '2023-03-10 19:53:07', '2023-03-15 04:49:45'),
(118, 'App\\Models\\New_User', 42, 'h@gmail.com', '97128b3f16f8b09bc53409b917d7be722016690f91bae583b6093ed7bd4993c6', '[\"*\"]', '2023-03-11 02:09:00', '2023-03-11 02:00:47', '2023-03-11 02:09:00'),
(119, 'App\\Models\\New_User', 6, 'ashu@gmail.com', '5106b41e3f8033c94c9358d5e730b426bb849a82c9125569506bbbd7437582a7', '[\"*\"]', '2023-03-11 19:19:59', '2023-03-11 02:13:53', '2023-03-11 19:19:59'),
(120, 'App\\Models\\New_User', 43, 'akavinashk07@gmail.com', 'f5a59ec7b79550f935611b83a41efc0f0a31c0da9a54be55f6dc8c6660fd6866', '[\"*\"]', '2023-03-13 20:06:14', '2023-03-13 20:02:43', '2023-03-13 20:06:14'),
(121, 'App\\Models\\New_User', 2, 'ashutoshchauha1n@gmail.com', 'c3fb18fb313df37f3d9087361c831a44bf2226b9a70c4da6c25fca7d00703e5a', '[\"*\"]', '2023-04-29 22:52:28', '2023-03-14 05:02:00', '2023-04-29 22:52:28'),
(122, 'App\\Models\\New_User', 6, 'ashu@gmail.com', '4ece9012c1685674bb816c0d6f59eb3dc97f53706381a0566cc37f541daab7d6', '[\"*\"]', '2023-03-14 20:36:19', '2023-03-14 17:42:04', '2023-03-14 20:36:19'),
(123, 'App\\Models\\New_User', 44, 'r@gmail.com', '5404bd0989f6add9a16ce10219e0d851a758eccabd12b3cc4503857c83a060ba', '[\"*\"]', '2023-03-15 04:54:09', '2023-03-15 04:51:07', '2023-03-15 04:54:09'),
(124, 'App\\Models\\New_User', 45, 'i@gmail.com', 'c318cb8923f313a4b56e8340460ed2f1ceb20cfa9d397ee9b40ab22ac7368796', '[\"*\"]', '2023-04-11 16:55:08', '2023-03-15 04:54:48', '2023-04-11 16:55:08'),
(125, 'App\\Models\\New_User', 46, 'swarajporflow@gmail.com', '67fdd42764aa3e998945d88c5b0e5140a761c0053250ae479141eb909c5f1cf4', '[\"*\"]', '2023-03-28 01:19:06', '2023-03-28 01:11:46', '2023-03-28 01:19:06'),
(126, 'App\\Models\\New_User', 46, 'swarajporflow@gmail.com', 'c57879ea31129754efbeec758d346c3c0c0c7f9299921a58e7ca1bc097563335', '[\"*\"]', '2023-03-28 01:20:57', '2023-03-28 01:19:43', '2023-03-28 01:20:57'),
(127, 'App\\Models\\New_User', 46, 'swarajporflow@gmail.com', '46d2a2754bd9b54a71a6347fffbdb19dac8b601b86973a19d05120c05f77e618', '[\"*\"]', NULL, '2023-03-28 01:19:43', '2023-03-28 01:19:43'),
(128, 'App\\Models\\New_User', 46, 'swarajporflow@gmail.com', '474d9ff3e6de170d5fcb57dd60c19b38a11d34187f1343c91b915abc44d9bf27', '[\"*\"]', NULL, '2023-03-28 01:19:44', '2023-03-28 01:19:44'),
(129, 'App\\Models\\New_User', 46, 'swarajporflow@gmail.com', '598821b43ecee1879361cbf32010a451d15696b64ac70248d8f0e63309d0e94c', '[\"*\"]', '2023-03-28 17:19:22', '2023-03-28 01:22:48', '2023-03-28 17:19:22'),
(130, 'App\\Models\\New_User', 46, 'swarajporflow@gmail.com', '2c1173c0e29db49280c6bab02691460ad9ddbf421a634607b46ed46651036362', '[\"*\"]', NULL, '2023-03-28 01:22:49', '2023-03-28 01:22:49'),
(131, 'App\\Models\\New_User', 31, 'swarajchangole504@gmail.com', '9923e0bfdd408004206c6578058fc930bba05c556bf3cabb7885c41252fd279d', '[\"*\"]', '2023-03-28 17:58:12', '2023-03-28 17:21:27', '2023-03-28 17:58:12'),
(132, 'App\\Models\\New_User', 6, 'ashu@gmail.com', '4142534b1642d4a4164871a3a383a957d69caedaf4408220a52bd2e3af8038f1', '[\"*\"]', NULL, '2023-04-11 16:59:45', '2023-04-11 16:59:45'),
(133, 'App\\Models\\New_User', 6, 'ashu@gmail.com', '810f1e7271ff4cbbf682bc2e2356670421af36ad18239d1a0b9d7a3e5fe04478', '[\"*\"]', NULL, '2023-04-11 17:01:10', '2023-04-11 17:01:10'),
(134, 'App\\Models\\New_User', 47, 'Asks@gmail.com', '024f00cf2ace5afcc822391a8c74824eab7170160f79b5cc9eab6b94c5b0f645', '[\"*\"]', NULL, '2023-04-11 17:08:06', '2023-04-11 17:08:06'),
(135, 'App\\Models\\New_User', 48, 'aaa@gmail.com', 'b756d6a86e49b5c0868b6eef6730c93d8368bc5357f2ef22945e9495673456fa', '[\"*\"]', NULL, '2023-04-11 17:16:49', '2023-04-11 17:16:49'),
(136, 'App\\Models\\New_User', 49, 'ashutoshchauha2n@gmail.com', 'a0de116514c91d9ce1a2b439a59378789d76c54641a132b9f7c95ef3b4d93cf7', '[\"*\"]', NULL, '2023-04-11 17:33:29', '2023-04-11 17:33:29'),
(137, 'App\\Models\\New_User', 6, 'ashu@gmail.com', '6d4ee601a595023377338a0ceb3671452706dce9c734559af2c9cc313a55d0ed', '[\"*\"]', '2023-05-15 17:19:39', '2023-04-11 17:50:52', '2023-05-15 17:19:39'),
(138, 'App\\Models\\New_User', 6, 'ashu@gmail.com', 'bc377f483b67980276fb9362bbee28e15d3fc5863b34012583960e61cad8e88f', '[\"*\"]', '2023-04-18 23:09:50', '2023-04-11 17:51:25', '2023-04-18 23:09:50'),
(139, 'App\\Models\\New_User', 50, 'aaaaa@gmail.com', '8816bf6dfa167f71917475955dca69d4eea4abab6d32c8b525f2f71c54ab761e', '[\"*\"]', NULL, '2023-04-18 16:22:54', '2023-04-18 16:22:54'),
(140, 'App\\Models\\New_User', 4, 'rajat@gmail.com', '38d4a083619f01aaf3f658b12372f6fa72df18d4a970a2093ff5df443f0cff38', '[\"*\"]', NULL, '2023-04-18 20:56:31', '2023-04-18 20:56:31'),
(141, 'App\\Models\\New_User', 4, 'rajat@gmail.com', '873a1016e29de8fbef6b63513eb0a1ed15f5540b8d4b32da93c6a2144cb45e22', '[\"*\"]', NULL, '2023-04-18 23:11:55', '2023-04-18 23:11:55'),
(142, 'App\\Models\\New_User', 51, 'xyx@gmail.com', 'c37278eb2d6bc90f2196e1daa74adc011162b00b376a325aef5c0e5e44932f53', '[\"*\"]', '2023-05-05 17:26:29', '2023-04-18 23:12:54', '2023-05-05 17:26:29'),
(143, 'App\\Models\\New_User', 4, 'rajat@gmail.com', '9796e28f30a1b6d51bbdd57c37bfab9a71c912612f59c6a80fc36e22d6bbd120', '[\"*\"]', '2023-04-18 23:44:50', '2023-04-18 23:42:44', '2023-04-18 23:44:50'),
(144, 'App\\Models\\New_User', 52, 'shivamc.2002@gmail.com', 'b999dcb85c131612f841a139efe5c892f47034890da2ec7b8eb26b4a59f55b22', '[\"*\"]', '2023-04-25 19:53:25', '2023-04-19 00:09:42', '2023-04-25 19:53:25'),
(145, 'App\\Models\\New_User', 31, 'swarajchangole504@gmail.com', '3e3145237ac8fc35815b4c2213b46f6f18519c3873c74a615c6031b3ebd09331', '[\"*\"]', '2023-04-19 01:23:48', '2023-04-19 01:18:46', '2023-04-19 01:23:48'),
(146, 'App\\Models\\New_User', 31, 'swarajchangole504@gmail.com', '434c8747c92c23001239d177762abd68802c954b30b1373a232c1b78e2586553', '[\"*\"]', NULL, '2023-04-19 01:18:47', '2023-04-19 01:18:47'),
(147, 'App\\Models\\New_User', 53, 'swarajchangole504@gmail.com', '5e4345f332c174eb9ce63d18ff008b3ed8c8d26039d0d5ecf71bfedccb773147', '[\"*\"]', '2023-04-19 19:03:17', '2023-04-19 01:30:36', '2023-04-19 19:03:17'),
(148, 'App\\Models\\New_User', 53, 'swarajchangole504@gmail.com', '853bbde06daa8402038c0ee84163c9db30cf6a4ae27938f8c9c27bf8bc6aa6df', '[\"*\"]', '2023-04-19 19:05:06', '2023-04-19 19:04:15', '2023-04-19 19:05:06'),
(149, 'App\\Models\\New_User', 53, 'swarajchangole504@gmail.com', 'db08c09a42a38f9496b9dfb2d5d457cfe6dba3b223b2afe372d684792a92d6bb', '[\"*\"]', NULL, '2023-04-19 19:04:16', '2023-04-19 19:04:16'),
(150, 'App\\Models\\New_User', 54, 'asfiffkdj@gmail', '1b28765b2884c37d67efb6eb4db0aa5c98d1e36bd6fc80ac0d25a6205a871f49', '[\"*\"]', '2023-04-19 19:09:22', '2023-04-19 19:09:21', '2023-04-19 19:09:22'),
(151, 'App\\Models\\New_User', 4, 'rajat@gmail.com', '376481db507824c3919e133f43b5fade12cb0a80f8e378832efd5606386fa014', '[\"*\"]', NULL, '2023-04-25 00:49:32', '2023-04-25 00:49:32'),
(152, 'App\\Models\\New_User', 55, 'bot@gmail.com', '3ad90137060d5596bd93aecb90ae7e4ca2281cb855cef2256c35340486cd66ea', '[\"*\"]', '2023-04-25 19:07:25', '2023-04-25 19:07:24', '2023-04-25 19:07:25'),
(153, 'App\\Models\\New_User', 55, 'bot@gmail.com', 'ade4364f3ef54ba73b3a311d22286887224fa1859f1bd366a03f4d7a0ea0800e', '[\"*\"]', '2023-04-25 19:11:22', '2023-04-25 19:09:57', '2023-04-25 19:11:22'),
(154, 'App\\Models\\New_User', 55, 'bot@gmail.com', '1d5ef9888e9e4b8776faf1440d1f5f627f97287d1582006cb14609cd7d2ee27a', '[\"*\"]', NULL, '2023-04-25 19:10:39', '2023-04-25 19:10:39'),
(155, 'App\\Models\\New_User', 56, 'yes@gmail.com', 'f8810a4fc0b457c286d2ba7c530e68a501fe0f4be17ccd8e3aea4367a5d17499', '[\"*\"]', '2023-04-25 19:12:24', '2023-04-25 19:12:23', '2023-04-25 19:12:24'),
(156, 'App\\Models\\New_User', 55, 'bot@gmail.com', 'dac3035a228d52fd0f3550f75df341c4e306dfc00e1477acf86b688b54a4d3e1', '[\"*\"]', NULL, '2023-04-25 19:14:27', '2023-04-25 19:14:27'),
(157, 'App\\Models\\New_User', 55, 'bot@gmail.com', 'ae74640b9ca95e3ac565dffea4b40946be0ecc65543a69aaae0fd5a63711d886', '[\"*\"]', '2023-04-25 19:26:46', '2023-04-25 19:21:46', '2023-04-25 19:26:46'),
(158, 'App\\Models\\New_User', 55, 'bot@gmail.com', '747ab806ce63e672d8aa4a06a8431522d3e559ab08fdcd126087ab2b2b840b20', '[\"*\"]', '2023-04-29 04:50:09', '2023-04-25 19:30:27', '2023-04-29 04:50:09'),
(159, 'App\\Models\\New_User', 52, 'shivamc.2002@gmail.com', '549e025e5333566b77fc28bc2ce7daf4ca0e968e07252784bc8199393f5c21ab', '[\"*\"]', '2023-04-25 20:06:08', '2023-04-25 20:05:53', '2023-04-25 20:06:08'),
(160, 'App\\Models\\New_User', 4, 'rajat@gmail.com', '86cd156f3bcc40cb3fbb2a09739ff9858ad98696daf45d6e5a6a3086f807052b', '[\"*\"]', NULL, '2023-05-04 17:45:27', '2023-05-04 17:45:27'),
(161, 'App\\Models\\New_User', 4, 'rajat@gmail.com', '8afa4df053784f35691233b6efe38e9d88391ac1579fe6d6b3bc8b4e995f1975', '[\"*\"]', NULL, '2023-05-05 05:50:09', '2023-05-05 05:50:09');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `rc_id` int(11) DEFAULT NULL,
  `categoryId` varchar(20) DEFAULT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(100) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `available_quantity` int(11) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `rc_id`, `categoryId`, `productName`, `price`, `description`, `available_quantity`, `discount`, `created_at`, `updated_at`) VALUES
(46, 3, '1', '0T5Toa4Axo', '675', '5iy3T2Hy06', 384, NULL, '2023-04-21 00:11:25', '2023-04-20 12:28:13'),
(47, 3, '2', 'Product One', '145', 'No Images only one color and six sizes with respective quantities', 81, NULL, '2023-04-19 21:23:45', '2023-04-19 21:23:45'),
(48, 3, '2', 'Riding T-shirts', '149', 'Available in 2 colors', 402, NULL, '2023-04-19 22:11:35', '2023-04-19 22:11:35'),
(49, 3, '4', 'test', '123', 'sdsad', 60, NULL, '2023-04-20 00:02:42', '2023-04-20 00:02:42'),
(50, 3, '2', 'product four', '499', 'this is the fourth product in our shop', 261, NULL, '2023-04-20 17:32:08', '2023-04-20 17:32:08'),
(51, 3, '4', 'product five', '499', 'this is the fifth product in our shop', 276, NULL, '2023-04-20 17:37:38', '2023-04-20 17:37:38'),
(52, 3, '2', 'njj5FJqQvZ', '150', 'sIDuFfMqnm', 276, NULL, '2023-04-20 17:37:59', '2023-04-20 17:37:59'),
(53, 3, '1', 'NQoswhMi0H', '150', 'AbgSima6H4', 276, NULL, '2023-04-20 17:39:25', '2023-04-20 17:39:25'),
(54, 3, '3', '2Xa7Dl5rGv', '150', '0efHEkuFEo', 276, NULL, '2023-04-20 17:40:31', '2023-04-20 17:40:31'),
(55, 3, '4', 'xKVeSYiQl4', '150', '7ASE3NsL54', 276, NULL, '2023-04-20 17:40:56', '2023-04-20 17:40:56'),
(56, 3, '2', 'vgyG9iJi6o', '470', 'MWUnfIpkVO', 91, NULL, '2023-04-20 17:41:50', '2023-04-20 17:41:50'),
(57, 3, '2', '6AGZt7M4jo', '370', 'WKN9ijjY1h', 102, NULL, '2023-04-20 17:42:15', '2023-04-20 17:42:15'),
(58, 3, '1', 'lIX3saGYR9', '299', 'Pms93TS0z9', 236, NULL, '2023-04-20 17:43:46', '2023-04-20 17:43:46'),
(59, 3, '2', 'www8eVb1mK', '7299', 'a0ACNNzDX5', 799, NULL, '2023-04-20 17:44:13', '2023-04-20 17:44:13'),
(60, 3, '3', 'ufCakSaxcE', '7299', 'DUaTv7v3TS', 238, NULL, '2023-04-20 17:44:42', '2023-04-20 17:44:42'),
(61, 3, '4', 'KJMmUULbUt', '7299', 'TFg8ETq6rY', 267, NULL, '2023-04-20 17:45:25', '2023-04-20 17:45:25'),
(62, 3, '2', 'uqqyHvGHqE', '759', '87VVqb0tFV', 272, NULL, '2023-04-20 17:47:31', '2023-04-20 17:47:31'),
(63, 3, '2', 't71iJG5zao', '759', 'RF5U730Dcs', 683, NULL, '2023-04-20 17:48:49', '2023-04-20 17:48:49'),
(64, 3, '1', 'qnQyahxFJs', '854', 'ws0aZc8Nkb', 9106, NULL, '2023-04-20 17:49:36', '2023-04-20 17:49:36'),
(65, 3, '2', '1O0AJzPu2z', '675', 'RHztIcQkbd', 353, NULL, '2023-04-20 17:50:07', '2023-04-20 17:50:07'),
(66, 3, '4', '0b1YjNYjYU', '675', 'Mqey1T1Ppn', 224, NULL, '2023-04-20 17:50:49', '2023-04-20 17:50:49'),
(67, 3, '3', 'vwPoraCK1l', '675', 'TOroJ8hbLX', 295, NULL, '2023-04-20 17:51:25', '2023-04-20 17:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_filter`
--

CREATE TABLE `product_filter` (
  `id` int(11) NOT NULL,
  `productId` int(10) DEFAULT NULL,
  `filterId` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `productId` varchar(20) DEFAULT NULL,
  `color` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `productId`, `color`, `image`, `created_at`, `updated_at`) VALUES
(1, '47', 1, 'public/product_images/16780865300.jpg', '2023-04-19 09:19:00', NULL),
(2, '48', 6, 'public/product_images/red1.jpg', '2023-04-19 09:42:47', '2023-04-20 11:38:27'),
(3, '48', 6, 'public/product_images/red2.jpg', '2023-04-19 09:43:04', '2023-04-20 11:38:30'),
(4, '48', 6, 'public/product_images/red3.jpg', '2023-04-19 09:44:11', '2023-04-20 11:38:33'),
(5, '48', 7, 'public/product_images/black1.jpg', '2023-04-19 09:44:28', '2023-04-20 11:38:37'),
(6, '48', 7, 'public/product_images/black2.jpg', '2023-04-19 09:44:37', '2023-04-20 11:38:39'),
(7, '48', 7, 'public/product_images/black3.jpg', '2023-04-19 09:45:08', '2023-04-20 11:38:42'),
(8, '46', 8, 'public/product_images/ro1.jpg', '2023-04-20 12:17:34', '2023-04-21 00:46:07'),
(9, '46', 8, 'public/product_images/ro2.jpg', '2023-04-20 12:17:57', '2023-04-21 00:47:36'),
(10, '46', 6, 'public/product_images/yellow1.jpg', '2023-04-20 12:22:16', '2023-04-21 00:47:58'),
(11, '46', 6, 'public/product_images/yellow2.jpg', '2023-04-20 12:22:43', '2023-04-21 00:52:17'),
(12, '46', 7, 'public/product_images/toquoise1.webp', '2023-04-20 12:23:38', '2023-04-21 00:52:44'),
(13, '46', 7, 'public/product_images/toquoise2.webp', '2023-04-20 12:23:57', '2023-04-21 00:53:39'),
(14, '46', 3, 'public/product_images/green1.jpg', '2023-04-20 12:25:02', '2023-04-21 00:53:59'),
(15, '46', 3, 'public/product_images/green2.jpg', '2023-04-20 12:25:22', '2023-04-21 00:55:03');

-- --------------------------------------------------------

--
-- Table structure for table `product_size_quantity`
--

CREATE TABLE `product_size_quantity` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` varchar(20) NOT NULL,
  `size` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_size_quantity`
--

INSERT INTO `product_size_quantity` (`id`, `product_id`, `color`, `size`, `quantity`, `created_at`, `updated_at`) VALUES
(229, 47, '1', '1', 11, '2023-04-19 21:23:45', '2023-04-19 21:23:45'),
(230, 47, '1', '2', 12, '2023-04-19 21:23:45', '2023-04-19 21:23:45'),
(231, 47, '1', '3', 13, '2023-04-19 21:23:45', '2023-04-19 21:23:45'),
(232, 47, '1', '4', 14, '2023-04-19 21:23:45', '2023-04-19 21:23:45'),
(233, 47, '1', '5', 15, '2023-04-19 21:23:45', '2023-04-19 21:23:45'),
(234, 47, '1', '6', 16, '2023-04-19 21:23:45', '2023-04-19 21:23:45'),
(235, 48, '6', '1', 51, '2023-04-19 22:11:35', '2023-04-20 11:36:50'),
(236, 48, '6', '2', 52, '2023-04-19 22:11:35', '2023-04-20 11:36:50'),
(237, 48, '6', '3', 53, '2023-04-19 22:11:35', '2023-04-20 11:36:50'),
(238, 48, '6', '4', 54, '2023-04-19 22:11:35', '2023-04-20 11:36:50'),
(239, 48, '6', '5', 55, '2023-04-19 22:11:35', '2023-04-20 11:37:09'),
(240, 48, '6', '6', 56, '2023-04-19 22:11:35', '2023-04-20 11:36:50'),
(241, 48, '7', '1', 11, '2023-04-19 22:11:35', '2023-04-20 11:36:50'),
(242, 48, '7', '2', 12, '2023-04-19 22:11:35', '2023-04-20 11:36:50'),
(243, 48, '7', '3', 13, '2023-04-19 22:11:35', '2023-04-20 11:36:50'),
(244, 48, '7', '4', 14, '2023-04-19 22:11:35', '2023-04-20 11:36:50'),
(245, 48, '7', '5', 15, '2023-04-19 22:11:35', '2023-04-20 11:36:50'),
(246, 48, '7', '6', 16, '2023-04-19 22:11:35', '2023-04-20 11:36:50'),
(247, 49, '2', '1', 10, '2023-04-20 00:02:46', '2023-04-20 00:02:46'),
(248, 49, '2', '2', 10, '2023-04-20 00:02:47', '2023-04-20 00:02:47'),
(249, 49, '2', '3', 10, '2023-04-20 00:02:47', '2023-04-20 00:02:47'),
(250, 49, '2', '4', 10, '2023-04-20 00:02:48', '2023-04-20 00:02:48'),
(251, 49, '2', '5', 10, '2023-04-20 00:02:48', '2023-04-20 00:02:48'),
(252, 49, '2', '6', 10, '2023-04-20 00:02:49', '2023-04-20 00:02:49'),
(253, 50, '2', '1', 41, '2023-04-20 17:32:08', '2023-04-20 17:32:08'),
(254, 50, '2', '2', 42, '2023-04-20 17:32:08', '2023-04-20 17:32:08'),
(255, 50, '2', '3', 43, '2023-04-20 17:32:08', '2023-04-20 17:32:08'),
(256, 50, '2', '4', 44, '2023-04-20 17:32:08', '2023-04-20 17:32:08'),
(257, 50, '2', '5', 45, '2023-04-20 17:32:08', '2023-04-20 17:32:08'),
(258, 50, '2', '6', 46, '2023-04-20 17:32:08', '2023-04-20 17:32:08'),
(259, 51, '2', '1', 46, '2023-04-20 17:37:38', '2023-04-20 17:37:38'),
(260, 51, '2', '2', 46, '2023-04-20 17:37:38', '2023-04-20 17:37:38'),
(261, 51, '2', '3', 46, '2023-04-20 17:37:38', '2023-04-20 17:37:38'),
(262, 51, '2', '4', 46, '2023-04-20 17:37:38', '2023-04-20 17:37:38'),
(263, 51, '2', '5', 46, '2023-04-20 17:37:38', '2023-04-20 17:37:38'),
(264, 51, '2', '6', 46, '2023-04-20 17:37:38', '2023-04-20 17:37:38'),
(265, 52, '4', '1', 46, '2023-04-20 17:37:59', '2023-04-20 17:37:59'),
(266, 52, '4', '2', 46, '2023-04-20 17:37:59', '2023-04-20 17:37:59'),
(267, 52, '4', '3', 46, '2023-04-20 17:37:59', '2023-04-20 17:37:59'),
(268, 52, '4', '4', 46, '2023-04-20 17:37:59', '2023-04-20 17:37:59'),
(269, 52, '4', '5', 46, '2023-04-20 17:37:59', '2023-04-20 17:37:59'),
(270, 52, '4', '6', 46, '2023-04-20 17:37:59', '2023-04-20 17:37:59'),
(271, 53, '3', '1', 46, '2023-04-20 17:39:25', '2023-04-20 17:39:25'),
(272, 53, '3', '2', 46, '2023-04-20 17:39:25', '2023-04-20 17:39:25'),
(273, 53, '3', '3', 46, '2023-04-20 17:39:25', '2023-04-20 17:39:25'),
(274, 53, '3', '4', 46, '2023-04-20 17:39:25', '2023-04-20 17:39:25'),
(275, 53, '3', '5', 46, '2023-04-20 17:39:25', '2023-04-20 17:39:25'),
(276, 53, '3', '6', 46, '2023-04-20 17:39:25', '2023-04-20 17:39:25'),
(277, 54, '5', '1', 46, '2023-04-20 17:40:31', '2023-04-20 17:40:31'),
(278, 54, '5', '2', 46, '2023-04-20 17:40:31', '2023-04-20 17:40:31'),
(279, 54, '5', '3', 46, '2023-04-20 17:40:31', '2023-04-20 17:40:31'),
(280, 54, '5', '4', 46, '2023-04-20 17:40:31', '2023-04-20 17:40:31'),
(281, 54, '5', '5', 46, '2023-04-20 17:40:31', '2023-04-20 17:40:31'),
(282, 54, '5', '6', 46, '2023-04-20 17:40:31', '2023-04-20 17:40:31'),
(283, 55, '5', '1', 46, '2023-04-20 17:40:56', '2023-04-20 17:40:56'),
(284, 55, '5', '2', 46, '2023-04-20 17:40:56', '2023-04-20 17:40:56'),
(285, 55, '5', '3', 46, '2023-04-20 17:40:56', '2023-04-20 17:40:56'),
(286, 55, '5', '4', 46, '2023-04-20 17:40:56', '2023-04-20 17:40:56'),
(287, 55, '5', '5', 46, '2023-04-20 17:40:56', '2023-04-20 17:40:56'),
(288, 55, '5', '6', 46, '2023-04-20 17:40:56', '2023-04-20 17:40:56'),
(289, 56, '1', '1', 12, '2023-04-20 17:41:50', '2023-04-20 17:41:50'),
(290, 56, '1', '2', 13, '2023-04-20 17:41:50', '2023-04-20 17:41:50'),
(291, 56, '1', '3', 15, '2023-04-20 17:41:50', '2023-04-20 17:41:50'),
(292, 56, '1', '4', 16, '2023-04-20 17:41:50', '2023-04-20 17:41:50'),
(293, 56, '1', '5', 18, '2023-04-20 17:41:50', '2023-04-20 17:41:50'),
(294, 56, '1', '6', 17, '2023-04-20 17:41:50', '2023-04-20 17:41:50'),
(295, 57, '3', '1', 17, '2023-04-20 17:42:15', '2023-04-20 17:42:15'),
(296, 57, '3', '2', 17, '2023-04-20 17:42:15', '2023-04-20 17:42:15'),
(297, 57, '3', '3', 17, '2023-04-20 17:42:15', '2023-04-20 17:42:15'),
(298, 57, '3', '4', 17, '2023-04-20 17:42:15', '2023-04-20 17:42:15'),
(299, 57, '3', '5', 17, '2023-04-20 17:42:15', '2023-04-20 17:42:15'),
(300, 57, '3', '6', 17, '2023-04-20 17:42:15', '2023-04-20 17:42:15'),
(301, 58, '5', '1', 17, '2023-04-20 17:43:47', '2023-04-20 17:43:47'),
(302, 58, '5', '2', 21, '2023-04-20 17:43:47', '2023-04-20 17:43:47'),
(303, 58, '5', '3', 65, '2023-04-20 17:43:47', '2023-04-20 17:43:47'),
(304, 58, '5', '4', 32, '2023-04-20 17:43:47', '2023-04-20 17:43:47'),
(305, 58, '5', '5', 65, '2023-04-20 17:43:47', '2023-04-20 17:43:47'),
(306, 58, '5', '6', 36, '2023-04-20 17:43:47', '2023-04-20 17:43:47'),
(307, 59, '4', '1', 36, '2023-04-20 17:44:13', '2023-04-20 17:44:13'),
(308, 59, '4', '2', 659, '2023-04-20 17:44:13', '2023-04-20 17:44:13'),
(309, 59, '4', '3', 5, '2023-04-20 17:44:13', '2023-04-20 17:44:13'),
(310, 59, '4', '4', 32, '2023-04-20 17:44:13', '2023-04-20 17:44:13'),
(311, 59, '4', '5', 65, '2023-04-20 17:44:13', '2023-04-20 17:44:13'),
(312, 59, '4', '6', 2, '2023-04-20 17:44:13', '2023-04-20 17:44:13'),
(313, 60, '3', '1', 2, '2023-04-20 17:44:42', '2023-04-20 17:44:42'),
(314, 60, '3', '2', 65, '2023-04-20 17:44:42', '2023-04-20 17:44:42'),
(315, 60, '3', '3', 98, '2023-04-20 17:44:42', '2023-04-20 17:44:42'),
(316, 60, '3', '4', 25, '2023-04-20 17:44:42', '2023-04-20 17:44:42'),
(317, 60, '3', '5', 9, '2023-04-20 17:44:42', '2023-04-20 17:44:42'),
(318, 60, '3', '6', 39, '2023-04-20 17:44:42', '2023-04-20 17:44:42'),
(319, 61, '1', '1', 25, '2023-04-20 17:45:25', '2023-04-20 17:45:25'),
(320, 61, '1', '2', 64, '2023-04-20 17:45:25', '2023-04-20 17:45:25'),
(321, 61, '1', '3', 29, '2023-04-20 17:45:25', '2023-04-20 17:45:25'),
(322, 61, '1', '4', 25, '2023-04-20 17:45:25', '2023-04-20 17:45:25'),
(323, 61, '1', '5', 95, '2023-04-20 17:45:25', '2023-04-20 17:45:25'),
(324, 61, '1', '6', 29, '2023-04-20 17:45:25', '2023-04-20 17:45:25'),
(325, 62, '4', '1', 29, '2023-04-20 17:47:31', '2023-04-20 17:47:31'),
(326, 62, '4', '2', 65, '2023-04-20 17:47:31', '2023-04-20 17:47:31'),
(327, 62, '4', '3', 33, '2023-04-20 17:47:31', '2023-04-20 17:47:31'),
(328, 62, '4', '4', 15, '2023-04-20 17:47:31', '2023-04-20 17:47:31'),
(329, 62, '4', '5', 98, '2023-04-20 17:47:31', '2023-04-20 17:47:31'),
(330, 62, '4', '6', 32, '2023-04-20 17:47:31', '2023-04-20 17:47:31'),
(331, 63, '4', '1', 33, '2023-04-20 17:48:49', '2023-04-20 17:48:49'),
(332, 63, '4', '2', 64, '2023-04-20 17:48:49', '2023-04-20 17:48:49'),
(333, 63, '4', '3', 95, '2023-04-20 17:48:49', '2023-04-20 17:48:49'),
(334, 63, '4', '4', 12, '2023-04-20 17:48:49', '2023-04-20 17:48:49'),
(335, 63, '4', '5', 97, '2023-04-20 17:48:49', '2023-04-20 17:48:49'),
(336, 63, '4', '6', 35, '2023-04-20 17:48:49', '2023-04-20 17:48:49'),
(337, 63, '1', '1', 93, '2023-04-20 17:48:49', '2023-04-20 17:48:49'),
(338, 63, '1', '2', 35, '2023-04-20 17:48:49', '2023-04-20 17:48:49'),
(339, 63, '1', '3', 38, '2023-04-20 17:48:49', '2023-04-20 17:48:49'),
(340, 63, '1', '4', 16, '2023-04-20 17:48:49', '2023-04-20 17:48:49'),
(341, 63, '1', '5', 67, '2023-04-20 17:48:49', '2023-04-20 17:48:49'),
(342, 63, '1', '6', 98, '2023-04-20 17:48:49', '2023-04-20 17:48:49'),
(343, 64, '3', '1', 38, '2023-04-20 17:49:36', '2023-04-20 17:49:36'),
(344, 64, '3', '2', 98, '2023-04-20 17:49:36', '2023-04-20 17:49:36'),
(345, 64, '3', '3', 32, '2023-04-20 17:49:36', '2023-04-20 17:49:36'),
(346, 64, '3', '4', 7881, '2023-04-20 17:49:36', '2023-04-20 17:49:36'),
(347, 64, '3', '5', 959, '2023-04-20 17:49:36', '2023-04-20 17:49:36'),
(348, 64, '3', '6', 98, '2023-04-20 17:49:36', '2023-04-20 17:49:36'),
(349, 65, '2', '1', 98, '2023-04-20 17:50:07', '2023-04-20 17:50:07'),
(350, 65, '2', '2', 78, '2023-04-20 17:50:07', '2023-04-20 17:50:07'),
(351, 65, '2', '3', 65, '2023-04-20 17:50:07', '2023-04-20 17:50:07'),
(352, 65, '2', '4', 12, '2023-04-20 17:50:07', '2023-04-20 17:50:07'),
(353, 65, '2', '5', 65, '2023-04-20 17:50:07', '2023-04-20 17:50:07'),
(354, 65, '2', '6', 35, '2023-04-20 17:50:07', '2023-04-20 17:50:07'),
(355, 66, '3', '1', 35, '2023-04-20 17:50:49', '2023-04-20 17:50:49'),
(356, 66, '3', '2', 37, '2023-04-20 17:50:49', '2023-04-20 17:50:49'),
(357, 66, '3', '3', 19, '2023-04-20 17:50:49', '2023-04-20 17:50:49'),
(358, 66, '3', '4', 53, '2023-04-20 17:50:49', '2023-04-20 17:50:49'),
(359, 66, '3', '5', 49, '2023-04-20 17:50:49', '2023-04-20 17:50:49'),
(360, 66, '3', '6', 31, '2023-04-20 17:50:49', '2023-04-20 17:50:49'),
(361, 67, '2', '1', 31, '2023-04-20 17:51:26', '2023-04-20 17:51:26'),
(362, 67, '2', '2', 64, '2023-04-20 17:51:26', '2023-04-20 17:51:26'),
(363, 67, '2', '3', 16, '2023-04-20 17:51:26', '2023-04-20 17:51:26'),
(364, 67, '2', '4', 31, '2023-04-20 17:51:26', '2023-04-20 17:51:26'),
(365, 67, '2', '5', 59, '2023-04-20 17:51:26', '2023-04-20 17:51:26'),
(366, 67, '2', '6', 94, '2023-04-20 17:51:26', '2023-04-20 17:51:26'),
(367, 46, '8', '1', 16, '2023-04-21 00:11:25', '2023-04-20 12:27:45'),
(368, 46, '8', '2', 16, '2023-04-21 00:11:25', '2023-04-20 12:27:48'),
(369, 46, '8', '3', 16, '2023-04-21 00:11:25', '2023-04-20 12:27:51'),
(370, 46, '8', '4', 16, '2023-04-21 00:11:25', '2023-04-20 12:27:53'),
(371, 46, '8', '5', 16, '2023-04-21 00:11:25', '2023-04-20 12:27:55'),
(372, 46, '8', '6', 16, '2023-04-21 00:11:25', '2023-04-20 12:27:57'),
(373, 46, '7', '1', 16, '2023-04-21 00:11:25', '2023-04-20 12:27:59'),
(374, 46, '7', '2', 16, '2023-04-21 00:11:25', '2023-04-20 12:28:01'),
(375, 46, '7', '3', 16, '2023-04-21 00:11:25', '2023-04-20 12:27:42'),
(376, 46, '7', '4', 16, '2023-04-21 00:11:25', '2023-04-20 12:27:40'),
(377, 46, '7', '5', 16, '2023-04-21 00:11:25', '2023-04-20 12:27:37'),
(378, 46, '7', '6', 16, '2023-04-21 00:11:25', '2023-04-20 12:27:33'),
(379, 46, '6', '1', 16, '2023-04-21 00:11:25', '2023-04-20 12:27:31'),
(380, 46, '6', '2', 16, '2023-04-21 00:11:25', '2023-04-20 12:27:27'),
(381, 46, '6', '3', 16, '2023-04-21 00:11:25', '2023-04-20 12:27:22'),
(382, 46, '6', '4', 16, '2023-04-21 00:11:25', '2023-04-20 12:27:20'),
(383, 46, '6', '5', 16, '2023-04-21 00:11:25', '2023-04-20 12:27:15'),
(384, 46, '6', '6', 16, '2023-04-21 00:11:25', '2023-04-20 12:27:11'),
(385, 46, '3', '1', 16, '2023-04-21 00:11:25', '2023-04-20 12:27:07'),
(386, 46, '3', '2', 16, '2023-04-21 00:11:25', '2023-04-20 12:27:03'),
(387, 46, '3', '3', 16, '2023-04-21 00:11:25', '2023-04-20 12:26:59'),
(388, 46, '3', '4', 16, '2023-04-21 00:11:25', '2023-04-20 12:26:55'),
(389, 46, '3', '5', 16, '2023-04-21 00:11:25', '2023-04-20 12:26:46'),
(390, 46, '3', '6', 16, '2023-04-21 00:11:25', '2023-04-20 12:26:41');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `userId`, `productId`, `rating`, `description`, `created_at`, `updated_at`) VALUES
(1, 7, 47, 5, 'Nice product', '2023-02-18 12:04:52', '2023-04-19 08:56:00'),
(2, 8, 47, 5, 'Wowww', '2023-02-18 12:04:52', '2023-04-19 09:03:26'),
(3, 4, 46, 4, 'Noce Shoes I liked it', '2023-03-06 09:24:19', '2023-04-20 12:58:07'),
(4, 5, 46, 4, 'This product is awesome', '2023-03-06 09:25:13', '2023-04-20 12:29:49');

-- --------------------------------------------------------

--
-- Table structure for table `riding_charter_users`
--

CREATE TABLE `riding_charter_users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `latitude` decimal(8,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `remember_token` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riding_charter_users`
--

INSERT INTO `riding_charter_users` (`id`, `name`, `email`, `mobile`, `password`, `latitude`, `longitude`, `remember_token`, `status`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Ashutosh\'s Shop', 'ashutoshchauhan@gmail.com', '8468921900', '$2y$10$fmdTMlAl6Q2k4Ha1YhH2geY32dgYJdBJG1a8DDhrFymhgq16Sftga', 28.391017, 77.416721, 'Q1BZmANmYKARYXCVlERHt8TINhf9TXK2OXLzpVpDP34soqwB0S', '1', 'https://quantumit.online/81support/public/blank-profile.webp', '2023-02-11 08:37:02', '2023-04-07 14:34:04'),
(4, '7 Wonders', 'wonders@mail.com', '8468921923', '$2y$10$osKuL6TPZevDB8vMEEuGseQ/SvAy/gpFstNbiYvsbuvOfHNduEou6', 28.391017, 77.416721, 'JSkIZfs1FLpe0V5xoGmuG0mWZ4tmdLMIW5j4ltptoNw1c7WFLH', '1', 'https://quantumit.online/81support/public/blank-profile.webp', '2023-02-15 14:24:34', '2023-03-06 10:58:47'),
(7, 'Shoes Shop', 'shoesadmin@admin.com', '1234567890', '$2y$10$DMPjXfhkFr90c38yJA/orOIGzpuG6xrceefMCTNOoa7tawtg3DcRe', 28.650533, 77.230337, 'Ri0CRyzMqyRR1LivaBFUPZKNvrzZYN9P5wQHAl92JhYiPkjrPi', '1', 'https://quantumit.online/81support/public/uploads/riding_charter_user/1678085858.jpg', '2023-03-06 12:27:38', '2023-03-06 12:34:53'),
(8, 'Support Costa Blanka', 'aashutosh.quantum@gmail.com', '8468921963', '$2y$10$nYcYP90aVi059O1aibW99euyilaeJYCMWuFFIrFSLgS0aaHDg19.O', 9.748917, -83.753428, 'ocpBgzrqeXH6msnOjC4ONNYPsLuWV1h4oTKxR9mZewFrDMLfpH', '1', 'https://quantumit.online/81support/public/uploads/riding_charter_user/1679286648.png', '2023-03-20 10:00:48', '2023-03-21 18:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `size` varchar(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size`, `created_at`, `updated_at`) VALUES
(1, 'XS', '2023-03-26 13:09:05', NULL),
(2, 'S', '2023-03-26 13:09:11', NULL),
(3, 'M', '2023-03-26 13:09:18', NULL),
(4, 'L', '2023-03-26 13:09:23', NULL),
(5, 'XL', '2023-03-26 13:09:28', NULL),
(6, 'XXL', '2023-03-26 13:09:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `static_contents`
--

CREATE TABLE `static_contents` (
  `id` int(11) NOT NULL,
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `static_contents`
--

INSERT INTO `static_contents` (`id`, `type`, `information`, `created_at`, `updated_at`) VALUES
(1, 'terms_and_conditions', 'What’s covered in these terms\r\nWe know it’s tempting to skip these Terms of Service, but it’s important to establish what you can expect from us as you use Google services, and what we expect from you.\r\nThese Terms of Service reflect the way Google’s business works, the laws that apply to our company, and certain things we’ve always believed to be true. As a result, these Terms of Service help define Google’s relationship with you as you interact with our services. For example, these terms include the following topic headings:\r\n\r\nWhat you can expect from us, which describes how we provide and develop our services\r\nWhat we expect from you, which establishes certain rules for using our services\r\nContent in Google services, which describes the intellectual property rights to the content you find in our services — whether that content belongs to you, Google, or others\r\nIn case of problems or disagreements, which describes other legal rights you have, and what to expect in case someone violates these terms\r\nUnderstanding these terms is important because, by using our services, you’re agreeing to these terms.\r\n\r\nBesides these terms, we also publish a Privacy Policy. Although it’s not part of these terms, we encourage you to read it to better understand how you can update, manage, export, and delete your information.\r\n\r\nTerms\r\nService provider\r\nGoogle services are provided by, and you’re contracting with:\r\n\r\nGoogle LLC\r\norganized under the laws of the State of Delaware, USA, and operating under the laws of the USA\r\n\r\n1600 Amphitheatre Parkway\r\nMountain View, California 94043\r\nUSA\r\n\r\nAge requirements\r\nIf you’re under the age required to manage your own Google Account, you must have your parent or legal guardian’s permission to use a Google Account. Please have your parent or legal guardian read these terms with you.\r\n\r\nIf you’re a parent or legal guardian, and you allow your child to use the services, then these terms apply to you and you’re responsible for your child’s activity on the services.\r\n\r\nSome Google services have additional age requirements as described in their service-specific additional terms and policies.', '2023-02-08 09:27:21', '2023-02-08 09:27:21'),
(2, 'privacy_policy', 'We build a range of services that help millions of people daily to explore and interact with the world in new ways. Our services include:\r\n\r\nGoogle apps, sites, and devices, like Search, YouTube, and Google Home\r\nPlatforms like the Chrome browser and Android operating system\r\nProducts that are integrated into third-party apps and sites, like ads, analytics, and embedded Google Maps\r\nYou can use our services in a variety of ways to manage your privacy. For example, you can sign up for a Google Account if you want to create and manage content like emails and photos, or see more relevant search results. And you can use many Google services when you’re signed out or without creating an account at all, like searching on Google or watching YouTube videos. You can also choose to browse the web in a private mode, like Chrome Incognito mode. And across our services, you can adjust your privacy settings to control what we collect and how your information is used.\r\n\r\nTo help explain things as clearly as possible, we’ve added examples, explanatory videos, and definitions for key terms. And if you have any questions about this Privacy Policy, you can contact us.', '2023-02-09 05:20:19', '2023-02-09 05:20:19'),
(3, 'about_us', 'testinng flow', '2023-03-03 14:02:14', '2023-03-03 14:02:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `mobile` int(10) NOT NULL,
  `address_line_1` varchar(255) NOT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `country` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`id`, `user_id`, `first_name`, `last_name`, `mobile`, `address_line_1`, `address_line_2`, `country`, `created_at`, `updated_at`) VALUES
(18, 1, 'Vinod', 'Patel', 1234567890, 'thakor road', 'kolkata', 'India', '2023-03-01 22:00:02', '2023-03-01 22:16:22'),
(19, 1, 'Pramod', 'Chauhan', 675849301, 'mumbai naka', 'nashik', 'India', '2023-03-01 22:31:24', '2023-03-01 22:31:24'),
(20, 6, 'shubham', 'jaiswal', 1134567890, 'Sector 7 Sawer Road', NULL, 'India', '2023-04-11 13:04:27', '2023-04-12 14:22:19'),
(21, 6, 'binod', 'Vishvakarma', 1234567890, 'Indore', NULL, 'India', '2023-04-11 13:10:16', '2023-04-12 14:24:24'),
(22, 6, 'Rajat', 'Khoware', 1234567890, '62 Jay Nagar Indore', NULL, 'India', '2023-04-11 13:10:42', '2023-04-11 13:10:42'),
(23, 6, 'Rajat', 'Khoware', 1234567890, '62 Jay Nagar Indore', NULL, 'India', '2023-04-11 15:26:20', '2023-04-11 15:26:20'),
(24, 6, '67, Sector 3 Kerela', 'Khoware', 1234567890, '62 Jay Nagar Indore', NULL, 'India', '2023-04-11 15:27:07', '2023-04-11 15:27:07'),
(25, 6, '67, Sector 3 Kerela', 'DK', 1234567890, '62 Jay Nagar Indore', NULL, 'India', '2023-04-11 15:28:00', '2023-04-11 15:28:00'),
(26, 6, '67, Sector 3 Kerela', 'DK', 1234567890, '67, Sector 3 Kerela', NULL, 'India', '2023-04-11 15:28:35', '2023-04-11 15:28:35'),
(27, 6, '67, Sector 3 Kerela', 'DK', 1234567890, '67, Sector 3 Kerela', NULL, 'India', '2023-04-11 15:29:01', '2023-04-11 15:29:01'),
(28, 6, '67, Sector 3 Kerela', 'DK', 1234567890, '67, Sector 3 Kerela', NULL, 'India', '2023-04-11 15:31:47', '2023-04-11 15:31:47'),
(29, 6, '67, Sector 3 Kerela', 'DK', 1234567890, '67, Sector 3 Kerela', NULL, 'India', '2023-04-11 15:32:00', '2023-04-11 15:32:00'),
(30, 6, '67, Sector 3 Kerela', 'DK', 1234567890, '67, Sector 3 Kerela', NULL, 'India', '2023-04-11 15:32:34', '2023-04-11 15:32:34'),
(31, 6, '67, Sector 3 Kerela', 'DK', 1234567890, '67, Sector 3 Kerela', NULL, 'India', '2023-04-11 15:37:31', '2023-04-11 15:37:31'),
(32, 6, '67, Sector 3 Kerela', 'DK', 1234567890, '67, Sector 3 Kerela', NULL, 'India', '2023-04-11 15:37:43', '2023-04-11 15:37:43'),
(33, 6, '67, Sector 3 Kerela', 'DK', 1234567890, '67, Sector 3 Kerela', NULL, 'India', '2023-04-11 15:37:51', '2023-04-11 15:37:51'),
(34, 6, '67, Sector 3 Kerela', 'DK', 1234567890, '67, Sector 3 Kerela', NULL, 'India', '2023-04-11 15:38:44', '2023-04-11 15:38:44'),
(35, 6, 'Universessssss', 'Address', 1234567890, 'Universe', NULL, 'India', '2023-04-18 16:08:52', '2023-04-18 16:09:22'),
(36, 51, 'Rajat s', 'Khoware', 1234567890, '62 Jay Nagar Indore', NULL, 'India', '2023-04-18 16:17:59', '2023-04-18 16:24:28'),
(37, 51, 'Rajat', 'Khoware', 1234567890, '62 Jay Nagar Indore', NULL, 'India', '2023-04-18 16:22:58', '2023-04-18 16:22:58'),
(38, 51, 'Rajat', 'Khoware', 1234567890, '62 Jay Nagar Indore', NULL, 'India', '2023-04-18 16:26:33', '2023-04-18 16:26:33'),
(39, 51, 'fdskfdksl', 'Khoware', 1234567890, '62 Jay Nagar Indore', NULL, 'India', '2023-04-18 16:28:13', '2023-04-18 16:28:13'),
(40, 51, 'fdskfdksl', 'fdlklf', 1234567890, '62 Jay Nagar Indore', NULL, 'India', '2023-04-18 16:28:29', '2023-04-18 16:28:29'),
(41, 51, 'fdskfdksl', 'fdlklf', 1234567890, 'fdskfdksl', NULL, 'India', '2023-04-18 16:29:35', '2023-04-18 16:29:35'),
(42, 51, 'fdskfdksl', 'fdlklf', 1234567890, 'fdskfdksl', NULL, 'India', '2023-04-18 16:30:43', '2023-04-18 16:30:43'),
(43, 51, 'fdskfdksl', 'fdlklf', 1234567890, 'fdskfdksl', NULL, 'India', '2023-04-18 16:32:03', '2023-04-18 16:32:03'),
(44, 51, 'fdskfdksl', 'fdlklf', 1234567897, 'fdskfdksl', NULL, 'India', '2023-04-18 16:32:19', '2023-04-18 16:32:19'),
(45, 4, 'Indore', 'kho', 1234567890, 'Indore', NULL, 'India', '2023-04-18 16:44:45', '2023-04-18 16:44:45'),
(46, 53, 'QR', 'su', 1234567890, 'QR', NULL, 'India', '2023-04-18 22:19:31', '2023-04-18 22:19:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`),
  ADD KEY `productIdIndex` (`productId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `filter`
--
ALTER TABLE `filter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_users`
--
ALTER TABLE `new_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rc_id` (`rc_id`) USING BTREE,
  ADD KEY `categoryIdIndex` (`categoryId`);

--
-- Indexes for table `product_filter`
--
ALTER TABLE `product_filter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `product_size_quantity`
--
ALTER TABLE `product_size_quantity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riding_charter_users`
--
ALTER TABLE `riding_charter_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static_contents`
--
ALTER TABLE `static_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filter`
--
ALTER TABLE `filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `new_users`
--
ALTER TABLE `new_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `product_filter`
--
ALTER TABLE `product_filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_size_quantity`
--
ALTER TABLE `product_size_quantity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=391;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `riding_charter_users`
--
ALTER TABLE `riding_charter_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `static_contents`
--
ALTER TABLE `static_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `product_shop` FOREIGN KEY (`rc_id`) REFERENCES `riding_charter_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
