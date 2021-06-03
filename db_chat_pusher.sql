-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2021 at 12:32 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_chat_pusher`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user` bigint(20) UNSIGNED NOT NULL,
  `to_user` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from_user`, `to_user`, `content`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'from dev', '2021-04-23 13:09:57', '2021-04-23 13:09:57'),
(2, 1, 2, 'from ds', '2021-04-23 13:10:13', '2021-04-23 13:10:13'),
(3, 2, 1, 'ds 2', '2021-04-23 13:27:12', '2021-04-23 13:27:12'),
(4, 2, 1, 'dev 3', '2021-04-23 13:27:32', '2021-04-23 13:27:32'),
(5, 3, 1, 'dev 3', '2021-04-23 13:30:08', '2021-04-23 13:30:08'),
(6, 1, 2, 'sdfd asgd', '2021-04-24 03:15:26', '2021-04-24 03:15:26'),
(7, 1, 2, 'sagg gg', '2021-04-24 03:18:25', '2021-04-24 03:18:25'),
(8, 1, 2, 'rtreyey', '2021-04-24 03:24:09', '2021-04-24 03:24:09'),
(9, 1, 2, 'safasf', '2021-04-24 03:24:56', '2021-04-24 03:24:56'),
(10, 1, 2, 'yuuyuo', '2021-04-24 03:28:59', '2021-04-24 03:28:59'),
(11, 1, 3, 'hi', '2021-04-24 03:41:11', '2021-04-24 03:41:11'),
(12, 1, 3, 'hi', '2021-04-24 03:41:23', '2021-04-24 03:41:23'),
(13, 1, 3, 'hidsf', '2021-04-24 03:41:50', '2021-04-24 03:41:50'),
(14, 1, 2, 'dfhdfh', '2021-04-24 03:41:58', '2021-04-24 03:41:58'),
(15, 1, 3, 'sgsg sgs', '2021-04-24 03:44:13', '2021-04-24 03:44:13'),
(16, 1, 3, 'd shh', '2021-04-24 03:44:21', '2021-04-24 03:44:21'),
(17, 1, 3, 'rurturt dfg', '2021-04-24 03:44:30', '2021-04-24 03:44:30'),
(18, 1, 2, 'hi', '2021-04-24 03:44:35', '2021-04-24 03:44:35'),
(19, 2, 1, 'ok', '2021-04-24 03:46:04', '2021-04-24 03:46:04'),
(20, 2, 1, 'ok', '2021-04-24 03:48:19', '2021-04-24 03:48:19'),
(21, 1, 2, 'no', '2021-04-24 03:48:35', '2021-04-24 03:48:35'),
(22, 2, 1, 'yes', '2021-04-24 03:50:03', '2021-04-24 03:50:03'),
(23, 1, 2, 'very good', '2021-04-24 03:57:59', '2021-04-24 03:57:59'),
(24, 1, 2, 'okkk', '2021-04-24 03:59:23', '2021-04-24 03:59:23'),
(25, 1, 2, 'asdfasfas', '2021-04-24 03:59:42', '2021-04-24 03:59:42'),
(26, 2, 1, 'hahahah', '2021-04-24 04:00:12', '2021-04-24 04:00:12'),
(27, 1, 2, 'nooooooooooo', '2021-04-24 04:04:58', '2021-04-24 04:04:58'),
(28, 1, 2, 'yyyyyyyyy', '2021-04-24 04:06:31', '2021-04-24 04:06:31'),
(29, 1, 2, 'iiiiiiiiiii', '2021-04-24 04:07:05', '2021-04-24 04:07:05'),
(30, 1, 2, 'asfasfasf', '2021-04-24 04:07:59', '2021-04-24 04:07:59'),
(31, 1, 2, 'sdgsgs', '2021-04-24 04:09:36', '2021-04-24 04:09:36'),
(32, 1, 2, 'dfghdfh', '2021-04-24 04:16:55', '2021-04-24 04:16:55'),
(33, 1, 2, 'tttttttttt', '2021-04-24 04:17:14', '2021-04-24 04:17:14'),
(34, 1, 2, 'uuuuuuuuu', '2021-04-24 04:18:07', '2021-04-24 04:18:07'),
(35, 2, 1, 'yyyyyyyyyyy', '2021-04-24 04:19:29', '2021-04-24 04:19:29'),
(36, 1, 2, 'dfhd', '2021-04-24 04:20:28', '2021-04-24 04:20:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2021_04_23_180432_create_messages_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Delwar Sumon', 'dev1@test.com', NULL, '$2y$10$zmeM4rRZcqk09Wo/MKXzWuUCK7oLQ4j8/A3pUNSTjruDT3VjkCSry', NULL, '2021-04-23 12:44:50', '2021-04-23 12:44:50'),
(2, 'dev Sumon', 'dev2@test.com', NULL, '$2y$10$t1ROTdRYgH2WSP8tZ1Zbgu/i59f7bVjZVjZqhcffUUfhDFbZLzVXa', NULL, '2021-04-23 12:46:50', '2021-04-23 12:46:50'),
(3, 'dev 3', 'dev3@test.com', NULL, '$2y$10$ZmRjdoKswinpwW2uaCky0eO/xQwebinIykJ9xkvjPUOEQlTGGrtvG', NULL, '2021-04-23 13:29:44', '2021-04-23 13:29:44');

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
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_from_user_foreign` (`from_user`),
  ADD KEY `messages_to_user_foreign` (`to_user`);

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
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_from_user_foreign` FOREIGN KEY (`from_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `messages_to_user_foreign` FOREIGN KEY (`to_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
