-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 28, 2019 lúc 07:14 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duhocirelandv2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `andradedev_subscribe_subscribers`
--

CREATE TABLE `andradedev_subscribe_subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_access_log`
--

CREATE TABLE `backend_access_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '::1', '2019-11-24 21:15:12', '2019-11-24 21:15:12'),
(2, 1, '::1', '2019-11-26 06:14:25', '2019-11-26 06:14:25'),
(3, 1, '::1', '2019-11-26 20:41:31', '2019-11-26 20:41:31'),
(4, 1, '::1', '2019-11-27 07:58:31', '2019-11-27 07:58:31'),
(5, 1, '::1', '2019-11-27 19:08:03', '2019-11-27 19:08:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_users`
--

CREATE TABLE `backend_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `role_id`, `activated_at`, `last_login`, `created_at`, `updated_at`, `deleted_at`, `is_superuser`) VALUES
(1, 'admin', 'admin', 'admin', 'nnduyquang@gmail.com', '$2y$10$HCuyQkZ.rVYr/d4aEuhXWOEgseHLM1kkRVygJRavA3mAggkvKckVi', NULL, '$2y$10$P4xeDo0D83mb0kGliOQgUug/p6n.pEtaYa2p89FGy5Tol1JAFRE4y', NULL, '', 1, 2, NULL, '2019-11-27 19:08:00', '2019-11-24 21:14:01', '2019-11-27 19:08:00', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_users_groups`
--

CREATE TABLE `backend_users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_user_groups`
--

CREATE TABLE `backend_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Owners', '2019-11-24 21:14:01', '2019-11-24 21:14:01', 'owners', 'Default group for website owners.', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_user_preferences`
--

CREATE TABLE `backend_user_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_user_preferences`
--

