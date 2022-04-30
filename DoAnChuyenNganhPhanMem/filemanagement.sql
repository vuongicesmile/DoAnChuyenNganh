-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 11, 2021 lúc 08:02 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `filemanagement`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `file_managers`
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
  `size` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `file_managers`
--

INSERT INTO `file_managers` (`id`, `name`, `feature_path`, `type`, `extenstion`, `parent_id`, `created_at`, `updated_at`, `user_id`, `size`) VALUES
(364, 'folder1', '/storage/root/folder1', 'folder', NULL, 0, '2021-05-13 00:03:42', '2021-05-13 00:03:42', 1, 0),
(434, 'folder2', '/storage/root/folder2', 'folder', NULL, 0, '2021-05-15 06:21:54', '2021-05-15 06:21:54', 1, 0),
(486, 'folder2.1', '/storage/root/folder2/folder2.1', 'folder', NULL, 434, '2021-05-16 08:30:01', '2021-05-16 08:30:01', 2, 0),
(495, 'folder1.1', '/storage/root/folder1/folder1.1', 'folder', NULL, 364, '2021-05-17 22:20:21', '2021-05-17 22:20:21', 1, 0),
(496, 'folder1.2', '/storage/root/folder1/folder1.2', 'folder', NULL, 364, '2021-05-17 22:26:10', '2021-05-17 22:26:10', 1, 0),
(497, 'A74-1.png', '/storage/root/folder1/A74-1.png', 'file', 'png', 364, '2021-05-17 22:27:15', '2021-05-17 22:27:15', 1, 492310),
(498, 'A74-2.png', '/storage/root/folder1/A74-2.png', 'file', 'png', 364, '2021-05-17 22:27:15', '2021-05-17 22:27:15', 1, 356131),
(499, 'A74-3.png', '/storage/root/folder1/A74-3.png', 'file', 'png', 364, '2021-05-17 22:27:15', '2021-05-17 22:27:15', 1, 480900),
(500, 'A74-4.png', '/storage/root/folder1/A74-4.png', 'file', 'png', 364, '2021-05-17 22:27:15', '2021-05-17 22:27:15', 1, 276388),
(501, 'iphone11-1.jpg', '/storage/root/folder1/iphone11-1.jpg', 'file', 'jpg', 364, '2021-05-17 22:27:15', '2021-05-17 22:27:15', 1, 42762),
(502, 'iphone11-2.jpg', '/storage/root/folder1/iphone11-2.jpg', 'file', 'jpg', 364, '2021-05-17 22:27:15', '2021-05-17 22:27:15', 1, 307714),
(503, 'iphone11-3.jpg', '/storage/root/folder1/iphone11-3.jpg', 'file', 'jpg', 364, '2021-05-17 22:27:15', '2021-05-17 22:27:15', 1, 232019),
(504, 'iphone11-4.jpg', '/storage/root/folder1/iphone11-4.jpg', 'file', 'jpg', 364, '2021-05-17 22:27:15', '2021-05-17 22:27:15', 1, 83609),
(505, 'iphone-12-1.jpg', '/storage/root/folder1/iphone-12-1.jpg', 'file', 'jpg', 364, '2021-05-17 22:27:15', '2021-05-17 22:27:15', 1, 44617),
(506, 'Iphone12-2.jpg', '/storage/root/folder1/Iphone12-2.jpg', 'file', 'jpg', 364, '2021-05-17 22:27:15', '2021-05-17 22:27:15', 1, 8503),
(507, 'Iphone12-3.jpg', '/storage/root/folder1/Iphone12-3.jpg', 'file', 'jpg', 364, '2021-05-17 22:27:15', '2021-05-17 22:27:15', 1, 34879),
(508, 'reno5-1.jpg', '/storage/root/folder1/reno5-1.jpg', 'file', 'jpg', 364, '2021-05-17 22:27:15', '2021-05-17 22:27:15', 1, 50224),
(509, 'reno5-2.jpg', '/storage/root/folder1/reno5-2.jpg', 'file', 'jpg', 364, '2021-05-17 22:27:15', '2021-05-17 22:27:15', 1, 215372),
(510, 'reno5-3.jpg', '/storage/root/folder1/reno5-3.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:20', '2021-05-17 22:32:20', 29, 294983),
(511, 'reno5-4.jpg', '/storage/root/folder1/reno5-4.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:20', '2021-05-17 22:32:20', 29, 330276),
(512, 'samsung-galaxy-note-20-ultra-5g-trang-094920-014920.jpg', '/storage/root/folder1/samsung-galaxy-note-20-ultra-5g-trang-094920-014920.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:20', '2021-05-17 22:32:20', 29, 78030),
(513, 'samsung-note-20-ultra-1.jpg', '/storage/root/folder1/samsung-note-20-ultra-1.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:20', '2021-05-17 22:32:20', 29, 171518),
(514, 'Xiaomi-Note10-1.jpg', '/storage/root/folder1/Xiaomi-Note10-1.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:20', '2021-05-17 22:32:20', 29, 47576),
(515, 'Xiaomi-Note10-2.jpg', '/storage/root/folder1/Xiaomi-Note10-2.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:20', '2021-05-17 22:32:20', 29, 37432),
(516, 'Xiaomi-Note10-3.jpg', '/storage/root/folder1/Xiaomi-Note10-3.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:20', '2021-05-17 22:32:20', 29, 38339),
(517, 'Xiaomi-Note10-4.jpg', '/storage/root/folder1/Xiaomi-Note10-4.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:20', '2021-05-17 22:32:20', 29, 42783),
(518, 'acer-aspire-1.jpg', '/storage/root/folder1/acer-aspire-1.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:48', '2021-05-17 22:32:48', 30, 35417),
(519, 'acer-aspire-2.jpg', '/storage/root/folder1/acer-aspire-2.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:48', '2021-05-17 22:32:48', 30, 207187),
(520, 'acer-aspire-3.jpg', '/storage/root/folder1/acer-aspire-3.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:48', '2021-05-17 22:32:48', 30, 38485),
(521, 'acer-aspire-4.jpg', '/storage/root/folder1/acer-aspire-4.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:48', '2021-05-17 22:32:48', 30, 245920),
(522, 'asus-vivo-1.jpg', '/storage/root/folder1/asus-vivo-1.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:48', '2021-05-17 22:32:48', 30, 49302),
(523, 'asus-vivo-2.jpg', '/storage/root/folder1/asus-vivo-2.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:48', '2021-05-17 22:32:48', 30, 55820),
(524, 'asus-vivo-3.jpg', '/storage/root/folder1/asus-vivo-3.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:48', '2021-05-17 22:32:48', 30, 152558),
(525, 'asus-vivo-4.jpg', '/storage/root/folder1/asus-vivo-4.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:48', '2021-05-17 22:32:48', 30, 234422),
(526, 'hp-g7-1.jpg', '/storage/root/folder1/hp-g7-1.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:48', '2021-05-17 22:32:48', 30, 43731),
(527, 'hp-g7-2.jpg', '/storage/root/folder1/hp-g7-2.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:48', '2021-05-17 22:32:48', 30, 182738),
(528, 'hp-g7-3.jpg', '/storage/root/folder1/hp-g7-3.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:48', '2021-05-17 22:32:48', 30, 126484),
(529, 'hp-g7-4.jpg', '/storage/root/folder1/hp-g7-4.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:48', '2021-05-17 22:32:48', 30, 96739),
(530, 'macbook_pro_m1.jpg', '/storage/root/folder1/macbook_pro_m1.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:48', '2021-05-17 22:32:48', 30, 66866),
(531, 'macbook_pro_m1_2.jpg', '/storage/root/folder1/macbook_pro_m1_2.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:48', '2021-05-17 22:32:48', 30, 75341),
(532, 'macbook_pro_m1_3.jpg', '/storage/root/folder1/macbook_pro_m1_3.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:48', '2021-05-17 22:32:48', 30, 68604),
(533, 'macbook_pro_m1_4.jpg', '/storage/root/folder1/macbook_pro_m1_4.jpg', 'file', 'jpg', 364, '2021-05-17 22:32:48', '2021-05-17 22:32:48', 30, 41152),
(534, 'LARAVEL PHP FRAMEWORK(TT).pptx', '/storage/root/folder1/LARAVEL PHP FRAMEWORK(TT).pptx', 'file', 'pptx', 364, '2021-05-17 22:33:46', '2021-05-17 22:33:46', 31, 1591480),
(535, 'laravel.docx', '/storage/root/folder1/laravel.docx', 'file', 'docx', 364, '2021-05-17 22:33:46', '2021-05-17 22:33:46', 31, 27638405),
(536, 'New Text Document.txt', '/storage/root/folder1/New Text Document.txt', 'file', 'txt', 364, '2021-05-17 22:33:46', '2021-05-17 22:33:46', 31, 535),
(537, 'TuHocPython.docx', '/storage/root/folder1/TuHocPython.docx', 'file', 'docx', 364, '2021-05-17 22:33:46', '2021-05-17 22:33:46', 31, 419197),
(538, 'wordpress.docx', '/storage/root/folder1/wordpress.docx', 'file', 'docx', 364, '2021-05-17 22:33:46', '2021-05-17 22:33:46', 31, 716649),
(539, 'Thuc hanh XS - Part1 - CTK42.pdf', '/storage/root/folder1/Thuc hanh XS - Part1 - CTK42.pdf', 'file', 'pdf', 364, '2021-05-17 22:34:21', '2021-05-17 22:34:21', 31, 286858),
(540, 'XS_TK.zip', '/storage/root/folder1/XS_TK.zip', 'file', 'zip', 364, '2021-05-17 22:34:21', '2021-05-17 22:34:21', 31, 23859107),
(542, 'Filedash.mp4', '/storage/root/folder1/Filedash.mp4', 'file', 'mp4', 364, '2021-05-17 22:34:57', '2021-05-17 22:34:57', 1, 8670489),
(543, 'Filedash2.mp4', '/storage/root/folder1/Filedash2.mp4', 'file', 'mp4', 364, '2021-05-17 22:35:10', '2021-05-17 22:35:10', 1, 8670489),
(544, 'Probability\'s Exercises for Information Technology.pdf', '/storage/root/folder1/Probability\'s Exercises for Information Technology.pdf', 'file', 'pdf', 364, '2021-05-17 22:36:44', '2021-05-17 22:36:44', 1, 7385176),
(545, 'folder1.2.1', '/storage/root/folder1/folder1.2/folder1.2.1', 'folder', NULL, 496, '2021-05-20 19:15:30', '2021-05-20 19:15:30', 1, 0),
(546, 'BaoCao (1).pptx', '/storage/root/folder1/folder1.2/folder1.2.1/BaoCao (1).pptx', 'file', 'pptx', 545, '2021-05-20 19:15:43', '2021-05-20 19:15:43', 1, 4203678),
(547, 'ĐỒ-ÁN-CƠ-SỞ.docx', '/storage/root/folder1/folder1.2/folder1.2.1/ĐỒ-ÁN-CƠ-SỞ.docx', 'file', 'docx', 545, '2021-05-20 19:15:43', '2021-05-20 19:15:43', 1, 621939),
(548, 'folder moi', '/storage/root/folder1/folder1.1/folder moi', 'folder', NULL, 495, '2021-05-20 19:27:03', '2021-05-20 19:27:03', 1, 0),
(549, 'ĐỒ-ÁN-CƠ-SỞ.docx', '/storage/root/folder1/folder1.1/folder moi/ĐỒ-ÁN-CƠ-SỞ.docx', 'file', 'docx', 548, '2021-05-20 19:27:16', '2021-05-20 19:27:16', 1, 621939);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
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
(13, '2021_05_16_140256_add_colum_delete_at_roles_table', 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
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
-- Đang đổ dữ liệu cho bảng `permissions`
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
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
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
-- Cấu trúc bảng cho bảng `roles`
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
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'admin', 'Quản trị hệ thống', '2021-05-16 07:17:30', '2021-05-16 07:21:58', NULL),
(8, 'guest', 'Khách hàng', '2021-05-16 07:23:12', '2021-05-16 07:23:12', NULL),
(9, 'member', 'Người chỉnh sửa nội dung', '2021-05-16 07:23:44', '2021-05-16 07:23:44', NULL),
(10, 'khach moi', 'khach moi', '2021-05-16 07:28:02', '2021-05-16 07:28:28', '2021-05-16 07:28:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
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
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `image_path`) VALUES
(1, 'Nguyễn Khánh Linh', 'khanhlinh1475@gmail.com', NULL, '$2y$10$cco.lzXm7BaEdohTn/apguAqPUDkR1fCESUummagbuI0oYjrAhM2e', '8DrfB9Z0Ehd2UdzdrhDPtAaiOXtivzitZip7w3JyDH6WjjiC5mREYEvcFiLw', NULL, '2021-05-16 07:23:52', NULL, 'user/1621082368.jpg'),
(2, 'Member', 'member@gmail.com', NULL, '$2y$10$L.YnF39isXPIW5hk8BSsC.NJ39/c92d3EyxoQthUb9eKpwfI2nJM6', NULL, NULL, '2021-05-17 22:09:22', '2021-05-17 22:09:22', 'user/1621082379.jpg'),
(26, 'Nguyen Linh', 'linh191az@gmail.com', NULL, '$2y$10$450nLT2eF5/Iidst2wRDzu/I73M5vd8bAwrWwGRQ4sgY8/vvqpSKy', NULL, '2021-05-15 05:20:13', '2021-05-17 22:09:17', '2021-05-17 22:09:17', 'user/1621082354.jpg'),
(28, 'Linh Linh', 'linhnkctk42@gmail.com', NULL, '$2y$10$L.YnF39isXPIW5hk8BSsC.NJ39/c92d3EyxoQthUb9eKpwfI2nJM6', NULL, '2021-05-15 07:05:59', '2021-05-16 08:58:14', '2021-05-16 08:58:14', 'user/1621087569.jpg'),
(29, 'Thành viên  1', 'member1@gmail.com', NULL, '$2y$10$fGxtt5NO/9/shuO0h7KqHehKS03B9VvuGHt6pVNq73JglIH0cs5sK', NULL, '2021-05-17 22:28:15', '2021-05-17 22:28:15', NULL, 'user/1621315695.jpg'),
(30, 'Thành viên  2', 'member2@gmail.com', NULL, '$2y$10$FjAU9oFxPvGRdAdYWoWvk.R04NvUZR3N.B8v7IB5X0fyXk5u0E4zC', NULL, '2021-05-17 22:28:42', '2021-05-17 22:28:42', NULL, 'user/1621315722.jpg'),
(31, 'Thành viên  3', 'member3@gmail.com', NULL, '$2y$10$eE1.NZC9biCzedQ5F00/wuaMJipNe6fkHwBBQ.SAWXr.llz3SBBly', NULL, '2021-05-17 22:29:08', '2021-05-17 22:29:08', NULL, 'user/1621315748.jpg'),
(32, 'Khách hàng', 'khach@gmail.com', NULL, '$2y$10$KA.XrAHQDzUggiQpqSN8iOhcERx6sllMO9JOj8F9FCJje5fEQyCzG', NULL, '2021-05-17 22:30:25', '2021-05-17 22:30:25', NULL, 'user/1621315825.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `file_managers`
--
ALTER TABLE `file_managers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `file_managers`
--
ALTER TABLE `file_managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=550;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
