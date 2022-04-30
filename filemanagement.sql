-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 30, 2022 at 07:05 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filemanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Tiếng Anh', 'TA', 'miêu tả liên quan về quản lý minh chứng', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `file_managers`
--

CREATE TABLE `file_managers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extenstion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `size` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_managers`
--

INSERT INTO `file_managers` (`id`, `name`, `feature_path`, `type`, `extenstion`, `parent_id`, `created_at`, `updated_at`, `user_id`, `size`, `description`) VALUES
(574, 'Tiếng Anh', '/storage/root/Tiếng Anh', 'folder', NULL, 0, '2022-04-20 19:54:04', '2022-04-20 19:54:04', 1, 0, 'Đây là mô tả về môn tiếng Anh'),
(575, 'Tiếng Trung', '/storage/root/Tiếng Trung', 'folder', NULL, 0, '2022-04-20 19:54:18', '2022-04-20 19:54:18', 1, 0, 'Đây là mô tả về môn tiếng Trung'),
(576, 'Tiếng Việt', '/storage/root/Tiếng Việt', 'folder', NULL, 0, '2022-04-20 19:54:33', '2022-04-30 07:04:21', 1, 0, '<p style=\"text-align: center;\"><em><strong>Quan ly ve tieng viet</strong></em></p>'),
(577, 'Criterion 1', '/storage/root/Tiếng Anh/Criterion 1', 'folder', NULL, 574, '2022-04-20 19:56:13', '2022-04-20 19:56:13', 1, 0, '0'),
(578, 'Criterion 2', '/storage/root/Tiếng Anh/Criterion 2', 'folder', NULL, 574, '2022-04-20 19:56:34', '2022-04-20 19:56:34', 1, 0, '0'),
(579, 'Criterion 3', '/storage/root/Tiếng Anh/Criterion 3', 'folder', NULL, 574, '2022-04-20 19:56:52', '2022-04-20 19:56:52', 1, 0, '0'),
(580, 'Criterion 1.1', '/storage/root/Tiếng Anh/Criterion 1/Criterion 1.1', 'folder', NULL, 577, '2022-04-20 19:57:07', '2022-04-20 19:57:07', 1, 0, '0'),
(581, 'Criterion 1.2', '/storage/root/Tiếng Anh/Criterion 1/Criterion 1.2', 'folder', NULL, 577, '2022-04-20 19:57:17', '2022-04-20 19:57:17', 1, 0, '0'),
(582, 'Criterion 1.3', '/storage/root/Tiếng Anh/Criterion 1/Criterion 1.3', 'folder', NULL, 577, '2022-04-20 19:57:26', '2022-04-20 19:57:26', 1, 0, '0'),
(583, 'Criterion 2.1', '/storage/root/Tiếng Anh/Criterion 2/Criterion 2.1', 'folder', NULL, 578, '2022-04-20 19:57:42', '2022-04-20 19:57:42', 1, 0, '0'),
(584, 'Criterion 2.2', '/storage/root/Tiếng Anh/Criterion 2/Criterion 2.2', 'folder', NULL, 578, '2022-04-20 19:57:50', '2022-04-20 19:57:50', 1, 0, '0'),
(585, 'Criterion 2.3', '/storage/root/Tiếng Anh/Criterion 2/Criterion 2.3', 'folder', NULL, 578, '2022-04-20 19:57:58', '2022-04-20 19:57:58', 1, 0, '0'),
(586, 'Criterion 3.1', '/storage/root/Tiếng Anh/Criterion 3/Criterion 3.1', 'folder', NULL, 579, '2022-04-20 19:58:20', '2022-04-20 19:58:20', 1, 0, '0'),
(587, 'Criterion 3.2', '/storage/root/Tiếng Anh/Criterion 3/Criterion 3.2', 'folder', NULL, 579, '2022-04-20 19:58:28', '2022-04-20 19:58:28', 1, 0, '0'),
(588, 'Criterion 3.3', '/storage/root/Tiếng Anh/Criterion 3/Criterion 3.3', 'folder', NULL, 579, '2022-04-20 19:58:41', '2022-04-20 19:58:41', 1, 0, '0'),
(589, 'Criterion 1', '/storage/root/Tiếng Trung/Criterion 1', 'folder', NULL, 575, '2022-04-20 19:59:21', '2022-04-20 19:59:21', 1, 0, '0'),
(590, 'Criterion 2', '/storage/root/Tiếng Trung/Criterion 2', 'folder', NULL, 575, '2022-04-20 19:59:35', '2022-04-20 19:59:35', 1, 0, '0'),
(591, 'Criterion 3', '/storage/root/Tiếng Trung/Criterion 3', 'folder', NULL, 575, '2022-04-20 19:59:47', '2022-04-20 19:59:47', 1, 0, '0'),
(592, 'Criterion 1.1', '/storage/root/Tiếng Trung/Criterion 1/Criterion 1.1', 'folder', NULL, 589, '2022-04-20 19:59:58', '2022-04-20 19:59:58', 1, 0, '0'),
(593, 'Criterion 1.2', '/storage/root/Tiếng Trung/Criterion 1/Criterion 1.2', 'folder', NULL, 589, '2022-04-20 20:00:14', '2022-04-20 20:00:14', 1, 0, '0'),
(594, 'Criterion 1.3', '/storage/root/Tiếng Trung/Criterion 1/Criterion 1.3', 'folder', NULL, 589, '2022-04-20 20:00:24', '2022-04-20 20:00:24', 1, 0, '0'),
(595, 'Criterion 2.1', '/storage/root/Tiếng Trung/Criterion 2/Criterion 2.1', 'folder', NULL, 590, '2022-04-20 20:01:26', '2022-04-20 20:01:26', 1, 0, '0'),
(596, 'Criterion 2.2', '/storage/root/Tiếng Trung/Criterion 2/Criterion 2.2', 'folder', NULL, 590, '2022-04-20 20:01:34', '2022-04-20 20:01:34', 1, 0, '0'),
(597, 'Criterion 2.3', '/storage/root/Tiếng Trung/Criterion 2/Criterion 2.3', 'folder', NULL, 590, '2022-04-20 20:01:41', '2022-04-20 20:01:41', 1, 0, '0'),
(598, 'Criterion 3.1', '/storage/root/Tiếng Trung/Criterion 3/Criterion 3.1', 'folder', NULL, 591, '2022-04-20 20:02:01', '2022-04-20 20:02:01', 1, 0, '0'),
(599, 'Criterion 3.2', '/storage/root/Tiếng Trung/Criterion 3/Criterion 3.2', 'folder', NULL, 591, '2022-04-20 20:02:09', '2022-04-20 20:02:09', 1, 0, '0'),
(600, 'Criterion 3.3', '/storage/root/Tiếng Trung/Criterion 3/Criterion 3.3', 'folder', NULL, 591, '2022-04-20 20:02:16', '2022-04-20 20:02:16', 1, 0, '0'),
(601, 'Criterion 1', '/storage/root/Tiếng Việt/Criterion 1', 'folder', NULL, 576, '2022-04-20 20:02:36', '2022-04-20 20:02:36', 1, 0, '0'),
(602, 'Criterion 2', '/storage/root/Tiếng Việt/Criterion 2', 'folder', NULL, 576, '2022-04-20 20:02:45', '2022-04-20 20:02:45', 1, 0, '0'),
(603, 'Criterion 3', '/storage/root/Tiếng Việt/Criterion 3', 'folder', NULL, 576, '2022-04-20 20:02:52', '2022-04-20 20:02:52', 1, 0, '0'),
(604, 'Criterion 1.1', '/storage/root/Tiếng Việt/Criterion 1/Criterion 1.1', 'folder', NULL, 601, '2022-04-20 20:04:08', '2022-04-20 20:04:08', 1, 0, '0'),
(605, 'Criterion 1.2', '/storage/root/Tiếng Việt/Criterion 1/Criterion 1.2', 'folder', NULL, 601, '2022-04-20 20:04:16', '2022-04-20 20:04:16', 1, 0, '0'),
(606, 'Criterion 1.3', '/storage/root/Tiếng Việt/Criterion 1/Criterion 1.3', 'folder', NULL, 601, '2022-04-20 20:04:25', '2022-04-20 20:04:25', 1, 0, '0'),
(607, 'Criterion 2.1', '/storage/root/Tiếng Việt/Criterion 2/Criterion 2.1', 'folder', NULL, 602, '2022-04-20 20:04:44', '2022-04-20 20:04:44', 1, 0, '0'),
(608, 'Criterion 2.2', '/storage/root/Tiếng Việt/Criterion 2/Criterion 2.2', 'folder', NULL, 602, '2022-04-20 20:04:56', '2022-04-20 20:04:56', 1, 0, '0'),
(609, 'Criterion 2.3', '/storage/root/Tiếng Việt/Criterion 2/Criterion 2.3', 'folder', NULL, 602, '2022-04-20 20:05:03', '2022-04-20 20:05:03', 1, 0, '0'),
(610, 'Criterion 3.1', '/storage/root/Tiếng Việt/Criterion 3/Criterion 3.1', 'folder', NULL, 603, '2022-04-20 20:05:13', '2022-04-20 20:05:13', 1, 0, '0'),
(611, 'Criterion 3.2', '/storage/root/Tiếng Việt/Criterion 3/Criterion 3.2', 'folder', NULL, 603, '2022-04-20 20:05:21', '2022-04-20 20:05:21', 1, 0, '0'),
(612, 'Criterion 3.3', '/storage/root/Tiếng Việt/Criterion 3/Criterion 3.3', 'folder', NULL, 603, '2022-04-20 20:05:29', '2022-04-20 20:05:29', 1, 0, '0'),
(615, 'linh tinh', '/storage/root/linh tinh', 'folder', NULL, 577, '2022-04-30 08:54:51', '2022-04-30 08:54:51', 1, 0, '<p>lien quan lin tinh</p>'),
(617, 'linh tinh', '/storage/root/linh tinh', 'folder', NULL, 574, '2022-04-30 09:45:37', '2022-04-30 09:45:37', 1, 0, '<p>lien quan lin tinh</p>'),
(618, 'daylafiledocs.docx', '/storage/root/linh tinh/daylafiledocs.docx', 'file', 'docx', 617, '2022-04-30 09:48:39', '2022-04-30 10:04:19', 1, 54498, '<p>value=\"</p>\r\n<p><strong>mo ta tai lieu ve phan linh tiinh&nbsp;</strong></p>');

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
(3, '2021_05_07_141558_create_file_manas_table', 2),
(4, '2021_05_07_142108_create_file_managers_table', 3),
(5, '2021_05_08_015343_add_colum_user_id', 4),
(6, '2021_05_08_123758_add_colum_size_to_table_file_managers', 5),
(7, '2021_05_15_075108_add_colum_image_path_user_table', 6),
(8, '2021_05_15_090353_create_table_roles', 7),
(9, '2021_05_15_094536_add_role_user_table', 8),
(10, '2021_05_15_120644_add_colum_deleted_at_table_user', 9),
(11, '2021_05_16_130403_create_permission_table', 10),
(12, '2021_05_16_134103_create_permission_role_table', 11),
(13, '2021_05_16_140256_add_colum_delete_at_roles_table', 12),
(14, '2022_04_21_034657_create_categories_table', 13),
(15, '2022_04_21_070731_add_description_to_file_managers_table', 14);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `key_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `parent_id`, `key_code`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'dashboard', 0, '', NULL, NULL),
(2, 'list', 'list', 1, 'list_dashboard', NULL, NULL),
(3, 'delete', 'delete', 1, 'delete_dashboard', NULL, NULL),
(4, 'download', 'download', 1, 'download_dashboard', NULL, NULL),
(5, 'files', 'files', 0, '', NULL, NULL),
(6, 'list', 'list', 5, 'list_files', NULL, NULL),
(7, 'add_folder', 'add_folder', 5, 'add_folder_files', NULL, NULL),
(8, 'download', 'download', 5, 'download_files', NULL, NULL),
(9, 'edit', 'edit', 5, 'edit_files', NULL, NULL),
(10, 'delete', 'delete', 5, 'delete_files', NULL, NULL),
(11, 'upload', 'upload', 0, '', NULL, NULL),
(12, 'upload_file', 'upload_file', 11, 'upload_file_upload', NULL, NULL),
(13, 'user', 'user', 0, '', NULL, NULL),
(14, 'list', 'list', 13, 'list_user', NULL, NULL),
(15, 'add', 'add', 13, 'add_user', NULL, NULL),
(16, 'edit', 'edit', 13, 'edit_user', NULL, NULL),
(17, 'delete', 'delete', 13, 'delete_user', NULL, NULL),
(18, 'role', 'role', 0, '', NULL, NULL),
(19, 'list', 'list', 18, 'list_role', NULL, NULL),
(20, 'add', 'add', 18, 'add_role', NULL, NULL),
(21, 'edit', 'edit', 18, 'edit_role', NULL, NULL),
(22, 'delete', 'delete', 18, 'delete_role', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(59, 7, 2, NULL, NULL),
(60, 7, 3, NULL, NULL),
(61, 7, 4, NULL, NULL),
(62, 7, 6, NULL, NULL),
(63, 7, 7, NULL, NULL),
(64, 7, 8, NULL, NULL),
(65, 7, 9, NULL, NULL),
(66, 7, 10, NULL, NULL),
(67, 7, 12, NULL, NULL),
(68, 7, 14, NULL, NULL),
(69, 7, 15, NULL, NULL),
(70, 7, 16, NULL, NULL),
(71, 7, 17, NULL, NULL),
(72, 7, 19, NULL, NULL),
(73, 7, 20, NULL, NULL),
(74, 7, 21, NULL, NULL),
(75, 7, 22, NULL, NULL),
(76, 8, 2, NULL, NULL),
(77, 8, 6, NULL, NULL),
(87, 8, 4, NULL, NULL),
(88, 8, 8, NULL, NULL),
(92, 9, 2, NULL, NULL),
(94, 9, 4, NULL, NULL),
(103, 9, 6, NULL, NULL),
(111, 9, 7, NULL, NULL),
(112, 9, 8, NULL, NULL),
(113, 9, 9, NULL, NULL),
(114, 9, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'admin', 'Quản trị hệ thống', '2021-05-16 07:17:30', '2021-05-16 07:21:58', NULL),
(8, 'guest', 'Khách hàng', '2021-05-16 07:23:12', '2021-05-16 07:23:12', NULL),
(9, 'member', 'Người chỉnh sửa nội dung', '2021-05-16 07:23:44', '2021-05-16 07:23:44', NULL),
(10, 'khach moi', 'khach moi', '2021-05-16 07:28:02', '2021-05-16 07:28:28', '2021-05-16 07:28:28');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(25, 1, 7, NULL, NULL),
(26, 2, 9, NULL, NULL),
(27, 27, 8, NULL, NULL),
(32, 26, 8, NULL, NULL),
(33, 29, 9, NULL, NULL),
(34, 30, 9, NULL, NULL),
(35, 31, 9, NULL, NULL),
(36, 32, 8, NULL, NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `image_path`) VALUES
(1, 'Nguyễn Quốc Vương', 'vu0nqnq@gmail.com', NULL, '$2y$10$cco.lzXm7BaEdohTn/apguAqPUDkR1fCESUummagbuI0oYjrAhM2e', '8DrfB9Z0Ehd2UdzdrhDPtAaiOXtivzitZip7w3JyDH6WjjiC5mREYEvcFiLw', NULL, '2021-05-16 07:23:52', NULL, 'user/1621082368.jpg'),
(2, 'Member', 'member@gmail.com', NULL, '$2y$10$L.YnF39isXPIW5hk8BSsC.NJ39/c92d3EyxoQthUb9eKpwfI2nJM6', NULL, NULL, '2021-05-17 22:09:22', '2021-05-17 22:09:22', 'user/1621082379.jpg'),
(26, 'Nguyen Linh', 'linh191az@gmail.com', NULL, '$2y$10$450nLT2eF5/Iidst2wRDzu/I73M5vd8bAwrWwGRQ4sgY8/vvqpSKy', NULL, '2021-05-15 05:20:13', '2021-05-17 22:09:17', '2021-05-17 22:09:17', 'user/1621082354.jpg'),
(28, 'Linh Linh', 'linhnkctk42@gmail.com', NULL, '$2y$10$L.YnF39isXPIW5hk8BSsC.NJ39/c92d3EyxoQthUb9eKpwfI2nJM6', NULL, '2021-05-15 07:05:59', '2021-05-16 08:58:14', '2021-05-16 08:58:14', 'user/1621087569.jpg'),
(29, 'Thành viên  1', 'member1@gmail.com', NULL, '$2y$10$fGxtt5NO/9/shuO0h7KqHehKS03B9VvuGHt6pVNq73JglIH0cs5sK', NULL, '2021-05-17 22:28:15', '2021-05-17 22:28:15', NULL, 'user/1621315695.jpg'),
(30, 'Thành viên  2', 'member2@gmail.com', NULL, '$2y$10$FjAU9oFxPvGRdAdYWoWvk.R04NvUZR3N.B8v7IB5X0fyXk5u0E4zC', NULL, '2021-05-17 22:28:42', '2021-05-17 22:28:42', NULL, 'user/1621315722.jpg'),
(31, 'Thành viên  3', 'member3@gmail.com', NULL, '$2y$10$eE1.NZC9biCzedQ5F00/wuaMJipNe6fkHwBBQ.SAWXr.llz3SBBly', NULL, '2021-05-17 22:29:08', '2021-05-17 22:29:08', NULL, 'user/1621315748.jpg'),
(32, 'Khách hàng', 'khach@gmail.com', NULL, '$2y$10$KA.XrAHQDzUggiQpqSN8iOhcERx6sllMO9JOj8F9FCJje5fEQyCzG', NULL, '2021-05-17 22:30:25', '2021-05-17 22:30:25', NULL, 'user/1621315825.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_managers`
--
ALTER TABLE `file_managers`
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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `file_managers`
--
ALTER TABLE `file_managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=619;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