INSERT INTO `backend_user_preferences` (`id`, `user_id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 1, 'backend', 'reportwidgets', 'dashboard', '{\"welcome\":{\"class\":\"Backend\\\\ReportWidgets\\\\Welcome\",\"sortOrder\":50,\"configuration\":{\"ocWidgetWidth\":7}},\"systemStatus\":{\"class\":\"System\\\\ReportWidgets\\\\Status\",\"sortOrder\":60,\"configuration\":{\"ocWidgetWidth\":7}},\"activeTheme\":{\"class\":\"Cms\\\\ReportWidgets\\\\ActiveTheme\",\"sortOrder\":70,\"configuration\":{\"ocWidgetWidth\":5}},\"report_container_dashboard_4\":{\"class\":\"Romanov\\\\ClearCacheWidget\\\\ReportWidgets\\\\ClearCache\",\"configuration\":{\"title\":\"romanov.clearcachewidget::lang.plugin.label\",\"radius\":\"200\",\"delthumbs\":false,\"ocWidgetWidth\":\"12\"},\"sortOrder\":71}}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_user_roles`
--

CREATE TABLE `backend_user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_user_roles`
--

INSERT INTO `backend_user_roles` (`id`, `name`, `code`, `description`, `permissions`, `is_system`, `created_at`, `updated_at`) VALUES
(1, 'Publisher', 'publisher', 'Site editor with access to publishing tools.', '', 1, '2019-11-24 21:14:01', '2019-11-24 21:14:01'),
(2, 'Developer', 'developer', 'Site administrator with access to developer tools.', '', 1, '2019-11-24 21:14:01', '2019-11-24 21:14:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_user_throttle`
--

CREATE TABLE `backend_user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '::1', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_theme_data`
--

CREATE TABLE `cms_theme_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_theme_logs`
--

CREATE TABLE `cms_theme_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `old_content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_theme_templates`
--

CREATE TABLE `cms_theme_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(10) UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `flynsarmy_menu_menuitems`
--

CREATE TABLE `flynsarmy_menu_menuitems` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title_attrib` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_attrib` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `class_attrib` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `selected_item_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `master_object_class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `master_object_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `nest_left` int(11) NOT NULL DEFAULT '0',
  `nest_right` int(11) NOT NULL DEFAULT '0',
  `nest_depth` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `target_attrib` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `flynsarmy_menu_menuitems`
--

INSERT INTO `flynsarmy_menu_menuitems` (`id`, `menu_id`, `enabled`, `label`, `title_attrib`, `id_attrib`, `class_attrib`, `selected_item_id`, `url`, `master_object_class`, `master_object_id`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `created_at`, `updated_at`, `target_attrib`, `data`) VALUES
(1, 1, 1, 'Trang Chủ', '', '', '', '', 'http://localhost:8080/duhocirelandv2', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'homepage', 0, 1, 2, 0, '2019-11-25 01:07:13', '2019-11-25 01:08:29', '_self', '{\"params\":\"\"}'),
(2, 1, 1, 'Giới Thiệu', '', '', '', '', 'http://localhost:8080/duhocirelandv2/gioi-thieu', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'gioi-thieu', 0, 3, 4, 0, '2019-11-25 01:07:54', '2019-11-25 01:08:29', '_self', '{\"params\":\"\"}'),
(3, 1, 1, 'Dịch Vụ', '', '', '', '', 'http://localhost:8080/duhocirelandv2/dich-vu', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'dich-vu', 0, 5, 6, 0, '2019-11-25 01:08:03', '2019-11-25 01:08:29', '_self', '{\"params\":\"\"}'),
(4, 1, 1, 'Tin Tức', '', '', '', '', 'http://localhost:8080/duhocirelandv2/tin-tuc', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'tin-tuc', 0, 7, 8, 0, '2019-11-25 01:08:12', '2019-11-25 01:08:29', '_self', '{\"params\":\"\"}'),
(5, 1, 1, 'Liên Hệ', '', '', '', '', 'http://localhost:8080/duhocirelandv2/lien-he', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'lien-he', 0, 9, 10, 0, '2019-11-25 01:08:26', '2019-11-25 01:08:29', '_self', '{\"params\":\"\"}'),
(6, 2, 1, 'Home', '', '', '', '', 'http://localhost:8080/duhocirelandv2', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'homepage', 0, 11, 12, 0, '2019-11-27 00:50:16', '2019-11-27 00:51:10', '_self', '{\"params\":\"\"}'),
(7, 2, 1, 'About Us', '', '', '', '', 'http://localhost:8080/duhocirelandv2/gioi-thieu', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'gioi-thieu', 0, 13, 14, 0, '2019-11-27 00:50:31', '2019-11-27 00:51:10', '_self', '{\"params\":\"\"}'),
(8, 2, 1, 'Services', '', '', '', '', 'http://localhost:8080/duhocirelandv2/dich-vu', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'dich-vu', 0, 15, 16, 0, '2019-11-27 00:50:42', '2019-11-27 06:10:07', '_self', '{\"params\":\"\"}'),
(9, 2, 1, 'Blogs', '', '', '', '', 'http://localhost:8080/duhocirelandv2/tin-tuc', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'tin-tuc', 0, 17, 18, 0, '2019-11-27 00:50:55', '2019-11-27 00:51:10', '_self', '{\"params\":\"\"}'),
(10, 2, 1, 'Contact', '', '', '', '', 'http://localhost:8080/duhocirelandv2/lien-he', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'lien-he', 0, 19, 20, 0, '2019-11-27 00:51:07', '2019-11-27 00:51:10', '_self', '{\"params\":\"\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `flynsarmy_menu_menus`
--

CREATE TABLE `flynsarmy_menu_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_attrib` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `class_attrib` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `short_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `flynsarmy_menu_menus`
--

INSERT INTO `flynsarmy_menu_menus` (`id`, `name`, `id_attrib`, `class_attrib`, `short_desc`, `created_at`, `updated_at`) VALUES
(1, 'menu_desktop', '', 'main-menu', '', '2019-11-25 01:08:29', '2019-11-25 01:10:02'),
(2, 'menu_desktop_en', '', 'main-menu', '', '2019-11-27 00:51:10', '2019-11-27 06:18:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_10_01_000001_Db_Deferred_Bindings', 1),
(2, '2013_10_01_000002_Db_System_Files', 1),
(3, '2013_10_01_000003_Db_System_Plugin_Versions', 1),
(4, '2013_10_01_000004_Db_System_Plugin_History', 1),
(5, '2013_10_01_000005_Db_System_Settings', 1),
(6, '2013_10_01_000006_Db_System_Parameters', 1),
(7, '2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
(8, '2013_10_01_000008_Db_System_Mail_Templates', 1),
(9, '2013_10_01_000009_Db_System_Mail_Layouts', 1),
(10, '2014_10_01_000010_Db_Jobs', 1),
(11, '2014_10_01_000011_Db_System_Event_Logs', 1),
(12, '2014_10_01_000012_Db_System_Request_Logs', 1),
(13, '2014_10_01_000013_Db_System_Sessions', 1),
(14, '2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
(15, '2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
(16, '2015_10_01_000016_Db_Cache', 1),
(17, '2015_10_01_000017_Db_System_Revisions', 1),
(18, '2015_10_01_000018_Db_FailedJobs', 1),
(19, '2016_10_01_000019_Db_System_Plugin_History_Detail_Text', 1),
(20, '2016_10_01_000020_Db_System_Timestamp_Fix', 1),
(21, '2017_08_04_121309_Db_Deferred_Bindings_Add_Index_Session', 1),
(22, '2017_10_01_000021_Db_System_Sessions_Update', 1),
(23, '2017_10_01_000022_Db_Jobs_FailedJobs_Update', 1),
(24, '2017_10_01_000023_Db_System_Mail_Partials', 1),
(25, '2017_10_23_000024_Db_System_Mail_Layouts_Add_Options_Field', 1),
(26, '2013_10_01_000001_Db_Backend_Users', 2),
(27, '2013_10_01_000002_Db_Backend_User_Groups', 2),
(28, '2013_10_01_000003_Db_Backend_Users_Groups', 2),
(29, '2013_10_01_000004_Db_Backend_User_Throttle', 2),
(30, '2014_01_04_000005_Db_Backend_User_Preferences', 2),
(31, '2014_10_01_000006_Db_Backend_Access_Log', 2),
(32, '2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
(33, '2015_10_01_000008_Db_Backend_Add_Superuser_Flag', 2),
(34, '2016_10_01_000009_Db_Backend_Timestamp_Fix', 2),
(35, '2017_10_01_000010_Db_Backend_User_Roles', 2),
(36, '2018_12_16_000011_Db_Backend_Add_Deleted_At', 2),
(37, '2014_10_01_000001_Db_Cms_Theme_Data', 3),
(38, '2016_10_01_000002_Db_Cms_Timestamp_Fix', 3),
(39, '2017_10_01_000003_Db_Cms_Theme_Logs', 3),
(40, '2018_11_01_000001_Db_Cms_Theme_Templates', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quang_config_`
--

CREATE TABLE `quang_config_` (
  `id` int(11) NOT NULL,
  `config_logo` text COLLATE utf8mb4_unicode_ci,
  `config_name_company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_address_company` text COLLATE utf8mb4_unicode_ci,
  `config_script_header` text COLLATE utf8mb4_unicode_ci,
  `config_contact_detail` text COLLATE utf8mb4_unicode_ci,
  `config_email_company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_slider` text COLLATE utf8mb4_unicode_ci,
  `config_script_fanpage` text COLLATE utf8mb4_unicode_ci,
  `config_description_company` text COLLATE utf8mb4_unicode_ci,
  `config_script_body` text COLLATE utf8mb4_unicode_ci,
  `config_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_seo` text COLLATE utf8mb4_unicode_ci,
  `config_favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_hotline` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quang_config_`
--

INSERT INTO `quang_config_` (`id`, `config_logo`, `config_name_company`, `config_address_company`, `config_script_header`, `config_contact_detail`, `config_email_company`, `config_slider`, `config_script_fanpage`, `config_description_company`, `config_script_body`, `config_phone`, `config_seo`, `config_favicon`, `config_hotline`) VALUES
(0, '[{\"config_logo_desktop\":\"\\/logo\\/logo_ireland.png\",\"config_logo_mobile\":\"\\/logo\\/logo_ireland_white.png\"}]', 'IRELANDOS STUDY', '39B Trường Sơn, Phường 14, Quận Tân Bình ( tầng 12)', '', NULL, 'info@irelandos.com', '[{\"slider_path\":\"\\/slider\\/slide_1.jpg\",\"slider_description\":\"Our Colleges are built on words. Millions upon millions of words in books, lectures, essays, reports, applications, and assessments.\"},{\"slider_path\":\"\\/slider\\/slide_ucc.jpg\",\"slider_description\":\"University college cork\"},{\"slider_path\":\"\\/slider\\/slide_ait.jpg\",\"slider_description\":\"Athlone Institute of Technology\"},{\"slider_path\":\"\\/slider\\/slide_cit.jpg\",\"slider_description\":\"Dublin Business School\"},{\"slider_path\":\"\\/slider\\/slide_dit.jpg\",\"slider_description\":\"Dublin Institute of Technology\"},{\"slider_path\":\"\\/slider\\/slide_shannon.jpg\",\"slider_description\":\"Shannon College Of Hotel Management\"},{\"slider_path\":\"\\/slider\\/slide_ucd.jpg\",\"slider_description\":\"University College Dublin\"},{\"slider_path\":\"\\/slider\\/slide_ul.jpg\",\"slider_description\":\"University of limerick\"}]', '', '<p>IrelandOs provides services to the international higher education community to help institutional leaders meet their recruitment and campus internationalization goals</p>', '', '', '[{\"seo_title\":\"Du H\\u1ecdc Ireland\",\"seo_description\":\"Du H\\u1ecdc Ireland\",\"seo_image\":\"\\/logo\\/logo_ireland.png\"}]', '/logo/favicon-16x16.png', '[{\"config_hotline_show\":\"+84 856.465.607\",\"config_hotline_call\":\"+84856465607\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quang_page_`
--

CREATE TABLE `quang_page_` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `img_primary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quang_page_`
--

INSERT INTO `quang_page_` (`id`, `title`, `description`, `content`, `img_primary`, `is_active`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Welcome to IrelandOS', 'IrelandOS is a Vietnamese registered corporation (an education referral agency) that provides educational advice to Vietnamese students who plan to study overseas. It was founded by a respected Irish teacher and two Vietnamese professionals with a total of twenty years\'s combined experience as educators in Southeast Asia. This agency promotes Western higher education to students residing in Vietnam to study at accredited postsecondary institutions primarily in Ireland, but also in the US, the USA, Canada, Australia, New Zealand. IrelandOS also provides services to the international higher education community to help institutional leaders meet their recruitment and campus internationalization goals', '<h5 class=\"mt-3\">WHO WE ARE?</h5>\r\n\r\n<p>Founded in 2017 by a respected Vietnamese attorney and two foreign nationals with a total of twenty years’ combined experience as educators in Southeast Asia. &nbsp;This agency promotes Western higher education to students residing in Vietnam and the opportunity to study overseas at accredited postsecondary institutions primarily in Ireland, but also in the UK, the USA, Canada, Australia, New Zealand</p>\r\n\r\n<h5 class=\"mt-3\">WHAT WE DO?</h5>\r\n\r\n<p>IrelandOS also provides services to the international higher education community to help institutional leaders meet their recruitment and campus internationalization goals</p>\r\n\r\n<p>IrelandOS co-operates with Education in Ireland which is the Irish government agency under the authority of the Minister for Education and Skills responsible for the promotion of Irish Higher Education Institutions overseas.</p>\r\n\r\n<p><strong>Important</strong>: We do <strong>NOT</strong> charge the customer any fees. We are paid by the universities. So you will save money by choosing IrelandOS.</p>', '/design/aboutus/about-us.jpg', 1, 'welcome-irelandos', '2019-11-25 21:47:44', '2019-11-26 21:34:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quang_post_`
--

CREATE TABLE `quang_post_` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_primary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quang_post_`
--

INSERT INTO `quang_post_` (`id`, `title`, `description`, `content`, `is_active`, `slug`, `img_primary`, `created_at`, `updated_at`) VALUES
(1, 'Education System', 'Introduce education system', '<p>https://www.educationinireland.com/en/Where-can-I-study-/</p>', 1, 'education-system', '/design/home/icon3_304865.png', '2019-11-25 21:33:44', '2019-11-25 23:53:04'),
(2, 'Expert Teachers', 'Introduce Expert Teachers', '<p>https://www.educationinireland.com/en/Why-Study-in-Ireland-/</p>', 1, 'expert-teachers', '/design/home/icon2_680573.png', '2019-11-25 21:38:08', '2019-11-25 23:52:54'),
(3, 'New Programs', 'Introduce New Programs', '<p>https://www.educationinireland.com/en/What-can-I-study-/</p>', 1, 'new-programs', '/design/home/icon1_363821.png', '2019-11-25 21:38:49', '2019-11-25 23:52:46'),
(4, 'Visas for International Students in Ireland', 'We offer ireland quick and easy student visa services', '', 1, 'visas-international-students-ireland', '/service/1531909544evisa_724324.jpg', '2019-11-25 21:49:49', '2019-11-25 21:49:49'),
(5, 'Ireland Education', 'Study in one of the best education systems in the world for higher education achievements', '', 1, 'ireland-education', '/service/irelandeducation_276494.jpg', '2019-11-25 21:50:10', '2019-11-25 21:50:10'),
(6, 'Experience living in one of the friendliest and safest countries in the world', '', '', 1, 'experience-living-one-friendliest-and-safest-countries-world', '/design/home/themify-desktop_158711.png', '2019-11-25 23:59:49', '2019-11-25 23:59:49'),
(7, 'Join the 35,000 international students from 161 countries enjoying Ireland\'s vibrant culture', '', '', 1, 'join-35000-international-students-161-countries-enjoying-irelands-vibrant-culture', '/design/home/themify-desktop_158711.png', '2019-11-26 00:00:44', '2019-11-26 00:00:44'),
(8, 'Achieve your ambitions in Europe\'s most entrepreneurial country', '', '', 1, 'achieve-your-ambitions-europes-most-entrepreneurial-country', '/design/home/themify-desktop_158711.png', '2019-11-26 00:01:00', '2019-11-26 00:01:00'),
(9, 'Access world-class research opportunities in world-leading programmes', '', '', 1, 'access-world-class-research-opportunities-world-leading-programmes', '/design/home/themify-mic_672773.png', '2019-11-26 00:01:22', '2019-11-26 00:01:22'),
(10, 'Choose from over 5000 internationally recognised qualifications', '', '', 1, 'choose-over-5000-internationally-recognised-qualifications', '/design/home/themify-gift_168802.png', '2019-11-26 00:01:46', '2019-11-26 00:01:46'),
(11, 'Benefit from Ireland\'s investment in the education system', '', '', 1, 'benefit-irelands-investment-education-system', '/design/home/themify-user_205775.png', '2019-11-26 00:02:06', '2019-11-26 00:02:06'),
(12, 'Study in one of the best education systems in the world for higher education achievements', '', '', 1, 'study-one-best-education-systems-world-higher-education-achievements', '/design/home/themify-desktop_158711.png', '2019-11-26 00:02:27', '2019-11-26 00:02:27'),
(13, 'Connect with career opportunities with leading global companies located in Ireland such as Apple, Google, Facebook and Pfizer and many, many others.', '', '', 1, 'connect-career-opportunities-leading-global-companies-located-ireland-such-apple-google-facebook-and-pfizer-and-many-many-others', '/design/home/themify-file_289739.png', '2019-11-26 00:02:48', '2019-11-26 00:02:48'),
(14, 'Live in an English speaking country to enhance communication', '', '', 1, 'live-english-speaking-country-enhance-communication', '/design/home/themify-edit-file_258172.png', '2019-11-26 00:03:16', '2019-11-26 00:03:16'),
(15, 'Applying For A Student Visa', 'To be able to study in Ireland, the first thing is to master the latest procedures for applying for a 2019 Irish student visa to get a good start.', '', 1, 'applying-student-visa', '/service/passport_195856.jpg', '2019-11-26 00:30:29', '2019-11-26 00:30:29'),
(16, 'Studying Abroad In Ireland', 'Provides educational advice to Vietnamese students who plan to study overseas', '', 1, 'studying-abroad-ireland', '/service/irland-3_924021.jpg', '2019-11-26 00:31:53', '2019-11-26 00:31:53'),
(17, 'Du học Ireland: Khởi đầu ở nơi bất ngờ !', 'Bạn còn xa lạ với Đảo quốc Ireland - Hòn ngọc lục bảo của châu Âu? Bạn tự hỏi: Du học Ireland thì có gì? Giữa hàng loạt các lựa chọn trở nên ngày càng phổ biến như du học Mỹ, Canada, Úc, Nhật Bản, New Zealand,... thì Ireland sáng lên như một điểm đến du học “ít ai ngờ tới” nhưng lại chứa đầy bất ngờ thú vị. Du học Ireland? Tại sao không?', '', 1, 'du-hoc-ireland-khoi-dau-o-noi-bat-ngo', '/blog/a2-600x450_240915.jpg', '2019-11-26 06:17:00', '2019-11-26 06:17:00'),
(18, 'Những cái \'nhất\' khi học trường Trinity College Dublin tại Ireland', 'Trinity College Dublin trong 5 thế kỉ hoạt động lẫy lừng đã vang danh là ngôi trường số một Ireland, cả về thành tích, tuổi đời cùng nhiều tiêu chí khác.', '', 1, 'nhung-cai-nhat-khi-hoc-truong-trinity-college-dublin-tai-ireland', '/blog/trinity-college-dublin_103526.jpg', '2019-11-26 06:17:50', '2019-11-26 06:17:50'),
(19, 'Bảng xếp hạng ngành học tốt nhất tại Ireland', 'Năm vừa qua đã tuyên dương 8 ngành học cử nhân ở các trường đại học của Ireland với thành tích lọt vào top 50 trên thế giới theo đánh giá của trang báo điện tử uy tín QS World University Rankings by Subject. Kết quả của trang báo điện tử này được tổng hợp từ ý kiến của các chuyên gia về hơn 85 nghìn học viện, trường đại học cùng với sự phân tích của hơn 17 triệu công trình nghiên cứu và hơn 100 triệu trích dẫn từ số liệu của Scopus/Elsevier.', '', 1, 'bang-xep-hang-nganh-hoc-tot-nhat-tai-ireland', '/blog/5_373080.jpg', '2019-11-26 06:18:34', '2019-11-26 06:18:34'),
(20, 'Góc chia sẻ : Trò chuyện cùng Du học sinh Ireland', 'Để có cái nhìn tổng quát và khách quan nhất về Du học Ireland, hôm nay EduViet Global sẽ có một buổi phỏng vấn nhanh cùng một bạn du học sinh tiêu biểu tại Ireland – Bạn Nguyễn Quang Long, hiện là sinh viên khoa Dược tại Trường University College Cork (UCC)', '', 1, 'goc-chia-se-tro-chuyen-cung-du-hoc-sinh-ireland', '/blog/a2-600x450_240915.jpg', '2019-11-26 06:19:03', '2019-11-26 06:19:03'),
(21, 'Du học Ireland – Tiết kiệm ở Dublin', 'Bài toán chi phí chưa bao giờ là dễ giải với các du học sinh, tuy nhiên bạn vẫn có thể tiết kiệm phần nào chi phí, giảm bớt gánh nặng tài chính cho bạn và gia đình. Qua bài viết này, EduViet Global sẽ chỉ ra một số mẹo giúp bạn tiết kiệm khi du học tại thủ đô Dublin cùa Ireland', '', 1, 'du-hoc-ireland-tiet-kiem-o-dublin', '/blog/woman-food-market-stall-400x200_540729.jpg', '2019-11-26 06:19:40', '2019-11-26 06:19:40'),
(22, 'Du học Ireland – Điểm đến du học châu Âu lý tưởng', 'Ireland được biết đến là một trong những điểm đến du học châu Âu thu hút du học sinh quốc tế, bởi có đến 90% dân số nói tiếng Anh cùng với nền giáo dục chất lượng cao được cả thế giới công nhận với các trường đại học uy tín hàng đầu như University College Dublin, Trinity College Dublin hay University College Cork. Ireland cũng được The Economist bình chọn là đất nước “đáng sống” nhất trên thế giới. Vậy điều gì khiến du học Ireland và cuộc sống tại vùng đất này hấp dẫn đến như vậy?', '', 1, 'du-hoc-ireland-diem-den-du-hoc-chau-au-ly-tuong', '/blog/ucc5hi_345047.jpg', '2019-11-26 06:20:12', '2019-11-26 06:20:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quang_post_category`
--

CREATE TABLE `quang_post_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `img_primary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photos` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quang_post_category`
--

INSERT INTO `quang_post_category` (`id`, `title`, `slug`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `img_primary`, `photos`, `description`, `created_at`, `updated_at`) VALUES
(1, 'home_h1', 'home_h1', NULL, 1, 2, 0, '', '[]', '', '2019-11-25 21:31:36', '2019-11-25 21:31:36'),
(3, 'information', 'information', NULL, 3, 4, 0, '', '[]', '', '2019-11-25 21:48:14', '2019-11-26 00:25:39'),
(4, 'home_h2', 'home_h2', NULL, 5, 6, 0, '', '[]', '', '2019-11-25 23:58:24', '2019-11-25 23:58:24'),
(5, 'service', 'service', NULL, 7, 8, 0, '', '[]', '', '2019-11-26 00:27:56', '2019-11-26 00:27:56'),
(6, 'Our Student', 'our-student', NULL, 9, 10, 0, '', '[{\"photo_path\":\"\\/student\\/1.jpg\"},{\"photo_path\":\"\\/student\\/2.jpg\"},{\"photo_path\":\"\\/student\\/3.jpg\"},{\"photo_path\":\"\\/student\\/4.jpg\"},{\"photo_path\":\"\\/student\\/5.jpg\"},{\"photo_path\":\"\\/student\\/6.jpeg\"},{\"photo_path\":\"\\/student\\/7.jpg\"},{\"photo_path\":\"\\/student\\/8.jpg\"},{\"photo_path\":\"\\/student\\/9.jpg\"}]', '', '2019-11-26 00:40:32', '2019-11-26 00:40:32'),
(7, 'blog', 'blog', NULL, 11, 12, 0, '', '[]', '', '2019-11-26 06:14:48', '2019-11-26 06:14:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quang_post_post_category`
--

CREATE TABLE `quang_post_post_category` (
  `posts_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quang_post_post_category`
--

INSERT INTO `quang_post_post_category` (`posts_id`, `category_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 3),
(5, 3),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 5),
(16, 5),
(17, 7),
(18, 7),
(19, 7),
(20, 7),
(21, 7),
(22, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rainlab_translate_attributes`
--

CREATE TABLE `rainlab_translate_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_data` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rainlab_translate_attributes`
--

INSERT INTO `rainlab_translate_attributes` (`id`, `locale`, `model_id`, `model_type`, `attribute_data`) VALUES
(1, 'vi', '4', 'Quang\\Post\\Models\\Posts', '{\"title\":\"Thủ Tục Xin Visa Du Học Ireland\",\"slug\":\"visas-international-students-ireland\",\"description\":\"Chúng tôi cung cấp dịch vụ làm visa du học ireland nhanh chóng và dễ dàng\"}'),
(2, 'vi', '1', 'Quang\\Page\\Models\\Page', '{\"title\":\"Chào Mừng Tới IrelandOs\",\"slug\":\"chao-mung-toi-irelandos\",\"description\":\"Được thành lập vào năm 2017 kết hợp bởi một luật sư Việt Nam có uy tín và hai người nước ngoài với tổng cộng 20 năm kinh nghiệm với vai trò là các nhà giáo dục ở Đông Nam Á. Chúng tôi giúp đưa nền giáo dục tốt ở phương Tây đến các sinh viên sinh sống tại Việt Nam và có cơ hội học tập ở nước ngoài tại các cơ sở đại học hàng đầu được công nhận ở Ireland, cũng như ở Anh, Mỹ, Canada, Úc, New Zealand\",\"content\":\"<h5 class=\\\"mt-3\\\">CHÚNG TÔI LÀ AI?<\\/h5>\\r\\n\\r\\n<p>Được thành lập vào năm 2017 kết hợp bởi một luật sư Việt Nam có uy tín và hai người nước ngoài với tổng cộng 20 năm kinh nghiệm với vai trò là các nhà giáo dục ở Đông Nam Á. Công ty này giúp đưa nền giáo dục tốt ở phương Tây đến các sinh viên sinh sống tại Việt Nam và có cơ hội học tập ở nước ngoài tại các cơ sở đại học hàng đầu được công nhận ở Ireland, cũng như ở Anh, Mỹ, Canada, Úc, New Zealand<\\/p>\\r\\n\\r\\n<h5 class=\\\"mt-3\\\">DỊCH VỤ CỦA CHÚNG TÔI LÀ GÌ<\\/h5>\\r\\n\\r\\n<p>IrelandOS. cũng cung cấp các dịch vụ  giáo dục quốc tế bậc cao để hỗ trợ các nhà lãnh đạo tổ chức trongcác mục tiêu tuyển dụng và đào tạo quốc tế.<\\/p>\\r\\n\\r\\n<p>IrelandOS hợp tác với Cơ quan Giáo dục Ireland là một  cơ quan của chính phủ của Ireland dưới sự điều hành của Bộ trưởng Bộ Giáo dục và Đào tạo chịu trách nhiệm về việc quảng bá các Cơ sở Giáo dục Đại học Ailen ở nước ngoài.\\r\\n\\t<br> <\\/p>\\r\\n\\r\\n<p><strong>Quan trọng<\\/strong>: Chúng tôi <strong>KHÔNG<\\/strong> tính phí cho khách hàng bất kỳ khoản phí nào. Chúng tôi được các trường đại học trả. Vì vậy, bạn sẽ tiết kiệm được tiền bằng cách chọn IrelandOS.\\r\\n\\t<br> <\\/p>\\r\\n\"}'),
(3, 'vi', '5', 'Quang\\Post\\Models\\Posts', '{\"title\":\"Nền Giáo Dục Tại Ireland\",\"slug\":\"ireland-education\",\"description\":\"Học tập trong một trong những hệ thống giáo dục tốt nhất trên thế giới về thành tích giáo dục đại học\"}'),
(4, 'vi', '6', 'Quang\\Post\\Models\\Posts', '{\"title\":\"Trải nghiệm sống trong một trong những quốc gia thân thiện và an toàn nhất trên thế giới\",\"slug\":\"experience-living-one-friendliest-and-safest-countries-world\",\"description\":\"\"}'),
(5, 'vi', '7', 'Quang\\Post\\Models\\Posts', '{\"title\":\"Tham dự với 35.000 sinh viên quốc tế đến từ 161 quốc gia hưởng thụ nền văn hóa sôi động của Ai Len\",\"slug\":\"tham-du-voi-35000-sinh-vien-quoc-te-den-tu-161-quoc-gia-huong-thu-nen-van-hoa-soi-dong-cua-ai-len\",\"description\":\"\"}'),
(6, 'vi', '8', 'Quang\\Post\\Models\\Posts', '{\"title\":\"Đạt được tham vọng của bạn ở quốc gia kinh doanh nhất châu Âu\",\"slug\":\"dat-duoc-tham-vong-cua-ban-o-quoc-gia-kinh-doanh-nhat-chau-au\",\"description\":\"\"}'),
(7, 'vi', '9', 'Quang\\Post\\Models\\Posts', '{\"title\":\"Cơ hội nghiên cứu tầm cỡ thế giới trong các chương trình hàng đầu thế giới\",\"slug\":\"co-hoi-nghien-cuu-tam-co-the-gioi-trong-cac-chuong-trinh-hang-dau-the-gioi\",\"description\":\"\"}'),
(8, 'vi', '10', 'Quang\\Post\\Models\\Posts', '{\"title\":\"Lựa chọn hơn 5000 bằng cấp quốc tế được công nhận\",\"slug\":\"lua-chon-hon-5000-bang-cap-quoc-te-duoc-cong-nhan\",\"description\":\"\"}'),
(9, 'vi', '11', 'Quang\\Post\\Models\\Posts', '{\"title\":\"Được hưởng từ đầu tư của Ailen vào hệ thống giáo dục\",\"slug\":\"duoc-huong-tu-dau-tu-cua-ailen-vao-he-thong-giao-duc\",\"description\":\"\"}'),
(10, 'vi', '12', 'Quang\\Post\\Models\\Posts', '{\"title\":\"Học tập trong một trong những hệ thống giáo dục tốt nhất trên thế giới về thành tích giáo dục đại học\",\"slug\":\"hoc-tap-trong-mot-trong-nhung-he-thong-giao-duc-tot-nhat\",\"description\":\"\"}'),
(11, 'vi', '13', 'Quang\\Post\\Models\\Posts', '{\"title\":\"Tiếp cận với các cơ hội nghề nghiệp với các công ty hàng đầu thế giới đặt tại Ireland như Apple, Google, Facebook và Pfizer và nhiều, nhiều khác.\",\"slug\":\"tiep-can-voi-cac-co-hoi-nghe-nghiep-voi-cac-cong-ty-hang-dau\",\"description\":\"\"}'),
(12, 'vi', '14', 'Quang\\Post\\Models\\Posts', '{\"title\":\"Sống ở nước nói tiếng Anh tăng cường khả năng giao tiếp\",\"slug\":\"song-o-nuoc-noi-tieng-anh-tang-cuong-kha-nang-giao-tiep\",\"description\":\"\"}'),
(13, 'vi', '1', 'Quang\\Post\\Models\\Posts', '{\"title\":\"Hệ Thống Giáo Dục\",\"slug\":\"he-thong-giao-duc\",\"description\":\"Giới Thiệu Hệ Thống Giáo Dục\"}'),
(14, 'vi', '2', 'Quang\\Post\\Models\\Posts', '{\"title\":\"Chuyên Gia Giáo Dục\",\"slug\":\"chuyen-gia-giao-duc\",\"description\":\"Giới Thiệu Chuyên Gia Giáo Dục\"}'),
(15, 'vi', '3', 'Quang\\Post\\Models\\Posts', '{\"title\":\"Chương Trình Học Mới\",\"slug\":\"chuong-trinh-hoc-moi\",\"description\":\"Giới Thiệu Chương Trình Học Mới\"}'),
(16, 'vi', '0', 'Quang\\Config\\Models\\Config', '{\"config_description_company\":\"<p>IrelandOs cũng cung cấp các dịch vụ giáo dục quốc tế bậc cao để hỗ trợ các nhà lãnh đạo tổ chức trongcác mục tiêu tuyển dụng và đào tạo quốc tế. <\\/p>\\r\\n\"}'),
(17, 'vi', '15', 'Quang\\Post\\Models\\Posts', '{\"title\":\"Visa Du Học Tại Ireland\",\"slug\":\"applying-student-visa\",\"description\":\"Để có thể theo học tại Ireland thì điều đầu tiên là nắm vững các thủ thục xin visa du học Ireland 2019 mới nhất để có một khởi đầu thuận lợi\"}'),
(18, 'vi', '16', 'Quang\\Post\\Models\\Posts', '{\"title\":\"Tư Vấn Du Học Ireland\",\"slug\":\"studying-abroad-ireland\",\"description\":\"Tư Vấn Về Giáo Dục Cho Sinh Viên Việt Nam Có Kế Hoạch Học Tập Tại Nước Ngoài\"}'),
(19, 'vi', '17', 'Quang\\Post\\Models\\Posts', '{\"title\":\"\",\"slug\":\"du-hoc-ireland-khoi-dau-o-noi-bat-ngo\",\"description\":\"\"}'),
(20, 'vi', '18', 'Quang\\Post\\Models\\Posts', '{\"title\":\"\",\"slug\":\"nhung-cai-nhat-khi-hoc-truong-trinity-college-dublin-tai-ireland\",\"description\":\"\"}'),
(21, 'vi', '19', 'Quang\\Post\\Models\\Posts', '{\"title\":\"\",\"slug\":\"bang-xep-hang-nganh-hoc-tot-nhat-tai-ireland\",\"description\":\"\"}'),
(22, 'vi', '20', 'Quang\\Post\\Models\\Posts', '{\"title\":\"\",\"slug\":\"goc-chia-se-tro-chuyen-cung-du-hoc-sinh-ireland\",\"description\":\"\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rainlab_translate_indexes`
--

CREATE TABLE `rainlab_translate_indexes` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rainlab_translate_locales`
--

CREATE TABLE `rainlab_translate_locales` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rainlab_translate_locales`
--

INSERT INTO `rainlab_translate_locales` (`id`, `code`, `name`, `is_default`, `is_enabled`, `sort_order`) VALUES
(1, 'en', 'English', 1, 1, 1),
(2, 'vi', 'Tiếng Việt', 0, 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rainlab_translate_messages`
--

CREATE TABLE `rainlab_translate_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_data` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rainlab_translate_messages`
--

INSERT INTO `rainlab_translate_messages` (`id`, `code`, `message_data`) VALUES
(1, 'read.more', '{\"x\":\"Read more\",\"vi\":\"\\u0110\\u1ecdc th\\u00eam\"}'),
(2, 'get.a.free.registration', '{\"x\":\"Get A Free Registration\",\"vi\":\"\\u0110\\u0103ng K\\u00fd T\\u01b0 V\\u1ea5n Mi\\u1ec5n Ph\\u00ed\"}'),
(3, 'your.name', '{\"x\":\"Your name\",\"vi\":\"T\\u00ean c\\u1ee7a b\\u1ea1n\"}'),
(4, 'please.enter.your.name', '{\"x\":\"Please enter your name.\",\"vi\":\"Vui l\\u00f2ng nh\\u1eadp t\\u00ean c\\u1ee7a b\\u1ea1n\"}'),
(5, 'your.phone', '{\"x\":\"Your phone\",\"vi\":\"S\\u1ed1 \\u0111i\\u1ec7n tho\\u1ea1i c\\u1ee7a b\\u1ea1n\"}'),
(6, 'please.enter.your.phone', '{\"x\":\"Please enter your phone.\",\"vi\":\"Vui l\\u00f2ng nh\\u1eadp s\\u1ed1 \\u0111i\\u1ec7n tho\\u1ea1i c\\u1ee7a b\\u1ea1n\"}'),
(7, 'your.email', '{\"x\":\"Your email\",\"vi\":\"Email c\\u1ee7a b\\u1ea1n\"}'),
(8, 'please.enter.your.email', '{\"x\":\"Please enter your email.\",\"vi\":\"Vui l\\u00f2ng nh\\u1eadp email c\\u1ee7a b\\u1ea1n\"}'),
(9, 'message', '{\"x\":\"Message\",\"vi\":\"N\\u1ed9i dung\"}'),
(10, 'send', '{\"x\":\"Send\",\"vi\":\"G\\u1eedi\"}'),
(11, 'why.choose.us', '{\"x\":\"Why Choose Us\",\"vi\":\"T\\u1ea1i Sao Ch\\u1ecdn Ch\\u00fang T\\u00f4i\"}'),
(12, 'here.are.the.reasons.why.your.students.should.choose.ireland', '{\"x\":\"Here are the reasons why your students should choose Ireland\",\"vi\":\"\\u0110\\u00e2y l\\u00e0 nh\\u1eefng l\\u00fd do t\\u1ea1i sao h\\u1ecdc sinh c\\u1ee7a b\\u1ea1n n\\u00ean ch\\u1ecdn Ailen:\"}'),
(13, 'our.services', '{\"x\":\"Our Services\",\"vi\":\"D\\u1ecbch V\\u1ee5 C\\u1ee7a Ch\\u00fang T\\u00f4i\"}'),
(14, 'our.student', '{\"x\":\"Our Student\",\"vi\":\"H\\u00ecnh \\u1ea3nh v\\u1ec1 du h\\u1ecdc sinh\"}'),
(15, 'our.latest.blogs', '{\"x\":\"Our Latest Blogs\",\"vi\":\"Tin T\\u1ee9c M\\u1edbi Nh\\u1ea5t C\\u1ee7a Ch\\u00fang T\\u00f4i\"}'),
(16, 'view.all', '{\"x\":\"View all\",\"vi\":\"Xem t\\u1ea5t c\\u1ea3\"}'),
(17, 'address', '{\"x\":\"Address\",\"vi\":\"\\u0110\\u1ecba ch\\u1ec9\"}'),
(18, 'hotline', '{\"x\":\"Hotline\",\"vi\":\"S\\u1ed1 \\u0111i\\u1ec7n tho\\u1ea1i\"}'),
(19, 'categories', '{\"x\":\"Categories\",\"vi\":\"Danh m\\u1ee5c\"}'),
(20, 'services', '{\"x\":\"Services\",\"vi\":\"D\\u1ecbch v\\u1ee5\"}'),
(21, 'gallery', '{\"x\":\"GALLERY\",\"vi\":\"H\\u00ccNH \\u1ea2NH\"}'),
(22, 'subscribe.now.and.receive.weekly.newsletter.with.educational.materials.interesting.posts.and.much.more', '{\"x\":\"Subscribe now and receive weekly newsletter with educational materials, interesting posts, and much more!\",\"vi\":\"Theo d\\u00f5i ngay b\\u00e2y gi\\u1edd v\\u00e0 nh\\u1eadn b\\u1ea3n tin h\\u00e0ng tu\\u1ea7n v\\u1edbi c\\u00e1c t\\u00e0i li\\u1ec7u gi\\u00e1o d\\u1ee5c, b\\u00e0i vi\\u1ebft th\\u00fa v\\u1ecb, v\\u00e0 nhi\\u1ec1u h\\u01a1n n\\u1eefa\"}'),
(23, 'subscribe', '{\"x\":\"Subscribe\",\"vi\":\"Theo d\\u00f5i\"}'),
(24, 'we.are.provide.247.hours.to.support', '{\"x\":\"We are provide 24\\/7 hours to support\",\"vi\":\"Ch\\u00fang T\\u00f4i H\\u1ed7 Tr\\u1ee3 D\\u1ecbch V\\u1ee5 24\\/7\"}'),
(25, 'get.support', '{\"x\":\"GET SUPPORT\",\"vi\":\"H\\u1ed6 TR\\u1ee2\"}'),
(26, 'contact.with.us.for.customer.support', '{\"x\":\"Contact With Us For Customer Support\",\"vi\":\"H\\u00e3y Li\\u00ean H\\u1ec7 Ngay V\\u1edbi Ch\\u00fang T\\u00f4i\"}'),
(27, 'about.us', '{\"x\":\"About us\",\"vi\":\"V\\u1ec1 Ch\\u00fang T\\u00f4i\"}'),
(28, 'what.is', '{\"x\":\"WHAT IS\",\"vi\":\" \"}'),
(29, 'irelandos.is.a.vietnamese.registered.corporation.an.education.referral.agency.that.provides.educational.advice.to.vietnamese.students.who.plan.to.study.overseas', '{\"x\":\"IrelandOS is a Vietnamese registered corporation (an education referral agency) that provides educational advice to Vietnamese students who plan to study overseas.\",\"vi\":\"IrelandOS l\\u00e0 m\\u1ed9t c\\u00f4ng ty th\\u00e0nh l\\u1eadp t\\u1ea1i Vi\\u1ec7t Nam (m\\u1ed9t \\u0111\\u1ea1i di\\u1ec7n v\\u1ec1 gi\\u00e1o d\\u1ee5c) t\\u01b0 v\\u1ea5n v\\u1ec1 gi\\u00e1o d\\u1ee5c cho sinh vi\\u00ean Vi\\u1ec7t Nam c\\u00f3 k\\u1ebf ho\\u1ea1ch h\\u1ecdc t\\u1eadp \\u1edf n\\u01b0\\u1edbc ngo\\u00e0i. \"}'),
(30, 'blogs', '{\"x\":\"Blogs\",\"vi\":\"Tin T\\u1ee9c\"}'),
(31, 'connect.with.us.on.facebook', '{\"x\":\"Connect with us On Facebook\",\"vi\":\"Li\\u00ean h\\u1ec7 v\\u1edbi ch\\u00fang t\\u00f4i tr\\u00ean Facebook\"}'),
(32, 'twitter.us', '{\"x\":\"Twitter us\",\"vi\":\"Twitter\"}'),
(33, 'connect.google', '{\"x\":\"Connect Google+\",\"vi\":\"Google+\"}'),
(34, 'quick.contact.to.us', '{\"x\":\"QUICK CONTACT TO US\",\"vi\":\"LI\\u00caN H\\u1ec6 NHANH V\\u1edaI CH\\u00daNG T\\u00d4I\"}'),
(35, 'you.can.contact.us.any.way.that.is.convenient.for.you.we.are.available.247.via.fax.or.email.you.can.also.use.a.quick.contact.form.below.or.visit.our.office.personally.we.would.be.happy.to.ans', '{\"x\":\"You can contact us any way that is convenient for you. We are available 24\\/7 via fax or email. You can also use a quick contact form below or visit our office personally. We would be happy to answer your questions.\",\"vi\":\"B\\u1ea1n c\\u00f3 th\\u1ec3 li\\u1ec7n h\\u1ec7 v\\u1edbi ch\\u00fang t\\u00f4i b\\u1ea5t c\\u1ee9 k hi n\\u00e0o, ch\\u00fang t\\u00f4i h\\u1ed7 tr\\u1ee3 24\\/7 qua \\u0111i\\u1ec7n tho\\u1ea1i ho\\u1eb7c email. B\\u1ea1n c\\u0169ng c\\u00f3 th\\u1ec3 s\\u1eed d\\u1ee5ng bi\\u1ec3u m\\u1eabu b\\u00ean d\\u01b0\\u1edbi ho\\u1eb7c tr\\u1ef1c ti\\u1ebfp t\\u1ea1i v\\u0103n ph\\u00f2ng c\\u1ee7a ch\\u00fang t\\u00f4i. Ph\\u1ee5c v\\u1ee5 b\\u1ea1n l\\u00e0 ni\\u1ec1m vui c\\u1ee7a ch\\u00fang t\\u00f4i\"}'),
(36, 'your.name.here', '{\"x\":\"Your name here\",\"vi\":\"T\\u00ean c\\u1ee7a b\\u1ea1n\"}'),
(37, 'your.email.here', '{\"x\":\"Your email here\",\"vi\":\"Email c\\u1ee7a b\\u1ea1n\"}'),
(38, 'your.phone.number.here', '{\"x\":\"Your phone number here\",\"vi\":\"S\\u1ed1 \\u0111i\\u1ec7n tho\\u1ea1i c\\u1ee7a b\\u1ea1n\"}'),
(39, 'title.here', '{\"x\":\"Title here\",\"vi\":\"Ti\\u00eau \\u0111\\u1ec1\"}'),
(40, 'send.info', '{\"x\":\"Send Info\",\"vi\":\"G\\u1eedi th\\u00f4ng tin\"}'),
(41, 'map', '{\"x\":\"Map\",\"vi\":\"B\\u1ea3n \\u0111\\u1ed3\"}'),
(42, 'contact', '{\"x\":\"Contact\",\"vi\":\"Li\\u00ean H\\u1ec7\"}'),
(43, 'you.can.contact.us.any.way.that.is.convenient.for.you.we.are.available.247.via.fax.or.email.you.can.also.use.a.quick.contact.form.below.or.visit.our.office.personally.we.would.be.happy.to.ans', '{\"x\":\"You can contact us any way that is convenient for you. We are available 24\\/7 via fax or email. You can also use a quick contact form below or visit our office personally. We would be happy to answer your questions.\"}'),
(44, 'you.can.contact.us.any.way.that.is.convenient.for.you.we.are.available.247.via.fax.or.email.you.can.also.use.a.quick.contact.form.below.or.visit.our.office.personally.we.would.be.happy.to.ans', '{\"x\":\"You can contact us any way that is convenient for you. We are available 24\\/7 via fax or email. You can also use a quick contact form below or visit our office personally. We would be happy to answer your questions.\"}'),
(45, 'you.can.contact.us.any.way.that.is.convenient.for.you.we.are.available.247.via.fax.or.email.you.can.also.use.a.quick.contact.form.below.or.visit.our.office.personally.we.would.be.happy.to.ans', '{\"x\":\"You can contact us any way that is convenient for you. We are available 24\\/7 via fax or email. You can also use a quick contact form below or visit our office personally. We would be happy to answer your questions.\"}'),
(46, 'you.can.contact.us.any.way.that.is.convenient.for.you.we.are.available.247.via.fax.or.email.you.can.also.use.a.quick.contact.form.below.or.visit.our.office.personally.we.would.be.happy.to.ans', '{\"x\":\"You can contact us any way that is convenient for you. We are available 24\\/7 via fax or email. You can also use a quick contact form below or visit our office personally. We would be happy to answer your questions.\"}'),
(47, 'you.can.contact.us.any.way.that.is.convenient.for.you.we.are.available.247.via.fax.or.email.you.can.also.use.a.quick.contact.form.below.or.visit.our.office.personally.we.would.be.happy.to.ans', '{\"x\":\"You can contact us any way that is convenient for you. We are available 24\\/7 via fax or email. You can also use a quick contact form below or visit our office personally. We would be happy to answer your questions.\"}'),
(48, 'you.can.contact.us.any.way.that.is.convenient.for.you.we.are.available.247.via.fax.or.email.you.can.also.use.a.quick.contact.form.below.or.visit.our.office.personally.we.would.be.happy.to.ans', '{\"x\":\"You can contact us any way that is convenient for you. We are available 24\\/7 via fax or email. You can also use a quick contact form below or visit our office personally. We would be happy to answer your questions.\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `last_activity` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_event_logs`
--

CREATE TABLE `system_event_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `details` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_files`
--

CREATE TABLE `system_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `disk_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_files`
--

INSERT INTO `system_files` (`id`, `disk_name`, `file_name`, `file_size`, `content_type`, `title`, `description`, `field`, `attachment_id`, `attachment_type`, `is_public`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, '5dde8ed3949f4422762364.png', 'logo_ireland.png', 224640, 'image/png', NULL, NULL, 'logo', '3', 'Backend\\Models\\BrandSetting', 1, 1, '2019-11-27 07:57:23', '2019-11-27 07:58:16'),
(2, '5dde8eec6939f505839448.png', 'favicon-16x16.png', 1342, 'image/png', NULL, NULL, 'favicon', '3', 'Backend\\Models\\BrandSetting', 1, 2, '2019-11-27 07:57:48', '2019-11-27 07:58:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `content_css` text COLLATE utf8mb4_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Default layout', 'default', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-default\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n\n        <!-- Header -->\n        {% partial \'header\' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial \'footer\' body %}\n            &copy; {{ \"now\"|date(\"Y\") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-11-24 21:14:01', '2019-11-24 21:14:01'),
(2, 'System layout', 'system', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-system\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-11-24 21:14:01', '2019-11-24 21:14:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_mail_partials`
--

CREATE TABLE `system_mail_partials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '0'),
(2, 'system', 'update', 'retry', '1574946566'),
(3, 'cms', 'theme', 'active', '\"duhocireland\"');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(1, 'October.Demo', 'comment', '1.0.1', 'First version of Demo', '2019-11-24 21:14:00'),
(2, 'RainLab.Builder', 'comment', '1.0.1', 'Initialize plugin.', '2019-11-24 21:14:07'),
(3, 'RainLab.Builder', 'comment', '1.0.2', 'Fixes the problem with selecting a plugin. Minor localization corrections. Configuration files in the list and form behaviors are now autocomplete.', '2019-11-24 21:14:07'),
(4, 'RainLab.Builder', 'comment', '1.0.3', 'Improved handling of the enum data type.', '2019-11-24 21:14:07'),
(5, 'RainLab.Builder', 'comment', '1.0.4', 'Added user permissions to work with the Builder.', '2019-11-24 21:14:07'),
(6, 'RainLab.Builder', 'comment', '1.0.5', 'Fixed permissions registration.', '2019-11-24 21:14:07'),
(7, 'RainLab.Builder', 'comment', '1.0.6', 'Fixed front-end record ordering in the Record List component.', '2019-11-24 21:14:07'),
(8, 'RainLab.Builder', 'comment', '1.0.7', 'Builder settings are now protected with user permissions. The database table column list is scrollable now. Minor code cleanup.', '2019-11-24 21:14:07'),
(9, 'RainLab.Builder', 'comment', '1.0.8', 'Added the Reorder Controller behavior.', '2019-11-24 21:14:07'),
(10, 'RainLab.Builder', 'comment', '1.0.9', 'Minor API and UI updates.', '2019-11-24 21:14:07'),
(11, 'RainLab.Builder', 'comment', '1.0.10', 'Minor styling update.', '2019-11-24 21:14:07'),
(12, 'RainLab.Builder', 'comment', '1.0.11', 'Fixed a bug where clicking placeholder in a repeater would open Inspector. Fixed a problem with saving forms with repeaters in tabs. Minor style fix.', '2019-11-24 21:14:07'),
(13, 'RainLab.Builder', 'comment', '1.0.12', 'Added support for the Trigger property to the Media Finder widget configuration. Names of form fields and list columns definition files can now contain underscores.', '2019-11-24 21:14:07'),
(14, 'RainLab.Builder', 'comment', '1.0.13', 'Minor styling fix on the database editor.', '2019-11-24 21:14:07'),
(15, 'RainLab.Builder', 'comment', '1.0.14', 'Added support for published_at timestamp field', '2019-11-24 21:14:07'),
(16, 'RainLab.Builder', 'comment', '1.0.15', 'Fixed a bug where saving a localization string in Inspector could cause a JavaScript error. Added support for Timestamps and Soft Deleting for new models.', '2019-11-24 21:14:07'),
(17, 'RainLab.Builder', 'comment', '1.0.16', 'Fixed a bug when saving a form with the Repeater widget in a tab could create invalid fields in the form\'s outside area. Added a check that prevents creating localization strings inside other existing strings.', '2019-11-24 21:14:07'),
(18, 'RainLab.Builder', 'comment', '1.0.17', 'Added support Trigger attribute support for RecordFinder and Repeater form widgets.', '2019-11-24 21:14:07'),
(19, 'RainLab.Builder', 'comment', '1.0.18', 'Fixes a bug where \'::class\' notations in a model class definition could prevent the model from appearing in the Builder model list. Added emptyOption property support to the dropdown form control.', '2019-11-24 21:14:07'),
(20, 'RainLab.Builder', 'comment', '1.0.19', 'Added a feature allowing to add all database columns to a list definition. Added max length validation for database table and column names.', '2019-11-24 21:14:07'),
(21, 'RainLab.Builder', 'comment', '1.0.20', 'Fixes a bug where form the builder could trigger the \"current.hasAttribute is not a function\" error.', '2019-11-24 21:14:07'),
(22, 'RainLab.Builder', 'comment', '1.0.21', 'Back-end navigation sort order updated.', '2019-11-24 21:14:08'),
(23, 'RainLab.Builder', 'comment', '1.0.22', 'Added scopeValue property to the RecordList component.', '2019-11-24 21:14:08'),
(24, 'RainLab.Builder', 'comment', '1.0.23', 'Added support for balloon-selector field type, added Brazilian Portuguese translation, fixed some bugs', '2019-11-24 21:14:08'),
(25, 'RainLab.Builder', 'comment', '1.0.24', 'Added support for tag list field type, added read only toggle for fields. Prevent plugins from using reserved PHP keywords for class names and namespaces', '2019-11-24 21:14:08'),
(26, 'RainLab.Builder', 'comment', '1.0.25', 'Allow editing of migration code in the \"Migration\" popup when saving changes in the database editor.', '2019-11-24 21:14:08'),
(27, 'RainLab.Builder', 'comment', '1.0.26', 'Allow special default values for columns and added new \"Add ID column\" button to database editor.', '2019-11-24 21:14:08'),
(28, 'Flynsarmy.Menu', 'script', '1.0.1', 'create_menus_table.php', '2019-11-24 21:49:55'),
(29, 'Flynsarmy.Menu', 'script', '1.0.1', 'create_menuitems_table.php', '2019-11-24 21:49:56'),
(30, 'Flynsarmy.Menu', 'comment', '1.0.1', 'Plugin Initialization', '2019-11-24 21:49:56'),
(31, 'Flynsarmy.Menu', 'comment', '1.0.2', 'Add before_item and after_item helpers for Partial item type', '2019-11-24 21:49:56'),
(32, 'Flynsarmy.Menu', 'comment', '1.0.3', 'Pass the current controller to menus and items so page/layout components apply', '2019-11-24 21:49:56'),
(33, 'Flynsarmy.Menu', 'comment', '1.0.4', 'Event binding fixes', '2019-11-24 21:49:56'),
(34, 'Flynsarmy.Menu', 'comment', '1.0.5', 'Validation compatibility fix for October v117', '2019-11-24 21:49:56'),
(35, 'Flynsarmy.Menu', 'comment', '1.0.6', 'Use October styles for item type selection list', '2019-11-24 21:49:56'),
(36, 'Flynsarmy.Menu', 'comment', '1.0.7', 'Fix nesting issue', '2019-11-24 21:49:56'),
(37, 'Flynsarmy.Menu', 'comment', '1.0.8', 'Delete menu items when deleting menus. Minor UI improvements', '2019-11-24 21:49:56'),
(38, 'Flynsarmy.Menu', 'script', '1.0.9', 'add_menuitem_target_field.php', '2019-11-24 21:49:57'),
(39, 'Flynsarmy.Menu', 'comment', '1.0.9', 'Add link target attribute, improved UI', '2019-11-24 21:49:57'),
(40, 'Flynsarmy.Menu', 'comment', '1.0.10', 'Remove comma in item links', '2019-11-24 21:49:57'),
(41, 'Flynsarmy.Menu', 'script', '1.0.11', 'add_menuitem_data_field.php', '2019-11-24 21:49:57'),
(42, 'Flynsarmy.Menu', 'comment', '1.0.11', 'Add slug parameters option for Page items', '2019-11-24 21:49:57'),
(43, 'Flynsarmy.Menu', 'comment', '1.0.12', 'Don\'t show disabled menu items', '2019-11-24 21:49:57'),
(44, 'Flynsarmy.Menu', 'comment', '1.0.13', 'Link fields can now be left empty - will produce a', '2019-11-24 21:49:57'),
(45, 'Flynsarmy.Menu', 'comment', '1.0.14', 'Menu Item data field should be nullable', '2019-11-24 21:49:57'),
(46, 'Flynsarmy.Menu', 'comment', '1.0.15', 'RC compatibility', '2019-11-24 21:49:57'),
(47, 'Flynsarmy.Menu', 'comment', '1.0.16', 'Settings page code cleanup', '2019-11-24 21:49:57'),
(48, 'Flynsarmy.Menu', 'comment', '1.0.17', 'Fix nested tree bug', '2019-11-24 21:49:57'),
(49, 'Flynsarmy.Menu', 'comment', '1.0.18', 'Deprecated code fix', '2019-11-24 21:49:58'),
(50, 'Flynsarmy.Menu', 'comment', '1.0.19', 'Deprecated code fix', '2019-11-24 21:49:58'),
(51, 'Flynsarmy.Menu', 'script', '1.0.20', 'make_menuitem_menu_id_nullable.php', '2019-11-24 21:49:58'),
(52, 'Flynsarmy.Menu', 'comment', '1.0.20', 'Menu save fix', '2019-11-24 21:49:58'),
(53, 'Flynsarmy.Menu', 'comment', '1.0.21', 'Fix issue causing menu items to disappear on save', '2019-11-24 21:49:58'),
(54, 'SureSoftware.PowerSEO', 'script', '1.0.1', 'create_blog_posts_table.php', '2019-11-24 21:51:03'),
(55, 'SureSoftware.PowerSEO', 'comment', '1.0.1', 'First version of Seo Extension', '2019-11-24 21:51:03'),
(56, 'SureSoftware.PowerSEO', 'comment', '1.0.2', 'Bug fixes', '2019-11-24 21:51:03'),
(57, 'SureSoftware.PowerSEO', 'comment', '1.0.3', 'Backend Settings added to configure meta tags & Open Graph tags added', '2019-11-24 21:51:03'),
(58, 'SureSoftware.PowerSEO', 'comment', '1.0.4', 'Code clean up and change path naming in settings model', '2019-11-24 21:51:03'),
(59, 'SureSoftware.PowerSEO', 'comment', '1.0.5', 'Add Turkish, Russian, cs_CZ locale', '2019-11-24 21:51:03'),
(60, 'SureSoftware.PowerSEO', 'comment', '1.0.6', 'Fix issue of SEO Settings Errors', '2019-11-24 21:51:03'),
(61, 'SureSoftware.PowerSEO', 'script', '2.0.0', 'migrate_settings.php', '2019-11-24 21:51:04'),
(62, 'SureSoftware.PowerSEO', 'comment', '2.0.0', 'Changed plugin to PowerSEO, fixed server errors and included latest changes', '2019-11-24 21:51:04'),
(63, 'SureSoftware.PowerSEO', 'script', '2.0.1', 'migrate_blogpost_seo.php', '2019-11-24 21:51:04'),
(64, 'SureSoftware.PowerSEO', 'comment', '2.0.1', 'Prefixed SEO column names to ensure uniqueness and prevent plugin conflicts', '2019-11-24 21:51:04'),
(65, 'SureSoftware.PowerSEO', 'script', '2.0.2', 'blogposts_fix.php', '2019-11-24 21:51:04'),
(66, 'SureSoftware.PowerSEO', 'comment', '2.0.2', 'Fixed issue with fresh install on non-migrated sites', '2019-11-24 21:51:04'),
(67, 'SureSoftware.PowerSEO', 'comment', '2.0.3', 'Fixed bug in blogPost robots not populating', '2019-11-24 21:51:04'),
(68, 'SureSoftware.PowerSEO', 'comment', '2.0.4', 'Fixed bug with fields showing up in the static pages repeater', '2019-11-24 21:51:04'),
(69, 'AnandPatel.WysiwygEditors', 'comment', '1.0.1', 'First version of Wysiwyg Editors.', '2019-11-24 21:51:25'),
(70, 'AnandPatel.WysiwygEditors', 'comment', '1.0.2', 'Automatic Injection to CMS & other code editors and October CMS`s Rich Editor added.', '2019-11-24 21:51:25'),
(71, 'AnandPatel.WysiwygEditors', 'comment', '1.0.3', 'Automatic Injection to RainLab Static Pages & other plugin`s option is appear only if installed.', '2019-11-24 21:51:26'),
(72, 'AnandPatel.WysiwygEditors', 'comment', '1.0.4', 'New Froala editor added (on request from emzero439), Height & width property added for editor, setting moved to My Setting tab and minor changes in settings.', '2019-11-24 21:51:26'),
(73, 'AnandPatel.WysiwygEditors', 'comment', '1.0.5', 'Automatic Injection to Radiantweb`s Problog and ProEvents (option available in settings-content).', '2019-11-24 21:51:26'),
(74, 'AnandPatel.WysiwygEditors', 'comment', '1.0.6', 'CKEditor updated and bug fixes.', '2019-11-24 21:51:26'),
(75, 'AnandPatel.WysiwygEditors', 'comment', '1.0.7', 'Integrated elFinder (file browser) with TinyMCE & CKEditor, Image upload/delete for Froala Editor.', '2019-11-24 21:51:26'),
(76, 'AnandPatel.WysiwygEditors', 'comment', '1.0.8', 'Added security to File Browser`s route (Authenticate users can only access File Browser).', '2019-11-24 21:51:26'),
(77, 'AnandPatel.WysiwygEditors', 'comment', '1.0.9', 'Updated CKEditor, Froala and TinyMCE.', '2019-11-24 21:51:26'),
(78, 'AnandPatel.WysiwygEditors', 'comment', '1.1.0', 'Support multilanguage, update elFinder and cleanup code.', '2019-11-24 21:51:26'),
(79, 'AnandPatel.WysiwygEditors', 'comment', '1.1.1', 'Added Turkish language.', '2019-11-24 21:51:26'),
(80, 'AnandPatel.WysiwygEditors', 'comment', '1.1.2', 'Added Hungarian language.', '2019-11-24 21:51:26'),
(81, 'AnandPatel.WysiwygEditors', 'comment', '1.1.3', 'Fixed issue related to RC (Elfinder fix remaining).', '2019-11-24 21:51:26'),
(82, 'AnandPatel.WysiwygEditors', 'comment', '1.1.4', 'Fixed Elfinder issue.', '2019-11-24 21:51:26'),
(83, 'AnandPatel.WysiwygEditors', 'comment', '1.1.5', 'Updated CKEditor, Froala and TinyMCE.', '2019-11-24 21:51:26'),
(84, 'AnandPatel.WysiwygEditors', 'comment', '1.1.6', 'Changed destination folder.', '2019-11-24 21:51:26'),
(85, 'AnandPatel.WysiwygEditors', 'comment', '1.1.7', 'Added Czech language.', '2019-11-24 21:51:26'),
(86, 'AnandPatel.WysiwygEditors', 'comment', '1.1.8', 'Added Russian language.', '2019-11-24 21:51:26'),
(87, 'AnandPatel.WysiwygEditors', 'comment', '1.1.9', 'Fix hook and other issues (thanks to Vojta Svoboda).', '2019-11-24 21:51:26'),
(88, 'AnandPatel.WysiwygEditors', 'comment', '1.2.0', 'Put settings inside CMS sidemenu (thanks to Amanda Tresbach).', '2019-11-24 21:51:26'),
(89, 'AnandPatel.WysiwygEditors', 'comment', '1.2.1', 'Remove el-finder (Which fix issue of composer), added OC media manager support for image in TinyMCE & CkEditor, TinyMCE version updated, Fix Image upload for froala editor', '2019-11-24 21:51:26'),
(90, 'AnandPatel.WysiwygEditors', 'comment', '1.2.2', 'Add multilingual support, Add new languages, Update the Hungarian language, Add the missing English language files (Special thanks to Szabó Gergő)', '2019-11-24 21:51:26'),
(91, 'AnandPatel.WysiwygEditors', 'comment', '1.2.3', 'Added toolbar customization option (Special thanks to Szabó Gergő).', '2019-11-24 21:51:26'),
(92, 'AnandPatel.WysiwygEditors', 'comment', '1.2.4', 'Added support for Content Plus Plugin & News and Newsletter plugin (thanks to Szabó Gergő)', '2019-11-24 21:51:26'),
(93, 'AnandPatel.WysiwygEditors', 'comment', '1.2.5', 'Minor improvements and bugfixes.', '2019-11-24 21:51:27'),
(94, 'AnandPatel.WysiwygEditors', 'comment', '1.2.6', 'Updated the CKEditor and TinyMCE editors.', '2019-11-24 21:51:27'),
(95, 'AnandPatel.WysiwygEditors', 'comment', '1.2.7', 'Show locale switcher when using multilocale editor.', '2019-11-24 21:51:27'),
(96, 'AnandPatel.WysiwygEditors', 'comment', '1.2.8', 'Added French language', '2019-11-24 21:51:27'),
(97, 'AnandPatel.WysiwygEditors', 'comment', '1.2.9', 'Added permission for preferences', '2019-11-24 21:51:27'),
(98, 'Romanov.ClearCacheWidget', 'comment', '1.0.1', 'First version of ClearCacheWidget', '2019-11-24 21:51:38'),
(99, 'Romanov.ClearCacheWidget', 'comment', '1.0.2', 'Translate for brazilian portuguese', '2019-11-24 21:51:38'),
(100, 'Romanov.ClearCacheWidget', 'comment', '1.0.3', 'Some fix', '2019-11-24 21:51:38'),
(101, 'Romanov.ClearCacheWidget', 'comment', '1.0.4', 'Fix chart', '2019-11-24 21:51:39'),
(102, 'Romanov.ClearCacheWidget', 'comment', '1.0.5', 'Add chart size property', '2019-11-24 21:51:39'),
(103, 'Romanov.ClearCacheWidget', 'comment', '1.0.6', 'Add cs_CZ locale', '2019-11-24 21:51:39'),
(104, 'Romanov.ClearCacheWidget', 'comment', '1.1.0', 'Added functionality to delete thumbs images. (set up in widget settings)', '2019-11-24 21:51:39'),
(105, 'Romanov.ClearCacheWidget', 'comment', '1.1.1', 'Ability to specify the path to the folder preview. (set up in widget settings)', '2019-11-24 21:51:39'),
(106, 'Romanov.ClearCacheWidget', 'comment', '1.1.2', 'Some fix. For those who use PHP version below 5.5', '2019-11-24 21:51:39'),
(107, 'Romanov.ClearCacheWidget', 'comment', '1.1.3', 'Update cs_CZ locale', '2019-11-24 21:51:39'),
(108, 'Romanov.ClearCacheWidget', 'comment', '1.1.4', 'Fix ErrorException', '2019-11-24 21:51:39'),
(109, 'Romanov.ClearCacheWidget', 'comment', '1.1.5', 'Add french and italian locales', '2019-11-24 21:51:39'),
(110, 'Romanov.ClearCacheWidget', 'comment', '1.2.0', 'Add property \'Regex for thumb file names\'', '2019-11-24 21:51:39'),
(111, 'Romanov.ClearCacheWidget', 'comment', '1.2.1', 'Add the Hungarian translation', '2019-11-24 21:51:39'),
(112, 'Romanov.ClearCacheWidget', 'comment', '1.2.2', 'Fix for user defined widget title', '2019-11-24 21:51:39'),
(113, 'Romanov.ClearCacheWidget', 'comment', '1.2.3', 'Add Turkish language file', '2019-11-24 21:51:39'),
(114, 'Romanov.ClearCacheWidget', 'comment', '1.2.4', 'Add Dutch language', '2019-11-24 21:51:40'),
(115, 'Romanov.ClearCacheWidget', 'comment', '1.2.5', 'IT locale updated', '2019-11-24 21:51:40'),
(116, 'Romanov.ClearCacheWidget', 'comment', '1.2.6', 'Add sk locale', '2019-11-24 21:51:40'),
(117, 'Romanov.ClearCacheWidget', 'comment', '1.3.0', 'Changing default regex for clearing thumbnails according to the comment https://github.com/romanov-acc/octobercms_clearcachewidget/pull/16#issuecomment-404909441', '2019-11-24 21:51:40'),
(118, 'RainLab.Translate', 'script', '1.0.1', 'create_messages_table.php', '2019-11-24 21:53:42'),
(119, 'RainLab.Translate', 'script', '1.0.1', 'create_attributes_table.php', '2019-11-24 21:53:43'),
(120, 'RainLab.Translate', 'script', '1.0.1', 'create_locales_table.php', '2019-11-24 21:53:43'),
(121, 'RainLab.Translate', 'comment', '1.0.1', 'First version of Translate', '2019-11-24 21:53:43'),
(122, 'RainLab.Translate', 'comment', '1.0.2', 'Languages and Messages can now be deleted.', '2019-11-24 21:53:44'),
(123, 'RainLab.Translate', 'comment', '1.0.3', 'Minor updates for latest October release.', '2019-11-24 21:53:44'),
(124, 'RainLab.Translate', 'comment', '1.0.4', 'Locale cache will clear when updating a language.', '2019-11-24 21:53:44'),
(125, 'RainLab.Translate', 'comment', '1.0.5', 'Add Spanish language and fix plugin config.', '2019-11-24 21:53:44'),
(126, 'RainLab.Translate', 'comment', '1.0.6', 'Minor improvements to the code.', '2019-11-24 21:53:44'),
(127, 'RainLab.Translate', 'comment', '1.0.7', 'Fixes major bug where translations are skipped entirely!', '2019-11-24 21:53:44'),
(128, 'RainLab.Translate', 'comment', '1.0.8', 'Minor bug fixes.', '2019-11-24 21:53:44'),
(129, 'RainLab.Translate', 'comment', '1.0.9', 'Fixes an issue where newly created models lose their translated values.', '2019-11-24 21:53:44'),
(130, 'RainLab.Translate', 'comment', '1.0.10', 'Minor fix for latest build.', '2019-11-24 21:53:44'),
(131, 'RainLab.Translate', 'comment', '1.0.11', 'Fix multilingual rich editor when used in stretch mode.', '2019-11-24 21:53:44'),
(132, 'RainLab.Translate', 'comment', '1.1.0', 'Introduce compatibility with RainLab.Pages plugin.', '2019-11-24 21:53:44'),
(133, 'RainLab.Translate', 'comment', '1.1.1', 'Minor UI fix to the language picker.', '2019-11-24 21:53:44'),
(134, 'RainLab.Translate', 'comment', '1.1.2', 'Add support for translating Static Content files.', '2019-11-24 21:53:44'),
(135, 'RainLab.Translate', 'comment', '1.1.3', 'Improved support for the multilingual rich editor.', '2019-11-24 21:53:44'),
(136, 'RainLab.Translate', 'comment', '1.1.4', 'Adds new multilingual markdown editor.', '2019-11-24 21:53:44'),
(137, 'RainLab.Translate', 'comment', '1.1.5', 'Minor update to the multilingual control API.', '2019-11-24 21:53:44'),
(138, 'RainLab.Translate', 'comment', '1.1.6', 'Minor improvements in the message editor.', '2019-11-24 21:53:44'),
(139, 'RainLab.Translate', 'comment', '1.1.7', 'Fixes bug not showing content when first loading multilingual textarea controls.', '2019-11-24 21:53:45'),
(140, 'RainLab.Translate', 'comment', '1.2.0', 'CMS pages now support translating the URL.', '2019-11-24 21:53:45'),
(141, 'RainLab.Translate', 'comment', '1.2.1', 'Minor update in the rich editor and code editor language control position.', '2019-11-24 21:53:45'),
(142, 'RainLab.Translate', 'comment', '1.2.2', 'Static Pages now support translating the URL.', '2019-11-24 21:53:45'),
(143, 'RainLab.Translate', 'comment', '1.2.3', 'Fixes Rich Editor when inserting a page link.', '2019-11-24 21:53:45'),
(144, 'RainLab.Translate', 'script', '1.2.4', 'create_indexes_table.php', '2019-11-24 21:53:46'),
(145, 'RainLab.Translate', 'comment', '1.2.4', 'Translatable attributes can now be declared as indexes.', '2019-11-24 21:53:46'),
(146, 'RainLab.Translate', 'comment', '1.2.5', 'Adds new multilingual repeater form widget.', '2019-11-24 21:53:46'),
(147, 'RainLab.Translate', 'comment', '1.2.6', 'Fixes repeater usage with static pages plugin.', '2019-11-24 21:53:46'),
(148, 'RainLab.Translate', 'comment', '1.2.7', 'Fixes placeholder usage with static pages plugin.', '2019-11-24 21:53:46'),
(149, 'RainLab.Translate', 'comment', '1.2.8', 'Improvements to code for latest October build compatibility.', '2019-11-24 21:53:46'),
(150, 'RainLab.Translate', 'comment', '1.2.9', 'Fixes context for translated strings when used with Static Pages.', '2019-11-24 21:53:46'),
(151, 'RainLab.Translate', 'comment', '1.2.10', 'Minor UI fix to the multilingual repeater.', '2019-11-24 21:53:46'),
(152, 'RainLab.Translate', 'comment', '1.2.11', 'Fixes translation not working with partials loaded via AJAX.', '2019-11-24 21:53:46'),
(153, 'RainLab.Translate', 'comment', '1.2.12', 'Add support for translating the new grouped repeater feature.', '2019-11-24 21:53:46'),
(154, 'RainLab.Translate', 'comment', '1.3.0', 'Added search to the translate messages page.', '2019-11-24 21:53:47'),
(155, 'RainLab.Translate', 'script', '1.3.1', 'builder_table_update_rainlab_translate_locales.php', '2019-11-24 21:53:47'),
(156, 'RainLab.Translate', 'script', '1.3.1', 'seed_all_tables.php', '2019-11-24 21:53:47'),
(157, 'RainLab.Translate', 'comment', '1.3.1', 'Added reordering to languages', '2019-11-24 21:53:47'),
(158, 'RainLab.Translate', 'comment', '1.3.2', 'Improved compatibility with RainLab.Pages, added ability to scan Mail Messages for translatable variables.', '2019-11-24 21:53:47'),
(159, 'RainLab.Translate', 'comment', '1.3.3', 'Fix to the locale picker session handling in Build 420 onwards.', '2019-11-24 21:53:47'),
(160, 'RainLab.Translate', 'comment', '1.3.4', 'Add alternate hreflang elements and adds prefixDefaultLocale setting.', '2019-11-24 21:53:47'),
(161, 'RainLab.Translate', 'comment', '1.3.5', 'Fix MLRepeater bug when switching locales.', '2019-11-24 21:53:47'),
(162, 'RainLab.Translate', 'comment', '1.3.6', 'Fix Middleware to use the prefixDefaultLocale setting introduced in 1.3.4', '2019-11-24 21:53:47'),
(163, 'RainLab.Translate', 'comment', '1.3.7', 'Fix config reference in LocaleMiddleware', '2019-11-24 21:53:47'),
(164, 'RainLab.Translate', 'comment', '1.3.8', 'Keep query string when switching locales', '2019-11-24 21:53:47'),
(165, 'RainLab.Translate', 'comment', '1.4.0', 'Add importer and exporter for messages', '2019-11-24 21:53:47'),
(166, 'RainLab.Translate', 'comment', '1.4.1', 'Updated Hungarian translation. Added Arabic translation. Fixed issue where default texts are overwritten by import. Fixed issue where the language switcher for repeater fields would overlap with the first repeater row.', '2019-11-24 21:53:47'),
(167, 'RainLab.Translate', 'comment', '1.4.2', 'Add multilingual MediaFinder', '2019-11-24 21:53:47'),
(168, 'RainLab.Translate', 'comment', '1.4.3', '!!! Please update OctoberCMS to Build 444 before updating this plugin. Added ability to translate CMS Pages fields (e.g. title, description, meta-title, meta-description)', '2019-11-24 21:53:48'),
(169, 'RainLab.Translate', 'comment', '1.4.4', 'Minor improvements to compatibility with Laravel framework.', '2019-11-24 21:53:48'),
(170, 'RainLab.Translate', 'comment', '1.4.5', 'Fixed issue when using the language switcher', '2019-11-24 21:53:48'),
(171, 'RainLab.Translate', 'comment', '1.5.0', 'Compatibility fix with Build 451', '2019-11-24 21:53:48'),
(172, 'RainLab.Translate', 'comment', '1.6.0', 'Make File Upload widget properties translatable. Merge Repeater core changes into MLRepeater widget. Add getter method to retrieve original translate data.', '2019-11-24 21:53:48'),
(173, 'RainLab.Translate', 'comment', '1.6.1', 'Add ability for models to provide translated computed data, add option to disable locale prefix routing', '2019-11-24 21:53:48'),
(174, 'RainLab.Translate', 'comment', '1.6.2', 'Implement localeUrl filter, add per-locale theme configuration support', '2019-11-24 21:53:48'),
(175, 'Quang.Config', 'comment', '1.0.1', 'Initialize plugin.', '2019-11-24 22:11:12'),
(176, 'Quang.Config', 'script', '1.0.2', 'builder_table_create_quang_config_.php', '2019-11-24 22:18:27'),
(177, 'Quang.Config', 'comment', '1.0.2', 'Created table quang_config_', '2019-11-24 22:18:27'),
(178, 'Quang.Post', 'comment', '1.0.1', 'Initialize plugin.', '2019-11-25 21:18:25'),
(179, 'Quang.Post', 'script', '1.0.2', 'builder_table_create_quang_post_.php', '2019-11-25 21:21:28'),
(180, 'Quang.Post', 'comment', '1.0.2', 'Created table quang_post_', '2019-11-25 21:21:28'),
(181, 'Quang.Post', 'script', '1.0.3', 'builder_table_create_quang_post_category.php', '2019-11-25 21:23:41'),
(182, 'Quang.Post', 'comment', '1.0.3', 'Created table quang_post_category', '2019-11-25 21:23:41'),
(183, 'Quang.Post', 'script', '1.0.4', 'builder_table_create_quang_post_post_category.php', '2019-11-25 21:24:21'),
(184, 'Quang.Post', 'comment', '1.0.4', 'Created table quang_post_post_category', '2019-11-25 21:24:21'),
(185, 'Quang.Page', 'comment', '1.0.1', 'Initialize plugin.', '2019-11-25 21:43:54'),
(186, 'Quang.Page', 'script', '1.0.2', 'builder_table_create_quang_page_.php', '2019-11-25 21:45:41'),
(187, 'Quang.Page', 'comment', '1.0.2', 'Created table quang_page_', '2019-11-25 21:45:41'),
(188, 'Vdomah.TranslateTabs', 'comment', '1.0.1', 'Initialize plugin.', '2019-11-26 20:01:58'),
(189, 'Vdomah.TranslateTabs', 'comment', '1.0.2', 'Translatable tabs for theme options form.', '2019-11-26 20:01:58'),
(190, 'Vdomah.TranslateTabs', 'comment', '1.0.3', 'Set translatable attribute values before model validation.', '2019-11-26 20:01:58'),
(191, 'Vdomah.TranslateTabs', 'comment', '1.0.3', 'Handle indexed translatable attributes.', '2019-11-26 20:01:58'),
(192, 'Quang.Contact', 'comment', '1.0.1', 'Initialize plugin.', '2019-11-27 07:58:30'),
(210, 'JorgeAndrade.Subscribe', 'script', '1.0.1', 'create_subscribers_table.php', '2019-11-28 00:09:06'),
(211, 'JorgeAndrade.Subscribe', 'comment', '1.0.1', 'Initialize plugin.', '2019-11-28 00:09:06'),
(212, 'JorgeAndrade.Subscribe', 'comment', '1.0.2', 'Fixed data-request', '2019-11-28 00:09:06'),
(213, 'JorgeAndrade.Subscribe', 'script', '1.0.3', 'create_subscribers_code.php', '2019-11-28 00:09:06'),
(214, 'JorgeAndrade.Subscribe', 'script', '1.0.3', 'create_subscribers_status.php', '2019-11-28 00:09:07'),
(215, 'JorgeAndrade.Subscribe', 'comment', '1.0.3', 'Added the status and code column to the subscribers table.', '2019-11-28 00:09:07'),
(216, 'JorgeAndrade.Subscribe', 'comment', '1.0.3', 'Adding a unsubscribe form.', '2019-11-28 00:09:07'),
(217, 'JorgeAndrade.Subscribe', 'script', '1.0.4', 'update_code_column_subscriber.php', '2019-11-28 00:09:07'),
(218, 'JorgeAndrade.Subscribe', 'comment', '1.0.4', 'fixed code update', '2019-11-28 00:09:07'),
(219, 'JorgeAndrade.Subscribe', 'script', '1.0.5', 'create_subscribers_name_surname_country.php', '2019-11-28 00:09:07'),
(220, 'JorgeAndrade.Subscribe', 'comment', '1.0.5', 'Added the name surname and country column to the subscribers table.', '2019-11-28 00:09:07'),
(221, 'JorgeAndrade.Subscribe', 'comment', '1.0.5', 'Adding a profile form.', '2019-11-28 00:09:07'),
(222, 'JorgeAndrade.Subscribe', 'comment', '1.0.6', 'Fixed some bugs and adding config for url profile con subscriber component', '2019-11-28 00:09:07'),
(223, 'JorgeAndrade.Subscribe', 'comment', '1.0.7', 'Fixed some bugs subscriber component', '2019-11-28 00:09:07'),
(224, 'JorgeAndrade.Subscribe', 'comment', '1.0.8', 'Added support for export the unique code', '2019-11-28 00:09:07'),
(225, 'JorgeAndrade.Subscribe', 'comment', '1.0.9', 'Added some info in subscribers list', '2019-11-28 00:09:07'),
(226, 'JorgeAndrade.Subscribe', 'comment', '1.1.0', 'Added support for generate code at create a new subscriber in backend', '2019-11-28 00:09:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
(1, 'October.Demo', '1.0.1', '2019-11-24 21:14:00', 0, 0),
(2, 'RainLab.Builder', '1.0.26', '2019-11-24 21:14:08', 0, 0),
(3, 'Flynsarmy.Menu', '1.0.21', '2019-11-24 21:49:58', 0, 0),
(4, 'SureSoftware.PowerSEO', '2.0.4', '2019-11-24 21:51:04', 0, 0),
(5, 'AnandPatel.WysiwygEditors', '1.2.9', '2019-11-24 21:51:27', 0, 0),
(6, 'Romanov.ClearCacheWidget', '1.3.0', '2019-11-24 21:51:40', 0, 0),
(7, 'RainLab.Translate', '1.6.2', '2019-11-24 21:53:48', 0, 0),
(8, 'Quang.Config', '1.0.2', '2019-11-24 22:18:27', 0, 0),
(9, 'Quang.Post', '1.0.4', '2019-11-25 21:24:21', 0, 0),
(10, 'Quang.Page', '1.0.2', '2019-11-25 21:45:41', 0, 0),
(11, 'Vdomah.TranslateTabs', '1.0.3', '2019-11-26 20:01:58', 0, 0),
(12, 'Quang.Contact', '1.0.1', '2019-11-27 07:58:31', 0, 0),
(14, 'JorgeAndrade.Subscribe', '1.1.0', '2019-11-28 00:09:07', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_request_logs`
--

CREATE TABLE `system_request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_revisions`
--

CREATE TABLE `system_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cast` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_settings`
--

INSERT INTO `system_settings` (`id`, `item`, `value`) VALUES
(1, 'rainlab_builder_settings', '{\"author_name\":\"Quang\",\"author_namespace\":\"Quang\"}'),
(2, 'anandpatel_wysiwygeditors_settings', '{\"editor\":\"ckeditor\",\"editor_width\":\"\",\"editor_height\":\"\",\"toolbar_tinymce\":\"undo redo | bold italic underline | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media ocmediamanager\",\"toolbar_ckeditor\":\"[\'Undo\', \'Redo\'], [\'Cut\', \'Copy\', \'Paste\', \'PasteText\', \'PasteFromWord\'], [\'Format\', \'FontSize\'], [\'ShowBlocks\', \'SelectAll\', \'RemoveFormat\'], [\'Source\'], [\'Maximize\'], \'\\/\', [\'Bold\', \'Italic\', \'Underline\', \'Strike\'], [\'JustifyLeft\', \'JustifyCenter\', \'JustifyRight\', \'JustifyBlock\'], [\'BulletedList\', \'NumberedList\', \'Outdent\', \'Indent\'], [\'TextColor\', \'BGColor\'], [\'Link\', \'Unlink\', \'Anchor\'], [\'Image\', \'Table\', \'oembed\', \'SpecialChar\', \'OcMediaManager\']\",\"cms_page_as_wysiwyg\":\"0\",\"cms_content_as_wysiwyg\":\"0\",\"cms_partial_as_wysiwyg\":\"0\",\"cms_layout_as_wysiwyg\":\"0\",\"others_as_wysiwyg\":\"0\"}'),
(3, 'backend_brand_settings', '{\"app_name\":\"Du H\\u1ecdc Ireland\",\"app_tagline\":\"Du H\\u1ecdc Ireland\",\"primary_color\":\"#34495e\",\"secondary_color\":\"#e67e22\",\"accent_color\":\"#3498db\",\"menu_mode\":\"inline\",\"custom_css\":\"\"}');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `andradedev_subscribe_subscribers`
--
ALTER TABLE `andradedev_subscribe_subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `andradedev_subscribe_subscribers_email_unique` (`email`);

--
-- Chỉ mục cho bảng `backend_access_log`
--
ALTER TABLE `backend_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_unique` (`login`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `act_code_index` (`activation_code`),
  ADD KEY `reset_code_index` (`reset_password_code`),
  ADD KEY `admin_role_index` (`role_id`);

--
-- Chỉ mục cho bảng `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Chỉ mục cho bảng `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`),
  ADD KEY `code_index` (`code`);

--
-- Chỉ mục cho bảng `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Chỉ mục cho bảng `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_unique` (`name`),
  ADD KEY `role_code_index` (`code`);

--
-- Chỉ mục cho bảng `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_user_throttle_user_id_index` (`user_id`),
  ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Chỉ mục cho bảng `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Chỉ mục cho bảng `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_logs_type_index` (`type`),
  ADD KEY `cms_theme_logs_theme_index` (`theme`),
  ADD KEY `cms_theme_logs_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_templates_source_index` (`source`),
  ADD KEY `cms_theme_templates_path_index` (`path`);

--
-- Chỉ mục cho bảng `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deferred_bindings_master_type_index` (`master_type`),
  ADD KEY `deferred_bindings_master_field_index` (`master_field`),
  ADD KEY `deferred_bindings_slave_type_index` (`slave_type`),
  ADD KEY `deferred_bindings_slave_id_index` (`slave_id`),
  ADD KEY `deferred_bindings_session_key_index` (`session_key`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `flynsarmy_menu_menuitems`
--
ALTER TABLE `flynsarmy_menu_menuitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flynsarmy_menu_menuitems_menu_id_index` (`menu_id`),
  ADD KEY `flynsarmy_menu_menuitems_enabled_index` (`enabled`),
  ADD KEY `flynsarmy_menu_menuitems_parent_id_index` (`parent_id`);

--
-- Chỉ mục cho bảng `flynsarmy_menu_menus`
--
ALTER TABLE `flynsarmy_menu_menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quang_config_`
--
ALTER TABLE `quang_config_`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quang_page_`
--
ALTER TABLE `quang_page_`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quang_post_`
--
ALTER TABLE `quang_post_`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quang_post_category`
--
ALTER TABLE `quang_post_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quang_post_post_category`
--
ALTER TABLE `quang_post_post_category`
  ADD PRIMARY KEY (`posts_id`,`category_id`);

--
-- Chỉ mục cho bảng `rainlab_translate_attributes`
--
ALTER TABLE `rainlab_translate_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_attributes_locale_index` (`locale`),
  ADD KEY `rainlab_translate_attributes_model_id_index` (`model_id`),
  ADD KEY `rainlab_translate_attributes_model_type_index` (`model_type`);

--
-- Chỉ mục cho bảng `rainlab_translate_indexes`
--
ALTER TABLE `rainlab_translate_indexes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_indexes_locale_index` (`locale`),
  ADD KEY `rainlab_translate_indexes_model_id_index` (`model_id`),
  ADD KEY `rainlab_translate_indexes_model_type_index` (`model_type`),
  ADD KEY `rainlab_translate_indexes_item_index` (`item`);

--
-- Chỉ mục cho bảng `rainlab_translate_locales`
--
ALTER TABLE `rainlab_translate_locales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_locales_code_index` (`code`),
  ADD KEY `rainlab_translate_locales_name_index` (`name`);

--
-- Chỉ mục cho bảng `rainlab_translate_messages`
--
ALTER TABLE `rainlab_translate_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_messages_code_index` (`code`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Chỉ mục cho bảng `system_event_logs`
--
ALTER TABLE `system_event_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_event_logs_level_index` (`level`);

--
-- Chỉ mục cho bảng `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_field_index` (`field`),
  ADD KEY `system_files_attachment_id_index` (`attachment_id`),
  ADD KEY `system_files_attachment_type_index` (`attachment_type`);

--
-- Chỉ mục cho bảng `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Chỉ mục cho bảng `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Chỉ mục cho bảng `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_history_code_index` (`code`),
  ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Chỉ mục cho bảng `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Chỉ mục cho bảng `system_request_logs`
--
ALTER TABLE `system_request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `system_revisions`
--
ALTER TABLE `system_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  ADD KEY `system_revisions_user_id_index` (`user_id`),
  ADD KEY `system_revisions_field_index` (`field`);

--
-- Chỉ mục cho bảng `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `andradedev_subscribe_subscribers`
--
ALTER TABLE `andradedev_subscribe_subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `flynsarmy_menu_menuitems`
--
ALTER TABLE `flynsarmy_menu_menuitems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `flynsarmy_menu_menus`
--
ALTER TABLE `flynsarmy_menu_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `quang_page_`
--
ALTER TABLE `quang_page_`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `quang_post_`
--
ALTER TABLE `quang_post_`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `quang_post_category`
--
ALTER TABLE `quang_post_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `rainlab_translate_attributes`
--
ALTER TABLE `rainlab_translate_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `rainlab_translate_indexes`
--
ALTER TABLE `rainlab_translate_indexes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rainlab_translate_locales`
--
ALTER TABLE `rainlab_translate_locales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `rainlab_translate_messages`
--
ALTER TABLE `rainlab_translate_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT cho bảng `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
