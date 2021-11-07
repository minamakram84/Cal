-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2021 at 02:47 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ahgezlak`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `SPID` int(11) NOT NULL,
  `calendarID` int(11) NOT NULL,
  `date` date NOT NULL,
  `timeFrom` time NOT NULL,
  `timeTo` time NOT NULL,
  `title` varchar(100) NOT NULL,
  `paymentType` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `SPID`, `calendarID`, `date`, `timeFrom`, `timeTo`, `title`, `paymentType`, `total`) VALUES
(1, 1, 1, '2021-10-04', '08:00:00', '08:30:00', 'test', 1, 100),
(8, 1, 1, '2018-02-14', '11:30:00', '12:00:00', '', 1, 10),
(9, 1, 1, '2018-02-13', '11:30:00', '12:00:00', 'kgfdnkg', 1, 10),
(11, 1, 1, '2021-10-15', '00:00:00', '00:00:00', 'We7yat rabena', 1, 10),
(13, 1, 1, '2021-10-11', '09:30:00', '10:00:00', 'no Titel', 1, 100),
(14, 1, 1, '2021-10-11', '07:30:00', '08:00:00', 'no Titel', 1, 100),
(15, 1, 1, '2021-10-04', '07:00:00', '07:30:00', 'no Titel', 1, 100),
(16, 1, 1, '2021-10-18', '09:30:00', '10:00:00', 'no Titel', 1, 100),
(17, 1, 1, '2021-10-06', '07:00:00', '07:30:00', 'no Titel', 1, 100),
(18, 1, 1, '2021-10-04', '09:30:00', '10:00:00', 'no Titel', 1, 100),
(19, 1, 1, '2021-10-04', '08:30:00', '09:00:00', 'Rafik', 1, 10),
(20, 1, 1, '2021-10-29', '14:00:00', '15:00:00', 'Mina Makram84', 1, 10),
(21, 1, 1, '2021-10-20', '00:00:00', '00:00:00', 'hgffg', 1, 10),
(22, 1, 1, '2021-10-28', '00:00:00', '00:00:00', 'gfhg', 1, 10),
(23, 1, 1, '2021-10-08', '09:15:00', '09:30:00', 'Add title', 1, 10),
(24, 1, 1, '2021-10-08', '09:45:00', '10:00:00', 'Add title', 1, 10),
(25, 1, 1, '2021-10-05', '00:00:00', '00:00:00', 'Add title', 1, 10),
(26, 1, 1, '2021-10-04', '10:00:00', '10:15:00', 'Add title', 1, 10),
(27, 1, 1, '2021-10-06', '10:15:00', '10:30:00', 'Add title', 1, 10),
(28, 1, 1, '2021-10-06', '11:00:00', '11:15:00', 'Add title', 1, 10),
(29, 1, 1, '2021-10-07', '11:00:00', '11:15:00', 'Add title', 1, 10),
(30, 1, 1, '2021-10-11', '09:00:00', '09:30:00', 'no Titel', 1, 100),
(31, 1, 1, '2021-10-11', '06:30:00', '07:00:00', 'no Titel', 1, 100),
(32, 1, 1, '2021-10-04', '06:00:00', '06:30:00', 'no Titel', 1, 100),
(33, 1, 1, '2021-10-18', '07:00:00', '07:30:00', 'no Titel', 1, 100);

-- --------------------------------------------------------

--
-- Table structure for table `bussinesshours`
--

CREATE TABLE `bussinesshours` (
  `id` int(11) NOT NULL,
  `day` varchar(20) NOT NULL,
  `fromHour` int(11) NOT NULL,
  `toHour` int(11) NOT NULL,
  `SPID` int(11) NOT NULL,
  `dayID` int(11) NOT NULL,
  `dayName` varchar(20) NOT NULL,
  `dayActive` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bussinesshours`
--

