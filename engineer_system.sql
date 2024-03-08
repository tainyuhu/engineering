-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-03-08 02:21:21
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `engineer_system`
--

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add p v_ detailed item weight model', 7, 'add_pv_detaileditemweightmodel'),
(26, 'Can change p v_ detailed item weight model', 7, 'change_pv_detaileditemweightmodel'),
(27, 'Can delete p v_ detailed item weight model', 7, 'delete_pv_detaileditemweightmodel'),
(28, 'Can view p v_ detailed item weight model', 7, 'view_pv_detaileditemweightmodel'),
(29, 'Can add p v_ task model', 8, 'add_pv_taskmodel'),
(30, 'Can change p v_ task model', 8, 'change_pv_taskmodel'),
(31, 'Can delete p v_ task model', 8, 'delete_pv_taskmodel'),
(32, 'Can view p v_ task model', 8, 'view_pv_taskmodel'),
(33, 'Can add p v_ sub item weight model', 9, 'add_pv_subitemweightmodel'),
(34, 'Can change p v_ sub item weight model', 9, 'change_pv_subitemweightmodel'),
(35, 'Can delete p v_ sub item weight model', 9, 'delete_pv_subitemweightmodel'),
(36, 'Can view p v_ sub item weight model', 9, 'view_pv_subitemweightmodel'),
(37, 'Can add p v_ project model', 10, 'add_pv_projectmodel'),
(38, 'Can change p v_ project model', 10, 'change_pv_projectmodel'),
(39, 'Can delete p v_ project model', 10, 'delete_pv_projectmodel'),
(40, 'Can view p v_ project model', 10, 'view_pv_projectmodel'),
(41, 'Can add p v_ progress model', 11, 'add_pv_progressmodel'),
(42, 'Can change p v_ progress model', 11, 'change_pv_progressmodel'),
(43, 'Can delete p v_ progress model', 11, 'delete_pv_progressmodel'),
(44, 'Can view p v_ progress model', 11, 'view_pv_progressmodel'),
(45, 'Can add p v_ expected progress model', 12, 'add_pv_expectedprogressmodel'),
(46, 'Can change p v_ expected progress model', 12, 'change_pv_expectedprogressmodel'),
(47, 'Can delete p v_ expected progress model', 12, 'delete_pv_expectedprogressmodel'),
(48, 'Can view p v_ expected progress model', 12, 'view_pv_expectedprogressmodel'),
(49, 'Can add breeding_ detailed item weight model', 13, 'add_breeding_detaileditemweightmodel'),
(50, 'Can change breeding_ detailed item weight model', 13, 'change_breeding_detaileditemweightmodel'),
(51, 'Can delete breeding_ detailed item weight model', 13, 'delete_breeding_detaileditemweightmodel'),
(52, 'Can view breeding_ detailed item weight model', 13, 'view_breeding_detaileditemweightmodel'),
(53, 'Can add breeding_ task model', 14, 'add_breeding_taskmodel'),
(54, 'Can change breeding_ task model', 14, 'change_breeding_taskmodel'),
(55, 'Can delete breeding_ task model', 14, 'delete_breeding_taskmodel'),
(56, 'Can view breeding_ task model', 14, 'view_breeding_taskmodel'),
(57, 'Can add breeding_ sub item weight model', 15, 'add_breeding_subitemweightmodel'),
(58, 'Can change breeding_ sub item weight model', 15, 'change_breeding_subitemweightmodel'),
(59, 'Can delete breeding_ sub item weight model', 15, 'delete_breeding_subitemweightmodel'),
(60, 'Can view breeding_ sub item weight model', 15, 'view_breeding_subitemweightmodel'),
(61, 'Can add breeding_ project model', 16, 'add_breeding_projectmodel'),
(62, 'Can change breeding_ project model', 16, 'change_breeding_projectmodel'),
(63, 'Can delete breeding_ project model', 16, 'delete_breeding_projectmodel'),
(64, 'Can view breeding_ project model', 16, 'view_breeding_projectmodel'),
(65, 'Can add breeding_ progress model', 17, 'add_breeding_progressmodel'),
(66, 'Can change breeding_ progress model', 17, 'change_breeding_progressmodel'),
(67, 'Can delete breeding_ progress model', 17, 'delete_breeding_progressmodel'),
(68, 'Can view breeding_ progress model', 17, 'view_breeding_progressmodel'),
(69, 'Can add breeding_ expected progress model', 18, 'add_breeding_expectedprogressmodel'),
(70, 'Can change breeding_ expected progress model', 18, 'change_breeding_expectedprogressmodel'),
(71, 'Can delete breeding_ expected progress model', 18, 'delete_breeding_expectedprogressmodel'),
(72, 'Can view breeding_ expected progress model', 18, 'view_breeding_expectedprogressmodel'),
(73, 'Can add plan', 19, 'add_plan'),
(74, 'Can change plan', 19, 'change_plan'),
(75, 'Can delete plan', 19, 'delete_plan'),
(76, 'Can view plan', 19, 'view_plan'),
(77, 'Can add casbin rule', 20, 'add_casbinrule'),
(78, 'Can change casbin rule', 20, 'change_casbinrule'),
(79, 'Can delete casbin rule', 20, 'delete_casbinrule'),
(80, 'Can view casbin rule', 20, 'view_casbinrule'),
(81, 'Can add historical project expected progress', 21, 'add_historicalprojectexpectedprogress'),
(82, 'Can change historical project expected progress', 21, 'change_historicalprojectexpectedprogress'),
(83, 'Can delete historical project expected progress', 21, 'delete_historicalprojectexpectedprogress'),
(84, 'Can view historical project expected progress', 21, 'view_historicalprojectexpectedprogress'),
(85, 'Can add historical project progress', 22, 'add_historicalprojectprogress'),
(86, 'Can change historical project progress', 22, 'change_historicalprojectprogress'),
(87, 'Can delete historical project progress', 22, 'delete_historicalprojectprogress'),
(88, 'Can view historical project progress', 22, 'view_historicalprojectprogress'),
(89, 'Can add season historical project expected progress', 23, 'add_seasonhistoricalprojectexpectedprogress'),
(90, 'Can change season historical project expected progress', 23, 'change_seasonhistoricalprojectexpectedprogress'),
(91, 'Can delete season historical project expected progress', 23, 'delete_seasonhistoricalprojectexpectedprogress'),
(92, 'Can view season historical project expected progress', 23, 'view_seasonhistoricalprojectexpectedprogress'),
(93, 'Can add season historical project progress', 24, 'add_seasonhistoricalprojectprogress'),
(94, 'Can change season historical project progress', 24, 'change_seasonhistoricalprojectprogress'),
(95, 'Can delete season historical project progress', 24, 'delete_seasonhistoricalprojectprogress'),
(96, 'Can view season historical project progress', 24, 'view_seasonhistoricalprojectprogress'),
(97, 'Can add power', 25, 'add_power'),
(98, 'Can change power', 25, 'change_power'),
(99, 'Can delete power', 25, 'delete_power'),
(100, 'Can view power', 25, 'view_power'),
(101, 'Can add project', 26, 'add_project'),
(102, 'Can change project', 26, 'change_project'),
(103, 'Can delete project', 26, 'delete_project'),
(104, 'Can view project', 26, 'view_project'),
(105, 'Can add project case', 27, 'add_projectcase'),
(106, 'Can change project case', 27, 'change_projectcase'),
(107, 'Can delete project case', 27, 'delete_projectcase'),
(108, 'Can view project case', 27, 'view_projectcase'),
(109, 'Can add project loop', 28, 'add_projectloop'),
(110, 'Can change project loop', 28, 'change_projectloop'),
(111, 'Can delete project loop', 28, 'delete_projectloop'),
(112, 'Can view project loop', 28, 'view_projectloop'),
(113, 'Can add project proportion', 29, 'add_projectproportion'),
(114, 'Can change project proportion', 29, 'change_projectproportion'),
(115, 'Can delete project proportion', 29, 'delete_projectproportion'),
(116, 'Can view project proportion', 29, 'view_projectproportion'),
(117, 'Can add project task', 30, 'add_projecttask'),
(118, 'Can change project task', 30, 'change_projecttask'),
(119, 'Can delete project task', 30, 'delete_projecttask'),
(120, 'Can view project task', 30, 'view_projecttask'),
(121, 'Can add pv detaileditem weight', 31, 'add_pvdetaileditemweight'),
(122, 'Can change pv detaileditem weight', 31, 'change_pvdetaileditemweight'),
(123, 'Can delete pv detaileditem weight', 31, 'delete_pvdetaileditemweight'),
(124, 'Can view pv detaileditem weight', 31, 'view_pvdetaileditemweight'),
(125, 'Can add pv expected progress', 32, 'add_pvexpectedprogress'),
(126, 'Can change pv expected progress', 32, 'change_pvexpectedprogress'),
(127, 'Can delete pv expected progress', 32, 'delete_pvexpectedprogress'),
(128, 'Can view pv expected progress', 32, 'view_pvexpectedprogress'),
(129, 'Can add pv progress', 33, 'add_pvprogress'),
(130, 'Can change pv progress', 33, 'change_pvprogress'),
(131, 'Can delete pv progress', 33, 'delete_pvprogress'),
(132, 'Can view pv progress', 33, 'view_pvprogress'),
(133, 'Can add pv project', 34, 'add_pvproject'),
(134, 'Can change pv project', 34, 'change_pvproject'),
(135, 'Can delete pv project', 34, 'delete_pvproject'),
(136, 'Can view pv project', 34, 'view_pvproject'),
(137, 'Can add pv subitem weight', 35, 'add_pvsubitemweight'),
(138, 'Can change pv subitem weight', 35, 'change_pvsubitemweight'),
(139, 'Can delete pv subitem weight', 35, 'delete_pvsubitemweight'),
(140, 'Can view pv subitem weight', 35, 'view_pvsubitemweight'),
(141, 'Can add pv tasks', 36, 'add_pvtasks'),
(142, 'Can change pv tasks', 36, 'change_pvtasks'),
(143, 'Can delete pv tasks', 36, 'delete_pvtasks'),
(144, 'Can view pv tasks', 36, 'view_pvtasks'),
(145, 'Can add breeding detaileditem weight', 37, 'add_breedingdetaileditemweight'),
(146, 'Can change breeding detaileditem weight', 37, 'change_breedingdetaileditemweight'),
(147, 'Can delete breeding detaileditem weight', 37, 'delete_breedingdetaileditemweight'),
(148, 'Can view breeding detaileditem weight', 37, 'view_breedingdetaileditemweight'),
(149, 'Can add breeding expected progress', 38, 'add_breedingexpectedprogress'),
(150, 'Can change breeding expected progress', 38, 'change_breedingexpectedprogress'),
(151, 'Can delete breeding expected progress', 38, 'delete_breedingexpectedprogress'),
(152, 'Can view breeding expected progress', 38, 'view_breedingexpectedprogress'),
(153, 'Can add breeding progress', 39, 'add_breedingprogress'),
(154, 'Can change breeding progress', 39, 'change_breedingprogress'),
(155, 'Can delete breeding progress', 39, 'delete_breedingprogress'),
(156, 'Can view breeding progress', 39, 'view_breedingprogress'),
(157, 'Can add breeding project', 40, 'add_breedingproject'),
(158, 'Can change breeding project', 40, 'change_breedingproject'),
(159, 'Can delete breeding project', 40, 'delete_breedingproject'),
(160, 'Can view breeding project', 40, 'view_breedingproject'),
(161, 'Can add breeding subitem weight', 41, 'add_breedingsubitemweight'),
(162, 'Can change breeding subitem weight', 41, 'change_breedingsubitemweight'),
(163, 'Can delete breeding subitem weight', 41, 'delete_breedingsubitemweight'),
(164, 'Can view breeding subitem weight', 41, 'view_breedingsubitemweight'),
(165, 'Can add breeding tasks', 42, 'add_breedingtasks'),
(166, 'Can change breeding tasks', 42, 'change_breedingtasks'),
(167, 'Can delete breeding tasks', 42, 'delete_breedingtasks'),
(168, 'Can view breeding tasks', 42, 'view_breedingtasks'),
(169, 'Can add system log', 43, 'add_systemlog'),
(170, 'Can change system log', 43, 'change_systemlog'),
(171, 'Can delete system log', 43, 'delete_systemlog'),
(172, 'Can view system log', 43, 'view_systemlog'),
(173, 'Can add pv bank', 44, 'add_pvbank'),
(174, 'Can change pv bank', 44, 'change_pvbank'),
(175, 'Can delete pv bank', 44, 'delete_pvbank'),
(176, 'Can view pv bank', 44, 'view_pvbank'),
(177, 'Can add pv expected', 45, 'add_pvexpected'),
(178, 'Can change pv expected', 45, 'change_pvexpected'),
(179, 'Can delete pv expected', 45, 'delete_pvexpected'),
(180, 'Can view pv expected', 45, 'view_pvexpected');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$600000$mo1G5CWcLiMLWQiLNBKojT$dBdPuAmR8Jl+cukcifZMhrFkI+G4T4aj0Mmgy6cHGQ0=', '2023-11-13 03:51:14.715685', 1, 'admin', '', '', 'cathy5852077@gmail.com', 1, 1, '2023-11-13 03:50:50.815058'),
(3, 'pbkdf2_sha256$600000$mo1G5CWcLiMLWQiLNBKojT$dBdPuAmR8Jl+cukcifZMhrFkI+G4T4aj0Mmgy6cHGQ0=', '2023-11-13 03:51:14.715685', 1, 'pp', '', '', 'cathy5852077@gmail.com', 1, 1, '2023-11-13 03:50:50.815058'),
(4, 'pbkdf2_sha256$600000$nwZojJ0dLyNeHCPdR5L0w6$FFcCnauTuT3dc6rdR/ZItMXr0I4tpirCzF01YTLoUOw=', NULL, 0, 'aaa', '', '', '', 1, 1, '2023-11-15 01:09:35.000000');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `casbin_rule`
--

