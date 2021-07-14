-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2021 at 03:54 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_13_114728_create_students_table', 1);

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
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(10) UNSIGNED NOT NULL,
  `phone_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `age`, `phone_no`, `gender`, `created_at`, `updated_at`) VALUES
(1, 'Isadore Kessler', 'ayundt@example.com', 44, '636-245-1046', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(2, 'Marge O\'Hara', 'lind.dagmar@example.org', 36, '806.428.2141', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(3, 'Roxanne Quigley Sr.', 'maya07@example.org', 26, '360.299.1256', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(4, 'Giovani O\'Kon', 'nannie.zemlak@example.org', 27, '+1.786.883.7796', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(5, 'Prof. Serena Gulgowski', 'elijah73@example.net', 27, '(458) 323-6382', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(6, 'Dr. Benjamin Kautzer Sr.', 'camila.ullrich@example.com', 28, '(973) 241-8951', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(7, 'Bernhard Powlowski', 'marcelle.herzog@example.org', 25, '+1-815-765-6965', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(8, 'Gino Gulgowski', 'gussie.boyle@example.org', 35, '386-206-3572', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(9, 'Hilma Jaskolski II', 'qbins@example.org', 38, '680-529-0352', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(10, 'Talia Von Sr.', 'lemke.rebeka@example.net', 44, '+1-917-603-5468', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(11, 'Darrin Greenfelder MD', 'tpacocha@example.com', 35, '(938) 420-0578', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(12, 'Sterling Pollich DVM', 'hope.fay@example.net', 41, '+18015724612', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(13, 'Jeanie Brakus', 'lreichert@example.org', 26, '773.395.8719', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(14, 'Jovany Carroll', 'hoeger.ransom@example.net', 43, '820-256-3259', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(15, 'Dr. Dock Beatty III', 'major71@example.net', 37, '234-961-3377', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(16, 'Mazie Farrell', 'dhessel@example.org', 34, '212.738.0417', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(17, 'Emely Bernier', 'bettie48@example.com', 32, '+1 (757) 270-0663', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(18, 'Bria Jaskolski III', 'stamm.pearl@example.com', 35, '+1-409-759-7661', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(19, 'Corbin Morissette', 'davion.rosenbaum@example.com', 40, '1-651-882-9850', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(20, 'Prof. Cristobal Christiansen IV', 'ozella08@example.com', 43, '534-359-2355', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(21, 'Hettie Macejkovic', 'cielo.cruickshank@example.com', 38, '+1 (678) 380-5424', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(22, 'Prof. Vicenta Stehr DVM', 'tdavis@example.org', 34, '+1-616-925-9388', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(23, 'Dr. Hailie Harber', 'hill.theo@example.net', 26, '(817) 262-5123', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(24, 'Miss Pansy Langosh Jr.', 'heidenreich.stephan@example.org', 25, '541.667.2166', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(25, 'Lavonne Ernser', 'jkeeling@example.net', 31, '+1.661.778.9019', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(26, 'Harold Armstrong', 'konopelski.zula@example.org', 42, '(262) 437-1535', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(27, 'Dr. Juvenal Hodkiewicz II', 'hintz.hilda@example.org', 37, '337-550-3274', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(28, 'Dr. Jordan Bruen Jr.', 'fcassin@example.com', 36, '817.595.6999', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(29, 'Dena Gislason', 'bechtelar.ervin@example.net', 35, '469.659.1061', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(30, 'Ms. Della Rempel V', 'hills.brad@example.com', 34, '+1 (475) 778-8225', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(31, 'Elias Daniel', 'loyce60@example.net', 34, '+1-443-722-1020', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(32, 'Ada Will', 'iwest@example.net', 39, '+1-847-744-0618', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(33, 'Jakayla Cruickshank', 'boyle.adriel@example.org', 26, '253.596.1787', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(34, 'Dr. Marilyne Goldner DVM', 'cali.boyle@example.org', 37, '+1-410-568-1879', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(35, 'Mr. Damian Gerlach', 'mccullough.josefina@example.net', 41, '+14155210984', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(36, 'Miss Antonetta Lehner', 'roel.hill@example.org', 42, '(725) 770-0461', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(37, 'Rosie Tremblay', 'pmayert@example.com', 43, '+1.901.688.4133', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(38, 'Emerson Kuvalis', 'kennedy.hills@example.com', 38, '1-678-916-7908', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(39, 'Prof. Noah Ferry IV', 'ritchie.antone@example.net', 44, '+1-283-894-6174', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(40, 'Prof. Lester Koss', 'white.arnulfo@example.com', 36, '470.274.1427', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(41, 'Ralph Hessel', 'kheller@example.com', 43, '1-458-654-8692', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(42, 'Ms. Arvilla Spencer III', 'lonny29@example.net', 33, '1-364-712-0130', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(43, 'Prof. Henderson Bahringer III', 'torphy.eden@example.net', 43, '726-799-7722', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(44, 'Ms. Heath Daugherty V', 'labadie.timothy@example.org', 28, '+17635065837', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(45, 'Prof. Gillian Bauch', 'boyd52@example.org', 33, '1-276-975-4298', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(46, 'Alexane Blanda Sr.', 'brennan68@example.org', 39, '1-832-417-1429', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(47, 'Samanta Leuschke', 'robert.runolfsson@example.com', 45, '1-669-746-2421', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(48, 'Reymundo Stanton', 'schuppe.vilma@example.net', 45, '1-928-556-6149', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(49, 'Ted Beahan V', 'alittel@example.com', 42, '747-575-3125', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(50, 'Prof. Tomas Connelly II', 'keebler.sister@example.net', 28, '1-914-463-5807', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(51, 'Connie Nader', 'dibbert.selina@example.net', 45, '+1-254-363-8800', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(52, 'Kristian Braun', 'akuhn@example.org', 28, '+1-320-881-7032', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(53, 'Ned Legros', 'tia07@example.org', 27, '+1-830-607-0116', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(54, 'Emiliano Okuneva', 'margarita80@example.com', 29, '+16166980767', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(55, 'Maurine Murphy', 'kaitlyn74@example.net', 45, '916.893.0250', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(56, 'Miss Deja Ondricka', 'jedediah63@example.com', 34, '1-331-298-5046', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(57, 'Libby Rutherford MD', 'kale05@example.org', 43, '(239) 994-4845', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(58, 'Prof. Adolf Baumbach', 'yharber@example.org', 40, '1-520-216-9618', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(59, 'Darrion Torphy', 'jermaine16@example.net', 32, '+14455731686', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(60, 'Mr. Brain Schamberger Jr.', 'nathanial99@example.com', 33, '1-610-429-3556', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(61, 'Geraldine Shanahan', 'kohler.andreane@example.org', 35, '786.222.7414', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(62, 'Evie Skiles', 'nschuster@example.com', 30, '283-641-6637', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(63, 'Joesph Koepp', 'aiyana76@example.com', 30, '913.736.7277', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(64, 'Adolf Kessler', 'toy.green@example.net', 42, '916-476-9974', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(65, 'Jessika McGlynn Sr.', 'reyna.hyatt@example.net', 35, '+1-351-595-6484', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(66, 'Mrs. Ellen Gleason Sr.', 'rice.virginia@example.com', 30, '860-659-4914', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(67, 'Eryn Hegmann MD', 'lysanne01@example.net', 35, '+1.316.981.0517', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(68, 'Zackary Bailey MD', 'althea.brown@example.com', 26, '+1.973.465.9176', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(69, 'Ofelia Ward V', 'rutherford.lindsey@example.net', 31, '+1.253.278.4837', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(70, 'Mrs. Andreanne Little MD', 'conroy.kirk@example.org', 38, '+1.559.740.2692', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(71, 'Sterling Greenfelder DDS', 'zwalker@example.net', 28, '+1-954-518-5264', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(72, 'Edna Bogan', 'agustina.oconnell@example.net', 35, '434-749-0419', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(73, 'Dr. Carolina Ullrich I', 'kole09@example.net', 37, '773.629.0607', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(74, 'Prof. Esther Mohr I', 'mathew.nitzsche@example.net', 44, '316-438-0659', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(75, 'Arvid Pollich', 'elton.wisozk@example.org', 35, '1-678-905-3788', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(76, 'Benjamin Nikolaus', 'langworth.gudrun@example.org', 45, '626-704-7121', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(77, 'Tara Runolfsdottir', 'jmueller@example.org', 44, '+16238587817', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(78, 'Ellie Walker', 'javon.macejkovic@example.com', 40, '681.358.9026', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(79, 'Marjory Daniel', 'blanche.bednar@example.org', 32, '+1-904-468-0735', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(80, 'Alicia Fahey', 'jerod.hill@example.com', 31, '+1.765.861.1724', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(81, 'Kavon Thompson', 'queen.jacobi@example.org', 43, '936.349.3303', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(82, 'Prof. Alycia Doyle', 'rstiedemann@example.net', 44, '757.736.3393', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(83, 'Prof. Benedict Bernhard I', 'hilma.abernathy@example.com', 31, '+1-863-832-1578', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(84, 'Everett Ruecker', 'kristy35@example.org', 35, '760-201-3620', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(85, 'Julius Dickens PhD', 'rcarter@example.org', 28, '+1.641.642.3167', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(86, 'Prof. Theodore Wilderman DVM', 'otilia49@example.net', 26, '(804) 569-3154', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(87, 'Zoila Predovic', 'vida19@example.net', 45, '+18632311945', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(88, 'Prof. Garrick Simonis', 'larry53@example.org', 28, '443.873.5975', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(89, 'Desiree Weber Sr.', 'johns.maddison@example.org', 37, '+1-682-527-0145', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(90, 'Ms. Vita Farrell I', 'pierce.lind@example.org', 38, '251-635-4954', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(91, 'Clyde Senger', 'moore.santa@example.org', 28, '682-701-3824', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(92, 'Prof. Meda Williamson I', 'taurean26@example.net', 30, '+12079021115', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(93, 'Rosella Spencer III', 'walsh.lorna@example.net', 43, '480-828-2304', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(94, 'Cornelius Mitchell', 'jewel25@example.com', 39, '681.273.6177', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(95, 'Mr. Eddie White DDS', 'bmcglynn@example.org', 43, '+14407298085', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(96, 'Sylvester Dibbert', 'romaguera.betsy@example.com', 42, '(762) 840-7201', 'male', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(97, 'Blair Kub', 'arne58@example.net', 27, '+1 (940) 581-1939', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(98, 'Ms. Selina Mitchell', 'hpaucek@example.org', 36, '1-947-236-4295', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(99, 'Dr. Alexander Haag', 'hollis.bailey@example.org', 34, '463-940-3099', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(100, 'Moriah Gleason', 'kennedi.cartwright@example.com', 38, '+1.272.274.4832', 'female', '2021-07-13 11:02:28', '2021-07-13 11:02:28'),
(101, 'Prof. Ashly Terry Sr.', 'cleve.weber@example.org', 44, '860.677.9970', 'male', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