INSERT INTO `bussinesshours` (`id`, `day`, `fromHour`, `toHour`, `SPID`, `dayID`, `dayName`, `dayActive`) VALUES
(6, 'mon', 6, 10, 1, 1, 'Monday', 1),
(7, 'tue', 1, 1, 1, 2, 'Tuesday', 1),
(8, 'wed', 6, 10, 1, 3, 'Wednesday', 1),
(9, 'thu', 0, 0, 1, 4, 'Thursday', 0),
(10, 'fri', 0, 0, 1, 5, 'Friday', 0),
(11, 'sat', 0, 0, 1, 6, 'Saturday', 0),
(12, 'sun', 6, 10, 1, 7, 'Sunday', 1);

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `SPID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `personID` int(11) NOT NULL,
  `serviceID` int(11) NOT NULL,
  `limit` int(11) NOT NULL,
  `fromDate` date NOT NULL,
  `toDate` date NOT NULL,
  `sessionTime` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `SPID`, `name`, `personID`, `serviceID`, `limit`, `fromDate`, `toDate`, `sessionTime`, `active`) VALUES
(1, 1, 'مواعيد الكتورة هند', 1, 1, 1, '2021-10-02', '2021-10-27', 30, 0),
(2, 3, 'المواعيد الصيفية', 0, 3, 1, '2021-10-01', '2021-11-01', 30, 1),
(3, 2, 'دبلومة react', 2, 2, 20, '2021-10-01', '2021-11-01', 30, 1);

-- --------------------------------------------------------

--
-- Table structure for table `calendarbussinesshours`
--

CREATE TABLE `calendarbussinesshours` (
  `id` int(11) NOT NULL,
  `day` varchar(10) NOT NULL,
  `timeFrom` time NOT NULL,
  `timeTo` time NOT NULL,
  `calendarID` int(11) NOT NULL,
  `SPID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `calendarbussinesshours`
--

INSERT INTO `calendarbussinesshours` (`id`, `day`, `timeFrom`, `timeTo`, `calendarID`, `SPID`) VALUES
(1, 'Mon', '06:00:00', '09:30:00', 1, 0),
(2, 'Wed', '07:00:00', '10:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `SPID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `SPID`) VALUES
(4, 'test1', 1),
(6, 'abanoub', 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'Egypt'),
(2, 'india');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(70) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `registerType` int(11) DEFAULT NULL,
  `vendorUserID` int(11) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bDate` date DEFAULT NULL,
  `homePhone` varchar(20) DEFAULT NULL,
  `officePhone` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `SPID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `registerType`, `vendorUserID`, `phone`, `address`, `bDate`, `homePhone`, `officePhone`, `description`, `info`, `img`, `SPID`) VALUES
(1, 'mon1', 'abanoubess@gmail.com', NULL, NULL, NULL, '5654', 'السادات', '2021-10-04', '6456', '645645', NULL, 'hfg', '1635105126mon.png', 1),
(3, 'pop', 'admin@gmail.com', NULL, NULL, NULL, '645', 'fgfd', '2021-10-14', '6456', '645', '<p>ghrt</p>', '6456', '1635105219pop.jpg', 1),
(5, 'caty', 'abanoubessmat96@gmail.com', NULL, NULL, NULL, '1550708097', '6456', '2021-10-19', '52345', '423', '<p>kjhkjhk</p>', 'gdfgfd', '1635107331caty.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `name`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday'),
(6, 'Saturday'),
(7, 'Sunday');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `industry`
--

CREATE TABLE `industry` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `industry`
--

