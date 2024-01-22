-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-01-21 07:08:08
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
-- 資料表結構 `breeding_detaileditem_weight`
--

CREATE TABLE `breeding_detaileditem_weight` (
  `id` bigint(20) NOT NULL,
  `detailed_name` varchar(255) NOT NULL,
  `detailed_weight` double DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `subitem_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `breeding_detaileditem_weight`
--

INSERT INTO `breeding_detaileditem_weight` (`id`, `detailed_name`, `detailed_weight`, `created_at`, `updated_at`, `subitem_id`) VALUES
(3, '基礎及榫溝開挖數量', 0.03, '2023-11-28 06:00:08', '2023-11-28 06:00:08', 1),
(4, '榫溝鋼筋綁紥灌漿數量', 0.02, '2023-11-28 06:00:28', '2023-11-28 06:00:28', 1),
(5, '基礎筋綁紥數量', 0.07, '2023-11-28 06:00:34', '2023-11-28 06:00:34', 1),
(6, '基礎組模灌漿數量', 0.08, '2023-11-28 06:00:40', '2023-11-28 06:00:40', 1),
(7, '牆面鋼筋綁紥數量', 0.1, '2023-11-28 06:00:48', '2023-11-28 06:00:48', 1),
(8, '牆面組模灌漿數量', 0.2, '2023-11-28 06:00:56', '2023-11-28 06:00:56', 1),
(9, '材料進場', 0.5, '2023-11-28 06:01:03', '2023-11-28 06:01:03', 1),
(10, '養殖棚農膜披覆工程', 0.5, '2023-11-28 06:02:09', '2023-11-28 06:02:09', 2),
(11, '材料進場', 0.5, '2023-11-28 06:02:22', '2023-11-28 06:02:22', 2),
(12, '點井施作、馬達安裝', 0.01, '2023-11-28 06:03:34', '2023-11-28 06:03:34', 3),
(13, '放樣(集汚池及圓池)', 0.02, '2023-11-28 06:04:20', '2023-11-28 06:04:20', 3),
(14, '集汚池開挖', 0.02, '2023-11-28 06:04:55', '2023-11-28 06:04:55', 3),
(15, '集汚池組模、預留管路接頭、灌漿及拆模', 0.02, '2023-11-28 06:05:11', '2023-11-28 06:05:11', 3),
(16, '集汚池管路、中央排污池管路及循環池管路開挖配置', 0.03, '2023-11-28 06:05:40', '2023-11-28 06:05:40', 3),
(17, '池體開挖', 0.02, '2023-11-28 06:06:32', '2023-11-28 06:06:32', 3),
(18, '中央排污池及循環池開挖打底灌漿', 0.02, '2023-11-28 06:06:48', '2023-11-28 06:06:48', 3),
(19, '中央排污池、循環池崁丁模施作', 0.01, '2023-11-28 06:07:10', '2023-11-28 06:07:10', 3),
(20, '中央排污池、循環池及監控池組模灌漿數量', 0.01, '2023-11-28 06:07:23', '2023-11-28 06:07:23', 3),
(21, '圓池HDPE管材結構組立', 0.05, '2023-11-28 06:07:48', '2023-11-28 06:07:48', 3),
(22, '養殖棚圓柱防水塗料刷漆', 0.01, '2023-11-28 06:08:09', '2023-11-28 06:08:09', 3),
(23, '圓池外填土整地及池內整地夯實', 0.03, '2023-11-28 06:08:27', '2023-11-28 06:08:27', 3),
(24, '圓池HDPE黏合施作', 0.1, '2023-11-28 06:08:41', '2023-11-28 06:08:41', 3),
(25, '蓄水池(消毒池)', 0.06, '2023-11-28 06:09:05', '2023-11-28 06:09:05', 3),
(26, '循環水塔基礎平台、雨水收集桶平台、鼓風機平台、貨櫃平台', 0.02, '2023-11-28 06:09:27', '2023-11-28 06:09:27', 3),
(27, '水塔', 0.02, '2023-11-28 06:09:40', '2023-11-28 06:09:40', 3),
(28, '養殖池管路工程進水管及氧氣管', 0.03, '2023-11-28 06:10:02', '2023-11-28 06:10:02', 3),
(29, '機電設備工程(電源箱)配置', 0.02, '2023-11-28 06:10:20', '2023-11-28 06:10:20', 3),
(30, '材料進場', 0.5, '2023-11-28 06:10:40', '2023-11-28 06:10:40', 3),
(31, '接電(分路)', 0.15, '2023-11-28 06:11:54', '2023-11-28 06:11:54', 4),
(32, '接水(分路)', 0.15, '2023-11-28 06:12:06', '2023-11-28 06:12:06', 4),
(33, '接氣(分路)', 0.15, '2023-11-28 06:12:17', '2023-11-28 06:12:17', 4),
(34, '雜項', 0.05, '2023-11-28 06:12:32', '2023-11-28 06:12:32', 4),
(35, '材料進場', 0.5, '2023-11-28 06:12:48', '2023-11-28 06:12:48', 4);

-- --------------------------------------------------------

--
-- 資料表結構 `breeding_expected_progress`
--

CREATE TABLE `breeding_expected_progress` (
  `id` bigint(20) NOT NULL,
  `estimated_start_date` date DEFAULT NULL,
  `estimated_completion_date` date DEFAULT NULL,
  `actual_start_date` date DEFAULT NULL,
  `actual_completion_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `detailed_id` bigint(20) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `subitem_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `breeding_progress`
--

CREATE TABLE `breeding_progress` (
  `id` bigint(20) NOT NULL,
  `start_date` date DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `progress` double DEFAULT NULL,
  `personnel` varchar(50) DEFAULT NULL,
  `cause` longtext DEFAULT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `expected_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `breeding_project`
--

CREATE TABLE `breeding_project` (
  `id` bigint(20) NOT NULL,
  `project_code` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `bank_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_status` int(11) NOT NULL,
  `estimated_start_date` date DEFAULT NULL,
  `estimated_completion_date` date DEFAULT NULL,
  `actual_start_date` date DEFAULT NULL,
  `actual_completion_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tasks_id` int(11) NOT NULL,
  `case_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `breeding_project`
--

INSERT INTO `breeding_project` (`id`, `project_code`, `project_name`, `bank_code`, `project_status`, `estimated_start_date`, `estimated_completion_date`, `actual_start_date`, `actual_completion_date`, `created_at`, `updated_at`, `tasks_id`, `case_id`) VALUES
(1, NULL, '升三-A02區-A棟', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:35:28', '2023-11-28 06:35:28', 1, 1),
(2, NULL, '升三-A02區-B棟', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:36:25', '2023-11-28 06:36:25', 1, 2),
(3, NULL, '升三-A03區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:36:41', '2023-11-28 06:36:41', 1, 3),
(4, NULL, '升三-B01區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:37:11', '2023-11-28 06:37:11', 1, 4),
(5, NULL, '升三-E01區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:37:54', '2023-11-28 06:37:54', 1, 5),
(6, NULL, '升三-F01區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:38:15', '2023-11-28 06:38:15', 1, 6),
(7, NULL, '升三-F02區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:38:34', '2023-11-28 06:38:34', 1, 7),
(8, NULL, '升三-I01區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:38:51', '2023-11-28 06:38:51', 1, 8),
(9, NULL, '升三-I02區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:39:26', '2023-11-28 06:39:26', 1, 9),
(10, NULL, '升四-K01區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:39:44', '2023-11-28 06:39:44', 1, 10),
(11, NULL, '升四-K02區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:40:04', '2023-11-28 06:40:04', 1, 11),
(12, NULL, '升四-D03區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:42:12', '2023-11-28 06:42:12', 1, 12),
(13, NULL, '升三-D01區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:42:28', '2023-11-28 06:42:28', 1, 13),
(14, NULL, '升四-D04區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:42:41', '2023-11-28 06:42:41', 1, 14),
(15, NULL, '升四-G01區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:42:55', '2023-11-28 06:42:55', 1, 15),
(16, NULL, '升四-G02區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:43:12', '2023-11-28 06:43:12', 1, 16),
(17, NULL, '升三-H01區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:43:28', '2023-11-28 06:43:28', 1, 17),
(18, NULL, '升三-H02區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:43:47', '2023-11-28 06:43:47', 1, 18),
(19, NULL, '升四-H03區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:44:03', '2023-11-28 06:44:03', 1, 19),
(20, NULL, '升四-H04區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:44:20', '2023-11-28 06:44:20', 1, 20),
(21, NULL, '升四-H05區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:44:39', '2023-11-28 06:44:39', 1, 21),
(22, NULL, '升四-H06區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:44:58', '2023-11-28 06:44:58', 1, 22),
(23, NULL, '升三-B02區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:45:14', '2023-11-28 06:45:14', 1, 23),
(24, NULL, '升三-C01區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:45:30', '2023-11-28 06:45:30', 1, 24),
(25, NULL, '升三-C02區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:45:46', '2023-11-28 06:45:46', 1, 25),
(26, NULL, '升三-C03區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:46:04', '2023-11-28 06:46:04', 1, 26),
(27, NULL, '升三-C07區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:46:21', '2023-11-28 06:46:21', 1, 27),
(28, NULL, '升三-C08區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:46:38', '2023-11-28 06:46:38', 1, 28),
(29, NULL, '升三-C09區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:46:58', '2023-11-28 06:46:58', 1, 29),
(30, NULL, '升三-E02區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:47:33', '2023-11-28 06:47:33', 1, 30),
(31, NULL, '升三-E03區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:47:47', '2023-11-28 06:47:47', 1, 31),
(32, NULL, '升三-E04區-A棟', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:48:05', '2023-11-28 06:48:05', 1, 32),
(33, NULL, '升三-E04區-B棟', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:48:21', '2023-11-28 06:48:21', 1, 33),
(34, NULL, '升四-E05區-A棟', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:48:41', '2023-11-28 06:48:41', 1, 34),
(35, NULL, '升四-E05區-B棟', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:48:59', '2023-11-28 06:48:59', 1, 35),
(36, NULL, '升四-E06區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:49:17', '2023-11-28 06:49:17', 1, 36),
(37, NULL, '升三-F03區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:49:32', '2023-11-28 06:49:32', 1, 37),
(38, NULL, '升四-J01區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:49:48', '2023-11-28 06:49:48', 1, 38),
(39, NULL, '升三-A01區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:50:16', '2023-11-28 06:50:16', 1, 39),
(40, NULL, '升四-A04區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:50:35', '2023-11-28 06:50:35', 1, 40),
(41, NULL, '升四-D02區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:50:49', '2023-11-28 06:50:49', 1, 41),
(42, NULL, '升四-G05區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:51:04', '2023-11-28 06:51:04', 1, 42),
(43, NULL, '升四-G06區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:51:20', '2023-11-28 06:51:20', 1, 43),
(44, NULL, '升四-G07區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:51:40', '2023-11-28 06:51:40', 1, 44),
(45, NULL, '升四-H08區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:51:56', '2023-11-28 06:51:56', 1, 45),
(46, NULL, '升四-H09區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:52:26', '2023-11-28 06:52:26', 1, 46),
(47, NULL, '升四-H10區-A棟', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:52:46', '2023-11-28 06:52:46', 1, 47),
(48, NULL, '升四-H10區-B棟', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:53:06', '2023-11-28 06:53:06', 1, 48),
(49, NULL, '升四-G03區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:53:34', '2023-11-28 06:53:34', 1, 49),
(50, NULL, '升四-G04區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:53:51', '2023-11-28 06:53:51', 1, 50),
(51, NULL, '升四-H07區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:54:05', '2023-11-28 06:54:05', 1, 51),
(52, NULL, '升四-L01區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:54:25', '2023-11-28 06:54:25', 1, 52),
(53, NULL, '升四-L02區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:54:43', '2023-11-28 06:54:43', 1, 53),
(54, NULL, '升四-L03區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:55:01', '2023-11-28 06:55:01', 1, 54),
(55, NULL, '升三-C04區-A棟', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:55:17', '2023-11-28 06:55:17', 1, 55),
(56, NULL, '升三-C04區-B棟', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:55:33', '2023-11-28 06:55:33', 1, 56),
(57, NULL, '升三-C05區-A棟', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:55:58', '2023-11-28 06:55:58', 1, 57),
(58, NULL, '升三-C05區-B棟', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:56:16', '2023-11-28 06:56:16', 1, 58),
(59, NULL, '升三-C06區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:56:33', '2023-11-28 06:56:33', 1, 59),
(60, NULL, '升四-C15區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:56:47', '2023-11-28 06:56:47', 1, 60),
(61, NULL, '升四-C10區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:57:14', '2023-11-28 06:57:14', 1, 61),
(62, NULL, '升四-C11區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:57:28', '2023-11-28 06:57:28', 1, 62),
(63, NULL, '升四-C12區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:57:44', '2023-11-28 06:57:44', 1, 63),
(64, NULL, '升四-C13區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:58:01', '2023-11-28 06:58:01', 1, 64),
(65, NULL, '升四-C14區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:58:17', '2023-11-28 06:58:17', 1, 65),
(66, NULL, '升四-F04區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:58:37', '2023-11-28 06:58:37', 1, 66),
(67, NULL, '升四-F05區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:58:55', '2023-11-28 06:58:55', 1, 67),
(68, NULL, '升四-F06區', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:59:10', '2023-11-28 06:59:10', 1, 68),
(69, NULL, '升四-F07區-A棟', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:59:23', '2023-11-28 06:59:23', 1, 69),
(70, NULL, '升四-F07區-B棟', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:59:38', '2023-11-28 06:59:38', 1, 70),
(71, NULL, '升四-F07區-C棟', NULL, 0, NULL, NULL, NULL, NULL, '2023-11-28 06:59:52', '2023-11-28 06:59:52', 1, 71);

-- --------------------------------------------------------

--
-- 資料表結構 `breeding_subitem_weight`
--

CREATE TABLE `breeding_subitem_weight` (
  `id` bigint(20) NOT NULL,
  `subitem_name` varchar(255) NOT NULL,
  `subitem_weight` double DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tasks_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `breeding_subitem_weight`
--

INSERT INTO `breeding_subitem_weight` (`id`, `subitem_name`, `subitem_weight`, `created_at`, `updated_at`, `tasks_id`) VALUES
(1, '擋土牆', 0.2, '2023-11-28 05:30:47', '2023-11-28 05:30:47', 1),
(2, '養殖棚農膜披覆', 0.12, '2023-11-28 05:31:10', '2023-11-28 05:31:10', 1),
(3, '養殖池', 0.58, '2023-11-28 05:31:27', '2023-11-28 05:31:27', 1),
(4, '養殖前雜項工程', 0.1, '2023-11-28 05:31:45', '2023-11-28 05:31:45', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `breeding_tasks`
--

CREATE TABLE `breeding_tasks` (
  `id` int(11) NOT NULL,
  `breeding_task_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `breeding_tasks`
--

INSERT INTO `breeding_tasks` (`id`, `breeding_task_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-11-28 05:26:38', '2023-11-28 05:26:38');

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
-- 資料表結構 `historical_pv_expected`
--

CREATE TABLE `historical_pv_expected` (
  `id` int(11) NOT NULL,
  `loop_name` varchar(255) DEFAULT NULL,
  `historical_case` varchar(255) DEFAULT NULL,
  `estimated_start_date` date DEFAULT NULL,
  `estimated_completion_date` date DEFAULT NULL,
  `historical_progress_rate` double DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `historical_pv_expected`
--

INSERT INTO `historical_pv_expected` (`id`, `loop_name`, `historical_case`, `estimated_start_date`, `estimated_completion_date`, `historical_progress_rate`, `updated_at`, `created_at`) VALUES
(1, 'S02', '2-8', '2023-04-02', '2023-04-08', 0.5, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(2, 'S02', '2-8', '2023-04-09', '2023-04-15', 0.55, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(3, 'S02', '2-8', '2023-04-16', '2023-04-22', 0.6, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(4, 'S02', '2-8', '2023-04-23', '2023-04-29', 0.65, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(5, 'S02', '2-8', '2023-04-30', '2023-05-06', 0.7, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(6, 'S02', '2-8', '2023-05-07', '2023-05-13', 0.75, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(7, 'S02', '2-8', '2023-05-14', '2023-05-20', 0.8, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(8, 'S02', '2-8', '2023-05-21', '2023-05-27', 0.85, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(9, 'S02', '2-8', '2023-05-28', '2023-06-03', 0.9, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(10, 'S02', '2-8', '2023-06-04', '2023-06-10', 0.95, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(11, 'S02', '2-8', '2023-06-11', '2023-06-17', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(12, 'S02', '2-8', '2023-06-18', '2023-06-24', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(13, 'S02', '2-8', '2023-06-25', '2023-07-01', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(14, 'S02', '2-8', '2023-07-02', '2023-07-08', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(15, 'S02', '2-8', '2023-07-09', '2023-07-15', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(16, 'S02', '2-8', '2023-07-16', '2023-07-22', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(17, 'S02', '2-8', '2023-07-23', '2023-07-29', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(18, 'S02', '2-8', '2023-07-30', '2023-08-05', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(19, 'S02', '2-8', '2023-08-06', '2023-08-12', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(20, 'S02', '2-8', '2023-08-13', '2023-08-19', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(21, 'S02', '2-8', '2023-08-20', '2023-08-26', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(22, 'S02', '2-8', '2023-08-27', '2023-09-02', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(23, 'S02', '2-8', '2023-09-03', '2023-09-09', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(24, 'S02', '2-8', '2023-09-10', '2023-09-16', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(25, 'S02', '2-8', '2023-09-17', '2023-09-23', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(26, 'S02', '2-8', '2023-09-24', '2023-09-30', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(27, 'S02', '2-8', '2023-10-01', '2023-10-07', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(28, 'S02', '2-8', '2023-10-08', '2023-10-14', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(29, 'S02', '2-8', '2023-10-15', '2023-10-21', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(30, 'S02', '2-8', '2023-10-22', '2023-10-28', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(31, 'S02', '2-8', '2023-10-29', '2023-11-04', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(32, 'S02', '2-8', '2023-11-05', '2023-11-11', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(33, 'S02', '2-8', '2023-11-12', '2023-11-18', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(34, 'S02', '2-8', '2023-11-19', '2023-11-25', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(35, 'S02', '2-8', '2023-11-26', '2023-12-02', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(36, 'S02', '2-8', '2023-12-03', '2023-12-09', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(37, 'S02', '2-8', '2023-12-10', '2023-12-16', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(38, 'S02', '2-8', '2023-12-17', '2023-12-23', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(39, 'S02', '2-8', '2023-12-24', '2023-12-30', 1, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(40, 'S02', '2-9', '2023-04-02', '2023-04-08', 0.5, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(41, 'S02', '2-9', '2023-04-09', '2023-04-15', 0.55, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(42, 'S02', '2-9', '2023-04-16', '2023-04-22', 0.6, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(43, 'S02', '2-9', '2023-04-23', '2023-04-29', 0.65, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(44, 'S02', '2-9', '2023-04-30', '2023-05-06', 0.7, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(45, 'S02', '2-9', '2023-05-07', '2023-05-13', 0.75, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(46, 'S02', '2-9', '2023-05-14', '2023-05-20', 0.8, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(47, 'S02', '2-9', '2023-05-21', '2023-05-27', 0.85, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(48, 'S02', '2-9', '2023-05-28', '2023-06-03', 0.9, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(49, 'S02', '2-9', '2023-06-04', '2023-06-10', 0.95, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(50, 'S02', '2-9', '2023-06-11', '2023-06-17', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(51, 'S02', '2-9', '2023-06-18', '2023-06-24', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(52, 'S02', '2-9', '2023-06-25', '2023-07-01', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(53, 'S02', '2-9', '2023-07-02', '2023-07-08', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(54, 'S02', '2-9', '2023-07-09', '2023-07-15', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(55, 'S02', '2-9', '2023-07-16', '2023-07-22', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(56, 'S02', '2-9', '2023-07-23', '2023-07-29', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(57, 'S02', '2-9', '2023-07-30', '2023-08-05', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(58, 'S02', '2-9', '2023-08-06', '2023-08-12', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(59, 'S02', '2-9', '2023-08-13', '2023-08-19', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(60, 'S02', '2-9', '2023-08-20', '2023-08-26', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(61, 'S02', '2-9', '2023-08-27', '2023-09-02', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(62, 'S02', '2-9', '2023-09-03', '2023-09-09', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(63, 'S02', '2-9', '2023-09-10', '2023-09-16', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(64, 'S02', '2-9', '2023-09-17', '2023-09-23', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(65, 'S02', '2-9', '2023-09-24', '2023-09-30', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(66, 'S02', '2-9', '2023-10-01', '2023-10-07', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(67, 'S02', '2-9', '2023-10-08', '2023-10-14', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(68, 'S02', '2-9', '2023-10-15', '2023-10-21', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(69, 'S02', '2-9', '2023-10-22', '2023-10-28', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(70, 'S02', '2-9', '2023-10-29', '2023-11-04', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(71, 'S02', '2-9', '2023-11-05', '2023-11-11', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(72, 'S02', '2-9', '2023-11-12', '2023-11-18', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(73, 'S02', '2-9', '2023-11-19', '2023-11-25', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(74, 'S02', '2-9', '2023-11-26', '2023-12-02', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(75, 'S02', '2-9', '2023-12-03', '2023-12-09', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(76, 'S02', '2-9', '2023-12-10', '2023-12-16', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(77, 'S02', '2-9', '2023-12-17', '2023-12-23', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(78, 'S02', '2-9', '2023-12-24', '2023-12-30', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(79, 'S02', '2-10', '2023-04-02', '2023-04-08', 0.5, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(80, 'S02', '2-10', '2023-04-09', '2023-04-15', 0.55, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(81, 'S02', '2-10', '2023-04-16', '2023-04-22', 0.6, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(82, 'S02', '2-10', '2023-04-23', '2023-04-29', 0.65, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(83, 'S02', '2-10', '2023-04-30', '2023-05-06', 0.7, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(84, 'S02', '2-10', '2023-05-07', '2023-05-13', 0.75, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(85, 'S02', '2-10', '2023-05-14', '2023-05-20', 0.8, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(86, 'S02', '2-10', '2023-05-21', '2023-05-27', 0.85, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(87, 'S02', '2-10', '2023-05-28', '2023-06-03', 0.9, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(88, 'S02', '2-10', '2023-06-04', '2023-06-10', 0.95, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(89, 'S02', '2-10', '2023-06-11', '2023-06-17', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(90, 'S02', '2-10', '2023-06-18', '2023-06-24', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(91, 'S02', '2-10', '2023-06-25', '2023-07-01', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(92, 'S02', '2-10', '2023-07-02', '2023-07-08', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(93, 'S02', '2-10', '2023-07-09', '2023-07-15', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(94, 'S02', '2-10', '2023-07-16', '2023-07-22', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(95, 'S02', '2-10', '2023-07-23', '2023-07-29', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(96, 'S02', '2-10', '2023-07-30', '2023-08-05', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(97, 'S02', '2-10', '2023-08-06', '2023-08-12', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(98, 'S02', '2-10', '2023-08-13', '2023-08-19', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(99, 'S02', '2-10', '2023-08-20', '2023-08-26', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(100, 'S02', '2-10', '2023-08-27', '2023-09-02', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(101, 'S02', '2-10', '2023-09-03', '2023-09-09', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(102, 'S02', '2-10', '2023-09-10', '2023-09-16', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(103, 'S02', '2-10', '2023-09-17', '2023-09-23', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(104, 'S02', '2-10', '2023-09-24', '2023-09-30', 1, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(105, 'S02', '2-10', '2023-10-01', '2023-10-07', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(106, 'S02', '2-10', '2023-10-08', '2023-10-14', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(107, 'S02', '2-10', '2023-10-15', '2023-10-21', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(108, 'S02', '2-10', '2023-10-22', '2023-10-28', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(109, 'S02', '2-10', '2023-10-29', '2023-11-04', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(110, 'S02', '2-10', '2023-11-05', '2023-11-11', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(111, 'S02', '2-10', '2023-11-12', '2023-11-18', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(112, 'S02', '2-10', '2023-11-19', '2023-11-25', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(113, 'S02', '2-10', '2023-11-26', '2023-12-02', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(114, 'S02', '2-10', '2023-12-03', '2023-12-09', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(115, 'S02', '2-10', '2023-12-10', '2023-12-16', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(116, 'S02', '2-10', '2023-12-17', '2023-12-23', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(117, 'S02', '2-10', '2023-12-24', '2023-12-30', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(118, 'S02', '2-11', '2023-04-02', '2023-04-08', 0.5, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(119, 'S02', '2-11', '2023-04-09', '2023-04-15', 0.55, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(120, 'S02', '2-11', '2023-04-16', '2023-04-22', 0.6, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(121, 'S02', '2-11', '2023-04-23', '2023-04-29', 0.65, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(122, 'S02', '2-11', '2023-04-30', '2023-05-06', 0.7, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(123, 'S02', '2-11', '2023-05-07', '2023-05-13', 0.75, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(124, 'S02', '2-11', '2023-05-14', '2023-05-20', 0.8, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(125, 'S02', '2-11', '2023-05-21', '2023-05-27', 0.85, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(126, 'S02', '2-11', '2023-05-28', '2023-06-03', 0.9, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(127, 'S02', '2-11', '2023-06-04', '2023-06-10', 0.95, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(128, 'S02', '2-11', '2023-06-11', '2023-06-17', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(129, 'S02', '2-11', '2023-06-18', '2023-06-24', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(130, 'S02', '2-11', '2023-06-25', '2023-07-01', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(131, 'S02', '2-11', '2023-07-02', '2023-07-08', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(132, 'S02', '2-11', '2023-07-09', '2023-07-15', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(133, 'S02', '2-11', '2023-07-16', '2023-07-22', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(134, 'S02', '2-11', '2023-07-23', '2023-07-29', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(135, 'S02', '2-11', '2023-07-30', '2023-08-05', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(136, 'S02', '2-11', '2023-08-06', '2023-08-12', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(137, 'S02', '2-11', '2023-08-13', '2023-08-19', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(138, 'S02', '2-11', '2023-08-20', '2023-08-26', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(139, 'S02', '2-11', '2023-08-27', '2023-09-02', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(140, 'S02', '2-11', '2023-09-03', '2023-09-09', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(141, 'S02', '2-11', '2023-09-10', '2023-09-16', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(142, 'S02', '2-11', '2023-09-17', '2023-09-23', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(143, 'S02', '2-11', '2023-09-24', '2023-09-30', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(144, 'S02', '2-11', '2023-10-01', '2023-10-07', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(145, 'S02', '2-11', '2023-10-08', '2023-10-14', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(146, 'S02', '2-11', '2023-10-15', '2023-10-21', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(147, 'S02', '2-11', '2023-10-22', '2023-10-28', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(148, 'S02', '2-11', '2023-10-29', '2023-11-04', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(149, 'S02', '2-11', '2023-11-05', '2023-11-11', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(150, 'S02', '2-11', '2023-11-12', '2023-11-18', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(151, 'S02', '2-11', '2023-11-19', '2023-11-25', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(152, 'S02', '2-11', '2023-11-26', '2023-12-02', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(153, 'S02', '2-11', '2023-12-03', '2023-12-09', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(154, 'S02', '2-11', '2023-12-10', '2023-12-16', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(155, 'S02', '2-11', '2023-12-17', '2023-12-23', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(156, 'S02', '2-11', '2023-12-24', '2023-12-30', 1, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(157, 'S02', '2-12', '2023-04-02', '2023-04-08', 0.5, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(158, 'S02', '2-12', '2023-04-09', '2023-04-15', 0.55, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(159, 'S02', '2-12', '2023-04-16', '2023-04-22', 0.6, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(160, 'S02', '2-12', '2023-04-23', '2023-04-29', 0.65, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(161, 'S02', '2-12', '2023-04-30', '2023-05-06', 0.7, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(162, 'S02', '2-12', '2023-05-07', '2023-05-13', 0.75, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(163, 'S02', '2-12', '2023-05-14', '2023-05-20', 0.8, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(164, 'S02', '2-12', '2023-05-21', '2023-05-27', 0.85, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(165, 'S02', '2-12', '2023-05-28', '2023-06-03', 0.9, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(166, 'S02', '2-12', '2023-06-04', '2023-06-10', 0.95, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(167, 'S02', '2-12', '2023-06-11', '2023-06-17', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(168, 'S02', '2-12', '2023-06-18', '2023-06-24', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(169, 'S02', '2-12', '2023-06-25', '2023-07-01', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(170, 'S02', '2-12', '2023-07-02', '2023-07-08', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(171, 'S02', '2-12', '2023-07-09', '2023-07-15', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(172, 'S02', '2-12', '2023-07-16', '2023-07-22', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(173, 'S02', '2-12', '2023-07-23', '2023-07-29', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(174, 'S02', '2-12', '2023-07-30', '2023-08-05', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(175, 'S02', '2-12', '2023-08-06', '2023-08-12', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(176, 'S02', '2-12', '2023-08-13', '2023-08-19', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(177, 'S02', '2-12', '2023-08-20', '2023-08-26', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(178, 'S02', '2-12', '2023-08-27', '2023-09-02', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(179, 'S02', '2-12', '2023-09-03', '2023-09-09', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(180, 'S02', '2-12', '2023-09-10', '2023-09-16', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(181, 'S02', '2-12', '2023-09-17', '2023-09-23', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(182, 'S02', '2-12', '2023-09-24', '2023-09-30', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(183, 'S02', '2-12', '2023-10-01', '2023-10-07', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(184, 'S02', '2-12', '2023-10-08', '2023-10-14', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(185, 'S02', '2-12', '2023-10-15', '2023-10-21', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(186, 'S02', '2-12', '2023-10-22', '2023-10-28', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(187, 'S02', '2-12', '2023-10-29', '2023-11-04', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(188, 'S02', '2-12', '2023-11-05', '2023-11-11', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(189, 'S02', '2-12', '2023-11-12', '2023-11-18', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(190, 'S02', '2-12', '2023-11-19', '2023-11-25', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(191, 'S02', '2-12', '2023-11-26', '2023-12-02', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(192, 'S02', '2-12', '2023-12-03', '2023-12-09', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(193, 'S02', '2-12', '2023-12-10', '2023-12-16', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(194, 'S02', '2-12', '2023-12-17', '2023-12-23', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(195, 'S02', '2-12', '2023-12-24', '2023-12-30', 1, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(196, 'S02', '2-30', '2023-04-02', '2023-04-08', 0.5, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(197, 'S02', '2-30', '2023-04-09', '2023-04-15', 0.55, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(198, 'S02', '2-30', '2023-04-16', '2023-04-22', 0.6, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(199, 'S02', '2-30', '2023-04-23', '2023-04-29', 0.65, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(200, 'S02', '2-30', '2023-04-30', '2023-05-06', 0.7, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(201, 'S02', '2-30', '2023-05-07', '2023-05-13', 0.75, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(202, 'S02', '2-30', '2023-05-14', '2023-05-20', 0.8, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(203, 'S02', '2-30', '2023-05-21', '2023-05-27', 0.85, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(204, 'S02', '2-30', '2023-05-28', '2023-06-03', 0.9, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(205, 'S02', '2-30', '2023-06-04', '2023-06-10', 0.95, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(206, 'S02', '2-30', '2023-06-11', '2023-06-17', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(207, 'S02', '2-30', '2023-06-18', '2023-06-24', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(208, 'S02', '2-30', '2023-06-25', '2023-07-01', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(209, 'S02', '2-30', '2023-07-02', '2023-07-08', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(210, 'S02', '2-30', '2023-07-09', '2023-07-15', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(211, 'S02', '2-30', '2023-07-16', '2023-07-22', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(212, 'S02', '2-30', '2023-07-23', '2023-07-29', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(213, 'S02', '2-30', '2023-07-30', '2023-08-05', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(214, 'S02', '2-30', '2023-08-06', '2023-08-12', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(215, 'S02', '2-30', '2023-08-13', '2023-08-19', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(216, 'S02', '2-30', '2023-08-20', '2023-08-26', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(217, 'S02', '2-30', '2023-08-27', '2023-09-02', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(218, 'S02', '2-30', '2023-09-03', '2023-09-09', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(219, 'S02', '2-30', '2023-09-10', '2023-09-16', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(220, 'S02', '2-30', '2023-09-17', '2023-09-23', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(221, 'S02', '2-30', '2023-09-24', '2023-09-30', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(222, 'S02', '2-30', '2023-10-01', '2023-10-07', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(223, 'S02', '2-30', '2023-10-08', '2023-10-14', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(224, 'S02', '2-30', '2023-10-15', '2023-10-21', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(225, 'S02', '2-30', '2023-10-22', '2023-10-28', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(226, 'S02', '2-30', '2023-10-29', '2023-11-04', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(227, 'S02', '2-30', '2023-11-05', '2023-11-11', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(228, 'S02', '2-30', '2023-11-12', '2023-11-18', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(229, 'S02', '2-30', '2023-11-19', '2023-11-25', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(230, 'S02', '2-30', '2023-11-26', '2023-12-02', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(231, 'S02', '2-30', '2023-12-03', '2023-12-09', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(232, 'S02', '2-30', '2023-12-10', '2023-12-16', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(233, 'S02', '2-30', '2023-12-17', '2023-12-23', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(234, 'S02', '2-30', '2023-12-24', '2023-12-30', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(235, 'S02', '2-101', '2023-04-02', '2023-04-08', 0.5, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(236, 'S02', '2-101', '2023-04-09', '2023-04-15', 0.55, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(237, 'S02', '2-101', '2023-04-16', '2023-04-22', 0.6, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(238, 'S02', '2-101', '2023-04-23', '2023-04-29', 0.65, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(239, 'S02', '2-101', '2023-04-30', '2023-05-06', 0.7, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(240, 'S02', '2-101', '2023-05-07', '2023-05-13', 0.75, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(241, 'S02', '2-101', '2023-05-14', '2023-05-20', 0.8, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(242, 'S02', '2-101', '2023-05-21', '2023-05-27', 0.85, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(243, 'S02', '2-101', '2023-05-28', '2023-06-03', 0.9, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(244, 'S02', '2-101', '2023-06-04', '2023-06-10', 0.95, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(245, 'S02', '2-101', '2023-06-11', '2023-06-17', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(246, 'S02', '2-101', '2023-06-18', '2023-06-24', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(247, 'S02', '2-101', '2023-06-25', '2023-07-01', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(248, 'S02', '2-101', '2023-07-02', '2023-07-08', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(249, 'S02', '2-101', '2023-07-09', '2023-07-15', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(250, 'S02', '2-101', '2023-07-16', '2023-07-22', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(251, 'S02', '2-101', '2023-07-23', '2023-07-29', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(252, 'S02', '2-101', '2023-07-30', '2023-08-05', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(253, 'S02', '2-101', '2023-08-06', '2023-08-12', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(254, 'S02', '2-101', '2023-08-13', '2023-08-19', 1, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(255, 'S02', '2-101', '2023-08-20', '2023-08-26', 1, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(256, 'S02', '2-101', '2023-08-27', '2023-09-02', 1, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(257, 'S02', '2-101', '2023-09-03', '2023-09-09', 1, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(258, 'S02', '2-101', '2023-09-10', '2023-09-16', 1, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(259, 'S02', '2-101', '2023-09-17', '2023-09-23', 1, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(260, 'S02', '2-101', '2023-09-24', '2023-09-30', 1, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(261, 'S02', '2-101', '2023-10-01', '2023-10-07', 1, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(262, 'S02', '2-101', '2023-10-08', '2023-10-14', 1, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(263, 'S02', '2-101', '2023-10-15', '2023-10-21', 1, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(264, 'S02', '2-101', '2023-10-22', '2023-10-28', 1, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(265, 'S02', '2-101', '2023-10-29', '2023-11-04', 1, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(266, 'S02', '2-101', '2023-11-05', '2023-11-11', 1, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(267, 'S02', '2-101', '2023-11-12', '2023-11-18', 1, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(268, 'S02', '2-101', '2023-11-19', '2023-11-25', 1, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(269, 'S02', '2-101', '2023-11-26', '2023-12-02', 1, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(270, 'S02', '2-101', '2023-12-03', '2023-12-09', 1, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(271, 'S02', '2-101', '2023-12-10', '2023-12-16', 1, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(272, 'S02', '2-101', '2023-12-17', '2023-12-23', 1, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(273, 'S02', '2-101', '2023-12-24', '2023-12-30', 1, '2023-11-17 19:43:50', '2023-11-17 19:43:50');

-- --------------------------------------------------------

--
-- 資料表結構 `historical_pv_expected_season`
--

CREATE TABLE `historical_pv_expected_season` (
  `id` int(11) NOT NULL,
  `historical_loop` varchar(255) DEFAULT NULL,
  `estimated_start_date` date DEFAULT NULL,
  `estimated_completion_date` date DEFAULT NULL,
  `historical_progress_rate` double DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `historical_pv_expected_season`
--

INSERT INTO `historical_pv_expected_season` (`id`, `historical_loop`, `estimated_start_date`, `estimated_completion_date`, `historical_progress_rate`, `updated_at`, `created_at`) VALUES
(1, 'S02', '2023-04-02', '2023-04-08', 0.06479, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(2, 'S02', '2023-04-09', '2023-04-15', 0.12960000000000002, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(3, 'S02', '2023-04-16', '2023-04-22', 0.19440000000000002, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(4, 'S02', '2023-04-23', '2023-04-29', 0.25920000000000004, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(5, 'S02', '2023-04-30', '2023-05-06', 0.324, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(6, 'S02', '2023-05-07', '2023-05-13', 0.38880000000000003, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(7, 'S02', '2023-05-14', '2023-05-20', 0.4535, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(8, 'S02', '2023-05-21', '2023-05-27', 0.5183, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(9, 'S02', '2023-05-28', '2023-06-03', 0.5831000000000001, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(10, 'S02', '2023-06-04', '2023-06-10', 0.6479, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(11, 'S02', '2023-06-11', '2023-06-17', 0.7127, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(12, 'S02', '2023-06-18', '2023-06-24', 0.7775, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(13, 'S02', '2023-06-25', '2023-07-01', 0.9, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(14, 'S02', '2023-07-02', '2023-07-08', 0.91, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(15, 'S02', '2023-07-09', '2023-07-15', 0.92, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(16, 'S02', '2023-07-16', '2023-07-22', 0.93, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(17, 'S02', '2023-07-23', '2023-07-29', 0.94, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(18, 'S02', '2023-07-30', '2023-08-05', 0.95, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(19, 'S02', '2023-08-06', '2023-08-12', 0.96, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(20, 'S02', '2023-08-13', '2023-08-19', 0.97, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(21, 'S02', '2023-08-20', '2023-08-26', 0.98, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(22, 'S02', '2023-08-27', '2023-09-02', 0.99, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(23, 'S02', '2023-09-03', '2023-09-09', 1, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(24, 'S02', '2023-09-10', '2023-09-16', 1, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(25, 'S02', '2023-09-17', '2023-09-23', 1, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(26, 'S02', '2023-09-24', '2023-09-30', 1, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(27, 'S02', '2023-10-01', '2023-10-07', 1, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(28, 'S02', '2023-10-08', '2023-10-14', 1, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(29, 'S02', '2023-10-15', '2023-10-21', 1, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(30, 'S02', '2023-10-22', '2023-10-28', 1, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(31, 'S02', '2023-10-29', '2023-11-04', 1, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(32, 'S02', '2023-11-05', '2023-11-11', 1, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(33, 'S02', '2023-11-12', '2023-11-18', 1, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(34, 'S02', '2023-11-19', '2023-11-25', 1, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(35, 'S02', '2023-11-26', '2023-12-02', 1, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(36, 'S02', '2023-12-03', '2023-12-09', 1, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(37, 'S02', '2023-12-10', '2023-12-16', 1, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(38, 'S02', '2023-12-17', '2023-12-23', 1, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(39, 'S02', '2023-12-24', '2023-12-30', 1, '2023-11-17 19:43:44', '2023-11-17 19:43:44');

-- --------------------------------------------------------

--
-- 資料表結構 `historical_pv_records`
--

CREATE TABLE `historical_pv_records` (
  `id` int(11) NOT NULL,
  `loop_name` varchar(255) DEFAULT NULL,
  `historical_case` varchar(255) DEFAULT NULL,
  `estimated_start_date` date DEFAULT NULL,
  `estimated_completion_date` date DEFAULT NULL,
  `historical_progress_rate` double DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `historical_pv_records`
--

INSERT INTO `historical_pv_records` (`id`, `loop_name`, `historical_case`, `estimated_start_date`, `estimated_completion_date`, `historical_progress_rate`, `updated_at`, `created_at`) VALUES
(1, 'S02', '2-8', '2023-04-02', '2023-04-08', 0.135, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(2, 'S02', '2-8', '2023-04-09', '2023-04-15', 0.1605, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(3, 'S02', '2-8', '2023-04-16', '2023-04-22', 0.191, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(4, 'S02', '2-8', '2023-04-23', '2023-04-29', 0.191, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(5, 'S02', '2-8', '2023-04-30', '2023-05-06', 0.284, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(6, 'S02', '2-8', '2023-05-07', '2023-05-13', 0.4715, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(7, 'S02', '2-8', '2023-05-14', '2023-05-20', 0.5625, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(8, 'S02', '2-8', '2023-05-21', '2023-05-27', 0.657, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(9, 'S02', '2-8', '2023-05-28', '2023-06-03', 0.6585, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(10, 'S02', '2-8', '2023-06-04', '2023-06-10', 0.6645, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(11, 'S02', '2-8', '2023-06-11', '2023-06-17', 0.6665000000000001, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(12, 'S02', '2-8', '2023-06-18', '2023-06-24', 0.6665000000000001, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(13, 'S02', '2-8', '2023-06-25', '2023-07-01', 0.6665000000000001, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(14, 'S02', '2-8', '2023-07-02', '2023-07-08', 0.7, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(15, 'S02', '2-8', '2023-07-09', '2023-07-15', 0.868, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(16, 'S02', '2-8', '2023-07-16', '2023-07-22', 0.8909999999999999, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(17, 'S02', '2-8', '2023-07-23', '2023-07-29', 0.8909999999999999, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(18, 'S02', '2-8', '2023-07-30', '2023-08-05', 0.8909999999999999, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(19, 'S02', '2-8', '2023-08-06', '2023-08-12', 0.899, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(20, 'S02', '2-8', '2023-08-13', '2023-08-19', 0.899, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(21, 'S02', '2-8', '2023-08-20', '2023-08-26', 0.9109999999999999, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(22, 'S02', '2-8', '2023-08-27', '2023-09-02', 0.9229999999999999, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(23, 'S02', '2-8', '2023-09-03', '2023-09-09', 0.9229999999999999, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(24, 'S02', '2-8', '2023-09-10', '2023-09-16', 0.9229999999999999, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(25, 'S02', '2-8', '2023-09-17', '2023-09-23', 0.9229999999999999, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(26, 'S02', '2-8', '2023-09-24', '2023-09-30', 0.9229999999999999, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(27, 'S02', '2-8', '2023-10-01', '2023-10-07', 0.9229999999999999, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(28, 'S02', '2-8', '2023-10-08', '2023-10-14', 0.929, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(29, 'S02', '2-8', '2023-10-15', '2023-10-21', 0.929, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(30, 'S02', '2-8', '2023-10-22', '2023-10-28', 0.929, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(31, 'S02', '2-8', '2023-10-29', '2023-11-04', 0.929, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(32, 'S02', '2-9', '2023-04-02', '2023-04-08', 0.1245, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(33, 'S02', '2-9', '2023-04-09', '2023-04-15', 0.1245, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(34, 'S02', '2-9', '2023-04-16', '2023-04-22', 0.1245, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(35, 'S02', '2-9', '2023-04-23', '2023-04-29', 0.17, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(36, 'S02', '2-9', '2023-04-30', '2023-05-06', 0.17, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(37, 'S02', '2-9', '2023-05-07', '2023-05-13', 0.191, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(38, 'S02', '2-9', '2023-05-14', '2023-05-20', 0.212, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(39, 'S02', '2-9', '2023-05-21', '2023-05-27', 0.24530000000000002, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(40, 'S02', '2-9', '2023-05-28', '2023-06-03', 0.26530000000000004, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(41, 'S02', '2-9', '2023-06-04', '2023-06-10', 0.5315, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(42, 'S02', '2-9', '2023-06-11', '2023-06-17', 0.5415, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(43, 'S02', '2-9', '2023-06-18', '2023-06-24', 0.5415, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(44, 'S02', '2-9', '2023-06-25', '2023-07-01', 0.625, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(45, 'S02', '2-9', '2023-07-02', '2023-07-08', 0.73, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(46, 'S02', '2-9', '2023-07-09', '2023-07-15', 0.735, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(47, 'S02', '2-9', '2023-07-16', '2023-07-22', 0.8, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(48, 'S02', '2-9', '2023-07-23', '2023-07-29', 0.9434999999999999, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(49, 'S02', '2-9', '2023-07-30', '2023-08-05', 0.9434999999999999, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(50, 'S02', '2-9', '2023-08-06', '2023-08-12', 0.9434999999999999, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(51, 'S02', '2-9', '2023-08-13', '2023-08-19', 0.9434999999999999, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(52, 'S02', '2-9', '2023-08-20', '2023-08-26', 0.9434999999999999, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(53, 'S02', '2-9', '2023-08-27', '2023-09-02', 0.9434999999999999, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(54, 'S02', '2-9', '2023-09-03', '2023-09-09', 0.9434999999999999, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(55, 'S02', '2-9', '2023-09-10', '2023-09-16', 0.9434999999999999, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(56, 'S02', '2-9', '2023-09-17', '2023-09-23', 0.9434999999999999, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(57, 'S02', '2-9', '2023-09-24', '2023-09-30', 0.9434999999999999, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(58, 'S02', '2-9', '2023-10-01', '2023-10-07', 0.9434999999999999, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(59, 'S02', '2-9', '2023-10-08', '2023-10-14', 0.9434999999999999, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(60, 'S02', '2-9', '2023-10-15', '2023-10-21', 0.9434999999999999, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(61, 'S02', '2-9', '2023-10-22', '2023-10-28', 0.9434999999999999, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(62, 'S02', '2-9', '2023-10-29', '2023-11-04', 0.9434999999999999, '2023-11-17 19:43:46', '2023-11-17 19:43:46'),
(63, 'S02', '2-10', '2023-04-02', '2023-04-08', 0.0825, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(64, 'S02', '2-10', '2023-04-09', '2023-04-15', 0.15, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(65, 'S02', '2-10', '2023-04-16', '2023-04-22', 0.17, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(66, 'S02', '2-10', '2023-04-23', '2023-04-29', 0.17, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(67, 'S02', '2-10', '2023-04-30', '2023-05-06', 0.17, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(68, 'S02', '2-10', '2023-05-07', '2023-05-13', 0.1805, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(69, 'S02', '2-10', '2023-05-14', '2023-05-20', 0.191, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(70, 'S02', '2-10', '2023-05-21', '2023-05-27', 0.191, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(71, 'S02', '2-10', '2023-05-28', '2023-06-03', 0.19899999999999998, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(72, 'S02', '2-10', '2023-06-04', '2023-06-10', 0.22149999999999997, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(73, 'S02', '2-10', '2023-06-11', '2023-06-17', 0.2255, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(74, 'S02', '2-10', '2023-06-18', '2023-06-24', 0.2465, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(75, 'S02', '2-10', '2023-06-25', '2023-07-01', 0.2915, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(76, 'S02', '2-10', '2023-07-02', '2023-07-08', 0.35100000000000003, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(77, 'S02', '2-10', '2023-07-09', '2023-07-15', 0.4683, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(78, 'S02', '2-10', '2023-07-16', '2023-07-22', 0.53, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(79, 'S02', '2-10', '2023-07-23', '2023-07-29', 0.5475, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(80, 'S02', '2-10', '2023-07-30', '2023-08-05', 0.5475, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(81, 'S02', '2-10', '2023-08-06', '2023-08-12', 0.564, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(82, 'S02', '2-10', '2023-08-13', '2023-08-19', 0.564, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(83, 'S02', '2-10', '2023-08-20', '2023-08-26', 0.6661, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(84, 'S02', '2-10', '2023-08-27', '2023-09-02', 0.6661, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(85, 'S02', '2-10', '2023-09-03', '2023-09-09', 0.6661, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(86, 'S02', '2-10', '2023-09-10', '2023-09-16', 0.8875, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(87, 'S02', '2-10', '2023-09-17', '2023-09-23', 0.9075, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(88, 'S02', '2-10', '2023-09-24', '2023-09-30', 0.9075, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(89, 'S02', '2-10', '2023-10-01', '2023-10-07', 0.9075, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(90, 'S02', '2-10', '2023-10-08', '2023-10-14', 0.9309999999999999, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(91, 'S02', '2-10', '2023-10-15', '2023-10-21', 0.9309999999999999, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(92, 'S02', '2-10', '2023-10-22', '2023-10-28', 0.9325, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(93, 'S02', '2-10', '2023-10-29', '2023-11-04', 0.9325, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(94, 'S02', '2-11', '2023-04-02', '2023-04-08', 0.14550000000000002, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(95, 'S02', '2-11', '2023-04-09', '2023-04-15', 0.1815, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(96, 'S02', '2-11', '2023-04-16', '2023-04-22', 0.21, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(97, 'S02', '2-11', '2023-04-23', '2023-04-29', 0.24350000000000002, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(98, 'S02', '2-11', '2023-04-30', '2023-05-06', 0.33049999999999996, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(99, 'S02', '2-11', '2023-05-07', '2023-05-13', 0.41850000000000004, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(100, 'S02', '2-11', '2023-05-14', '2023-05-20', 0.43079999999999996, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(101, 'S02', '2-11', '2023-05-21', '2023-05-27', 0.546, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(102, 'S02', '2-11', '2023-05-28', '2023-06-03', 0.638, '2023-11-17 19:43:47', '2023-11-17 19:43:47'),
(103, 'S02', '2-11', '2023-06-04', '2023-06-10', 0.8029999999999999, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(104, 'S02', '2-11', '2023-06-11', '2023-06-17', 0.823, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(105, 'S02', '2-11', '2023-06-18', '2023-06-24', 0.823, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(106, 'S02', '2-11', '2023-06-25', '2023-07-01', 0.836, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(107, 'S02', '2-11', '2023-07-02', '2023-07-08', 0.935, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(108, 'S02', '2-11', '2023-07-09', '2023-07-15', 0.935, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(109, 'S02', '2-11', '2023-07-16', '2023-07-22', 0.8734999999999999, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(110, 'S02', '2-11', '2023-07-23', '2023-07-29', 0.887, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(111, 'S02', '2-11', '2023-07-30', '2023-08-05', 0.887, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(112, 'S02', '2-11', '2023-08-06', '2023-08-12', 0.8935, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(113, 'S02', '2-11', '2023-08-13', '2023-08-19', 0.8935, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(114, 'S02', '2-11', '2023-08-20', '2023-08-26', 0.935, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(115, 'S02', '2-11', '2023-08-27', '2023-09-02', 0.935, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(116, 'S02', '2-11', '2023-09-03', '2023-09-09', 0.935, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(117, 'S02', '2-11', '2023-09-10', '2023-09-16', 0.935, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(118, 'S02', '2-11', '2023-09-17', '2023-09-23', 0.935, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(119, 'S02', '2-11', '2023-09-24', '2023-09-30', 0.935, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(120, 'S02', '2-11', '2023-10-01', '2023-10-07', 0.935, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(121, 'S02', '2-11', '2023-10-08', '2023-10-14', 0.935, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(122, 'S02', '2-11', '2023-10-15', '2023-10-21', 0.935, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(123, 'S02', '2-11', '2023-10-22', '2023-10-28', 0.935, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(124, 'S02', '2-11', '2023-10-29', '2023-11-04', 0.935, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(125, 'S02', '2-12', '2023-04-02', '2023-04-08', 0.135, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(126, 'S02', '2-12', '2023-04-09', '2023-04-15', 0.15, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(127, 'S02', '2-12', '2023-04-16', '2023-04-22', 0.18, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(128, 'S02', '2-12', '2023-04-23', '2023-04-29', 0.3785, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(129, 'S02', '2-12', '2023-04-30', '2023-05-06', 0.425, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(130, 'S02', '2-12', '2023-05-07', '2023-05-13', 0.647, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(131, 'S02', '2-12', '2023-05-14', '2023-05-20', 0.8079999999999999, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(132, 'S02', '2-12', '2023-05-21', '2023-05-27', 0.858, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(133, 'S02', '2-12', '2023-05-28', '2023-06-03', 0.858, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(134, 'S02', '2-12', '2023-06-04', '2023-06-10', 0.858, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(135, 'S02', '2-12', '2023-06-11', '2023-06-17', 0.858, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(136, 'S02', '2-12', '2023-06-18', '2023-06-24', 0.858, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(137, 'S02', '2-12', '2023-06-25', '2023-07-01', 0.858, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(138, 'S02', '2-12', '2023-07-02', '2023-07-08', 0.878, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(139, 'S02', '2-12', '2023-07-09', '2023-07-15', 0.884, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(140, 'S02', '2-12', '2023-07-16', '2023-07-22', 0.884, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(141, 'S02', '2-12', '2023-07-23', '2023-07-29', 0.884, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(142, 'S02', '2-12', '2023-07-30', '2023-08-05', 0.884, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(143, 'S02', '2-12', '2023-08-06', '2023-08-12', 0.884, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(144, 'S02', '2-12', '2023-08-13', '2023-08-19', 0.884, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(145, 'S02', '2-12', '2023-08-20', '2023-08-26', 0.9155, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(146, 'S02', '2-12', '2023-08-27', '2023-09-02', 0.9155, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(147, 'S02', '2-12', '2023-09-03', '2023-09-09', 0.9155, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(148, 'S02', '2-12', '2023-09-10', '2023-09-16', 0.9155, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(149, 'S02', '2-12', '2023-09-17', '2023-09-23', 0.9155, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(150, 'S02', '2-12', '2023-09-24', '2023-09-30', 0.9155, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(151, 'S02', '2-12', '2023-10-01', '2023-10-07', 0.9155, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(152, 'S02', '2-12', '2023-10-08', '2023-10-14', 0.9229999999999999, '2023-11-17 19:43:48', '2023-11-17 19:43:48'),
(153, 'S02', '2-12', '2023-10-15', '2023-10-21', 0.9229999999999999, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(154, 'S02', '2-12', '2023-10-22', '2023-10-28', 0.9229999999999999, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(155, 'S02', '2-12', '2023-10-29', '2023-11-04', 0.9229999999999999, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(156, 'S02', '2-30', '2023-04-02', '2023-04-08', 0.135, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(157, 'S02', '2-30', '2023-04-09', '2023-04-15', 0.171, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(158, 'S02', '2-30', '2023-04-16', '2023-04-22', 0.18, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(159, 'S02', '2-30', '2023-04-23', '2023-04-29', 0.3995, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(160, 'S02', '2-30', '2023-04-30', '2023-05-06', 0.425, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(161, 'S02', '2-30', '2023-05-07', '2023-05-13', 0.745, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(162, 'S02', '2-30', '2023-05-14', '2023-05-20', 0.7979999999999999, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(163, 'S02', '2-30', '2023-05-21', '2023-05-27', 0.836, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(164, 'S02', '2-30', '2023-05-28', '2023-06-03', 0.84, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(165, 'S02', '2-30', '2023-06-04', '2023-06-10', 0.84, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(166, 'S02', '2-30', '2023-06-11', '2023-06-17', 0.84, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(167, 'S02', '2-30', '2023-06-18', '2023-06-24', 0.84, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(168, 'S02', '2-30', '2023-06-25', '2023-07-01', 0.84, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(169, 'S02', '2-30', '2023-07-02', '2023-07-08', 0.84, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(170, 'S02', '2-30', '2023-07-09', '2023-07-15', 0.86, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(171, 'S02', '2-30', '2023-07-16', '2023-07-22', 0.863, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(172, 'S02', '2-30', '2023-07-23', '2023-07-29', 0.8740000000000001, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(173, 'S02', '2-30', '2023-07-30', '2023-08-05', 0.8740000000000001, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(174, 'S02', '2-30', '2023-08-06', '2023-08-12', 0.8740000000000001, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(175, 'S02', '2-30', '2023-08-13', '2023-08-19', 0.8740000000000001, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(176, 'S02', '2-30', '2023-08-20', '2023-08-26', 0.8740000000000001, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(177, 'S02', '2-30', '2023-08-27', '2023-09-02', 0.8740000000000001, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(178, 'S02', '2-30', '2023-09-03', '2023-09-09', 0.8859999999999999, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(179, 'S02', '2-30', '2023-09-10', '2023-09-16', 0.8859999999999999, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(180, 'S02', '2-30', '2023-09-17', '2023-09-23', 0.8859999999999999, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(181, 'S02', '2-30', '2023-09-24', '2023-09-30', 0.8859999999999999, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(182, 'S02', '2-30', '2023-10-01', '2023-10-07', 0.8859999999999999, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(183, 'S02', '2-30', '2023-10-08', '2023-10-14', 0.929, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(184, 'S02', '2-30', '2023-10-15', '2023-10-21', 0.929, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(185, 'S02', '2-30', '2023-10-22', '2023-10-28', 0.929, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(186, 'S02', '2-30', '2023-10-29', '2023-11-04', 0.929, '2023-11-17 19:43:49', '2023-11-17 19:43:49'),
(187, 'S02', '2-101', '2023-04-02', '2023-04-08', 0.135, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(188, 'S02', '2-101', '2023-04-09', '2023-04-15', 0.15, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(189, 'S02', '2-101', '2023-04-16', '2023-04-22', 0.17, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(190, 'S02', '2-101', '2023-04-23', '2023-04-29', 0.17, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(191, 'S02', '2-101', '2023-04-30', '2023-05-06', 0.17, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(192, 'S02', '2-101', '2023-05-07', '2023-05-13', 0.17, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(193, 'S02', '2-101', '2023-05-14', '2023-05-20', 0.17, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(194, 'S02', '2-101', '2023-05-21', '2023-05-27', 0.17, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(195, 'S02', '2-101', '2023-05-28', '2023-06-03', 0.177, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(196, 'S02', '2-101', '2023-06-04', '2023-06-10', 0.185, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(197, 'S02', '2-101', '2023-06-11', '2023-06-17', 0.185, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(198, 'S02', '2-101', '2023-06-18', '2023-06-24', 0.185, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(199, 'S02', '2-101', '2023-06-25', '2023-07-01', 0.185, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(200, 'S02', '2-101', '2023-07-02', '2023-07-08', 0.185, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(201, 'S02', '2-101', '2023-07-09', '2023-07-15', 0.893, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(202, 'S02', '2-101', '2023-07-16', '2023-07-22', 0.188, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(203, 'S02', '2-101', '2023-07-23', '2023-07-29', 0.19, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(204, 'S02', '2-101', '2023-07-30', '2023-08-05', 0.19, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(205, 'S02', '2-101', '2023-08-06', '2023-08-12', 0.237, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(206, 'S02', '2-101', '2023-08-13', '2023-08-19', 0.237, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(207, 'S02', '2-101', '2023-08-20', '2023-08-26', 0.507, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(208, 'S02', '2-101', '2023-08-27', '2023-09-02', 0.5943, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(209, 'S02', '2-101', '2023-09-03', '2023-09-09', 0.637, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(210, 'S02', '2-101', '2023-09-10', '2023-09-16', 0.873, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(211, 'S02', '2-101', '2023-09-17', '2023-09-23', 0.893, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(212, 'S02', '2-101', '2023-09-24', '2023-09-30', 0.893, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(213, 'S02', '2-101', '2023-10-01', '2023-10-07', 0.893, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(214, 'S02', '2-101', '2023-10-08', '2023-10-14', 0.935, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(215, 'S02', '2-101', '2023-10-15', '2023-10-21', 0.935, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(216, 'S02', '2-101', '2023-10-22', '2023-10-28', 0.935, '2023-11-17 19:43:50', '2023-11-17 19:43:50'),
(217, 'S02', '2-101', '2023-10-29', '2023-11-04', 0.935, '2023-11-17 19:43:50', '2023-11-17 19:43:50');

-- --------------------------------------------------------

--
-- 資料表結構 `historical_pv_records_season`
--

CREATE TABLE `historical_pv_records_season` (
  `id` int(11) NOT NULL,
  `historical_loop` varchar(255) DEFAULT NULL,
  `estimated_start_date` date DEFAULT NULL,
  `estimated_completion_date` date DEFAULT NULL,
  `historical_progress_rate` double DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `historical_pv_records_season`
--

INSERT INTO `historical_pv_records_season` (`id`, `historical_loop`, `estimated_start_date`, `estimated_completion_date`, `historical_progress_rate`, `updated_at`, `created_at`) VALUES
(1, 'S02', '2023-04-02', '2023-04-08', 0.1225, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(2, 'S02', '2023-04-09', '2023-04-15', 0.1517, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(3, 'S02', '2023-04-16', '2023-04-22', 0.16940000000000002, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(4, 'S02', '2023-04-23', '2023-04-29', 0.244, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(5, 'S02', '2023-04-30', '2023-05-06', 0.2713, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(6, 'S02', '2023-05-07', '2023-05-13', 0.3872, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(7, 'S02', '2023-05-14', '2023-05-20', 0.4371, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(8, 'S02', '2023-05-21', '2023-05-27', 0.4753, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(9, 'S02', '2023-05-28', '2023-06-03', 0.4886, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(10, 'S02', '2023-06-04', '2023-06-10', 0.5568, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(11, 'S02', '2023-06-11', '2023-06-17', 0.5611999999999999, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(12, 'S02', '2023-06-18', '2023-06-24', 0.5657, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(13, 'S02', '2023-06-25', '2023-07-01', 0.5921, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(14, 'S02', '2023-07-02', '2023-07-08', 0.6383, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(15, 'S02', '2023-07-09', '2023-07-15', 0.7658, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(16, 'S02', '2023-07-16', '2023-07-22', 0.7121, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(17, 'S02', '2023-07-23', '2023-07-29', 0.7461, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(18, 'S02', '2023-07-30', '2023-08-05', 0.7461, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(19, 'S02', '2023-08-06', '2023-08-12', 0.7561, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(20, 'S02', '2023-08-13', '2023-08-19', 0.7561, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(21, 'S02', '2023-08-20', '2023-08-26', 0.8168000000000001, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(22, 'S02', '2023-08-27', '2023-09-02', 0.8278, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(23, 'S02', '2023-09-03', '2023-09-09', 0.8344, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(24, 'S02', '2023-09-10', '2023-09-16', 0.9078, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(25, 'S02', '2023-09-17', '2023-09-23', 0.9143000000000001, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(26, 'S02', '2023-09-24', '2023-09-30', 0.9143000000000001, '2023-11-17 19:43:44', '2023-11-17 19:43:44'),
(27, 'S02', '2023-10-01', '2023-10-07', 0.9143000000000001, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(28, 'S02', '2023-10-08', '2023-10-14', 0.9323999999999999, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(29, 'S02', '2023-10-15', '2023-10-21', 0.9323999999999999, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(30, 'S02', '2023-10-22', '2023-10-28', 0.9327, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(31, 'S02', '2023-10-29', '2023-11-04', 0.9327, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(32, 'S02', '2023-11-05', '2023-11-11', 0, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(33, 'S02', '2023-11-12', '2023-11-18', 0, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(34, 'S02', '2023-11-19', '2023-11-25', 0, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(35, 'S02', '2023-11-26', '2023-12-02', 0, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(36, 'S02', '2023-12-03', '2023-12-09', 0, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(37, 'S02', '2023-12-10', '2023-12-16', 0, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(38, 'S02', '2023-12-17', '2023-12-23', 0, '2023-11-17 19:43:45', '2023-11-17 19:43:45'),
(39, 'S02', '2023-12-24', '2023-12-30', 0, '2023-11-17 19:43:45', '2023-11-17 19:43:45');

-- --------------------------------------------------------

--
-- 資料表結構 `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `plan_name` varchar(255) DEFAULT NULL,
  `estimated_start_date` date DEFAULT NULL,
  `estimated_completion_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `plan`
--

INSERT INTO `plan` (`id`, `plan_name`, `estimated_start_date`, `estimated_completion_date`, `created_at`, `updated_at`) VALUES
(6, '多元二期', '2024-01-01', '2025-06-30', '2023-11-23 05:55:42', '2023-11-25 00:53:04');

-- --------------------------------------------------------

--
-- 資料表結構 `power`
--

CREATE TABLE `power` (
  `id` int(11) NOT NULL,
  `power` double DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `project_id` int(11) DEFAULT 0,
  `loop_id` int(11) DEFAULT 0,
  `case_id` int(11) DEFAULT 0,
  `task_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `power`
--

INSERT INTO `power` (`id`, `power`, `created_at`, `updated_at`, `project_id`, `loop_id`, `case_id`, `task_id`) VALUES
(1, 11628, '2023-11-24 08:58:18', '2023-12-15 16:32:54', 3, 1, NULL, 1),
(2, 15020.64, '2023-11-24 09:06:04', '2023-12-15 16:33:01', 3, 2, NULL, 1),
(3, 13440.96, '2023-11-24 09:06:24', '2023-12-15 16:35:26', 3, 3, NULL, 1),
(4, 13789.44, '2023-11-24 09:06:50', '2023-12-15 16:35:26', 3, 4, NULL, 1),
(5, 11750.46, '2023-11-24 09:07:08', '2023-12-15 16:35:26', 3, 5, NULL, 1),
(6, 9489.48, '2023-11-24 09:07:28', '2023-12-15 16:35:26', 3, 6, NULL, 1),
(7, 16680.48, '2023-11-24 09:07:44', '2023-12-15 16:35:26', 3, 7, NULL, 1),
(8, 14227.2, '2023-11-24 09:08:00', '2023-12-15 16:35:26', 3, 8, NULL, 1),
(9, 11360.52, '2023-11-24 09:08:21', '2023-12-15 16:35:26', 3, 9, NULL, 1),
(10, 117393.18, '2023-11-24 09:08:43', '2023-12-15 16:35:26', 3, NULL, NULL, 1),
(11, 437.76, '2023-11-24 15:22:51', '2023-12-15 16:35:26', 3, 1, 1, 1),
(12, 437.76, '2023-11-24 15:23:10', '2023-12-15 16:35:26', 3, 1, 2, 1),
(13, 738.72, '2023-11-24 15:26:10', '2023-12-15 16:35:26', 3, 1, 3, 1),
(14, 1504.8, '2023-11-24 15:26:29', '2023-12-15 16:35:26', 3, 1, 4, 1),
(15, 1340.64, '2023-11-24 15:28:06', '2023-12-15 16:35:26', 3, 1, 5, 1),
(16, 1751.04, '2023-11-24 15:28:34', '2023-12-15 16:35:26', 3, 1, 6, 1),
(17, 1149.12, '2023-11-24 15:29:11', '2023-12-15 16:35:26', 3, 1, 7, 1),
(18, 1413.6, '2023-11-24 15:30:01', '2023-12-15 16:35:26', 3, 1, 8, 1),
(19, 647.52, '2023-11-24 15:33:34', '2023-12-15 16:35:26', 3, 1, 9, 1),
(20, 1532.16, '2023-11-24 15:34:03', '2023-12-15 16:35:26', 3, 1, 10, 1),
(21, 674.88, '2023-11-24 15:35:42', '2023-12-15 16:35:26', 3, 1, 11, 1),
(22, 811.68, '2023-11-24 15:37:50', '2023-12-15 16:35:26', 3, 2, 12, 1),
(23, 738.72, '2023-11-24 15:39:40', '2023-12-15 16:35:26', 3, 2, 14, 1),
(24, 492.48, '2023-11-24 15:41:07', '2023-12-15 16:35:26', 3, 2, 15, 1),
(25, 802.56, '2023-11-24 15:41:27', '2023-12-15 16:35:26', 3, 2, 16, 1),
(26, 793.44, '2023-11-24 15:41:42', '2023-12-15 16:35:26', 3, 2, 17, 1),
(27, 2015.52, '2023-11-24 15:42:46', '2023-12-15 16:35:26', 3, 2, 18, 1),
(28, 538.08, '2023-11-24 15:43:05', '2023-12-15 16:35:26', 3, 2, 19, 1),
(29, 4660.32, '2023-11-24 15:44:13', '2023-12-15 16:35:26', 3, 2, 20, 1),
(30, 2736, '2023-11-24 15:45:04', '2023-12-15 16:35:26', 3, 2, 21, 1),
(31, 629.28, '2023-11-24 15:45:35', '2023-12-15 16:35:26', 3, 2, 22, 1),
(32, 823.68, '2023-11-24 15:58:40', '2023-12-15 16:35:26', 3, 3, 24, 1),
(33, 2003.04, '2023-11-24 15:59:00', '2023-12-15 16:35:26', 3, 3, 25, 1),
(34, 2995.2, '2023-11-24 15:59:15', '2023-12-15 16:35:26', 3, 3, 26, 1),
(35, 3154.32, '2023-11-24 15:59:32', '2023-12-15 16:35:26', 3, 3, 27, 1),
(36, 2508.48, '2023-11-24 15:59:50', '2023-12-15 16:35:26', 3, 3, 28, 1),
(37, 982.8, '2023-11-24 16:00:08', '2023-12-15 16:35:26', 3, 3, 29, 1),
(38, 1641.6, '2023-11-24 16:00:59', '2023-12-15 16:35:26', 3, 4, 30, 1),
(39, 2927.52, '2023-11-24 16:01:27', '2023-12-15 16:35:26', 3, 4, 31, 1),
(40, 1605.12, '2023-11-24 16:01:41', '2023-12-15 16:35:26', 3, 4, 32, 1),
(41, 1459.2, '2023-11-24 16:02:15', '2023-12-15 16:35:26', 3, 4, 33, 1),
(42, 583.68, '2023-11-24 16:02:50', '2023-12-15 16:35:26', 3, 4, 34, 1),
(43, 565.44, '2023-11-24 16:03:21', '2023-12-15 16:35:26', 3, 4, 35, 1),
(44, 492.48, '2023-11-24 16:03:48', '2023-12-15 16:35:26', 3, 4, 36, 1),
(45, 2599.2, '2023-11-24 16:04:20', '2023-12-15 16:35:26', 3, 4, 37, 1),
(46, 1915.2, '2023-11-24 16:04:46', '2023-12-15 16:35:26', 3, 4, 38, 1),
(47, 1516.8, '2023-11-24 16:05:52', '2023-12-15 16:35:26', 3, 5, 39, 1),
(48, 535.62, '2023-11-24 16:06:10', '2023-12-15 16:35:26', 3, 5, 40, 1),
(49, 635.16, '2023-11-24 16:07:12', '2023-12-15 16:35:26', 3, 5, 41, 1),
(50, 1156.56, '2023-11-24 16:07:26', '2023-12-15 16:35:26', 3, 5, 42, 1),
(51, 1450.44, '2023-11-24 16:07:40', '2023-12-15 16:35:26', 3, 5, 43, 1),
(52, 1156.56, '2023-11-24 16:07:57', '2023-12-15 16:35:26', 3, 5, 44, 1),
(53, 312.84, '2023-11-24 16:08:24', '2023-12-15 16:35:26', 3, 5, 45, 1),
(54, 1251.36, '2023-11-24 16:08:38', '2023-12-15 16:35:26', 3, 5, 46, 1),
(55, 3232.68, '2023-11-24 16:08:57', '2023-12-15 16:35:26', 3, 5, 47, 1),
(56, 502.44, '2023-11-24 16:09:20', '2023-12-15 16:35:26', 3, 5, 48, 1),
(57, 1668.48, '2023-11-24 16:11:31', '2023-12-15 16:35:26', 3, 6, 49, 1),
(58, 720.48, '2023-11-24 16:11:53', '2023-12-15 16:35:26', 3, 6, 50, 1),
(59, 587.76, '2023-11-24 16:12:08', '2023-12-15 16:35:26', 3, 6, 51, 1),
(60, 3934.2, '2023-11-24 16:12:29', '2023-12-15 16:35:26', 3, 6, 52, 1),
(61, 1365.12, '2023-11-24 16:12:46', '2023-12-15 16:35:26', 3, 6, 53, 1),
(62, 1213.44, '2023-11-24 16:13:11', '2023-12-15 16:35:26', 3, 6, 54, 1),
(63, 3146.4, '2023-11-24 16:16:04', '2023-12-15 16:35:26', 3, 7, 55, 1),
(64, 2517.12, '2023-11-24 16:16:16', '2023-12-15 16:35:26', 3, 7, 56, 1),
(65, 3483.84, '2023-11-24 16:16:29', '2023-12-15 16:35:26', 3, 7, 57, 1),
(66, 2207.04, '2023-11-24 16:17:00', '2023-12-15 16:35:26', 3, 7, 58, 1),
(67, 3374.4, '2023-11-24 16:18:07', '2023-12-15 16:35:26', 3, 7, 59, 1),
(68, 1951.68, '2023-11-24 16:18:51', '2023-12-15 16:35:26', 3, 7, 60, 1),
(69, 2480.64, '2023-11-24 16:22:23', '2023-12-15 16:35:26', 3, 8, 61, 1),
(70, 3146.4, '2023-11-24 16:22:42', '2023-12-15 16:35:26', 3, 8, 62, 1),
(71, 2152.32, '2023-11-24 16:22:58', '2023-12-15 16:35:26', 3, 8, 63, 1),
(72, 930.24, '2023-11-24 16:23:14', '2023-12-15 16:35:26', 3, 8, 64, 1),
(73, 2453.28, '2023-11-24 16:23:30', '2023-12-15 16:35:26', 3, 8, 65, 1),
(74, 1860.48, '2023-11-24 16:23:50', '2023-12-15 16:35:26', 3, 8, 66, 1),
(75, 1203.84, '2023-11-24 16:24:19', '2023-12-15 16:35:26', 3, 8, 67, 1),
(76, 720.48, '2023-11-24 16:25:04', '2023-12-15 16:35:26', 3, 9, 68, 1),
(77, 3754.08, '2023-11-24 16:25:36', '2023-12-15 16:35:26', 3, 9, 69, 1),
(78, 3071.52, '2023-11-24 16:25:51', '2023-12-15 16:35:26', 3, 9, 70, 1),
(79, 3820.44, '2023-11-24 16:26:05', '2023-12-15 16:35:26', 3, 9, 71, 1),
(80, 802.56, '2023-11-24 15:37:50', '2023-12-15 16:35:26', 3, 2, 13, 1),
(81, 973.44, '2023-11-24 15:58:40', '2023-12-15 16:35:26', 3, 3, 23, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `power_proportion`
--

CREATE TABLE `power_proportion` (
  `id` int(11) NOT NULL,
  `proportion` double NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `task_id` int(11) DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `power_proportion`
--

INSERT INTO `power_proportion` (`id`, `proportion`, `created_at`, `updated_at`, `task_id`, `project_id`) VALUES
(1, 0.0990517507064721, '2023-12-15 16:47:57', '2023-12-15 16:47:57', 1, 1),
(2, 0.127951555618478, '2023-12-15 16:53:16', '2023-12-15 16:53:16', 1, 2),
(3, 0.114495237287209, '2023-12-15 16:53:16', '2023-12-15 16:53:16', 1, 3),
(4, 0.117463723190734, '2023-12-15 16:53:16', '2023-12-15 16:53:16', 1, 4),
(5, 0.100094911816853, '2023-12-15 16:53:16', '2023-12-15 16:53:16', 1, 5),
(6, 0.0808350195471321, '2023-12-15 16:53:16', '2023-12-15 16:53:16', 1, 6),
(7, 0.142090707484029, '2023-12-15 16:53:16', '2023-12-15 16:53:16', 1, 7),
(8, 0.121192730276154, '2023-12-15 16:53:16', '2023-12-15 16:53:16', 1, 8),
(9, 0.0968243640729385, '2023-12-15 16:53:16', '2023-12-15 16:53:16', 1, 9),
(10, 3.76470588235294, '2023-12-18 09:24:42', '2023-12-18 09:24:42', 1, 11),
(11, 3.76470588235294, '2023-12-18 09:24:42', '2023-12-18 09:24:42', 1, 12),
(12, 6.35294117647059, '2023-12-18 09:24:42', '2023-12-18 09:24:42', 1, 13),
(13, 12.9411764705882, '2023-12-18 09:24:42', '2023-12-18 09:24:42', 1, 14),
(14, 11.5294117647059, '2023-12-18 09:24:42', '2023-12-18 09:24:42', 1, 15),
(15, 15.0588235294118, '2023-12-18 09:24:42', '2023-12-18 09:24:42', 1, 16),
(16, 9.88235294117647, '2023-12-18 09:24:42', '2023-12-18 09:24:42', 1, 17),
(17, 12.156862745098, '2023-12-18 09:24:42', '2023-12-18 09:24:42', 1, 18),
(18, 5.56862745098039, '2023-12-18 09:24:42', '2023-12-18 09:24:42', 1, 19),
(19, 13.1764705882353, '2023-12-18 09:24:42', '2023-12-18 09:24:42', 1, 20),
(20, 5.80392156862745, '2023-12-18 09:24:42', '2023-12-18 09:24:42', 1, 21),
(21, 0.0540376442015786, '2023-12-18 11:22:41', '2023-12-18 11:22:41', 1, 22),
(22, 0.0534304796599879, '2023-12-18 11:22:41', '2023-12-18 11:22:41', 1, 80),
(23, 0.0491803278688525, '2023-12-18 11:22:41', '2023-12-18 11:22:41', 1, 23),
(24, 0.0327868852459016, '2023-12-18 11:22:41', '2023-12-18 11:22:41', 1, 24),
(25, 0.0534304796599879, '2023-12-18 11:22:41', '2023-12-18 11:22:41', 1, 25),
(26, 0.0528233151183971, '2023-12-18 11:22:41', '2023-12-18 11:22:41', 1, 26),
(27, 0.13418336369156, '2023-12-18 11:22:41', '2023-12-18 11:22:41', 1, 27),
(28, 0.0358227079538555, '2023-12-18 11:22:41', '2023-12-18 11:22:41', 1, 28),
(29, 0.310261080752884, '2023-12-18 11:22:41', '2023-12-18 11:22:41', 1, 29),
(30, 0.182149362477231, '2023-12-18 11:22:41', '2023-12-18 11:22:41', 1, 30),
(31, 0.0418943533697632, '2023-12-18 11:22:41', '2023-12-18 11:22:41', 1, 31),
(32, 0.0724233983286908, '2023-12-18 11:33:08', '2023-12-18 11:33:08', 1, 81),
(33, 0.0612813370473538, '2023-12-18 11:33:08', '2023-12-18 11:33:08', 1, 32),
(34, 0.149025069637883, '2023-12-18 11:33:08', '2023-12-18 11:33:08', 1, 33),
(35, 0.222841225626741, '2023-12-18 11:33:08', '2023-12-18 11:33:08', 1, 34),
(36, 0.234679665738162, '2023-12-18 11:33:08', '2023-12-18 11:33:08', 1, 35),
(37, 0.186629526462396, '2023-12-18 11:33:08', '2023-12-18 11:33:08', 1, 36),
(38, 0.0731197771587744, '2023-12-18 11:33:08', '2023-12-18 11:33:08', 1, 37),
(39, 0.119047619047619, '2023-12-18 11:37:55', '2023-12-18 11:37:55', 1, 38),
(40, 0.212301587301587, '2023-12-18 11:37:55', '2023-12-18 11:37:55', 1, 39),
(41, 0.116402116402116, '2023-12-18 11:37:55', '2023-12-18 11:37:55', 1, 40),
(42, 0.105820105820106, '2023-12-18 11:37:55', '2023-12-18 11:37:55', 1, 41),
(43, 0.0423280423280423, '2023-12-18 11:37:55', '2023-12-18 11:37:55', 1, 42),
(44, 0.041005291005291, '2023-12-18 11:37:55', '2023-12-18 11:37:55', 1, 43),
(45, 0.0357142857142857, '2023-12-18 11:37:55', '2023-12-18 11:37:55', 1, 44),
(46, 0.188492063492063, '2023-12-18 11:37:55', '2023-12-18 11:37:55', 1, 45),
(47, 0.138888888888889, '2023-12-18 11:37:55', '2023-12-18 11:37:55', 1, 46),
(48, 0.129084308188786, '2023-12-18 11:56:18', '2023-12-18 11:56:18', 1, 47),
(49, 0.045582896329165, '2023-12-18 11:56:18', '2023-12-18 11:56:18', 1, 48),
(50, 0.0540540540540541, '2023-12-18 11:56:18', '2023-12-18 11:56:18', 1, 49),
(51, 0.0984267849939492, '2023-12-18 11:56:18', '2023-12-18 11:56:18', 1, 50),
(52, 0.123436869705526, '2023-12-18 11:56:18', '2023-12-18 11:56:18', 1, 51),
(53, 0.0984267849939492, '2023-12-18 11:56:18', '2023-12-18 11:56:18', 1, 52),
(54, 0.0266236385639371, '2023-12-18 11:56:18', '2023-12-18 11:56:18', 1, 53),
(55, 0.106494554255748, '2023-12-18 11:56:18', '2023-12-18 11:56:18', 1, 54),
(56, 0.27511093182735, '2023-12-18 11:56:18', '2023-12-18 11:56:18', 1, 55),
(57, 0.0427591770875353, '2023-12-18 11:56:18', '2023-12-18 11:56:18', 1, 56),
(58, 0.175824175824176, '2023-12-18 13:09:00', '2023-12-18 13:09:00', 1, 57),
(59, 0.0759240759240759, '2023-12-18 13:09:00', '2023-12-18 13:09:00', 1, 58),
(60, 0.0619380619380619, '2023-12-18 13:09:00', '2023-12-18 13:09:00', 1, 59),
(61, 0.414585414585414, '2023-12-18 13:09:00', '2023-12-18 13:09:00', 1, 60),
(62, 0.143856143856144, '2023-12-18 13:09:00', '2023-12-18 13:09:00', 1, 61),
(63, 0.127872127872128, '2023-12-18 13:09:00', '2023-12-18 13:09:00', 1, 62),
(64, 0.188627665390924, '2023-12-18 13:17:49', '2023-12-18 13:17:49', 1, 63),
(65, 0.150902132312739, '2023-12-18 13:17:49', '2023-12-18 13:17:49', 1, 64),
(66, 0.20885729907053, '2023-12-18 13:17:49', '2023-12-18 13:17:49', 1, 65),
(67, 0.13231273920175, '2023-12-18 13:17:49', '2023-12-18 13:17:49', 1, 66),
(68, 0.202296336796063, '2023-12-18 13:17:49', '2023-12-18 13:17:49', 1, 67),
(69, 0.117003827227993, '2023-12-18 13:17:49', '2023-12-18 13:17:49', 1, 68),
(70, 0.174358974358974, '2023-12-18 13:22:19', '2023-12-18 13:22:19', 1, 69),
(71, 0.221153846153846, '2023-12-18 13:22:19', '2023-12-18 13:22:19', 1, 70),
(72, 0.151282051282051, '2023-12-18 13:22:19', '2023-12-18 13:22:19', 1, 71),
(73, 0.0653846153846154, '2023-12-18 13:22:19', '2023-12-18 13:22:19', 1, 72),
(74, 0.172435897435897, '2023-12-18 13:22:19', '2023-12-18 13:22:19', 1, 73),
(75, 0.130769230769231, '2023-12-18 13:22:19', '2023-12-18 13:22:19', 1, 74),
(76, 0.0846153846153846, '2023-12-18 13:22:19', '2023-12-18 13:22:19', 1, 75),
(77, 0.0633861551292744, '2023-12-18 13:24:27', '2023-12-18 13:24:27', 1, 76),
(78, 0.330275229357798, '2023-12-18 13:24:27', '2023-12-18 13:24:27', 1, 77),
(79, 0.27022518765638, '2023-12-18 13:24:27', '2023-12-18 13:24:27', 1, 78),
(80, 0.336113427856547, '2023-12-18 13:24:27', '2023-12-18 13:24:27', 1, 79);

-- --------------------------------------------------------

--
-- 資料表結構 `power_task`
--

CREATE TABLE `power_task` (
  `id` int(11) NOT NULL,
  `project_task_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `power_task`
--

INSERT INTO `power_task` (`id`, `project_task_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-12-15 16:30:04', '2023-12-15 16:30:04');

-- --------------------------------------------------------

--
-- 資料表結構 `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `projcet_name` varchar(255) DEFAULT NULL,
  `estimated_start_date` date DEFAULT NULL,
  `estimated_completion_date` date DEFAULT NULL,
  `progress` double DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `plan_id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project`
--

INSERT INTO `project` (`id`, `projcet_name`, `estimated_start_date`, `estimated_completion_date`, `progress`, `created_at`, `updated_at`, `plan_id`, `task_id`) VALUES
(1, '升壓站', NULL, NULL, 0, '2023-11-24 06:56:07', '2023-11-24 06:56:07', 6, NULL),
(2, '22.8KV', NULL, NULL, 0, '2023-11-24 06:56:27', '2023-11-24 06:56:27', 6, NULL),
(3, '案場', NULL, NULL, 0, '2023-11-24 06:56:39', '2023-11-24 06:56:39', 6, NULL),
(4, '電業申辦', NULL, NULL, 0, '2023-11-24 06:56:51', '2023-11-24 06:56:51', 6, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `project_case`
--

CREATE TABLE `project_case` (
  `id` int(11) NOT NULL,
  `case_name` varchar(255) NOT NULL,
  `case_code` varchar(255) DEFAULT NULL,
  `pv` int(11) DEFAULT 0,
  `breeding` int(11) DEFAULT 0,
  `address` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `loop_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project_case`
--

INSERT INTO `project_case` (`id`, `case_name`, `case_code`, `pv`, `breeding`, `address`, `latitude`, `longitude`, `created_at`, `updated_at`, `loop_id`) VALUES
(1, '升三-A02區-A棟', 'A02-A', 1, 1, NULL, NULL, NULL, '2023-11-24 14:16:43', '2023-11-24 22:22:19', 1),
(2, '升三-A02區-B棟', 'A02-B', 1, 1, NULL, NULL, NULL, '2023-11-24 14:17:38', '2023-11-24 22:24:11', 1),
(3, '升三-A03區', 'A03', 1, 1, NULL, NULL, NULL, '2023-11-24 14:17:53', '2023-11-24 22:24:20', 1),
(4, '升三-B01區', 'B01', 1, 1, NULL, NULL, NULL, '2023-11-24 14:18:06', '2023-11-24 22:24:28', 1),
(5, '升三-E01區', 'E01', 1, 1, NULL, NULL, NULL, '2023-11-24 14:18:20', '2023-11-24 22:24:34', 1),
(6, '升三-F01區', 'F01', 1, 1, NULL, NULL, NULL, '2023-11-24 14:18:36', '2023-11-24 22:24:37', 1),
(7, '升三-F02區', 'F02', 1, 1, NULL, NULL, NULL, '2023-11-24 14:18:50', '2023-11-24 22:24:40', 1),
(8, '升三-I01區', 'I01', 1, 1, NULL, NULL, NULL, '2023-11-24 14:19:04', '2023-11-24 22:24:44', 1),
(9, '升三-I02區', 'I02', 1, 1, NULL, NULL, NULL, '2023-11-24 14:19:16', '2023-11-24 22:24:47', 1),
(10, '升四-K01區', 'K01', 1, 1, NULL, NULL, NULL, '2023-11-24 14:19:33', '2023-11-24 22:24:50', 1),
(11, '升四-K02區', 'K02', 1, 1, NULL, NULL, NULL, '2023-11-24 14:19:47', '2023-11-24 22:24:53', 1),
(12, '升四-D03區', 'D03', 1, 1, NULL, NULL, NULL, '2023-11-24 14:21:23', '2023-11-24 22:26:02', 2),
(13, '升三-D01區', 'D01', 1, 1, NULL, NULL, NULL, '2023-11-24 14:27:48', '2023-11-24 14:27:48', 2),
(14, '升四-D04區', 'D04', 1, 1, NULL, NULL, NULL, '2023-11-24 14:28:14', '2023-11-24 14:28:14', 2),
(15, '升四-G01區', 'G01', 1, 1, NULL, NULL, NULL, '2023-11-24 14:28:32', '2023-11-24 14:28:32', 2),
(16, '升四-G02區', 'G02', 1, 1, NULL, NULL, NULL, '2023-11-24 14:28:47', '2023-11-24 14:28:47', 2),
(17, '升三-H01區', 'H01', 1, 1, NULL, NULL, NULL, '2023-11-24 14:29:10', '2023-11-24 14:29:10', 2),
(18, '升三-H02區', 'H02', 1, 1, NULL, NULL, NULL, '2023-11-24 14:29:27', '2023-11-24 14:29:27', 2),
(19, '升四-H03區', 'H03', 1, 1, NULL, NULL, NULL, '2023-11-24 14:29:49', '2023-11-24 14:29:49', 2),
(20, '升四-H04區', 'H04', 1, 1, NULL, NULL, NULL, '2023-11-24 14:30:13', '2023-11-24 14:30:13', 2),
(21, '升四-H05區', 'H05', 1, 1, NULL, NULL, NULL, '2023-11-24 14:30:31', '2023-11-24 14:30:31', 2),
(22, '升四-H06區', 'H06', 1, 1, NULL, NULL, NULL, '2023-11-24 14:31:16', '2023-11-24 14:31:16', 2),
(23, '升三-B02區', 'B02', 1, 1, NULL, NULL, NULL, '2023-11-24 14:33:25', '2023-11-24 14:33:25', 3),
(24, '升三-C01區', 'C01', 1, 1, NULL, NULL, NULL, '2023-11-24 14:33:47', '2023-11-24 14:33:47', 3),
(25, '升三-C02區', 'C02', 1, 1, NULL, NULL, NULL, '2023-11-24 14:34:05', '2023-11-24 14:34:05', 3),
(26, '升三-C03區', 'C03', 1, 1, NULL, NULL, NULL, '2023-11-24 14:34:21', '2023-11-24 14:34:21', 3),
(27, '升三-C07區', 'C07', 1, 1, NULL, NULL, NULL, '2023-11-24 14:34:48', '2023-11-24 14:34:48', 3),
(28, '升三-C08區', 'C08', 1, 1, NULL, NULL, NULL, '2023-11-24 14:35:07', '2023-11-24 14:35:07', 3),
(29, '升三-C09區', 'C09', 1, 1, NULL, NULL, NULL, '2023-11-24 14:35:31', '2023-11-24 14:35:31', 3),
(30, '升三-E02區', 'E02', 1, 1, NULL, NULL, NULL, '2023-11-24 14:37:37', '2023-11-24 14:37:37', 4),
(31, '升三-E03區', 'E03', 1, 1, NULL, NULL, NULL, '2023-11-24 14:38:04', '2023-11-24 14:38:04', 4),
(32, '升三-E04區-A棟', 'E04-A', 1, 1, NULL, NULL, NULL, '2023-11-24 14:38:35', '2023-11-24 14:38:35', 4),
(33, '升三-E04區-B棟', 'E04-B', 1, 1, NULL, NULL, NULL, '2023-11-24 14:39:39', '2023-11-24 14:39:39', 4),
(34, '升四-E05區-A棟', 'E05-A', 1, 1, NULL, NULL, NULL, '2023-11-24 14:40:59', '2023-11-24 14:40:59', 4),
(35, '升四-E05區-B棟', 'E05-B', 1, 1, NULL, NULL, NULL, '2023-11-24 14:41:23', '2023-11-24 14:41:23', 4),
(36, '升四-E06區', 'E06', 1, 1, NULL, NULL, NULL, '2023-11-24 14:41:39', '2023-11-24 14:41:39', 4),
(37, '升三-F03區', 'F03', 1, 1, NULL, NULL, NULL, '2023-11-24 14:42:08', '2023-11-24 14:42:08', 4),
(38, '升四-J01區', 'J01', 1, 1, NULL, NULL, NULL, '2023-11-24 14:42:26', '2023-11-24 14:42:26', 4),
(39, '升三-A01區', 'A01', 1, 1, NULL, NULL, NULL, '2023-11-24 14:43:14', '2023-11-24 14:43:14', 5),
(40, '升四-A04區', 'A04', 1, 1, NULL, NULL, NULL, '2023-11-24 14:45:11', '2023-11-24 14:45:11', 5),
(41, '升四-D02區', 'D02', 1, 1, NULL, NULL, NULL, '2023-11-24 14:45:30', '2023-11-24 14:45:30', 5),
(42, '升四-G05區', 'G05', 1, 1, NULL, NULL, NULL, '2023-11-24 14:45:49', '2023-11-24 14:45:49', 5),
(43, '升四-G06區', 'G06', 1, 1, NULL, NULL, NULL, '2023-11-24 14:46:06', '2023-11-24 14:46:06', 5),
(44, '升四-G07區', 'G07', 1, 1, NULL, NULL, NULL, '2023-11-24 14:46:23', '2023-11-24 14:46:23', 5),
(45, '升四-H08區', 'H08', 1, 1, NULL, NULL, NULL, '2023-11-24 14:48:11', '2023-11-24 14:48:11', 5),
(46, '升四-H09區', 'H09', 1, 1, NULL, NULL, NULL, '2023-11-24 14:48:27', '2023-11-24 14:48:27', 5),
(47, '升四-H10區-A棟', 'H10-A', 1, 1, NULL, NULL, NULL, '2023-11-24 14:49:25', '2023-11-24 14:49:25', 5),
(48, '升四-H10區-B棟', 'H10-B', 1, 1, NULL, NULL, NULL, '2023-11-24 14:49:39', '2023-11-24 14:49:39', 5),
(49, '升四-G03區', 'G03', 1, 1, NULL, NULL, NULL, '2023-11-24 15:00:34', '2023-11-24 15:00:34', 6),
(50, '升四-G04區', 'G04', 1, 1, NULL, NULL, NULL, '2023-11-24 15:00:51', '2023-11-24 15:00:51', 6),
(51, '升四-H07區', 'H07', 1, 1, NULL, NULL, NULL, '2023-11-24 15:01:08', '2023-11-24 15:01:08', 6),
(52, '升四-L01區', 'L01', 1, 1, NULL, NULL, NULL, '2023-11-24 15:01:25', '2023-11-24 15:01:25', 6),
(53, '升四-L02區', 'L02', 1, 1, NULL, NULL, NULL, '2023-11-24 15:01:47', '2023-11-24 15:01:47', 6),
(54, '升四-L03區', 'L03', 1, 1, NULL, NULL, NULL, '2023-11-24 15:02:04', '2023-11-24 15:02:04', 6),
(55, '升三-C04區-A棟', 'C04-A', 1, 1, NULL, NULL, NULL, '2023-11-24 15:02:48', '2023-11-24 15:02:48', 7),
(56, '升三-C04區-B棟', 'C04-B', 1, 1, NULL, NULL, NULL, '2023-11-24 15:03:05', '2023-11-24 15:03:05', 7),
(57, '升三-C05區-A棟', 'C05-A', 1, 1, NULL, NULL, NULL, '2023-11-24 15:03:25', '2023-11-24 15:03:25', 7),
(58, '升三-C05區-B棟', 'C05-B', 1, 1, NULL, NULL, NULL, '2023-11-24 15:03:48', '2023-11-24 15:03:48', 7),
(59, '升三-C06區', 'C06', 1, 1, NULL, NULL, NULL, '2023-11-24 15:04:46', '2023-11-24 15:04:46', 7),
(60, '升四-C15區', 'C15', 1, 1, NULL, NULL, NULL, '2023-11-24 15:05:03', '2023-11-24 15:05:03', 7),
(61, '升四-C10區', 'C10', 1, 1, NULL, NULL, NULL, '2023-11-24 15:05:30', '2023-11-24 15:05:30', 8),
(62, '升四-C11區', 'C11', 1, 1, NULL, NULL, NULL, '2023-11-24 15:05:47', '2023-11-24 15:05:47', 8),
(63, '升四-C12區', 'C12', 1, 1, NULL, NULL, NULL, '2023-11-24 15:06:12', '2023-11-24 15:06:12', 8),
(64, '升四-C13區', 'C13', 1, 1, NULL, NULL, NULL, '2023-11-24 15:07:12', '2023-11-24 15:07:12', 8),
(65, '升四-C14區', 'C14', 1, 1, NULL, NULL, NULL, '2023-11-24 15:07:39', '2023-11-24 15:07:39', 8),
(66, '升四-F04區', 'F04', 1, 1, NULL, NULL, NULL, '2023-11-24 15:07:59', '2023-11-24 15:07:59', 8),
(67, '升四-F05區', 'F05', 1, 1, NULL, NULL, NULL, '2023-11-24 15:08:12', '2023-11-24 15:08:12', 8),
(68, '升四-F06區', 'F06', 1, 1, NULL, NULL, NULL, '2023-11-24 15:08:55', '2023-11-24 15:08:55', 9),
(69, '升四-F07區-A棟', 'F07-A', 1, 1, NULL, NULL, NULL, '2023-11-24 15:09:14', '2023-11-24 15:09:14', 9),
(70, '升四-F07區-B棟', 'F07-B', 1, 1, NULL, NULL, NULL, '2023-11-24 15:09:32', '2023-11-24 15:09:32', 9),
(71, '升四-F07區-C棟', 'F07-C', 1, 1, NULL, NULL, NULL, '2023-11-24 15:09:47', '2023-11-24 15:09:47', 9);

-- --------------------------------------------------------

--
-- 資料表結構 `project_loop`
--

CREATE TABLE `project_loop` (
  `id` int(11) NOT NULL,
  `loop_name` varchar(255) DEFAULT NULL,
  `bank_code` varchar(255) DEFAULT NULL,
  `project_code` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project_loop`
--

INSERT INTO `project_loop` (`id`, `loop_name`, `bank_code`, `project_code`, `created_at`, `updated_at`, `project_id`) VALUES
(1, 'SN1', 'SN1', NULL, '2023-11-24 08:21:32', '2023-11-24 08:21:32', 3),
(2, 'SN2', 'SN2', NULL, '2023-11-24 08:22:11', '2023-11-24 08:22:11', 3),
(3, 'SN3', 'SN3', NULL, '2023-11-24 08:22:29', '2023-11-24 08:22:29', 3),
(4, 'SN4', 'SN4', NULL, '2023-11-24 08:22:43', '2023-11-24 08:22:43', 3),
(5, 'SN5', 'SN5', NULL, '2023-11-24 08:22:59', '2023-11-24 08:22:59', 3),
(6, 'SN6', 'SN6', NULL, '2023-11-24 08:23:15', '2023-11-24 08:23:15', 3),
(7, 'SN7', 'SN7', NULL, '2023-11-24 08:23:32', '2023-11-24 08:23:32', 3),
(8, 'SN8', 'SN8', NULL, '2023-11-24 08:23:49', '2023-11-24 08:23:49', 3),
(9, 'SN9', 'SN9', NULL, '2023-11-24 08:24:34', '2023-11-24 16:24:57', 3);

-- --------------------------------------------------------

--
-- 資料表結構 `project_proportion`
--

CREATE TABLE `project_proportion` (
  `id` int(11) NOT NULL,
  `proportion` double NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `task_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project_proportion`
--

INSERT INTO `project_proportion` (`id`, `proportion`, `created_at`, `updated_at`, `task_id`, `project_id`) VALUES
(1, 0.0267, '2023-11-24 08:02:46', '2023-11-24 08:02:46', 1, 1),
(2, 0.0976, '2023-11-24 08:03:35', '2023-11-24 08:03:35', 1, 2),
(3, 0.8257, '2023-11-24 08:03:51', '2023-11-24 08:03:51', 1, 3),
(4, 0.05, '2023-11-24 08:04:06', '2023-11-24 08:04:06', 1, 4);

-- --------------------------------------------------------

--
-- 資料表結構 `project_task`
--

CREATE TABLE `project_task` (
  `id` int(11) NOT NULL,
  `project_task_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project_task`
--

INSERT INTO `project_task` (`id`, `project_task_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-11-24 07:28:13', '2023-11-24 07:28:13');

-- --------------------------------------------------------

--
-- 資料表結構 `pv_bank`
--

CREATE TABLE `pv_bank` (
  `id` bigint(20) NOT NULL,
  `start_date` date DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `progress` double DEFAULT NULL,
  `personnel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cause` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `expected_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `pv_bank`
--

INSERT INTO `pv_bank` (`id`, `start_date`, `completion_date`, `progress`, `personnel`, `cause`, `created_at`, `updated_at`, `expected_id`) VALUES
(7, '2023-12-24', '2023-12-30', 0.2, NULL, NULL, '2023-11-30 10:00:33', '2023-12-19 10:51:23', 1),
(10, '2023-01-01', '2023-01-07', 0.2, NULL, NULL, '2023-11-30 10:00:33', '2023-12-19 10:51:15', 1),
(11, '2023-04-02', '2023-04-08', 0.2, NULL, NULL, '2023-11-30 10:00:33', '2023-12-19 10:51:20', 1),
(12, '2022-12-25', '2022-12-31', 0.2, NULL, NULL, '2023-11-30 10:00:33', '2023-12-19 10:51:10', 1),
(13, '2023-12-24', '2023-12-30', 0.2, NULL, NULL, '2023-11-30 10:00:33', '2023-12-19 10:51:23', 13);

-- --------------------------------------------------------

--
-- 資料表結構 `pv_detaileditem_weight`
--

CREATE TABLE `pv_detaileditem_weight` (
  `id` bigint(20) NOT NULL,
  `detailed_name` varchar(255) NOT NULL,
  `detailed_weight` double DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `subitem_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `pv_detaileditem_weight`
--

INSERT INTO `pv_detaileditem_weight` (`id`, `detailed_name`, `detailed_weight`, `created_at`, `updated_at`, `subitem_id`) VALUES
(1, '測量放樣+基樁加工+整地', 0.2, '2023-11-28 01:34:06', '2023-11-28 01:34:06', 1),
(2, '植樁工程+基樁進場', 0.7, '2023-11-28 01:34:30', '2023-11-28 01:34:30', 1),
(3, '路口監視設備安裝', 0.1, '2023-11-28 01:34:45', '2023-11-28 01:34:45', 1),
(4, '結構部件組裝架設工程', 0.7, '2023-11-28 01:37:46', '2023-11-28 01:37:46', 2),
(5, '水槽安裝', 0.15, '2023-11-28 01:38:01', '2023-11-28 01:38:01', 2),
(6, '立柱水泥灌漿作業', 0.15, '2023-11-28 01:38:11', '2023-11-28 01:38:11', 2),
(7, '模組鋪設', 0.5, '2023-11-28 01:38:36', '2023-11-28 01:38:36', 3),
(8, '模組DC線、接地線串接', 0.25, '2023-11-28 01:39:01', '2023-11-28 01:39:01', 3),
(9, '線槽施作及DC線纜配設', 0.25, '2023-11-28 01:39:12', '2023-11-28 01:39:12', 3),
(10, 'INV+E-HOUSE 植樁工程+基樁進場', 0.2, '2023-11-28 01:39:44', '2023-11-28 01:39:44', 4),
(11, 'INV+E-HOUSE 安裝', 0.4, '2023-11-28 01:40:01', '2023-11-28 01:40:01', 4),
(12, 'AC線路及線槽配設', 0.4, '2023-11-28 01:40:16', '2023-11-28 01:40:16', 4),
(13, 'INV網路監控', 0.3, '2023-11-28 01:40:37', '2023-11-28 01:40:37', 5),
(14, '其他工程(永久圍籬、屋頂爬梯、維修步道、安全母索、E-HOUSE平台及護欄與階梯、避雷針、水槽配管)', 0.6, '2023-11-28 01:41:04', '2023-11-28 01:41:04', 5),
(15, '缺失改善部分', 0.1, '2023-11-28 01:41:27', '2023-11-28 01:41:27', 5);

-- --------------------------------------------------------

--
-- 資料表結構 `pv_expected`
--

CREATE TABLE `pv_expected` (
  `id` bigint(20) NOT NULL,
  `start_date` date DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `progress` double DEFAULT NULL,
  `personnel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cause` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `expected_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `pv_expected`
--

INSERT INTO `pv_expected` (`id`, `start_date`, `completion_date`, `progress`, `personnel`, `cause`, `created_at`, `updated_at`, `expected_id`) VALUES
(3, '2023-12-24', '2023-12-30', 0.07, NULL, NULL, '2023-11-30 13:20:41', '2023-12-01 09:20:24', 1),
(5, '2023-01-01', '2023-01-07', 0.07, NULL, NULL, '2023-11-30 13:20:41', '2023-12-01 09:20:24', 1),
(6, '2023-04-02', '2023-04-08', 0.07, NULL, NULL, '2023-11-30 13:20:41', '2023-12-01 09:20:24', 1),
(7, '2022-12-25', '2022-12-31', 0.07, NULL, NULL, '2023-11-30 13:20:41', '2023-12-01 09:20:24', 1),
(8, '2023-12-31', '2024-01-06', 0.08, NULL, NULL, '2023-11-30 13:20:41', '2023-12-19 10:33:46', 1),
(9, '2023-12-24', '2023-12-30', 0.07, NULL, NULL, '2023-11-30 13:20:41', '2023-12-01 09:20:24', 13);

-- --------------------------------------------------------

--
-- 資料表結構 `pv_expected_progress`
--

CREATE TABLE `pv_expected_progress` (
  `id` bigint(20) NOT NULL,
  `estimated_start_date` date DEFAULT NULL,
  `estimated_completion_date` date DEFAULT NULL,
  `actual_start_date` date DEFAULT NULL,
  `actual_completion_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `detailed_id` bigint(20) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `subitem_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `pv_expected_progress`
--

INSERT INTO `pv_expected_progress` (`id`, `estimated_start_date`, `estimated_completion_date`, `actual_start_date`, `actual_completion_date`, `created_at`, `updated_at`, `detailed_id`, `project_id`, `subitem_id`) VALUES
(1, NULL, NULL, NULL, NULL, '2023-11-30 09:59:16', '2023-11-30 09:59:16', 1, 1, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `pv_progress`
--

CREATE TABLE `pv_progress` (
  `id` bigint(20) NOT NULL,
  `start_date` date DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `progress` double DEFAULT NULL,
  `personnel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cause` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `expected_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `pv_progress`
--

INSERT INTO `pv_progress` (`id`, `start_date`, `completion_date`, `progress`, `personnel`, `cause`, `created_at`, `updated_at`, `expected_id`) VALUES
(7, '2023-12-24', '2023-12-30', 0.15, NULL, NULL, '2023-11-30 10:00:33', '2023-11-30 10:00:33', 1),
(11, '2023-01-01', '2023-01-07', 0.15, NULL, NULL, '2023-11-30 10:00:33', '2023-11-30 10:00:33', 1),
(12, '2023-04-02', '2023-04-08', 0.15, NULL, NULL, '2023-11-30 10:00:33', '2023-11-30 10:00:33', 1),
(13, '2022-12-25', '2022-12-31', 0.15, NULL, NULL, '2023-11-30 10:00:33', '2023-11-30 10:00:33', 1),
(14, '2023-12-24', '2023-12-30', 0.15, NULL, NULL, '2023-11-30 10:00:33', '2023-11-30 10:00:33', 13);

-- --------------------------------------------------------

--
-- 資料表結構 `pv_project`
--

CREATE TABLE `pv_project` (
  `id` bigint(20) NOT NULL,
  `project_code` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) NOT NULL,
  `bank_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `case_id` int(11) NOT NULL,
  `project_personnel` varchar(255) DEFAULT NULL,
  `project_status` int(11) NOT NULL,
  `estimated_start_date` date DEFAULT NULL,
  `estimated_completion_date` date DEFAULT NULL,
  `actual_start_date` date DEFAULT NULL,
  `actual_completion_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tasks_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `pv_project`
--

INSERT INTO `pv_project` (`id`, `project_code`, `project_name`, `bank_code`, `case_id`, `project_personnel`, `project_status`, `estimated_start_date`, `estimated_completion_date`, `actual_start_date`, `actual_completion_date`, `created_at`, `updated_at`, `tasks_id`) VALUES
(1, NULL, '升三-A02區-A棟', NULL, 1, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 01:59:56', '2023-11-28 01:59:56', 1),
(2, NULL, '升三-A02區-B棟', NULL, 2, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 02:00:22', '2023-11-28 02:00:22', 1),
(3, NULL, '升三-A03區', NULL, 3, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 02:00:38', '2023-11-28 02:00:38', 1),
(4, NULL, '升三-B01區', NULL, 4, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 02:00:52', '2023-11-28 02:00:52', 1),
(5, NULL, '升三-E01區', NULL, 5, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 02:01:09', '2023-11-28 02:01:09', 1),
(6, NULL, '升三-F01區', NULL, 6, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 02:01:28', '2023-11-28 02:01:28', 1),
(7, NULL, '升三-F02區', NULL, 7, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 02:01:46', '2023-11-28 02:01:46', 1),
(8, NULL, '升三-I01區', NULL, 8, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 02:02:04', '2023-11-28 02:02:04', 1),
(9, NULL, '升三-I02區', NULL, 9, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 02:02:24', '2023-11-28 02:02:24', 1),
(10, NULL, '升四-K01區', NULL, 10, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 02:02:42', '2023-11-28 02:02:42', 1),
(11, NULL, '升四-K02區', NULL, 11, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 02:02:55', '2023-11-28 02:02:55', 1),
(12, NULL, '升四-D03區', NULL, 12, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 02:03:25', '2023-11-28 02:03:25', 1),
(13, NULL, '升三-D01區', NULL, 13, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 02:03:45', '2023-11-28 02:03:45', 1),
(14, NULL, '升四-D04區', NULL, 14, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 02:03:59', '2023-11-28 02:03:59', 1),
(15, NULL, '升四-G01區', NULL, 15, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 02:04:19', '2023-11-28 02:04:19', 1),
(16, NULL, '升四-G02區', NULL, 16, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 02:04:37', '2023-11-28 02:04:37', 1),
(17, NULL, '升三-H01區', NULL, 17, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 02:04:56', '2023-11-28 02:04:56', 1),
(18, NULL, '升三-H02區', NULL, 18, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 02:05:13', '2023-11-28 02:05:13', 1),
(19, NULL, '升四-H03區', NULL, 19, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 02:05:35', '2023-11-28 02:05:35', 1),
(20, NULL, '升四-H04區', NULL, 20, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 02:05:56', '2023-11-28 02:05:56', 1),
(21, NULL, '升四-H05區', NULL, 21, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 02:06:12', '2023-11-28 02:06:12', 1),
(22, NULL, '升四-H06區', NULL, 22, NULL, 0, '2024-01-01', '2024-09-30', NULL, NULL, '2023-11-28 02:06:30', '2023-11-28 02:06:30', 1),
(23, NULL, '升三-B02區', NULL, 23, NULL, 0, '2024-03-01', '2024-12-31', NULL, NULL, '2023-11-28 02:07:12', '2023-11-28 02:07:12', 1),
(24, NULL, '升三-C01區', NULL, 24, NULL, 0, '2024-03-01', '2024-12-31', NULL, NULL, '2023-11-28 02:07:30', '2023-11-28 02:07:30', 1),
(25, NULL, '升三-C02區', NULL, 25, NULL, 0, '2024-03-01', '2024-12-31', NULL, NULL, '2023-11-28 02:14:56', '2023-11-28 02:14:56', 1),
(26, NULL, '升三-C03區', NULL, 26, NULL, 0, '2024-03-01', '2024-12-31', NULL, NULL, '2023-11-28 02:16:41', '2023-11-28 02:16:41', 1),
(27, NULL, '升三-C07區', NULL, 27, NULL, 0, '2024-03-01', '2024-12-31', NULL, NULL, '2023-11-28 02:16:56', '2023-11-28 02:16:56', 1),
(28, NULL, '升三-C08區', NULL, 28, NULL, 0, '2024-03-01', '2024-12-31', NULL, NULL, '2023-11-28 02:17:11', '2023-11-28 02:17:11', 1),
(29, NULL, '升三-C09區', NULL, 29, NULL, 0, '2024-03-01', '2024-12-31', NULL, NULL, '2023-11-28 02:17:26', '2023-11-28 02:17:26', 1),
(30, NULL, '升三-E02區', NULL, 30, NULL, 0, '2024-03-01', '2024-12-31', NULL, NULL, '2023-11-28 02:32:08', '2023-11-28 02:32:08', 1),
(31, NULL, '升三-E03區', NULL, 31, NULL, 0, '2024-03-01', '2024-12-31', NULL, NULL, '2023-11-28 02:33:47', '2023-11-28 02:33:47', 1),
(32, NULL, '升三-E04區-A棟', NULL, 32, NULL, 0, '2024-03-01', '2024-12-31', NULL, NULL, '2023-11-28 02:34:00', '2023-11-28 02:34:00', 1),
(33, NULL, '升三-E04區-B棟', NULL, 33, NULL, 0, '2024-03-01', '2024-12-31', NULL, NULL, '2023-11-28 02:34:16', '2023-11-28 02:34:16', 1),
(34, NULL, '升四-E05區-A棟', NULL, 34, NULL, 0, '2024-03-01', '2024-12-31', NULL, NULL, '2023-11-28 02:34:31', '2023-11-28 02:34:31', 1),
(35, NULL, '升四-E05區-B棟', NULL, 35, NULL, 0, '2024-03-01', '2024-12-31', NULL, NULL, '2023-11-28 02:34:47', '2023-11-28 02:34:47', 1),
(36, NULL, '升四-E06區', NULL, 36, NULL, 0, '2024-03-01', '2024-12-31', NULL, NULL, '2023-11-28 02:35:09', '2023-11-28 02:35:09', 1),
(37, NULL, '升三-F03區', NULL, 37, NULL, 0, '2024-03-01', '2024-12-31', NULL, NULL, '2023-11-28 02:35:30', '2023-11-28 02:35:30', 1),
(38, NULL, '升四-J01區', NULL, 38, NULL, 0, '2024-03-01', '2024-12-31', NULL, NULL, '2023-11-28 02:35:46', '2023-11-28 02:35:46', 1),
(39, NULL, '升三-A01區', NULL, 39, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:36:30', '2023-11-28 02:36:30', 1),
(40, NULL, '升四-A04區', NULL, 40, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:36:47', '2023-11-28 02:36:47', 1),
(41, NULL, '升四-D02區', NULL, 41, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:37:02', '2023-11-28 02:37:02', 1),
(42, NULL, '升四-G05區', NULL, 42, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:37:21', '2023-11-28 02:37:21', 1),
(43, NULL, '升四-G06區', NULL, 43, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:37:38', '2023-11-28 02:37:38', 1),
(44, NULL, '升四-G07區', NULL, 44, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:37:57', '2023-11-28 02:37:57', 1),
(45, NULL, '升四-H08區', NULL, 45, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:38:12', '2023-11-28 02:38:12', 1),
(46, NULL, '升四-H09區', NULL, 46, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:38:34', '2023-11-28 02:38:34', 1),
(47, NULL, '升四-H10區-A棟', NULL, 47, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:38:49', '2023-11-28 02:38:49', 1),
(48, NULL, '升四-H10區-B棟', NULL, 48, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:39:08', '2023-11-28 02:39:08', 1),
(49, NULL, '升四-G03區', NULL, 49, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:39:52', '2023-11-28 02:39:52', 1),
(50, NULL, '升四-G04區', NULL, 50, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:40:11', '2023-11-28 02:40:11', 1),
(51, NULL, '升四-H07區', NULL, 51, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:40:30', '2023-11-28 02:40:30', 1),
(52, NULL, '升四-L01區', NULL, 52, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:40:49', '2023-11-28 02:40:49', 1),
(53, NULL, '升四-L02區', NULL, 53, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:41:06', '2023-11-28 02:41:06', 1),
(54, NULL, '升四-L03區', NULL, 54, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:41:39', '2023-11-28 02:41:39', 1),
(55, NULL, '升三-C04區-A棟', NULL, 55, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:45:48', '2023-11-28 02:45:48', 1),
(56, NULL, '升三-C04區-B棟', NULL, 56, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:46:03', '2023-11-28 02:46:03', 1),
(57, NULL, '升三-C05區-A棟', NULL, 57, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:46:18', '2023-11-28 02:46:18', 1),
(58, NULL, '升三-C05區-B棟', NULL, 58, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:46:32', '2023-11-28 02:46:32', 1),
(59, NULL, '升三-C06區', NULL, 59, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:46:46', '2023-11-28 02:46:46', 1),
(60, NULL, '升四-C15區', NULL, 60, NULL, 0, '2024-06-01', '2025-03-31', NULL, NULL, '2023-11-28 02:47:03', '2023-11-28 02:47:03', 1),
(61, NULL, '升四-C10區', NULL, 61, NULL, 0, '2024-09-01', '2025-06-30', NULL, NULL, '2023-11-28 02:47:41', '2023-11-28 02:47:41', 1),
(62, NULL, '升四-C11區', NULL, 62, NULL, 0, '2024-09-01', '2025-06-30', NULL, NULL, '2023-11-28 02:47:58', '2023-11-28 02:47:58', 1),
(63, NULL, '升四-C12區', NULL, 63, NULL, 0, '2024-09-01', '2025-06-30', NULL, NULL, '2023-11-28 02:48:13', '2023-11-28 02:48:13', 1),
(64, NULL, '升四-C13區', NULL, 64, NULL, 0, '2024-09-01', '2025-06-30', NULL, NULL, '2023-11-28 02:48:25', '2023-11-28 02:48:25', 1),
(65, NULL, '升四-C14區', NULL, 65, NULL, 0, '2024-09-01', '2025-06-30', NULL, NULL, '2023-11-28 02:48:38', '2023-11-28 02:48:38', 1),
(66, NULL, '升四-F04區', NULL, 66, NULL, 0, '2024-09-01', '2025-06-30', NULL, NULL, '2023-11-28 02:48:56', '2023-11-28 02:48:56', 1),
(67, NULL, '升四-F05區', NULL, 67, NULL, 0, '2024-09-01', '2025-06-30', NULL, NULL, '2023-11-28 02:49:12', '2023-11-28 02:49:12', 1),
(68, NULL, '升四-F06區', NULL, 68, NULL, 0, '2024-09-01', '2025-06-30', NULL, NULL, '2023-11-28 02:50:32', '2023-11-28 02:50:32', 1),
(69, NULL, '升四-F07區-A棟', NULL, 69, NULL, 0, '2024-09-01', '2025-06-30', NULL, NULL, '2023-11-28 02:50:50', '2023-11-28 02:50:50', 1),
(70, NULL, '升四-F07區-B棟', NULL, 70, NULL, 0, '2024-09-01', '2025-06-30', NULL, NULL, '2023-11-28 02:51:05', '2023-11-28 02:51:05', 1),
(71, NULL, '升四-F07區-C棟', NULL, 71, NULL, 0, '2024-09-01', '2025-06-30', NULL, NULL, '2023-11-28 02:51:20', '2023-11-28 02:51:20', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `pv_subitem_weight`
--

CREATE TABLE `pv_subitem_weight` (
  `id` bigint(20) NOT NULL,
  `subitem_name` varchar(255) NOT NULL,
  `subitem_weight` double DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tasks_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `pv_subitem_weight`
--

INSERT INTO `pv_subitem_weight` (`id`, `subitem_name`, `subitem_weight`, `created_at`, `updated_at`, `tasks_id`) VALUES
(1, '土建工程', 0.15, '2023-11-28 01:22:48', '2023-11-28 01:22:48', 1),
(2, '結構工程', 0.3, '2023-11-28 01:23:08', '2023-11-28 01:23:08', 1),
(3, '模組鋪設工程', 0.4, '2023-11-28 01:23:29', '2023-11-28 01:23:29', 1),
(4, '電氣室與配線工程', 0.1, '2023-11-28 01:23:54', '2023-11-28 01:23:54', 1),
(5, '監控及其他工程', 0.05, '2023-11-28 01:24:09', '2023-11-28 01:24:09', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `pv_tasks`
--

CREATE TABLE `pv_tasks` (
  `id` int(11) NOT NULL,
  `pv_task_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `pv_tasks`
--

INSERT INTO `pv_tasks` (`id`, `pv_task_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-11-24 18:12:05', '2023-11-24 18:12:05');

-- --------------------------------------------------------

--
-- 資料表結構 `pv_weekly_progress_summary`
--

CREATE TABLE `pv_weekly_progress_summary` (
  `id` bigint(20) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `weighted_progress` float NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `expected_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `pv_weekly_progress_summary`
--

INSERT INTO `pv_weekly_progress_summary` (`id`, `start_date`, `end_date`, `weighted_progress`, `created_at`, `updated_at`, `expected_id`) VALUES
(1, '2023-12-24', '2023-12-30', 0.5, '2023-12-18 15:01:27', '2023-12-18 15:01:27', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `systemlog`
--

CREATE TABLE `systemlog` (
  `id` int(11) NOT NULL,
  `create_timestamp` datetime DEFAULT current_timestamp(),
  `error_type` varchar(255) DEFAULT NULL,
  `error_message` text DEFAULT NULL,
  `additionalInfo` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `systemlog`
--

INSERT INTO `systemlog` (`id`, `create_timestamp`, `error_type`, `error_message`, `additionalInfo`, `user_id`) VALUES
(2, '2023-12-15 06:15:11', 'str', '404 Not Found', ' /api/plans/5/', NULL),
(3, '2023-12-15 07:12:50', 'str', '404 Not Found', ' /api/season-week-table-data/1/', NULL),
(4, '2023-12-15 07:12:50', 'str', '404 Not Found', ' /api/season-week-table-data/1/', NULL),
(5, '2023-12-15 07:14:57', 'str', '404 Not Found', ' /api/season-week-table-data/1/', NULL),
(6, '2023-12-15 07:14:57', 'str', '404 Not Found', ' /api/season-week-table-data/1/', NULL),
(7, '2023-12-15 07:19:03', 'str', '404 Not Found', ' /api/season-week-table-data/1/', NULL),
(8, '2023-12-15 07:19:03', 'str', '404 Not Found', ' /api/season-week-table-data/1/', NULL),
(9, '2023-12-15 07:28:26', 'str', '404 Not Found', ' /api/season-week-table-data/1/', NULL),
(10, '2023-12-15 07:28:26', 'str', '404 Not Found', ' /api/season-week-table-data/1/', NULL),
(11, '2023-12-15 07:31:26', 'str', '404 Not Found', ' /api/season-week-table-data/1/', NULL),
(12, '2023-12-15 07:31:26', 'str', '404 Not Found', ' /api/season-week-table-data/1/', NULL),
(13, '2023-12-15 09:01:22', 'str', '404 Not Found', ' /api/season-week-table-data/1/', NULL),
(14, '2023-12-15 09:01:22', 'str', '404 Not Found', ' /api/season-week-table-data/1/', NULL),
(15, '2023-12-15 09:02:10', 'str', '404 Not Found', ' /api/season-week-table-data/1/', NULL),
(16, '2023-12-15 09:02:10', 'str', '404 Not Found', ' /api/season-week-table-data/1/', NULL);

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
-- 資料表索引 `breeding_detaileditem_weight`
--
ALTER TABLE `breeding_detaileditem_weight`
  ADD PRIMARY KEY (`id`),
  ADD KEY `breeding_detaileditem_weight_subitem_id_7f7b6e75_fk` (`subitem_id`);

--
-- 資料表索引 `breeding_expected_progress`
--
ALTER TABLE `breeding_expected_progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `breeding_expected_progress_detailed_id_4f2d5c7c_fk` (`detailed_id`),
  ADD KEY `breeding_expected_progress_project_id_75444b3e_fk` (`project_id`),
  ADD KEY `breeding_expected_progress_subitem_id_3c139e6e_fk` (`subitem_id`);

--
-- 資料表索引 `breeding_progress`
--
ALTER TABLE `breeding_progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `breeding_progress_expected_id_0e98723b_fk` (`expected_id`);

--
-- 資料表索引 `breeding_project`
--
ALTER TABLE `breeding_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `case_id` (`case_id`),
  ADD KEY `tasks_id` (`tasks_id`);

--
-- 資料表索引 `breeding_subitem_weight`
--
ALTER TABLE `breeding_subitem_weight`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_id` (`tasks_id`);

--
-- 資料表索引 `breeding_tasks`
--
ALTER TABLE `breeding_tasks`
  ADD PRIMARY KEY (`breeding_task_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- 資料表索引 `casbin_rule`
--
ALTER TABLE `casbin_rule`
  ADD PRIMARY KEY (`id`);

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
-- 資料表索引 `historical_pv_expected`
--
ALTER TABLE `historical_pv_expected`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `historical_pv_expected_season`
--
ALTER TABLE `historical_pv_expected_season`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `historical_pv_records`
--
ALTER TABLE `historical_pv_records`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `historical_pv_records_season`
--
ALTER TABLE `historical_pv_records_season`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `power`
--
ALTER TABLE `power`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `loop_id` (`loop_id`),
  ADD KEY `case_id` (`case_id`),
  ADD KEY `task_id` (`task_id`);

--
-- 資料表索引 `power_proportion`
--
ALTER TABLE `power_proportion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `projcet_id` (`project_id`);

--
-- 資料表索引 `power_task`
--
ALTER TABLE `power_task`
  ADD PRIMARY KEY (`project_task_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- 資料表索引 `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_id` (`plan_id`),
  ADD KEY `task_id` (`task_id`);

--
-- 資料表索引 `project_case`
--
ALTER TABLE `project_case`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loop_id` (`loop_id`);

--
-- 資料表索引 `project_loop`
--
ALTER TABLE `project_loop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- 資料表索引 `project_proportion`
--
ALTER TABLE `project_proportion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `projcet_id` (`project_id`);

--
-- 資料表索引 `project_task`
--
ALTER TABLE `project_task`
  ADD PRIMARY KEY (`project_task_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- 資料表索引 `pv_bank`
--
ALTER TABLE `pv_bank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expected_id` (`expected_id`);

--
-- 資料表索引 `pv_detaileditem_weight`
--
ALTER TABLE `pv_detaileditem_weight`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subitem_id` (`subitem_id`);

--
-- 資料表索引 `pv_expected`
--
ALTER TABLE `pv_expected`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expected_id` (`expected_id`);

--
-- 資料表索引 `pv_expected_progress`
--
ALTER TABLE `pv_expected_progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pv_expected_progress_detailed_id_0d5b45eb_fk` (`detailed_id`),
  ADD KEY `pv_expected_progress_project_id_7b795b87_fk` (`project_id`),
  ADD KEY `pv_expected_progress_subitem_id_c56dc541_fk` (`subitem_id`);

--
-- 資料表索引 `pv_progress`
--
ALTER TABLE `pv_progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pv_progress_expected_id_1d160700_fk` (`expected_id`);

--
-- 資料表索引 `pv_project`
--
ALTER TABLE `pv_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `case_id` (`case_id`),
  ADD KEY `tasks_id` (`tasks_id`);

--
-- 資料表索引 `pv_subitem_weight`
--
ALTER TABLE `pv_subitem_weight`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_id` (`tasks_id`);

--
-- 資料表索引 `pv_tasks`
--
ALTER TABLE `pv_tasks`
  ADD PRIMARY KEY (`pv_task_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- 資料表索引 `pv_weekly_progress_summary`
--
ALTER TABLE `pv_weekly_progress_summary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expected_id` (`expected_id`);

--
-- 資料表索引 `systemlog`
--
ALTER TABLE `systemlog`
  ADD PRIMARY KEY (`id`);

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
-- 使用資料表自動遞增(AUTO_INCREMENT) `breeding_detaileditem_weight`
--
ALTER TABLE `breeding_detaileditem_weight`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `breeding_expected_progress`
--
ALTER TABLE `breeding_expected_progress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `breeding_progress`
--
ALTER TABLE `breeding_progress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `breeding_project`
--
ALTER TABLE `breeding_project`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `breeding_subitem_weight`
--
ALTER TABLE `breeding_subitem_weight`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `breeding_tasks`
--
ALTER TABLE `breeding_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `casbin_rule`
--
ALTER TABLE `casbin_rule`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- 使用資料表自動遞增(AUTO_INCREMENT) `historical_pv_expected`
--
ALTER TABLE `historical_pv_expected`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `historical_pv_expected_season`
--
ALTER TABLE `historical_pv_expected_season`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `historical_pv_records`
--
ALTER TABLE `historical_pv_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `historical_pv_records_season`
--
ALTER TABLE `historical_pv_records_season`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `power`
--
ALTER TABLE `power`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `power_proportion`
--
ALTER TABLE `power_proportion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `power_task`
--
ALTER TABLE `power_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_case`
--
ALTER TABLE `project_case`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_loop`
--
ALTER TABLE `project_loop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_proportion`
--
ALTER TABLE `project_proportion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_task`
--
ALTER TABLE `project_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_bank`
--
ALTER TABLE `pv_bank`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_detaileditem_weight`
--
ALTER TABLE `pv_detaileditem_weight`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_expected`
--
ALTER TABLE `pv_expected`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_expected_progress`
--
ALTER TABLE `pv_expected_progress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_progress`
--
ALTER TABLE `pv_progress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_project`
--
ALTER TABLE `pv_project`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_subitem_weight`
--
ALTER TABLE `pv_subitem_weight`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_tasks`
--
ALTER TABLE `pv_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_weekly_progress_summary`
--
ALTER TABLE `pv_weekly_progress_summary`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `systemlog`
--
ALTER TABLE `systemlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
-- 資料表的限制式 `breeding_detaileditem_weight`
--
ALTER TABLE `breeding_detaileditem_weight`
  ADD CONSTRAINT `breeding_detaileditem_weight_subitem_id_7f7b6e75_fk` FOREIGN KEY (`subitem_id`) REFERENCES `breeding_subitem_weight` (`id`);

--
-- 資料表的限制式 `breeding_expected_progress`
--
ALTER TABLE `breeding_expected_progress`
  ADD CONSTRAINT `breeding_expected_progress_detailed_id_4f2d5c7c_fk` FOREIGN KEY (`detailed_id`) REFERENCES `breeding_detaileditem_weight` (`id`),
  ADD CONSTRAINT `breeding_expected_progress_project_id_75444b3e_fk` FOREIGN KEY (`project_id`) REFERENCES `breeding_project` (`id`),
  ADD CONSTRAINT `breeding_expected_progress_subitem_id_3c139e6e_fk` FOREIGN KEY (`subitem_id`) REFERENCES `breeding_subitem_weight` (`id`);

--
-- 資料表的限制式 `breeding_progress`
--
ALTER TABLE `breeding_progress`
  ADD CONSTRAINT `breeding_progress_expected_id_0e98723b_fk` FOREIGN KEY (`expected_id`) REFERENCES `breeding_project` (`id`);

--
-- 資料表的限制式 `breeding_project`
--
ALTER TABLE `breeding_project`
  ADD CONSTRAINT `breeding_project_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `project_case` (`id`),
  ADD CONSTRAINT `breeding_project_ibfk_2` FOREIGN KEY (`tasks_id`) REFERENCES `breeding_tasks` (`breeding_task_id`);

--
-- 資料表的限制式 `breeding_subitem_weight`
--
ALTER TABLE `breeding_subitem_weight`
  ADD CONSTRAINT `breeding_subitem_weight_ibfk_1` FOREIGN KEY (`tasks_id`) REFERENCES `breeding_tasks` (`breeding_task_id`);

--
-- 資料表的限制式 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `power`
--
ALTER TABLE `power`
  ADD CONSTRAINT `power_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  ADD CONSTRAINT `power_ibfk_3` FOREIGN KEY (`loop_id`) REFERENCES `project_loop` (`id`),
  ADD CONSTRAINT `power_ibfk_4` FOREIGN KEY (`case_id`) REFERENCES `project_case` (`id`),
  ADD CONSTRAINT `power_ibfk_5` FOREIGN KEY (`task_id`) REFERENCES `power_task` (`project_task_id`);

--
-- 資料表的限制式 `power_proportion`
--
ALTER TABLE `power_proportion`
  ADD CONSTRAINT `power_proportion_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `power_task` (`project_task_id`),
  ADD CONSTRAINT `power_proportion_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `power` (`id`);

--
-- 資料表的限制式 `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plan` (`id`),
  ADD CONSTRAINT `project_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `project_task` (`project_task_id`);

--
-- 資料表的限制式 `project_case`
--
ALTER TABLE `project_case`
  ADD CONSTRAINT `project_case_ibfk_1` FOREIGN KEY (`loop_id`) REFERENCES `project_loop` (`id`);

--
-- 資料表的限制式 `project_loop`
--
ALTER TABLE `project_loop`
  ADD CONSTRAINT `project_loop_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`);

--
-- 資料表的限制式 `project_proportion`
--
ALTER TABLE `project_proportion`
  ADD CONSTRAINT `project_proportion_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `project_task` (`project_task_id`),
  ADD CONSTRAINT `project_proportion_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`);

--
-- 資料表的限制式 `pv_bank`
--
ALTER TABLE `pv_bank`
  ADD CONSTRAINT `pv_bank_ibfk_1` FOREIGN KEY (`expected_id`) REFERENCES `pv_project` (`id`);

--
-- 資料表的限制式 `pv_detaileditem_weight`
--
ALTER TABLE `pv_detaileditem_weight`
  ADD CONSTRAINT `pv_detaileditem_weight_ibfk_1` FOREIGN KEY (`subitem_id`) REFERENCES `pv_subitem_weight` (`id`);

--
-- 資料表的限制式 `pv_expected`
--
ALTER TABLE `pv_expected`
  ADD CONSTRAINT `pv_expected_ibfk_1` FOREIGN KEY (`expected_id`) REFERENCES `pv_project` (`id`);

--
-- 資料表的限制式 `pv_expected_progress`
--
ALTER TABLE `pv_expected_progress`
  ADD CONSTRAINT `pv_expected_progress_detailed_id_0d5b45eb_fk` FOREIGN KEY (`detailed_id`) REFERENCES `pv_detaileditem_weight` (`id`),
  ADD CONSTRAINT `pv_expected_progress_project_id_7b795b87_fk` FOREIGN KEY (`project_id`) REFERENCES `pv_project` (`id`),
  ADD CONSTRAINT `pv_expected_progress_subitem_id_c56dc541_fk` FOREIGN KEY (`subitem_id`) REFERENCES `pv_subitem_weight` (`id`);

--
-- 資料表的限制式 `pv_progress`
--
ALTER TABLE `pv_progress`
  ADD CONSTRAINT `pv_progress_expected_id_1d160700_fk` FOREIGN KEY (`expected_id`) REFERENCES `pv_project` (`id`);

--
-- 資料表的限制式 `pv_project`
--
ALTER TABLE `pv_project`
  ADD CONSTRAINT `pv_project_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `project_case` (`id`),
  ADD CONSTRAINT `pv_project_ibfk_2` FOREIGN KEY (`tasks_id`) REFERENCES `pv_tasks` (`pv_task_id`);

--
-- 資料表的限制式 `pv_subitem_weight`
--
ALTER TABLE `pv_subitem_weight`
  ADD CONSTRAINT `pv_subitem_weight_ibfk_1` FOREIGN KEY (`tasks_id`) REFERENCES `pv_tasks` (`pv_task_id`);

--
-- 資料表的限制式 `pv_weekly_progress_summary`
--
ALTER TABLE `pv_weekly_progress_summary`
  ADD CONSTRAINT `pv_weekly_progress_summary_ibfk_1` FOREIGN KEY (`expected_id`) REFERENCES `pv_expected_progress` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