CREATE TABLE `casbin_rule` (
  `id` bigint(20) NOT NULL,
  `ptype` varchar(255) NOT NULL,
  `v0` varchar(255) NOT NULL,
  `v1` varchar(255) NOT NULL,
  `v2` varchar(255) DEFAULT NULL,
  `v3` varchar(255) DEFAULT NULL,
  `v4` varchar(255) DEFAULT NULL,
  `v5` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `casbin_rule`
--

INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES
(1, 'p', 'manager', '電業申辦進度', 'write', NULL, NULL, NULL),
(2, 'g', 'pp', 'manager', NULL, NULL, NULL, NULL),
(3, 'p', 'manager', '/Fillin_Project_Progress', 'raed', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `cases_history`
--

CREATE TABLE `cases_history` (
  `history_id` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `changed_column` varchar(255) DEFAULT NULL,
  `previous_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `change_type` varchar(50) DEFAULT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` varchar(255) DEFAULT NULL,
  `change_reason` text DEFAULT NULL,
  `change_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `cases_progress`
--

CREATE TABLE `cases_progress` (
  `progress_id` int(11) NOT NULL,
  `case_id` int(11) DEFAULT NULL,
  `series_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `progress_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `cases_progress_expected`
--

CREATE TABLE `cases_progress_expected` (
  `progress_id` int(11) NOT NULL,
  `case_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `progress_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-11-13 03:51:54.077551', '1', 'rdadmin', 3, '', 4, 2),
(2, '2023-11-15 01:09:35.618708', '4', 'aaa', 1, '[{\"added\": {}}]', 4, 2),
(3, '2023-11-15 01:10:05.783005', '4', 'aaa', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(37, 'breeding_app', 'breedingdetaileditemweight'),
(38, 'breeding_app', 'breedingexpectedprogress'),
(39, 'breeding_app', 'breedingprogress'),
(40, 'breeding_app', 'breedingproject'),
(41, 'breeding_app', 'breedingsubitemweight'),
(42, 'breeding_app', 'breedingtasks'),
(21, 'browse_historical_project_progress', 'historicalprojectexpectedprogress'),
(22, 'browse_historical_project_progress', 'historicalprojectprogress'),
(23, 'browse_historical_project_progress', 'seasonhistoricalprojectexpectedprogress'),
(24, 'browse_historical_project_progress', 'seasonhistoricalprojectprogress'),
(20, 'casbin_adapter', 'casbinrule'),
(5, 'contenttypes', 'contenttype'),
(19, 'plan_app', 'plan'),
(25, 'plan_app', 'power'),
(26, 'plan_app', 'project'),
(27, 'plan_app', 'projectcase'),
(28, 'plan_app', 'projectloop'),
(29, 'plan_app', 'projectproportion'),
(30, 'plan_app', 'projecttask'),
(43, 'plan_app', 'systemlog'),
(13, 'project_app_breeding', 'breeding_detaileditemweightmodel'),
(18, 'project_app_breeding', 'breeding_expectedprogressmodel'),
(17, 'project_app_breeding', 'breeding_progressmodel'),
(16, 'project_app_breeding', 'breeding_projectmodel'),
(15, 'project_app_breeding', 'breeding_subitemweightmodel'),
(14, 'project_app_breeding', 'breeding_taskmodel'),
(7, 'project_app_pv', 'pv_detaileditemweightmodel'),
(12, 'project_app_pv', 'pv_expectedprogressmodel'),
(11, 'project_app_pv', 'pv_progressmodel'),
(10, 'project_app_pv', 'pv_projectmodel'),
(9, 'project_app_pv', 'pv_subitemweightmodel'),
(8, 'project_app_pv', 'pv_taskmodel'),
(44, 'pv_app', 'pvbank'),
(31, 'pv_app', 'pvdetaileditemweight'),
(45, 'pv_app', 'pvexpected'),
(32, 'pv_app', 'pvexpectedprogress'),
(33, 'pv_app', 'pvprogress'),
(34, 'pv_app', 'pvproject'),
(35, 'pv_app', 'pvsubitemweight'),
(36, 'pv_app', 'pvtasks'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- 資料表結構 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-24 17:53:19.481800'),
(2, 'auth', '0001_initial', '2023-10-24 17:53:20.327975'),
(3, 'admin', '0001_initial', '2023-10-24 17:53:20.532939'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-24 17:53:20.541840'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-24 17:53:20.551358'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-10-24 17:53:20.661019'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-10-24 17:53:20.752478'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-10-24 17:53:20.775653'),
(9, 'auth', '0004_alter_user_username_opts', '2023-10-24 17:53:20.787927'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-10-24 17:53:20.860930'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-10-24 17:53:20.867651'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-10-24 17:53:20.880223'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-10-24 17:53:20.910184'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-10-24 17:53:20.939486'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-10-24 17:53:20.964902'),
(16, 'auth', '0011_update_proxy_permissions', '2023-10-24 17:53:20.975901'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-10-24 17:53:21.003243'),
(18, 'project_app_breeding', '0001_initial', '2023-10-24 17:53:21.772399'),
(19, 'project_app_breeding', '0002_alter_breeding_detaileditemweightmodel_id_and_more', '2023-10-24 17:53:24.300375'),
(20, 'project_app_pv', '0001_initial', '2023-10-24 17:53:25.108693'),
(21, 'project_app_pv', '0002_alter_pv_detaileditemweightmodel_id_and_more', '2023-10-24 17:53:27.701207'),
(22, 'sessions', '0001_initial', '2023-10-24 17:53:27.907145'),
(23, 'project_app_breeding', '0003_alter_breeding_detaileditemweightmodel_id_and_more', '2023-10-24 17:54:12.977657'),
(24, 'plan_app', '0001_initial', '2023-11-08 05:43:02.303939'),
(25, 'casbin_adapter', '0001_initial', '2023-11-14 02:52:47.426150'),
(26, 'breeding_app', '0001_initial', '2023-11-24 07:51:16.989941'),
(27, 'browse_historical_project_progress', '0001_initial', '2023-11-24 07:51:17.001774'),
(28, 'casbin_adapter', '0002_alter_casbinrule_id', '2023-11-24 07:51:17.304176'),
(29, 'plan_app', '0002_power_project_projectcase_projectloop_and_more', '2023-11-24 07:51:17.341417'),
(30, 'pv_app', '0001_initial', '2023-11-24 07:51:17.378631'),
(31, 'plan_app', '0003_systemlog', '2023-12-15 05:51:34.332404'),
(32, 'pv_app', '0002_pvbank_pvexpected', '2023-12-15 05:51:34.352302');

-- --------------------------------------------------------

--
-- 資料表結構 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3quy0fqbkssx4x1has9bnebml346f0xg', '.eJxVjEsOAiEQRO_C2hBmgGZw6d4zkKZpZNRAMp-V8e5KMgtNalXvVb1EwH0rYV95CXMSZzGK028XkR5cO0h3rLcmqdVtmaPsijzoKq8t8fNyuH8HBdfS1z5bbZwFJGRg8HlS37iMxgzKjcTkI2bKYMHGMWpg0qTdgHny4JV4fwD3gDhK:1r2Nyk:pFDe4LGg_vrzKqhUL0TIdvix4QQ5tW75VKGDdFMBQbI', '2023-11-27 03:51:14.722833');

-- --------------------------------------------------------

--
-- 資料表結構 `energy_production_ratio`
--

CREATE TABLE `energy_production_ratio` (
  `ratio_id` int(11) NOT NULL,
  `series_id` int(11) DEFAULT NULL,
  `plan_total_energy_id` int(11) DEFAULT NULL,
  `loop_energy_id` int(11) DEFAULT NULL,
  `case_energy_id` int(11) DEFAULT NULL,
  `ratio` decimal(10,2) DEFAULT NULL,
  `effective_date` date DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `last_update` date DEFAULT NULL,
  `create_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `energy_production_series`
--

CREATE TABLE `energy_production_series` (
  `series_id` int(11) NOT NULL,
  `series_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `file_progress`
--

CREATE TABLE `file_progress` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_link` varchar(255) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_description` text DEFAULT NULL,
  `routeName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `file_progress`
--

INSERT INTO `file_progress` (`id`, `file_name`, `file_link`, `last_update`, `create_at`, `update_description`, `routeName`) VALUES
(1, '000多元Re-financing管理總表', 'https://docs.google.com/spreadsheets/d/1rQLC04I6F-ViQ8D9jqboa5hn3YH31lGK/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 01:43:26', '2024-02-27 05:23:31', '已將2/11-2/17進度更新', 'File_Progress'),
(2, '00多元Phase2管理總表', 'https://docs.google.com/spreadsheets/d/1vMsJzYlVB6awlL6ZeLUvczQJ6Oi0OJeg/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 01:43:40', '2024-02-27 05:23:31', '已將2/11-2/17進度更新', 'File_Progress'),
(3, '00多元Phase1管理總表', 'https://docs.google.com/spreadsheets/d/1HyEo6al2mDjegqgTAYe0OZY_2r1uSzyP/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 01:43:50', '2024-02-27 05:23:31', '已將2/11-2/17進度更新', 'File_Progress'),
(4, '電業申辦進度', 'https://docs.google.com/spreadsheets/d/1uos3Wmr1PHXqk0hbDUQHjZJuXPH6eRds/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-02-27 08:35:54', '2024-02-27 05:23:31', '已更新新進度', 'File_Progress'),
(5, '22.8KV多元Phase1監工週報', 'https://docs.google.com/spreadsheets/d/1XrJln7GXJbmOEjgMZdhaBN2ntU-KAV9L/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 01:43:50', '2024-02-27 05:23:31', '已將2/11-2/17進度更新', 'File_Progress'),
(6, '22.8KV多元Phase2監工週報', 'https://docs.google.com/spreadsheets/d/1ZkeCC9llCynfgIa5e7lXIJw6AvkPKlX-/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 01:43:50', '2024-02-27 05:23:31', '已將2/11-2/17進度更新', 'File_Progress'),
(7, 'D1多元光電工程報告', 'https://docs.google.com/spreadsheets/d/1RkOG-EzMJnC0nEiIzbMV5KUnfqFnxa68/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 01:43:50', '2024-02-27 05:23:31', '已將2/11-2/17進度更新', 'File_Progress'),
(8, 'D2養殖工程進度表', 'https://docs.google.com/spreadsheets/d/1bma8yfhC08IgDKAJow9GtoHrQ-CJpi_1/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 01:43:50', '2024-02-27 05:23:31', '已將2/11-2/17進度更新', 'File_Progress'),
(9, 'D向陽多元-S01', 'https://docs.google.com/spreadsheets/d/18L6lMX3UdjKyUHoTeoj3_50n7Zj70H8M/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 01:43:50', '2024-02-27 05:23:31', '完工', 'File_Progress'),
(10, 'D向陽多元-S02', 'https://docs.google.com/spreadsheets/d/1uGbX2rl67NvD3g8vpGYH_we6XvgrQuJv/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新\n', 'File_Progress'),
(11, 'D向陽多元-S03', 'https://docs.google.com/spreadsheets/d/1z2Hvl8qzPTuEPZue5wEgB81rRQ44_A3D/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新\r\n', 'File_Progress'),
(12, 'D向陽多元-S04', 'https://docs.google.com/spreadsheets/d/1J2chE81N082TpIbQ0hGkPhvP5wrfVVSS/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新\r\n', 'File_Progress'),
(14, 'D向陽多元-S05', 'https://docs.google.com/spreadsheets/d/1dNshqvGSRf-IX4RjlltJHF7z9IeRYyxh/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新\r\n', 'File_Progress'),
(15, 'D向陽多元-S06', 'https://docs.google.com/spreadsheets/d/1Y3dsFmD3tve3DIxFJ_wNya48OWFUJvCI/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新\r\n', 'File_Progress'),
(16, 'D向陽多元-S07', 'https://docs.google.com/spreadsheets/d/1Q-Lyv4eFryMFFXpgIIsZClDW2U55T2ks/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新\r\n', 'File_Progress'),
(17, 'D向陽多元-S09', 'https://docs.google.com/spreadsheets/d/1kjrmTSmYtzzyOL1r1BuoYnWiROSoyuzs/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新\r\n', 'File_Progress'),
(18, 'D向陽多元-S10', 'https://docs.google.com/spreadsheets/d/1_lyJkmgjxeDShnWSVCclK2pU-gyWMDjG/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新\r\n', 'File_Progress'),
(19, 'E1泰陽電力工程報告', 'https://docs.google.com/spreadsheets/d/13NSMIksBivIGGsx783daq1QCCE-uKlPQ/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新\r\n', 'File_Progress'),
(20, 'E2養殖工程進度表', 'https://docs.google.com/spreadsheets/d/1reiPoUmH281I2pbSi9j3xRGntLH_cyLF/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新\r\n', 'File_Progress'),
(21, 'E泰陽光電-T01', 'https://docs.google.com/spreadsheets/d/1O9P-t2MgA-tsTvUw5Hois5v_alKXi5OX/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '完工', 'File_Progress'),
(22, 'E泰陽光電-T02', 'https://docs.google.com/spreadsheets/d/11ZcUzK6a-7Z4lFXDoQwWmecNCdi4fEri/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '完工', 'File_Progress'),
(23, 'E泰陽光電-T03', 'https://docs.google.com/spreadsheets/d/1X54He6SAgYNcJ4pr9A7nCqyS1HxUMU-O/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '完工', 'File_Progress'),
(24, 'E泰陽光電-T04', 'https://docs.google.com/spreadsheets/d/1nE-g1Goip4wHrL6cJUOJAfogyGrB8i30/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '完工', 'File_Progress'),
(25, 'N1多元Phase2光電工程報告', 'https://docs.google.com/spreadsheets/d/1-4NGCAX3ehV-pohqnkCiXYgQImvdHJ2D/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新', 'File_Progress'),
(26, 'N向陽多元Phase2-SN2', 'https://docs.google.com/spreadsheets/d/1vbJBXSZsSPhv5fNpHe1GqOhfApEqB1p-/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新', 'File_Progress');

-- --------------------------------------------------------

--
-- 資料表結構 `logistic_parameters`
--

CREATE TABLE `logistic_parameters` (
  `parameter_id` int(11) NOT NULL,
  `version` decimal(10,2) DEFAULT NULL,
  `max_percentage` decimal(5,2) DEFAULT NULL,
  `midpoint_time` decimal(10,2) DEFAULT NULL,
  `growth_rate` decimal(10,2) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `logistic_parameters_history`
--

CREATE TABLE `logistic_parameters_history` (
  `history_id` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `changed_column` varchar(255) DEFAULT NULL,
  `previous_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `change_type` varchar(50) DEFAULT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` varchar(255) DEFAULT NULL,
  `change_reason` text DEFAULT NULL,
  `change_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `loops_history`
--

CREATE TABLE `loops_history` (
  `history_id` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `changed_column` varchar(255) DEFAULT NULL,
  `previous_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `change_type` varchar(50) DEFAULT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` varchar(255) DEFAULT NULL,
  `change_reason` text DEFAULT NULL,
  `change_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `loops_progress`
--

CREATE TABLE `loops_progress` (
  `progress_id` int(11) NOT NULL,
  `loop_id` int(11) DEFAULT NULL,
  `series_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `progress_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `loops_progress_expected`
--

CREATE TABLE `loops_progress_expected` (
  `progress_id` int(11) NOT NULL,
  `loop_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `progress_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `major_item_percentage`
--

CREATE TABLE `major_item_percentage` (
  `major_item_id` int(11) NOT NULL,
  `series_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `percentage` decimal(5,2) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `major_item_percentage_history`
--

CREATE TABLE `major_item_percentage_history` (
  `history_id` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `changed_column` varchar(255) DEFAULT NULL,
  `previous_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `change_type` varchar(50) DEFAULT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` varchar(255) DEFAULT NULL,
  `change_reason` text DEFAULT NULL,
  `change_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `master_plans`
--

CREATE TABLE `master_plans` (
  `master_plan_id` int(11) NOT NULL,
  `master_plan_name` varchar(255) DEFAULT NULL,
  `planned_start_date` date DEFAULT NULL,
  `planned_end_date` date DEFAULT NULL,
  `actual_start_date` date DEFAULT NULL,
  `actual_end_date` date DEFAULT NULL,
  `master_plan_manager` varchar(255) DEFAULT NULL,
  `master_plan_status` varchar(255) DEFAULT NULL,
  `master_plan_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `master_plans_history`
--

CREATE TABLE `master_plans_history` (
  `history_id` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `changed_column` varchar(255) DEFAULT NULL,
  `previous_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `change_type` varchar(50) DEFAULT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` varchar(255) DEFAULT NULL,
  `change_reason` text DEFAULT NULL,
  `change_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `master_plan_progress`
--

CREATE TABLE `master_plan_progress` (
  `progress_id` int(11) NOT NULL,
  `master_plan_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `progress_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `meeting_record`
--

CREATE TABLE `meeting_record` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_link` varchar(255) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_description` text DEFAULT NULL,
  `routeName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `meeting_record`
--

INSERT INTO `meeting_record` (`id`, `file_name`, `file_link`, `last_update`, `create_at`, `update_description`, `routeName`) VALUES
(1, '1130109 會議紀錄', 'https://drive.google.com/file/d/1nbyebycLgxObamSn4BPhYwQCmmnj_718/view?usp=sharing', '2024-02-29 02:52:52', '2024-02-29 02:52:52', NULL, ''),
(2, '1130116 會議紀錄', 'https://drive.google.com/file/d/1YDzaQZQ5JmC40FX9Cazf1MehnBV54km5/view?usp=sharing', '2024-03-01 05:19:16', '2024-03-05 05:19:16', NULL, ''),
(3, '1130124 會議紀錄', 'https://drive.google.com/file/d/1jZvZ1lgtZ8zNGaIBUC8NHspWxkFmRYpj/view?usp=sharing', '2024-03-02 05:20:00', '2024-03-05 05:20:00', NULL, ''),
(4, '1130131 職業安全衛生協議組織會議', 'https://drive.google.com/file/d/14yhU0nyOBNWWCX1jR9IAqIkf5A4n69m-/view?usp=sharing', '2024-03-03 05:20:42', '2024-03-05 05:20:42', NULL, ''),
(5, '1130207 會議紀錄', 'https://drive.google.com/file/d/1TFRRuqJF1Q9RuDIcqiyUzhzNq72oIuJK/view?usp=sharing', '2024-03-04 05:21:22', '2024-03-05 05:21:22', NULL, ''),
(6, '1130221 會議紀錄', 'https://drive.google.com/file/d/1yevm0KqZxLNMWU8oYe0ICTcmE3egoCED/view?usp=sharing', '2024-03-05 05:22:04', '2024-03-05 05:22:04', NULL, '');

-- --------------------------------------------------------

--
-- 資料表結構 `plans`
--

CREATE TABLE `plans` (
  `plan_id` int(11) NOT NULL,
  `plan_name` varchar(255) DEFAULT NULL,
  `planned_start_date` date DEFAULT NULL,
  `planned_end_date` date DEFAULT NULL,
  `actual_start_date` date DEFAULT NULL,
  `actual_end_date` date DEFAULT NULL,
  `plan_manager` varchar(255) DEFAULT NULL,
  `plan_status` varchar(255) DEFAULT NULL,
  `plan_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `plans`
--

INSERT INTO `plans` (`plan_id`, `plan_name`, `planned_start_date`, `planned_end_date`, `actual_start_date`, `actual_end_date`, `plan_manager`, `plan_status`, `plan_description`, `last_update`, `create_at`) VALUES
(1, 'Phase 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-23 07:32:42', '2024-02-23 07:32:42');

-- --------------------------------------------------------

--
-- 資料表結構 `plans_history`
--

CREATE TABLE `plans_history` (
  `history_id` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `changed_column` varchar(255) DEFAULT NULL,
  `previous_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `change_type` varchar(50) DEFAULT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` varchar(255) DEFAULT NULL,
  `change_reason` text DEFAULT NULL,
  `change_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `plans_progress`
--

CREATE TABLE `plans_progress` (
  `progress_id` int(11) NOT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `ratio_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `progress_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `plan_associations`
--

CREATE TABLE `plan_associations` (
  `association_id` int(11) NOT NULL,
  `master_plan_id` int(11) DEFAULT NULL,
  `weight_id` int(11) DEFAULT NULL,
  `creation_date` date DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `plan_total_energy_production`
--

CREATE TABLE `plan_total_energy_production` (
  `plan_total_energy_id` int(11) NOT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `total_energy_production` decimal(10,2) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `effective_date` date DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `plan_weights`
--

CREATE TABLE `plan_weights` (
  `weight_id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `weight` decimal(5,2) DEFAULT NULL,
  `effective_date` date DEFAULT NULL,
  `adjustment_reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `projects`
--

CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `plannedstart_date` date DEFAULT NULL,
  `plannedend_date` date DEFAULT NULL,
  `actualstart_date` date DEFAULT NULL,
  `actualend_date` date DEFAULT NULL,
  `construction_status` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `projects`
--

INSERT INTO `projects` (`project_id`, `plan_id`, `project_name`, `plannedstart_date`, `plannedend_date`, `actualstart_date`, `actualend_date`, `construction_status`, `notes`, `last_update`, `create_at`) VALUES
(1, 1, '161KV', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-26 07:33:28', '2024-02-26 06:45:48'),
(2, 1, '22.8KV', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-26 07:33:34', '2024-02-26 06:45:48'),
(3, 1, '案場', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-26 06:46:39', '2024-02-26 06:46:39'),
(4, 1, '電業申辦', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-26 06:46:39', '2024-02-26 06:46:39');

-- --------------------------------------------------------

--
-- 資料表結構 `projects_progress`
--

CREATE TABLE `projects_progress` (
  `progress_id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `ratio_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `progress_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `projects_progress_expected`
--

CREATE TABLE `projects_progress_expected` (
  `progress_id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `progress_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `project_cases`
--

CREATE TABLE `project_cases` (
  `case_id` int(11) NOT NULL,
  `loop_id` int(11) DEFAULT NULL,
  `cases_name` varchar(255) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `plannedstart_date` date DEFAULT NULL,
  `plannedend_date` date DEFAULT NULL,
  `actualstart_date` date DEFAULT NULL,
  `actualend_date` date DEFAULT NULL,
  `construction_status` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project_cases`
--

INSERT INTO `project_cases` (`case_id`, `loop_id`, `cases_name`, `longitude`, `latitude`, `address`, `plannedstart_date`, `plannedend_date`, `actualstart_date`, `actualend_date`, `construction_status`, `notes`, `last_update`, `create_at`) VALUES
(1, 1, '升三-A02區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-29 02:32:45', '2024-02-29 02:32:45'),
(2, 1, '升三-A02區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-29 02:32:45', '2024-02-29 02:32:45');

-- --------------------------------------------------------

--
-- 資料表結構 `project_case_energy_production`
--

CREATE TABLE `project_case_energy_production` (
  `case_energy_id` int(11) NOT NULL,
  `case_id` int(11) DEFAULT NULL,
  `energy_production` decimal(10,2) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `effective_date` date DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `project_loops`
--

CREATE TABLE `project_loops` (
  `loop_id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `loop_name` varchar(255) DEFAULT NULL,
  `plannedstart_date` date DEFAULT NULL,
  `plannedend_date` date DEFAULT NULL,
  `actualstart_date` date DEFAULT NULL,
  `actualend_date` date DEFAULT NULL,
  `construction_status` varchar(255) DEFAULT NULL,
  `planned_parallel_date` date DEFAULT NULL,
  `actual_parallel_date` date DEFAULT NULL,
  `parallel_status` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project_loops`
--

INSERT INTO `project_loops` (`loop_id`, `project_id`, `loop_name`, `plannedstart_date`, `plannedend_date`, `actualstart_date`, `actualend_date`, `construction_status`, `planned_parallel_date`, `actual_parallel_date`, `parallel_status`, `notes`, `last_update`, `create_at`) VALUES
(1, 3, 'SN1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-27 12:24:35', '2024-02-27 12:24:35'),
(2, 3, 'SN2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-27 12:24:35', '2024-02-27 12:24:35');

-- --------------------------------------------------------

--
-- 資料表結構 `project_loop_energy_production`
--

CREATE TABLE `project_loop_energy_production` (
  `loop_energy_id` int(11) NOT NULL,
  `loop_id` int(11) DEFAULT NULL,
  `energy_production` decimal(10,2) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `effective_date` date DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `project_pv`
--

CREATE TABLE `project_pv` (
  `pv_id` int(11) NOT NULL,
  `pv_name` varchar(255) DEFAULT NULL,
  `planned_start_date` date DEFAULT NULL,
  `planned_end_date` date DEFAULT NULL,
  `actual_start_date` date DEFAULT NULL,
  `actual_end_date` date DEFAULT NULL,
  `construction_status` varchar(255) DEFAULT NULL,
  `series_id` int(11) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `case_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project_pv`
--

INSERT INTO `project_pv` (`pv_id`, `pv_name`, `planned_start_date`, `planned_end_date`, `actual_start_date`, `actual_end_date`, `construction_status`, `series_id`, `last_update`, `create_at`, `case_id`) VALUES
(1, '升三-A02區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-29 02:33:34', '2024-02-29 02:33:34', 1),
(2, '升三-A02區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-29 02:33:34', '2024-02-29 02:33:34', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `project_pv_expected_progress`
--

CREATE TABLE `project_pv_expected_progress` (
  `expected_progress_id` int(11) NOT NULL,
  `pv_id` int(11) DEFAULT NULL,
  `parameter_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `calculation_date` date DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project_pv_expected_progress`
--

INSERT INTO `project_pv_expected_progress` (`expected_progress_id`, `pv_id`, `parameter_id`, `progress_percentage`, `calculation_date`, `last_update`, `create_at`, `start_date`, `end_date`) VALUES
(1, 1, NULL, 0.15, NULL, '2024-02-29 08:24:18', '2024-02-29 08:24:18', '2024-01-07', '2024-01-13'),
(2, 1, NULL, 0.15, NULL, '2024-02-29 08:24:18', '2024-02-29 08:24:18', '2024-01-14', '2024-01-20'),
(5, 1, NULL, 0.15, NULL, '2024-02-29 08:24:18', '2024-02-29 08:24:18', '2023-12-31', '2024-01-06'),
(6, 1, NULL, 0.15, NULL, '2024-02-29 08:24:18', '2024-02-29 08:24:18', '2024-01-21', '2024-01-27');

-- --------------------------------------------------------

--
-- 資料表結構 `project_pv_history`
--

CREATE TABLE `project_pv_history` (
  `history_id` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `changed_column` varchar(255) DEFAULT NULL,
  `previous_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `change_type` varchar(50) DEFAULT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` varchar(255) DEFAULT NULL,
  `change_reason` text DEFAULT NULL,
  `change_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `project_pv_progress`
--

CREATE TABLE `project_pv_progress` (
  `progress_id` int(11) NOT NULL,
  `pv_id` int(11) DEFAULT NULL,
  `series_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `supervisor` varchar(255) DEFAULT NULL,
  `non_construction_reason` text DEFAULT NULL,
  `progress_calculation_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project_pv_progress`
--

INSERT INTO `project_pv_progress` (`progress_id`, `pv_id`, `series_id`, `progress_percentage`, `supervisor`, `non_construction_reason`, `progress_calculation_description`, `last_update`, `create_at`, `start_date`, `end_date`) VALUES
(1, 1, NULL, 0.20, NULL, NULL, NULL, '2024-03-05 09:15:04', '2024-02-29 08:23:13', '2024-01-14', '2024-01-20'),
(2, 1, NULL, 0.15, NULL, NULL, NULL, '2024-03-08 01:18:01', '2024-02-29 08:23:13', '2024-01-07', '2024-01-13'),
(5, 1, NULL, 0.10, NULL, NULL, NULL, '2024-03-08 01:17:24', '2024-02-29 08:23:13', '2023-12-31', '2024-01-06'),
(6, 1, NULL, 0.25, NULL, NULL, NULL, '2024-03-05 12:22:20', '2024-02-29 08:23:13', '2024-01-21', '2024-01-27');

-- --------------------------------------------------------

--
-- 資料表結構 `project_value_ratios`
--

CREATE TABLE `project_value_ratios` (
  `ratio_id` int(11) NOT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `percentage` decimal(5,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `effective_date` date DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `project_value_ratios_history`
--

CREATE TABLE `project_value_ratios_history` (
  `history_id` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `changed_column` varchar(255) DEFAULT NULL,
  `previous_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `change_type` varchar(50) DEFAULT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` varchar(255) DEFAULT NULL,
  `change_reason` text DEFAULT NULL,
  `change_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `pv_bank_expected_history`
--

CREATE TABLE `pv_bank_expected_history` (
  `history_id` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `changed_column` varchar(255) DEFAULT NULL,
  `previous_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `change_type` varchar(50) DEFAULT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` varchar(255) DEFAULT NULL,
  `change_reason` text DEFAULT NULL,
  `change_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `pv_bank_history`
--

CREATE TABLE `pv_bank_history` (
  `history_id` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `changed_column` varchar(255) DEFAULT NULL,
  `previous_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `change_type` varchar(50) DEFAULT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` varchar(255) DEFAULT NULL,
  `change_reason` text DEFAULT NULL,
  `change_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `pv_bank_progress`
--

CREATE TABLE `pv_bank_progress` (
  `pv_bank_id` int(11) NOT NULL,
  `pv_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `pv_bank_progress`
--

INSERT INTO `pv_bank_progress` (`pv_bank_id`, `pv_id`, `progress_percentage`, `last_update`, `create_at`, `start_date`, `end_date`) VALUES
(1, 1, 0.40, '2024-03-07 12:44:15', '2024-03-07 12:44:15', '2024-01-21', '2024-01-27'),
(3, 1, 0.40, '2024-03-07 12:44:15', '2024-03-07 12:44:15', '2024-01-14', '2024-01-20'),
(4, 1, 0.40, '2024-03-07 12:44:15', '2024-03-07 12:44:15', '2024-01-07', '2024-01-13'),
(5, 1, 0.40, '2024-03-07 12:44:15', '2024-03-07 12:44:15', '2023-12-31', '2024-01-06');

-- --------------------------------------------------------

--
-- 資料表結構 `pv_bank_progress_expected`
--

CREATE TABLE `pv_bank_progress_expected` (
  `pv_bank_expected_id` int(11) NOT NULL,
  `pv_id` int(11) DEFAULT NULL,
  `parameter_id` int(11) DEFAULT NULL,
  `is_parameter_based` tinyint(1) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `pv_bank_progress_expected`
--

INSERT INTO `pv_bank_progress_expected` (`pv_bank_expected_id`, `pv_id`, `parameter_id`, `is_parameter_based`, `progress_percentage`, `last_update`, `create_at`, `start_date`, `end_date`) VALUES
(1, 1, NULL, NULL, NULL, '2024-03-07 12:46:27', '2024-03-07 12:46:27', '2024-01-21', '2024-01-27'),
(3, 1, NULL, NULL, NULL, '2024-03-07 12:46:27', '2024-03-07 12:46:27', '2024-01-14', '2024-01-20'),
(4, 1, NULL, NULL, NULL, '2024-03-07 12:46:27', '2024-03-07 12:46:27', '2024-01-07', '2024-01-13'),
(5, 1, NULL, NULL, NULL, '2024-03-07 12:46:27', '2024-03-07 12:46:27', '2023-12-31', '2024-01-06');

-- --------------------------------------------------------

--
-- 資料表結構 `series`
--

CREATE TABLE `series` (
  `series_id` int(11) NOT NULL,
  `series_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `series_history`
--

CREATE TABLE `series_history` (
  `history_id` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `changed_column` varchar(255) DEFAULT NULL,
  `previous_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `change_type` varchar(50) DEFAULT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` varchar(255) DEFAULT NULL,
  `change_reason` text DEFAULT NULL,
  `change_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `sub_item_percentage`
--

CREATE TABLE `sub_item_percentage` (
  `sub_item_id` int(11) NOT NULL,
  `major_item_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `percentage` decimal(5,2) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `sub_item_percentage_history`
--

CREATE TABLE `sub_item_percentage_history` (
  `history_id` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `changed_column` varchar(255) DEFAULT NULL,
  `previous_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `change_type` varchar(50) DEFAULT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` varchar(255) DEFAULT NULL,
  `change_reason` text DEFAULT NULL,
  `change_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- 資料表索引 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- 資料表索引 `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- 資料表索引 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- 資料表索引 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `casbin_rule`
--
ALTER TABLE `casbin_rule`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `cases_history`
--
ALTER TABLE `cases_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`);

--
-- 資料表索引 `cases_progress`
--
ALTER TABLE `cases_progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `case_id` (`case_id`),
  ADD KEY `series_id` (`series_id`);

--
-- 資料表索引 `cases_progress_expected`
--
ALTER TABLE `cases_progress_expected`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `case_id` (`case_id`);

--
-- 資料表索引 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- 資料表索引 `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- 資料表索引 `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- 資料表索引 `energy_production_ratio`
--
ALTER TABLE `energy_production_ratio`
  ADD PRIMARY KEY (`ratio_id`),
  ADD KEY `series_id` (`series_id`),
  ADD KEY `plan_total_energy_id` (`plan_total_energy_id`),
  ADD KEY `loop_energy_id` (`loop_energy_id`),
  ADD KEY `case_energy_id` (`case_energy_id`);

--
-- 資料表索引 `energy_production_series`
--
ALTER TABLE `energy_production_series`
  ADD PRIMARY KEY (`series_id`);

--
-- 資料表索引 `file_progress`
--
ALTER TABLE `file_progress`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `logistic_parameters`
--
ALTER TABLE `logistic_parameters`
  ADD PRIMARY KEY (`parameter_id`);

--
-- 資料表索引 `logistic_parameters_history`
--
ALTER TABLE `logistic_parameters_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`);

--
-- 資料表索引 `loops_history`
--
ALTER TABLE `loops_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`);

--
-- 資料表索引 `loops_progress`
--
ALTER TABLE `loops_progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `loop_id` (`loop_id`),
  ADD KEY `series_id` (`series_id`);

--
-- 資料表索引 `loops_progress_expected`
--
ALTER TABLE `loops_progress_expected`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `loop_id` (`loop_id`);

--
-- 資料表索引 `major_item_percentage`
--
ALTER TABLE `major_item_percentage`
  ADD PRIMARY KEY (`major_item_id`),
  ADD KEY `series_id` (`series_id`);

--
-- 資料表索引 `major_item_percentage_history`
--
ALTER TABLE `major_item_percentage_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`);

--
-- 資料表索引 `master_plans`
--
ALTER TABLE `master_plans`
  ADD PRIMARY KEY (`master_plan_id`);

--
-- 資料表索引 `master_plans_history`
--
ALTER TABLE `master_plans_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`);

--
-- 資料表索引 `master_plan_progress`
--
ALTER TABLE `master_plan_progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `master_plan_id` (`master_plan_id`);

--
-- 資料表索引 `meeting_record`
--
ALTER TABLE `meeting_record`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`plan_id`);

--
-- 資料表索引 `plans_history`
--
ALTER TABLE `plans_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`);

--
-- 資料表索引 `plans_progress`
--
ALTER TABLE `plans_progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `plan_id` (`plan_id`),
  ADD KEY `ratio_id` (`ratio_id`);

--
-- 資料表索引 `plan_associations`
--
ALTER TABLE `plan_associations`
  ADD PRIMARY KEY (`association_id`),
  ADD KEY `master_plan_id` (`master_plan_id`),
  ADD KEY `weight_id` (`weight_id`);

--
-- 資料表索引 `plan_total_energy_production`
--
ALTER TABLE `plan_total_energy_production`
  ADD PRIMARY KEY (`plan_total_energy_id`),
  ADD KEY `plan_id` (`plan_id`);

--
-- 資料表索引 `plan_weights`
--
ALTER TABLE `plan_weights`
  ADD PRIMARY KEY (`weight_id`),
  ADD KEY `project_id` (`project_id`);

--
-- 資料表索引 `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`),
  ADD KEY `plan_id` (`plan_id`);

--
-- 資料表索引 `projects_progress`
--
ALTER TABLE `projects_progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `ratio_id` (`ratio_id`);

--
-- 資料表索引 `projects_progress_expected`
--
ALTER TABLE `projects_progress_expected`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `project_id` (`project_id`);

--
-- 資料表索引 `project_cases`
--
ALTER TABLE `project_cases`
  ADD PRIMARY KEY (`case_id`),
  ADD KEY `loop_id` (`loop_id`);

--
-- 資料表索引 `project_case_energy_production`
--
ALTER TABLE `project_case_energy_production`
  ADD PRIMARY KEY (`case_energy_id`),
  ADD KEY `case_id` (`case_id`);

--
-- 資料表索引 `project_loops`
--
ALTER TABLE `project_loops`
  ADD PRIMARY KEY (`loop_id`),
  ADD KEY `project_id` (`project_id`);

--
-- 資料表索引 `project_loop_energy_production`
--
ALTER TABLE `project_loop_energy_production`
  ADD PRIMARY KEY (`loop_energy_id`),
  ADD KEY `loop_id` (`loop_id`);

--
-- 資料表索引 `project_pv`
--
ALTER TABLE `project_pv`
  ADD PRIMARY KEY (`pv_id`),
  ADD KEY `series_id` (`series_id`),
  ADD KEY `fk_project_pv_case_id` (`case_id`);

--
-- 資料表索引 `project_pv_expected_progress`
--
ALTER TABLE `project_pv_expected_progress`
  ADD PRIMARY KEY (`expected_progress_id`),
  ADD KEY `pv_id` (`pv_id`),
  ADD KEY `parameter_id` (`parameter_id`);

--
-- 資料表索引 `project_pv_history`
--
ALTER TABLE `project_pv_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`);

--
-- 資料表索引 `project_pv_progress`
--
ALTER TABLE `project_pv_progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `pv_id` (`pv_id`),
  ADD KEY `series_id` (`series_id`);

--
-- 資料表索引 `project_value_ratios`
--
ALTER TABLE `project_value_ratios`
  ADD PRIMARY KEY (`ratio_id`),
  ADD KEY `plan_id` (`plan_id`),
  ADD KEY `project_id` (`project_id`);

--
-- 資料表索引 `project_value_ratios_history`
--
ALTER TABLE `project_value_ratios_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`);

--
-- 資料表索引 `pv_bank_expected_history`
--
ALTER TABLE `pv_bank_expected_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`);

--
-- 資料表索引 `pv_bank_history`
--
ALTER TABLE `pv_bank_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`);

--
-- 資料表索引 `pv_bank_progress`
--
ALTER TABLE `pv_bank_progress`
  ADD PRIMARY KEY (`pv_bank_id`),
  ADD KEY `pv_id` (`pv_id`);

--
-- 資料表索引 `pv_bank_progress_expected`
--
ALTER TABLE `pv_bank_progress_expected`
  ADD PRIMARY KEY (`pv_bank_expected_id`),
  ADD KEY `pv_id` (`pv_id`),
  ADD KEY `parameter_id` (`parameter_id`);

--
-- 資料表索引 `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`series_id`);

--
-- 資料表索引 `series_history`
--
ALTER TABLE `series_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`);

--
-- 資料表索引 `sub_item_percentage`
--
ALTER TABLE `sub_item_percentage`
  ADD PRIMARY KEY (`sub_item_id`),
  ADD KEY `major_item_id` (`major_item_id`);

--
-- 資料表索引 `sub_item_percentage_history`
--
ALTER TABLE `sub_item_percentage_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `casbin_rule`
--
ALTER TABLE `casbin_rule`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cases_history`
--
ALTER TABLE `cases_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cases_progress`
--
ALTER TABLE `cases_progress`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cases_progress_expected`
--
ALTER TABLE `cases_progress_expected`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `energy_production_ratio`
--
ALTER TABLE `energy_production_ratio`
  MODIFY `ratio_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `energy_production_series`
--
ALTER TABLE `energy_production_series`
  MODIFY `series_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `file_progress`
--
ALTER TABLE `file_progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `logistic_parameters`
--
ALTER TABLE `logistic_parameters`
  MODIFY `parameter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `logistic_parameters_history`
--
ALTER TABLE `logistic_parameters_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `loops_history`
--
ALTER TABLE `loops_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `loops_progress`
--
ALTER TABLE `loops_progress`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `loops_progress_expected`
--
ALTER TABLE `loops_progress_expected`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `major_item_percentage`
--
ALTER TABLE `major_item_percentage`
  MODIFY `major_item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `major_item_percentage_history`
--
ALTER TABLE `major_item_percentage_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `master_plans`
--
ALTER TABLE `master_plans`
  MODIFY `master_plan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `master_plans_history`
--
ALTER TABLE `master_plans_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `master_plan_progress`
--
ALTER TABLE `master_plan_progress`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `meeting_record`
--
ALTER TABLE `meeting_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `plans`
--
ALTER TABLE `plans`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `plans_history`
--
ALTER TABLE `plans_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `plans_progress`
--
ALTER TABLE `plans_progress`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `plan_associations`
--
ALTER TABLE `plan_associations`
  MODIFY `association_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `plan_total_energy_production`
--
ALTER TABLE `plan_total_energy_production`
  MODIFY `plan_total_energy_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `plan_weights`
--
ALTER TABLE `plan_weights`
  MODIFY `weight_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `projects_progress`
--
ALTER TABLE `projects_progress`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `projects_progress_expected`
--
ALTER TABLE `projects_progress_expected`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_cases`
--
ALTER TABLE `project_cases`
  MODIFY `case_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_case_energy_production`
--
ALTER TABLE `project_case_energy_production`
  MODIFY `case_energy_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_loops`
--
ALTER TABLE `project_loops`
  MODIFY `loop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_loop_energy_production`
--
ALTER TABLE `project_loop_energy_production`
  MODIFY `loop_energy_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_pv`
--
ALTER TABLE `project_pv`
  MODIFY `pv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_pv_expected_progress`
--
ALTER TABLE `project_pv_expected_progress`
  MODIFY `expected_progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_pv_history`
--
ALTER TABLE `project_pv_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_pv_progress`
--
ALTER TABLE `project_pv_progress`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_value_ratios`
--
ALTER TABLE `project_value_ratios`
  MODIFY `ratio_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_value_ratios_history`
--
ALTER TABLE `project_value_ratios_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_bank_expected_history`
--
ALTER TABLE `pv_bank_expected_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_bank_history`
--
ALTER TABLE `pv_bank_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_bank_progress`
--
ALTER TABLE `pv_bank_progress`
  MODIFY `pv_bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_bank_progress_expected`
--
ALTER TABLE `pv_bank_progress_expected`
  MODIFY `pv_bank_expected_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `series`
--
ALTER TABLE `series`
  MODIFY `series_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `series_history`
--
ALTER TABLE `series_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `sub_item_percentage`
--
ALTER TABLE `sub_item_percentage`
  MODIFY `sub_item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `sub_item_percentage_history`
--
ALTER TABLE `sub_item_percentage_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 資料表的限制式 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 資料表的限制式 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `cases_history`
--
ALTER TABLE `cases_history`
  ADD CONSTRAINT `cases_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `project_cases` (`case_id`);

--
-- 資料表的限制式 `cases_progress`
--
ALTER TABLE `cases_progress`
  ADD CONSTRAINT `cases_progress_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `project_cases` (`case_id`),
  ADD CONSTRAINT `cases_progress_ibfk_2` FOREIGN KEY (`series_id`) REFERENCES `energy_production_series` (`series_id`);

--
-- 資料表的限制式 `cases_progress_expected`
--
ALTER TABLE `cases_progress_expected`
  ADD CONSTRAINT `cases_progress_expected_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `project_cases` (`case_id`);

--
-- 資料表的限制式 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `energy_production_ratio`
--
ALTER TABLE `energy_production_ratio`
  ADD CONSTRAINT `energy_production_ratio_ibfk_1` FOREIGN KEY (`series_id`) REFERENCES `energy_production_series` (`series_id`),
  ADD CONSTRAINT `energy_production_ratio_ibfk_2` FOREIGN KEY (`plan_total_energy_id`) REFERENCES `plan_total_energy_production` (`plan_total_energy_id`),
  ADD CONSTRAINT `energy_production_ratio_ibfk_3` FOREIGN KEY (`loop_energy_id`) REFERENCES `project_loop_energy_production` (`loop_energy_id`),
  ADD CONSTRAINT `energy_production_ratio_ibfk_4` FOREIGN KEY (`case_energy_id`) REFERENCES `project_case_energy_production` (`case_energy_id`);

--
-- 資料表的限制式 `logistic_parameters_history`
--
ALTER TABLE `logistic_parameters_history`
  ADD CONSTRAINT `logistic_parameters_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `logistic_parameters` (`parameter_id`);

--
-- 資料表的限制式 `loops_history`
--
ALTER TABLE `loops_history`
  ADD CONSTRAINT `loops_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `project_loops` (`loop_id`);

--
-- 資料表的限制式 `loops_progress`
--
ALTER TABLE `loops_progress`
  ADD CONSTRAINT `loops_progress_ibfk_1` FOREIGN KEY (`loop_id`) REFERENCES `project_loops` (`loop_id`),
  ADD CONSTRAINT `loops_progress_ibfk_2` FOREIGN KEY (`series_id`) REFERENCES `energy_production_series` (`series_id`);

--
-- 資料表的限制式 `loops_progress_expected`
--
ALTER TABLE `loops_progress_expected`
  ADD CONSTRAINT `loops_progress_expected_ibfk_1` FOREIGN KEY (`loop_id`) REFERENCES `project_loops` (`loop_id`);

--
-- 資料表的限制式 `major_item_percentage`
--
ALTER TABLE `major_item_percentage`
  ADD CONSTRAINT `major_item_percentage_ibfk_1` FOREIGN KEY (`series_id`) REFERENCES `series` (`series_id`);

--
-- 資料表的限制式 `major_item_percentage_history`
--
ALTER TABLE `major_item_percentage_history`
  ADD CONSTRAINT `major_item_percentage_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `major_item_percentage` (`major_item_id`);

--
-- 資料表的限制式 `master_plans_history`
--
ALTER TABLE `master_plans_history`
  ADD CONSTRAINT `master_plans_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `master_plans` (`master_plan_id`);

--
-- 資料表的限制式 `master_plan_progress`
--
ALTER TABLE `master_plan_progress`
  ADD CONSTRAINT `master_plan_progress_ibfk_1` FOREIGN KEY (`master_plan_id`) REFERENCES `master_plans` (`master_plan_id`);

--
-- 資料表的限制式 `plans_history`
--
ALTER TABLE `plans_history`
  ADD CONSTRAINT `plans_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `plans` (`plan_id`);

--
-- 資料表的限制式 `plans_progress`
--
ALTER TABLE `plans_progress`
  ADD CONSTRAINT `plans_progress_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`plan_id`),
  ADD CONSTRAINT `plans_progress_ibfk_2` FOREIGN KEY (`ratio_id`) REFERENCES `project_value_ratios` (`ratio_id`);

--
-- 資料表的限制式 `plan_associations`
--
ALTER TABLE `plan_associations`
  ADD CONSTRAINT `plan_associations_ibfk_1` FOREIGN KEY (`master_plan_id`) REFERENCES `master_plans` (`master_plan_id`),
  ADD CONSTRAINT `plan_associations_ibfk_2` FOREIGN KEY (`weight_id`) REFERENCES `plan_weights` (`weight_id`);

--
-- 資料表的限制式 `plan_total_energy_production`
--
ALTER TABLE `plan_total_energy_production`
  ADD CONSTRAINT `plan_total_energy_production_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`plan_id`);

--
-- 資料表的限制式 `plan_weights`
--
ALTER TABLE `plan_weights`
  ADD CONSTRAINT `plan_weights_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `plans` (`plan_id`);

--
-- 資料表的限制式 `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`plan_id`);

--
-- 資料表的限制式 `projects_progress`
--
ALTER TABLE `projects_progress`
  ADD CONSTRAINT `projects_progress_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`),
  ADD CONSTRAINT `projects_progress_ibfk_2` FOREIGN KEY (`ratio_id`) REFERENCES `project_value_ratios` (`ratio_id`);

--
-- 資料表的限制式 `projects_progress_expected`
--
ALTER TABLE `projects_progress_expected`
  ADD CONSTRAINT `projects_progress_expected_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`);

--
-- 資料表的限制式 `project_cases`
--
ALTER TABLE `project_cases`
  ADD CONSTRAINT `project_cases_ibfk_1` FOREIGN KEY (`loop_id`) REFERENCES `project_loops` (`loop_id`);

--
-- 資料表的限制式 `project_case_energy_production`
--
ALTER TABLE `project_case_energy_production`
  ADD CONSTRAINT `project_case_energy_production_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `project_cases` (`case_id`);

--
-- 資料表的限制式 `project_loops`
--
ALTER TABLE `project_loops`
  ADD CONSTRAINT `project_loops_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`);

--
-- 資料表的限制式 `project_loop_energy_production`
--
ALTER TABLE `project_loop_energy_production`
  ADD CONSTRAINT `project_loop_energy_production_ibfk_1` FOREIGN KEY (`loop_id`) REFERENCES `project_loops` (`loop_id`);

--
-- 資料表的限制式 `project_pv`
--
ALTER TABLE `project_pv`
  ADD CONSTRAINT `fk_project_pv_case_id` FOREIGN KEY (`case_id`) REFERENCES `project_cases` (`case_id`),
  ADD CONSTRAINT `project_pv_ibfk_1` FOREIGN KEY (`series_id`) REFERENCES `series` (`series_id`);

--
-- 資料表的限制式 `project_pv_expected_progress`
--
ALTER TABLE `project_pv_expected_progress`
  ADD CONSTRAINT `project_pv_expected_progress_ibfk_1` FOREIGN KEY (`pv_id`) REFERENCES `project_pv` (`pv_id`),
  ADD CONSTRAINT `project_pv_expected_progress_ibfk_2` FOREIGN KEY (`parameter_id`) REFERENCES `logistic_parameters` (`parameter_id`);

--
-- 資料表的限制式 `project_pv_history`
--
ALTER TABLE `project_pv_history`
  ADD CONSTRAINT `project_pv_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `project_pv` (`pv_id`);

--
-- 資料表的限制式 `project_pv_progress`
--
ALTER TABLE `project_pv_progress`
  ADD CONSTRAINT `project_pv_progress_ibfk_1` FOREIGN KEY (`pv_id`) REFERENCES `project_pv` (`pv_id`),
  ADD CONSTRAINT `project_pv_progress_ibfk_2` FOREIGN KEY (`series_id`) REFERENCES `series` (`series_id`);

--
-- 資料表的限制式 `project_value_ratios`
--
ALTER TABLE `project_value_ratios`
  ADD CONSTRAINT `project_value_ratios_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`plan_id`),
  ADD CONSTRAINT `project_value_ratios_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `plans` (`plan_id`);

--
-- 資料表的限制式 `project_value_ratios_history`
--
ALTER TABLE `project_value_ratios_history`
  ADD CONSTRAINT `project_value_ratios_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `project_value_ratios` (`ratio_id`);

--
-- 資料表的限制式 `pv_bank_expected_history`
--
ALTER TABLE `pv_bank_expected_history`
  ADD CONSTRAINT `pv_bank_expected_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `pv_bank_progress_expected` (`pv_bank_expected_id`);

--
-- 資料表的限制式 `pv_bank_history`
--
ALTER TABLE `pv_bank_history`
  ADD CONSTRAINT `pv_bank_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `pv_bank_progress` (`pv_bank_id`);

--
-- 資料表的限制式 `pv_bank_progress`
--
ALTER TABLE `pv_bank_progress`
  ADD CONSTRAINT `pv_bank_progress_ibfk_1` FOREIGN KEY (`pv_id`) REFERENCES `project_pv` (`pv_id`);

--
-- 資料表的限制式 `pv_bank_progress_expected`
--
ALTER TABLE `pv_bank_progress_expected`
  ADD CONSTRAINT `pv_bank_progress_expected_ibfk_1` FOREIGN KEY (`pv_id`) REFERENCES `project_pv` (`pv_id`),
  ADD CONSTRAINT `pv_bank_progress_expected_ibfk_2` FOREIGN KEY (`parameter_id`) REFERENCES `logistic_parameters` (`parameter_id`);

--
-- 資料表的限制式 `series_history`
--
ALTER TABLE `series_history`
  ADD CONSTRAINT `series_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `series` (`series_id`);

--
-- 資料表的限制式 `sub_item_percentage`
--
ALTER TABLE `sub_item_percentage`
  ADD CONSTRAINT `sub_item_percentage_ibfk_1` FOREIGN KEY (`major_item_id`) REFERENCES `major_item_percentage` (`major_item_id`);

--
-- 資料表的限制式 `sub_item_percentage_history`
--
ALTER TABLE `sub_item_percentage_history`
  ADD CONSTRAINT `sub_item_percentage_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `sub_item_percentage` (`sub_item_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