INSERT INTO `industry` (`id`, `name`) VALUES
(1, 'IT'),
(2, 'computer');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 2),
(4, '2021_09_14_140309_create_sessions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider`
--

CREATE TABLE `serviceprovider` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `subdomainaname` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `unit` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `contryID` int(11) NOT NULL,
  `stateID` int(11) NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `zipCode` varchar(20) NOT NULL,
  `industryID` int(11) NOT NULL,
  `timeZone` varchar(25) NOT NULL,
  `location` varchar(100) NOT NULL,
  `minTimeBefourBokkingInMints` int(11) NOT NULL,
  `maxTimeBefourBokkingIndays` int(11) NOT NULL,
  `aboutYou` text NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `serviceprovider`
--

INSERT INTO `serviceprovider` (`id`, `name`, `subdomainaname`, `website`, `email`, `tel`, `mobile`, `unit`, `img`, `contryID`, `stateID`, `city`, `address`, `zipCode`, `industryID`, `timeZone`, `location`, `minTimeBefourBokkingInMints`, `maxTimeBefourBokkingIndays`, `aboutYou`, `facebook`, `twitter`) VALUES
(1, 'عيادة السلام', 'salam', 'https://github.com/jquense/yup', 'abanoubessmat000@qclix.com', '6835', '01205546673', 30, '1635540277salam.jpg', 1, 1, 'test', '0test', '010100', 2, '-03:00', 'text location', 5, 10, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose test', 'https://github.com/jquense/yup', 'https://github.com/jquense/yup'),
(2, 'مركز الامل للكورسات', 'amal', '22', 'abanoubessmat@qclix.com', '6835', '01205546672', 60, '', 0, 0, '0', '0', '', 0, '', '', 0, 0, '', '', ''),
(3, 'البولينج للافراح', '22', '22', 'abanoubessmat@qclix.com', '6835', '01205546672', 180, '', 0, 0, '0', '0', '', 0, '', '', 0, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `serviceTime` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `categoryID` int(11) DEFAULT 0,
  `img` varchar(100) DEFAULT NULL,
  `private` bit(1) DEFAULT NULL,
  `needConfirmation` bit(1) DEFAULT NULL,
  `SPID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `price`, `serviceTime`, `description`, `categoryID`, `img`, `private`, `needConfirmation`, `SPID`) VALUES
(1, 'عيادة اطفال عيادة اطفال عيادة', 100, 4500, 'test', 4, '1635636121عيادة اطفال عيادة اطفال عيادة.jpg', b'0', b'0', 1),
(2, 'كتب كتاب', 10000, 180, 'test', 6, NULL, b'0', b'0', 1),
(4, 'bebo', 100, 45, 'tert', 0, NULL, NULL, NULL, 1),
(6, 'bebo', 100, 555, 'ghfg', 4, NULL, NULL, NULL, 1),
(7, 'hg', 10, 45, 'hfg', 4, NULL, NULL, NULL, 1),
(8, 'gh', 10, 45, 'ytryrt', 4, NULL, NULL, NULL, 1),
(12, 'bebo', 454, 543, 'gfg', 4, NULL, NULL, NULL, 1),
(13, 'ccc', 10, 4500, 'ccccc', 4, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1eoPgrXvE7KwivAUxY1ZNGmennTfgSQvwws9T9YP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQm9yajVGUlVyM2FXMVhpcEpzODhabmpGM1NtQkhzWWRFbEdDY3hkTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9zYWxhbS5teWRvbWFpbi5jb206ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1635423215),
('1rmN5jZR17psIQPoWkG3vd19qvOfvvQ2dYn0gpQd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiejlONHoyRUx0RTkxd2VvZkVTVXp1UFFFZzdoN1RZRnBhUFN4aUJXZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9zYWxhbS5teWRvbWFpbi5jb206ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1635612025),
('2AEzJ4wvTuKdFRa2BO7PH46tjahJFbkz6482WBBT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicWduZmo1eEVuMFFGNnJRWG9PT0RGUnd6ZUVKcEdzd3p5cGRhVGdxUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1633462751),
('3kBHjPUc4bCfapgdeNVq7MBTELU6Ur7YKN2DjFcB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVVZcWJLUXhNWlhSZU80aVRIQXRSV2RKT25za0E2Rk9naVU0ZFpQNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9zYWxhbS5teWRvbWFpbi5jb206ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1633462729),
('57kRe70FHCVmC8bzZ9pP9H6M2O6hSex6Du8tfzTa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVNqRWhVSGRId3JqQVlPS0c4QlVvN1FTZTNuWTl0Q2Nkdk1mTmVKUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9zYWxhbS5teWRvbWFpbi5jb206ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1635685393),
('6HBefnr1UI27JiAdkr6Ie26kL8asra9LDH3zrB02', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFM2aWlFUUFGY0FaamJ6TnVXM29CbFdSY1lHOFdZSzRZN3NSMWxDcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9zYWxhbS5teWRvbWFpbi5jb206ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1634998912),
('bT10TsQ7MD92rtXBBgmSMGQjE7hKks8K7YJGxvId', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkx3OEF4Zm5ZSEROZm9VUW5Vd3hweXVjWGlGU3oybW1wYWRnZFlEdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9zYWxhbS5teWRvbWFpbi5jb206ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1635475869),
('Eghq2pbmfIRydnRS97JFPnzXGmMDRaxrlxaQYj2x', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidjBnbHlwdGlWa0FKQXZXN04weEpRdms4SmFSVEZKREFUWEF2bzlRcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1634745176),
('G9hC3SeYKaIzS1pJIqSTR3CGoxd6Sv8aXl0zrjKo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZms0SVI4MFhLNExiTnJhM1V5UnlFMlJ3Z0Z6ck9KNGZhNk9VYlI1cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9zYWxhbS5teWRvbWFpbi5jb206ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1634753684),
('h4nuDKj2iwEOgDmitaGO3wwLGCIrzK7vW4bctthi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTWwxUklnSlA2bklNS2pnUkV2YVdYaGVFZWdtU0p1bnFFRTZidzNRSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1633464664),
('JjgcUGdvXU9SCjwM623Kw3ftUyWn8eUR1FKnCdnV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmpURXdNOGFMb1RJdjg2Nm1wR1NkdTZwdnYxWlY4U3lsMFI1QXk4NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9hbWFsLm15ZG9tYWluLmNvbTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1633464395),
('k7YfXQ9y5DgRTS5ip3K6l8v5HTC0nWCipP3kXwqo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTjloeTVQZWdOOEVWMUZlZEttMEtMdGN0TUJHWEVOWHBTckNLMUQzTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1635423209),
('lFCWOXayZzs5RpkkO7ZNfvAgyE3Ri9OoR4h6WnGV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT2FFcEgyWjVYb0hIWGZxeWc4UjFsMktraXdLNHdZaGNGdmFvNVU4YiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1635612024),
('LL28lVG5tooxDQjUHlqaY5xyjM2O6BIfC7ywilYe', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSFB4dTVaQUZFYmVWdXk5aTU2T2VqdVNCQ0g3V2hMNmdFYkNWZUtVTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1634998909),
('mp8U32evXJSFhuAkdMce4ZLSoC6NFGUoihrjASlk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkx6UGkzZ0h4ZGhxS1NObTVkS3VidUgwY3hXNjF6UU9DTlM4bGpTOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9zYWxhbS5teWRvbWFpbi5jb206ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1634679218),
('mPyxJkK6QBZrRP1mpdMAHfehqdHjNUmCqTslQtdK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiU25WeE45dGZ1YUV4bmVDRHBSbzhDR1dKSmxvQnRoRGpOZDRGTmhHSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1633464339),
('N64BxnRMI94qsQ7Yn32fUMwXMNHvitqfO0hkSyE5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidEFaZ0pGaU9sT2ZETGwyUkJUUGZwR1YyNEZBeklqQ3B4WHFiSURYUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1635526553),
('OEHQnaNsdo7YkxzjhJjO0YeGW6nMJQOGx89bae8g', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkF0TlhsTGJtSUVJMUFHNzVwcXFESGpsVjc4R0QzZVJnU1dpT1JEcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9zYWxhbS5teWRvbWFpbi5jb206ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1635337185),
('PukbjP3ZSWvqos49ZsHaMO4HK6bPwl0dbuCUMPgh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidGRpeENsem5FSHBWWjNaOGttVmxnOXVITWsxRFB3TDJkTHB6RVhaNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9zYWxhbS5teWRvbWFpbi5jb206ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1635460360),
('QaZuIbnGJR8IfvYZ0w9k7k2KyxMVi4fZFRYvr73n', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1Qwd3lEbTJEeHlYbFZOckZlS2wwZ3pJOHJWTUZLSVBaTVlFV0JkVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9zYWxhbS5teWRvbWFpbi5jb206ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1635073858),
('sQhAydjfcpJi94wpOpBwMFNLRmbBCok0twhzeXUb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHI3VkJ6eDRubklIeWdDNGxVYXhoMjdMdFlUZUJjWmw4b1RTSkRJWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9zYWxhbS5teWRvbWFpbi5jb206ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1634842125),
('sXXQymTqYtyMHOdUFRGe6vHmgAp3DOmIZ91EXcAw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicU5yYm14REphZzBvRzl1aVNJbVhvWUtOeElYazdYVGlPa0NpTDBXZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1635460359),
('vCi3wsfLE0A17d7PUSsYKSMqhHUx6laQE9Z5kdaL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRjFGYmQ1bGpTZmJFUU9hU2FUNzFDTHZPaXZrVDEwelJhU3lxbVpOTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9zYWxhbS5teWRvbWFpbi5jb206ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1635526557),
('yB7E00J67dXkpzQJwBlEVHosfzp1tkEDaaj1MaJU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidHhVVWtpbTVJMGxrVE1UNDdvTXBoTDcxVjUySU41MWJtN0l6d0VHbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9zYWxhbS5teWRvbWFpbi5jb206ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1633464420),
('yPfe658aTWAtfXuVgKEhhnzo5H7HwKSbiq5YdDKX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVVmdWNQVXUxQ2ZVNHNhbDljeUFsT0FpS0F1T2hvVWlDS3ExQ1d2YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9zYWxhbS5teWRvbWFpbi5jb206ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1634753562);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `name`, `contryID`) VALUES
(1, 'Cairo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `timeoff`
--

CREATE TABLE `timeoff` (
  `id` int(11) NOT NULL,
  `SPID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `fromDate` date NOT NULL,
  `toDate` date NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timeoff`
--

INSERT INTO `timeoff` (`id`, `SPID`, `userID`, `fromDate`, `toDate`, `description`) VALUES
(1, 1, 1, '2021-10-27', '2021-10-30', 'welcome00132'),
(2, 1, 1, '2021-09-30', '2021-10-14', 'vcvv'),
(5, 1, 2, '2021-10-13', '2021-10-27', 'kjhkljlkjlkk'),
(7, 1, 1, '2021-10-13', '2021-10-12', 'hgvhgvh'),
(8, 1, 4, '2021-10-12', '2021-10-06', 'lkj');

-- --------------------------------------------------------

--
-- Table structure for table `userbreak`
--

CREATE TABLE `userbreak` (
  `id` int(11) NOT NULL,
  `day` varchar(10) NOT NULL,
  `timeFrom` time DEFAULT NULL,
  `timeTo` time DEFAULT NULL,
  `userID` int(11) NOT NULL,
  `SPID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userbreak`
--

INSERT INTO `userbreak` (`id`, `day`, `timeFrom`, `timeTo`, `userID`, `SPID`) VALUES
(9, '1', NULL, NULL, 6, 1),
(10, '2', NULL, NULL, 6, 1),
(11, '3', NULL, NULL, 6, 1),
(12, '4', NULL, NULL, 6, 1),
(13, '5', NULL, NULL, 6, 1),
(14, '6', NULL, NULL, 6, 1),
(15, '7', '05:30:00', '07:00:00', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userbussinesshours`
--

CREATE TABLE `userbussinesshours` (
  `id` int(11) NOT NULL,
  `day` varchar(10) NOT NULL,
  `timeFrom` time DEFAULT NULL,
  `timeTo` time DEFAULT NULL,
  `userID` int(11) NOT NULL,
  `SPID` int(11) NOT NULL,
  `dayActive` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userbussinesshours`
--

INSERT INTO `userbussinesshours` (`id`, `day`, `timeFrom`, `timeTo`, `userID`, `SPID`, `dayActive`) VALUES
(9, '1', '01:00:00', '04:00:00', 6, 1, 1),
(10, '2', '00:30:00', '02:30:00', 6, 1, 1),
(11, '3', NULL, NULL, 6, 1, 1),
(12, '4', NULL, NULL, 6, 1, 0),
(13, '5', NULL, NULL, 6, 1, 0),
(14, '6', NULL, NULL, 6, 1, 0),
(15, '7', NULL, NULL, 6, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SPID` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `description`, `img`, `active`, `mobile`, `SPID`, `created_at`, `updated_at`) VALUES
(6, 'toto', 'abanobasmat@yahoo.com', NULL, NULL, NULL, 'jhjk', '1635642568toto.png', 1, '1203546672', 1, '2021-10-29 00:56:54', '2021-10-30 23:09:28');

-- --------------------------------------------------------

--
-- Table structure for table `userservices`
--

CREATE TABLE `userservices` (
  `staffID` int(11) NOT NULL,
  `serviceID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userservices`
--

INSERT INTO `userservices` (`staffID`, `serviceID`) VALUES
(1, 1),
(2, 1),
(2, 2),
(6, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bussinesshours`
--
ALTER TABLE `bussinesshours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendarbussinesshours`
--
ALTER TABLE `calendarbussinesshours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industry`
--
ALTER TABLE `industry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `serviceprovider`
--
ALTER TABLE `serviceprovider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeoff`
--
ALTER TABLE `timeoff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userbreak`
--
ALTER TABLE `userbreak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userbussinesshours`
--
ALTER TABLE `userbussinesshours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `userservices`
--
ALTER TABLE `userservices`
  ADD PRIMARY KEY (`staffID`,`serviceID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `bussinesshours`
--
ALTER TABLE `bussinesshours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `calendarbussinesshours`
--
ALTER TABLE `calendarbussinesshours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `industry`
--
ALTER TABLE `industry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `serviceprovider`
--
ALTER TABLE `serviceprovider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `timeoff`
--
ALTER TABLE `timeoff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `userbreak`
--
ALTER TABLE `userbreak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `userbussinesshours`
--
ALTER TABLE `userbussinesshours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
