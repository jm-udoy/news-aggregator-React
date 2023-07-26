-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2022 at 07:14 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visitor_news_aggregator`
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
-- Table structure for table `magazines`
--

CREATE TABLE `magazines` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `magazines`
--

INSERT INTO `magazines` (`id`, `title`, `description`, `image_path`, `category`) VALUES
(1, 'Magazine Title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent laoreet nulla sed neque efficitur, sit amet vehicula neque iaculis. Nullam blandit ac dui quis porttitor. Praesent molestie sit amet erat eget elementum. Cras euismod dignissim magna nec suscipit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed faucibus ac magna at hendrerit. Fusce fermentum vitae metus nec pellentesque. Praesent interdum leo id tristique condimentum. Fusce posuere, dui non gravida pulvinar, purus est gravida mauris, eget lobortis velit leo sit amet lorem. Pellentesque ac lectus dui.', 'm1.jpg', 'magazine'),
(2, 'Magazine Title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent laoreet nulla sed neque efficitur, sit amet vehicula neque iaculis. Nullam blandit ac dui quis porttitor. Praesent molestie sit amet erat eget elementum. Cras euismod dignissim magna nec suscipit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed faucibus ac magna at hendrerit. Fusce fermentum vitae metus nec pellentesque. Praesent interdum leo id tristique condimentum. Fusce posuere, dui non gravida pulvinar, purus est gravida mauris, eget lobortis velit leo sit amet lorem. Pellentesque ac lectus dui.', 'm2.jpg', 'magazine'),
(3, 'Magazine Title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent laoreet nulla sed neque efficitur, sit amet vehicula neque iaculis. Nullam blandit ac dui quis porttitor. Praesent molestie sit amet erat eget elementum. Cras euismod dignissim magna nec suscipit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed faucibus ac magna at hendrerit. Fusce fermentum vitae metus nec pellentesque. Praesent interdum leo id tristique condimentum. Fusce posuere, dui non gravida pulvinar, purus est gravida mauris, eget lobortis velit leo sit amet lorem. Pellentesque ac lectus dui.', 'm3.jpg', 'magazine');

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
(12, '2014_10_12_000000_create_users_table', 1),
(13, '2014_10_12_100000_create_password_resets_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(16, '2022_03_12_184045_create_visitors_table', 1),
(17, '2022_03_13_193905_create_magazines_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `title`, `description`, `priority`, `image_path`, `created_at`, `updated_at`, `category`) VALUES
(1, 'This is news title number 01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et elit nec dolor vehicula accumsan in nec sem. Sed varius orci eu leo consectetur, in aliquam odio venenatis. Vivamus diam lacus, eleifend cursus fringilla sit amet, egestas sit amet metus. Integer pretium quam ac leo efficitur, vel porttitor tellus rutrum. Sed suscipit elementum velit ut venenatis. Aenean id feugiat arcu. Vivamus in justo elit. Nullam malesuada imperdiet mi ac sollicitudin.', 'High', 'news1.jpg', NULL, '2022-03-13 19:50:58', 'business'),
(2, 'This is news title number 02', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et elit nec dolor vehicula accumsan in nec sem. Sed varius orci eu leo consectetur, in aliquam odio venenatis. Vivamus diam lacus, eleifend cursus fringilla sit amet, egestas sit amet metus. Integer pretium quam ac leo efficitur, vel porttitor tellus rutrum. Sed suscipit elementum velit ut venenatis. Aenean id feugiat arcu. Vivamus in justo elit. Nullam malesuada imperdiet mi ac sollicitudin.', 'Normal', 'news2.jpg', NULL, NULL, 'business'),
(3, 'This is news title number 03', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et elit nec dolor vehicula accumsan in nec sem. Sed varius orci eu leo consectetur, in aliquam odio venenatis. Vivamus diam lacus, eleifend cursus fringilla sit amet, egestas sit amet metus. Integer pretium quam ac leo efficitur, vel porttitor tellus rutrum. Sed suscipit elementum velit ut venenatis. Aenean id feugiat arcu. Vivamus in justo elit. Nullam malesuada imperdiet mi ac sollicitudin.', 'Normal', 'news3.jpg', NULL, NULL, 'business'),
(4, 'This is an important! news title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et elit nec dolor vehicula accumsan in nec sem. Sed varius orci eu leo consectetur, in aliquam odio venenatis. Vivamus diam lacus, eleifend cursus fringilla sit amet, egestas sit amet metus. Integer pretium quam ac leo efficitur, vel porttitor tellus rutrum. Sed suscipit elementum velit ut venenatis. Aenean id feugiat arcu. Vivamus in justo elit. Nullam malesuada imperdiet mi ac sollicitudin.', 'Low', 'news4.jpg', NULL, NULL, 'art'),
(5, 'This is an important! news title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et elit nec dolor vehicula accumsan in nec sem. Sed varius orci eu leo consectetur, in aliquam odio venenatis. Vivamus diam lacus, eleifend cursus fringilla sit amet, egestas sit amet metus. Integer pretium quam ac leo efficitur, vel porttitor tellus rutrum. Sed suscipit elementum velit ut venenatis. Aenean id feugiat arcu. Vivamus in justo elit. Nullam malesuada imperdiet mi ac sollicitudin.', 'Low', 'news5.jpg', NULL, NULL, 'politics'),
(6, 'This is an important! news title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et elit nec dolor vehicula accumsan in nec sem. Sed varius orci eu leo consectetur, in aliquam odio venenatis. Vivamus diam lacus, eleifend cursus fringilla sit amet, egestas sit amet metus. Integer pretium quam ac leo efficitur, vel porttitor tellus rutrum. Sed suscipit elementum velit ut venenatis. Aenean id feugiat arcu. Vivamus in justo elit. Nullam malesuada imperdiet mi ac sollicitudin.', 'High', 'news6.jpg', NULL, NULL, 'politics'),
(7, 'This is an important! news title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et elit nec dolor vehicula accumsan in nec sem. Sed varius orci eu leo consectetur, in aliquam odio venenatis. Vivamus diam lacus, eleifend cursus fringilla sit amet, egestas sit amet metus. Integer pretium quam ac leo efficitur, vel porttitor tellus rutrum. Sed suscipit elementum velit ut venenatis. Aenean id feugiat arcu. Vivamus in justo elit. Nullam malesuada imperdiet mi ac sollicitudin.', 'Normal', 'news7.jpg', NULL, NULL, 'politics'),
(8, 'This is an important! news title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et elit nec dolor vehicula accumsan in nec sem. Sed varius orci eu leo consectetur, in aliquam odio venenatis. Vivamus diam lacus, eleifend cursus fringilla sit amet, egestas sit amet metus. Integer pretium quam ac leo efficitur, vel porttitor tellus rutrum. Sed suscipit elementum velit ut venenatis. Aenean id feugiat arcu. Vivamus in justo elit. Nullam malesuada imperdiet mi ac sollicitudin.', 'Low', 'news8.jpg', NULL, NULL, 'sports'),
(9, 'This is an important! news title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et elit nec dolor vehicula accumsan in nec sem. Sed varius orci eu leo consectetur, in aliquam odio venenatis. Vivamus diam lacus, eleifend cursus fringilla sit amet, egestas sit amet metus. Integer pretium quam ac leo efficitur, vel porttitor tellus rutrum. Sed suscipit elementum velit ut venenatis. Aenean id feugiat arcu. Vivamus in justo elit. Nullam malesuada imperdiet mi ac sollicitudin.', 'Low', 'news9.jpg', NULL, NULL, 'sports'),
(10, 'This is an important! news title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et elit nec dolor vehicula accumsan in nec sem. Sed varius orci eu leo consectetur, in aliquam odio venenatis. Vivamus diam lacus, eleifend cursus fringilla sit amet, egestas sit amet metus. Integer pretium quam ac leo efficitur, vel porttitor tellus rutrum. Sed suscipit elementum velit ut venenatis. Aenean id feugiat arcu. Vivamus in justo elit. Nullam malesuada imperdiet mi ac sollicitudin.', 'Low', 'news10.jpg', NULL, NULL, 'art'),
(11, 'This is an important! news title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et elit nec dolor vehicula accumsan in nec sem. Sed varius orci eu leo consectetur, in aliquam odio venenatis. Vivamus diam lacus, eleifend cursus fringilla sit amet, egestas sit amet metus. Integer pretium quam ac leo efficitur, vel porttitor tellus rutrum. Sed suscipit elementum velit ut venenatis. Aenean id feugiat arcu. Vivamus in justo elit. Nullam malesuada imperdiet mi ac sollicitudin.', 'Normal', 'news11.jpg', NULL, NULL, 'art'),
(12, 'This is an important! news title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et elit nec dolor vehicula accumsan in nec sem. Sed varius orci eu leo consectetur, in aliquam odio venenatis. Vivamus diam lacus, eleifend cursus fringilla sit amet, egestas sit amet metus. Integer pretium quam ac leo efficitur, vel porttitor tellus rutrum. Sed suscipit elementum velit ut venenatis. Aenean id feugiat arcu. Vivamus in justo elit. Nullam malesuada imperdiet mi ac sollicitudin.', 'High', 'news12.jpg', NULL, NULL, 'business');

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
-- Indexes for table `magazines`
--
ALTER TABLE `magazines`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `magazines`
--
ALTER TABLE `magazines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
