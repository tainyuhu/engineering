-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-03-26 03:39:27
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

--
-- 傾印資料表的資料 `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(7, 'admin'),
(8, 'manager'),
(6, 'power_user'),
(9, 'test'),
(5, 'user');

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
(180, 'Can view pv expected', 45, 'view_pvexpected'),
(181, 'Can add energy production ratio', 46, 'add_energyproductionratio'),
(182, 'Can change energy production ratio', 46, 'change_energyproductionratio'),
(183, 'Can delete energy production ratio', 46, 'delete_energyproductionratio'),
(184, 'Can view energy production ratio', 46, 'view_energyproductionratio'),
(185, 'Can add energy production series', 47, 'add_energyproductionseries'),
(186, 'Can change energy production series', 47, 'change_energyproductionseries'),
(187, 'Can delete energy production series', 47, 'delete_energyproductionseries'),
(188, 'Can view energy production series', 47, 'view_energyproductionseries'),
(189, 'Can add file progress', 48, 'add_fileprogress'),
(190, 'Can change file progress', 48, 'change_fileprogress'),
(191, 'Can delete file progress', 48, 'delete_fileprogress'),
(192, 'Can view file progress', 48, 'view_fileprogress'),
(193, 'Can add master plan', 49, 'add_masterplan'),
(194, 'Can change master plan', 49, 'change_masterplan'),
(195, 'Can delete master plan', 49, 'delete_masterplan'),
(196, 'Can view master plan', 49, 'view_masterplan'),
(197, 'Can add master plan progress', 50, 'add_masterplanprogress'),
(198, 'Can change master plan progress', 50, 'change_masterplanprogress'),
(199, 'Can delete master plan progress', 50, 'delete_masterplanprogress'),
(200, 'Can view master plan progress', 50, 'view_masterplanprogress'),
(201, 'Can add master plans history', 51, 'add_masterplanshistory'),
(202, 'Can change master plans history', 51, 'change_masterplanshistory'),
(203, 'Can delete master plans history', 51, 'delete_masterplanshistory'),
(204, 'Can view master plans history', 51, 'view_masterplanshistory'),
(205, 'Can add meeting record', 52, 'add_meetingrecord'),
(206, 'Can change meeting record', 52, 'change_meetingrecord'),
(207, 'Can delete meeting record', 52, 'delete_meetingrecord'),
(208, 'Can view meeting record', 52, 'view_meetingrecord'),
(209, 'Can add plan', 53, 'add_plan'),
(210, 'Can change plan', 53, 'change_plan'),
(211, 'Can delete plan', 53, 'delete_plan'),
(212, 'Can view plan', 53, 'view_plan'),
(213, 'Can add plan association', 54, 'add_planassociation'),
(214, 'Can change plan association', 54, 'change_planassociation'),
(215, 'Can delete plan association', 54, 'delete_planassociation'),
(216, 'Can view plan association', 54, 'view_planassociation'),
(217, 'Can add plans history', 55, 'add_planshistory'),
(218, 'Can change plans history', 55, 'change_planshistory'),
(219, 'Can delete plans history', 55, 'delete_planshistory'),
(220, 'Can view plans history', 55, 'view_planshistory'),
(221, 'Can add plans progress', 56, 'add_plansprogress'),
(222, 'Can change plans progress', 56, 'change_plansprogress'),
(223, 'Can delete plans progress', 56, 'delete_plansprogress'),
(224, 'Can view plans progress', 56, 'view_plansprogress'),
(225, 'Can add plan total energy production', 57, 'add_plantotalenergyproduction'),
(226, 'Can change plan total energy production', 57, 'change_plantotalenergyproduction'),
(227, 'Can delete plan total energy production', 57, 'delete_plantotalenergyproduction'),
(228, 'Can view plan total energy production', 57, 'view_plantotalenergyproduction'),
(229, 'Can add plan weight', 58, 'add_planweight'),
(230, 'Can change plan weight', 58, 'change_planweight'),
(231, 'Can delete plan weight', 58, 'delete_planweight'),
(232, 'Can view plan weight', 58, 'view_planweight'),
(233, 'Can add project case energy production', 59, 'add_projectcaseenergyproduction'),
(234, 'Can change project case energy production', 59, 'change_projectcaseenergyproduction'),
(235, 'Can delete project case energy production', 59, 'delete_projectcaseenergyproduction'),
(236, 'Can view project case energy production', 59, 'view_projectcaseenergyproduction'),
(237, 'Can add project loop energy production', 60, 'add_projectloopenergyproduction'),
(238, 'Can change project loop energy production', 60, 'change_projectloopenergyproduction'),
(239, 'Can delete project loop energy production', 60, 'delete_projectloopenergyproduction'),
(240, 'Can view project loop energy production', 60, 'view_projectloopenergyproduction'),
(241, 'Can add project value ratio', 61, 'add_projectvalueratio'),
(242, 'Can change project value ratio', 61, 'change_projectvalueratio'),
(243, 'Can delete project value ratio', 61, 'delete_projectvalueratio'),
(244, 'Can view project value ratio', 61, 'view_projectvalueratio'),
(245, 'Can add project value ratios history', 62, 'add_projectvalueratioshistory'),
(246, 'Can change project value ratios history', 62, 'change_projectvalueratioshistory'),
(247, 'Can delete project value ratios history', 62, 'delete_projectvalueratioshistory'),
(248, 'Can view project value ratios history', 62, 'view_projectvalueratioshistory'),
(249, 'Can add cases history', 63, 'add_caseshistory'),
(250, 'Can change cases history', 63, 'change_caseshistory'),
(251, 'Can delete cases history', 63, 'delete_caseshistory'),
(252, 'Can view cases history', 63, 'view_caseshistory'),
(253, 'Can add cases progress', 64, 'add_casesprogress'),
(254, 'Can change cases progress', 64, 'change_casesprogress'),
(255, 'Can delete cases progress', 64, 'delete_casesprogress'),
(256, 'Can view cases progress', 64, 'view_casesprogress'),
(257, 'Can add cases progress expected', 65, 'add_casesprogressexpected'),
(258, 'Can change cases progress expected', 65, 'change_casesprogressexpected'),
(259, 'Can delete cases progress expected', 65, 'delete_casesprogressexpected'),
(260, 'Can view cases progress expected', 65, 'view_casesprogressexpected'),
(261, 'Can add loops history', 66, 'add_loopshistory'),
(262, 'Can change loops history', 66, 'change_loopshistory'),
(263, 'Can delete loops history', 66, 'delete_loopshistory'),
(264, 'Can view loops history', 66, 'view_loopshistory'),
(265, 'Can add loops progress', 67, 'add_loopsprogress'),
(266, 'Can change loops progress', 67, 'change_loopsprogress'),
(267, 'Can delete loops progress', 67, 'delete_loopsprogress'),
(268, 'Can view loops progress', 67, 'view_loopsprogress'),
(269, 'Can add loops progress expected', 68, 'add_loopsprogressexpected'),
(270, 'Can change loops progress expected', 68, 'change_loopsprogressexpected'),
(271, 'Can delete loops progress expected', 68, 'delete_loopsprogressexpected'),
(272, 'Can view loops progress expected', 68, 'view_loopsprogressexpected'),
(273, 'Can add project', 69, 'add_project'),
(274, 'Can change project', 69, 'change_project'),
(275, 'Can delete project', 69, 'delete_project'),
(276, 'Can view project', 69, 'view_project'),
(277, 'Can add project case', 70, 'add_projectcase'),
(278, 'Can change project case', 70, 'change_projectcase'),
(279, 'Can delete project case', 70, 'delete_projectcase'),
(280, 'Can view project case', 70, 'view_projectcase'),
(281, 'Can add project loop', 71, 'add_projectloop'),
(282, 'Can change project loop', 71, 'change_projectloop'),
(283, 'Can delete project loop', 71, 'delete_projectloop'),
(284, 'Can view project loop', 71, 'view_projectloop'),
(285, 'Can add projects progress', 72, 'add_projectsprogress'),
(286, 'Can change projects progress', 72, 'change_projectsprogress'),
(287, 'Can delete projects progress', 72, 'delete_projectsprogress'),
(288, 'Can view projects progress', 72, 'view_projectsprogress'),
(289, 'Can add projects progress expected', 73, 'add_projectsprogressexpected'),
(290, 'Can change projects progress expected', 73, 'change_projectsprogressexpected'),
(291, 'Can delete projects progress expected', 73, 'delete_projectsprogressexpected'),
(292, 'Can view projects progress expected', 73, 'view_projectsprogressexpected'),
(293, 'Can add logistic parameters', 74, 'add_logisticparameters'),
(294, 'Can change logistic parameters', 74, 'change_logisticparameters'),
(295, 'Can delete logistic parameters', 74, 'delete_logisticparameters'),
(296, 'Can view logistic parameters', 74, 'view_logisticparameters'),
(297, 'Can add logistic parameters history', 75, 'add_logisticparametershistory'),
(298, 'Can change logistic parameters history', 75, 'change_logisticparametershistory'),
(299, 'Can delete logistic parameters history', 75, 'delete_logisticparametershistory'),
(300, 'Can view logistic parameters history', 75, 'view_logisticparametershistory'),
(301, 'Can add major item percentage', 76, 'add_majoritempercentage'),
(302, 'Can change major item percentage', 76, 'change_majoritempercentage'),
(303, 'Can delete major item percentage', 76, 'delete_majoritempercentage'),
(304, 'Can view major item percentage', 76, 'view_majoritempercentage'),
(305, 'Can add major item percentage history', 77, 'add_majoritempercentagehistory'),
(306, 'Can change major item percentage history', 77, 'change_majoritempercentagehistory'),
(307, 'Can delete major item percentage history', 77, 'delete_majoritempercentagehistory'),
(308, 'Can view major item percentage history', 77, 'view_majoritempercentagehistory'),
(309, 'Can add project pv', 78, 'add_projectpv'),
(310, 'Can change project pv', 78, 'change_projectpv'),
(311, 'Can delete project pv', 78, 'delete_projectpv'),
(312, 'Can view project pv', 78, 'view_projectpv'),
(313, 'Can add project pv expected progress', 79, 'add_projectpvexpectedprogress'),
(314, 'Can change project pv expected progress', 79, 'change_projectpvexpectedprogress'),
(315, 'Can delete project pv expected progress', 79, 'delete_projectpvexpectedprogress'),
(316, 'Can view project pv expected progress', 79, 'view_projectpvexpectedprogress'),
(317, 'Can add project pv history', 80, 'add_projectpvhistory'),
(318, 'Can change project pv history', 80, 'change_projectpvhistory'),
(319, 'Can delete project pv history', 80, 'delete_projectpvhistory'),
(320, 'Can view project pv history', 80, 'view_projectpvhistory'),
(321, 'Can add project pv progress', 81, 'add_projectpvprogress'),
(322, 'Can change project pv progress', 81, 'change_projectpvprogress'),
(323, 'Can delete project pv progress', 81, 'delete_projectpvprogress'),
(324, 'Can view project pv progress', 81, 'view_projectpvprogress'),
(325, 'Can add pv bank expected history', 82, 'add_pvbankexpectedhistory'),
(326, 'Can change pv bank expected history', 82, 'change_pvbankexpectedhistory'),
(327, 'Can delete pv bank expected history', 82, 'delete_pvbankexpectedhistory'),
(328, 'Can view pv bank expected history', 82, 'view_pvbankexpectedhistory'),
(329, 'Can add pv bank history', 83, 'add_pvbankhistory'),
(330, 'Can change pv bank history', 83, 'change_pvbankhistory'),
(331, 'Can delete pv bank history', 83, 'delete_pvbankhistory'),
(332, 'Can view pv bank history', 83, 'view_pvbankhistory'),
(333, 'Can add pv bank progress', 84, 'add_pvbankprogress'),
(334, 'Can change pv bank progress', 84, 'change_pvbankprogress'),
(335, 'Can delete pv bank progress', 84, 'delete_pvbankprogress'),
(336, 'Can view pv bank progress', 84, 'view_pvbankprogress'),
(337, 'Can add pv bank progress expected', 85, 'add_pvbankprogressexpected'),
(338, 'Can change pv bank progress expected', 85, 'change_pvbankprogressexpected'),
(339, 'Can delete pv bank progress expected', 85, 'delete_pvbankprogressexpected'),
(340, 'Can view pv bank progress expected', 85, 'view_pvbankprogressexpected'),
(341, 'Can add series', 86, 'add_series'),
(342, 'Can change series', 86, 'change_series'),
(343, 'Can delete series', 86, 'delete_series'),
(344, 'Can view series', 86, 'view_series'),
(345, 'Can add series history', 87, 'add_serieshistory'),
(346, 'Can change series history', 87, 'change_serieshistory'),
(347, 'Can delete series history', 87, 'delete_serieshistory'),
(348, 'Can view series history', 87, 'view_serieshistory'),
(349, 'Can add sub item percentage', 88, 'add_subitempercentage'),
(350, 'Can change sub item percentage', 88, 'change_subitempercentage'),
(351, 'Can delete sub item percentage', 88, 'delete_subitempercentage'),
(352, 'Can view sub item percentage', 88, 'view_subitempercentage'),
(353, 'Can add sub item percentage history', 89, 'add_subitempercentagehistory'),
(354, 'Can change sub item percentage history', 89, 'change_subitempercentagehistory'),
(355, 'Can delete sub item percentage history', 89, 'delete_subitempercentagehistory'),
(356, 'Can view sub item percentage history', 89, 'view_subitempercentagehistory'),
(357, 'Can add browse progress permission', 90, 'add_browseprogresspermission'),
(358, 'Can change browse progress permission', 90, 'change_browseprogresspermission'),
(359, 'Can delete browse progress permission', 90, 'delete_browseprogresspermission'),
(360, 'Can view browse progress permission', 90, 'view_browseprogresspermission'),
(361, 'Can view Browse Progress', 90, 'view_browse_progress'),
(362, 'Can add pv week', 91, 'add_pvweek'),
(363, 'Can change pv week', 91, 'change_pvweek'),
(364, 'Can delete pv week', 91, 'delete_pvweek'),
(365, 'Can view pv week', 91, 'view_pvweek'),
(366, 'Can add breeding bank expected history', 92, 'add_breedingbankexpectedhistory'),
(367, 'Can change breeding bank expected history', 92, 'change_breedingbankexpectedhistory'),
(368, 'Can delete breeding bank expected history', 92, 'delete_breedingbankexpectedhistory'),
(369, 'Can view breeding bank expected history', 92, 'view_breedingbankexpectedhistory'),
(370, 'Can add breeding bank history', 93, 'add_breedingbankhistory'),
(371, 'Can change breeding bank history', 93, 'change_breedingbankhistory'),
(372, 'Can delete breeding bank history', 93, 'delete_breedingbankhistory'),
(373, 'Can view breeding bank history', 93, 'view_breedingbankhistory'),
(374, 'Can add breeding bank progress', 94, 'add_breedingbankprogress'),
(375, 'Can change breeding bank progress', 94, 'change_breedingbankprogress'),
(376, 'Can delete breeding bank progress', 94, 'delete_breedingbankprogress'),
(377, 'Can view breeding bank progress', 94, 'view_breedingbankprogress'),
(378, 'Can add breeding bank progress expected', 95, 'add_breedingbankprogressexpected'),
(379, 'Can change breeding bank progress expected', 95, 'change_breedingbankprogressexpected'),
(380, 'Can delete breeding bank progress expected', 95, 'delete_breedingbankprogressexpected'),
(381, 'Can view breeding bank progress expected', 95, 'view_breedingbankprogressexpected'),
(382, 'Can add breeding week', 96, 'add_breedingweek'),
(383, 'Can change breeding week', 96, 'change_breedingweek'),
(384, 'Can delete breeding week', 96, 'delete_breedingweek'),
(385, 'Can view breeding week', 96, 'view_breedingweek'),
(386, 'Can add project breeding', 97, 'add_projectbreeding'),
(387, 'Can change project breeding', 97, 'change_projectbreeding'),
(388, 'Can delete project breeding', 97, 'delete_projectbreeding'),
(389, 'Can view project breeding', 97, 'view_projectbreeding'),
(390, 'Can add project breeding expected progress', 98, 'add_projectbreedingexpectedprogress'),
(391, 'Can change project breeding expected progress', 98, 'change_projectbreedingexpectedprogress'),
(392, 'Can delete project breeding expected progress', 98, 'delete_projectbreedingexpectedprogress'),
(393, 'Can view project breeding expected progress', 98, 'view_projectbreedingexpectedprogress'),
(394, 'Can add project breeding history', 99, 'add_projectbreedinghistory'),
(395, 'Can change project breeding history', 99, 'change_projectbreedinghistory'),
(396, 'Can delete project breeding history', 99, 'delete_projectbreedinghistory'),
(397, 'Can view project breeding history', 99, 'view_projectbreedinghistory'),
(398, 'Can add project breeding progress', 100, 'add_projectbreedingprogress'),
(399, 'Can change project breeding progress', 100, 'change_projectbreedingprogress'),
(400, 'Can delete project breeding progress', 100, 'delete_projectbreedingprogress'),
(401, 'Can view project breeding progress', 100, 'view_projectbreedingprogress');

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
(2, 'pbkdf2_sha256$600000$mo1G5CWcLiMLWQiLNBKojT$dBdPuAmR8Jl+cukcifZMhrFkI+G4T4aj0Mmgy6cHGQ0=', '2023-11-13 03:51:14.715685', 1, 'admin2', '', '', 'cathy5852077@gmail.com', 1, 1, '2023-11-13 03:50:50.815058'),
(3, 'pbkdf2_sha256$600000$mo1G5CWcLiMLWQiLNBKojT$dBdPuAmR8Jl+cukcifZMhrFkI+G4T4aj0Mmgy6cHGQ0=', '2023-11-13 03:51:14.715685', 1, 'admin', '測試', '中', 'cathy5852077@gmail.com', 0, 1, '2023-11-13 03:50:50.815058'),
(5, 'pbkdf2_sha256$600000$vDC4TxfSpEt2dxe2Pcq6p1$lLfgIlBHD5xEGaMENnLqIj6f2ATRPBir/M563EBDbCU=', NULL, 0, 'a', '林', '黛玉', '', 0, 1, '2024-03-12 06:26:38.586450'),
(6, 'pbkdf2_sha256$600000$myqFXrtlkZYFgSsG8o1B02$6utc5cPMPhn3PtO/amRdeXMs8jDDn4kFpzuoSIdTJLw=', NULL, 0, 'b', '賈', '豆花', '', 0, 1, '2024-03-12 06:26:39.275366');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(4, 3, 9),
(2, 5, 5),
(3, 6, 6);

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 6, 361);

-- --------------------------------------------------------

--
-- 資料表結構 `breedingbank_progress`
--

CREATE TABLE `breedingbank_progress` (
  `breeding_bank_id` int(11) NOT NULL,
  `breeding_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `breeding_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `breedingbank_progress_expected`
--

CREATE TABLE `breedingbank_progress_expected` (
  `breeding_bank_expected_id` int(11) NOT NULL,
  `breeding_id` int(11) DEFAULT NULL,
  `parameter_id` int(11) DEFAULT NULL,
  `is_parameter_based` tinyint(1) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `breeding_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `breeding_bank_expected_history`
--

CREATE TABLE `breeding_bank_expected_history` (
  `history_id` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `changed_column` varchar(255) DEFAULT NULL,
  `previous_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `change_type` varchar(50) DEFAULT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` varchar(255) DEFAULT NULL,
  `change_reason` text DEFAULT NULL,
  `change_description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `breeding_bank_history`
--

CREATE TABLE `breeding_bank_history` (
  `history_id` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `changed_column` varchar(255) DEFAULT NULL,
  `previous_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `change_type` varchar(50) DEFAULT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` varchar(255) DEFAULT NULL,
  `change_reason` text DEFAULT NULL,
  `change_description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `breeding_expected_progress`
--

CREATE TABLE `breeding_expected_progress` (
  `expected_progress_id` int(11) NOT NULL,
  `breeding_id` int(11) DEFAULT NULL,
  `parameter_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `calculation_date` date DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `breeding_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `breeding_progress`
--

CREATE TABLE `breeding_progress` (
  `progress_id` int(11) NOT NULL,
  `breeding_id` int(11) DEFAULT NULL,
  `series_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `supervisor` varchar(255) DEFAULT NULL,
  `non_construction_reason` text DEFAULT NULL,
  `progress_calculation_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `breeding_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `breeding_week`
--

CREATE TABLE `breeding_week` (
  `week_id` int(11) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `breeding_week`
--

INSERT INTO `breeding_week` (`week_id`, `year`, `quarter`, `week`, `start_date`, `end_date`, `user_id`) VALUES
(1, '2024', 1, 1, '2023-12-31', '2024-01-06', 2),
(2, '2024', 1, 2, '2024-01-07', '2024-01-13', 2),
(3, '2024', 1, 3, '2024-01-14', '2024-01-20', 2),
(4, '2024', 1, 4, '2024-01-21', '2024-01-27', 2),
(5, '2024', 1, 5, '2024-01-28', '2024-02-03', 2),
(6, '2024', 1, 6, '2024-02-04', '2024-02-10', 2),
(7, '2024', 1, 7, '2024-02-11', '2024-02-17', 2),
(8, '2024', 1, 8, '2024-02-18', '2024-02-24', 2),
(9, '2024', 1, 9, '2024-02-25', '2024-03-02', 2);

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
  `change_description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
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
(92, 'app_breeding', 'breedingbankexpectedhistory'),
(93, 'app_breeding', 'breedingbankhistory'),
(94, 'app_breeding', 'breedingbankprogress'),
(95, 'app_breeding', 'breedingbankprogressexpected'),
(96, 'app_breeding', 'breedingweek'),
(97, 'app_breeding', 'projectbreeding'),
(98, 'app_breeding', 'projectbreedingexpectedprogress'),
(99, 'app_breeding', 'projectbreedinghistory'),
(100, 'app_breeding', 'projectbreedingprogress'),
(46, 'app_plan', 'energyproductionratio'),
(47, 'app_plan', 'energyproductionseries'),
(48, 'app_plan', 'fileprogress'),
(49, 'app_plan', 'masterplan'),
(50, 'app_plan', 'masterplanprogress'),
(51, 'app_plan', 'masterplanshistory'),
(52, 'app_plan', 'meetingrecord'),
(53, 'app_plan', 'plan'),
(54, 'app_plan', 'planassociation'),
(55, 'app_plan', 'planshistory'),
(56, 'app_plan', 'plansprogress'),
(57, 'app_plan', 'plantotalenergyproduction'),
(58, 'app_plan', 'planweight'),
(59, 'app_plan', 'projectcaseenergyproduction'),
(60, 'app_plan', 'projectloopenergyproduction'),
(61, 'app_plan', 'projectvalueratio'),
(62, 'app_plan', 'projectvalueratioshistory'),
(63, 'app_project', 'caseshistory'),
(64, 'app_project', 'casesprogress'),
(65, 'app_project', 'casesprogressexpected'),
(66, 'app_project', 'loopshistory'),
(67, 'app_project', 'loopsprogress'),
(68, 'app_project', 'loopsprogressexpected'),
(69, 'app_project', 'project'),
(70, 'app_project', 'projectcase'),
(71, 'app_project', 'projectloop'),
(72, 'app_project', 'projectsprogress'),
(73, 'app_project', 'projectsprogressexpected'),
(74, 'app_pv', 'logisticparameters'),
(75, 'app_pv', 'logisticparametershistory'),
(76, 'app_pv', 'majoritempercentage'),
(77, 'app_pv', 'majoritempercentagehistory'),
(78, 'app_pv', 'projectpv'),
(79, 'app_pv', 'projectpvexpectedprogress'),
(80, 'app_pv', 'projectpvhistory'),
(81, 'app_pv', 'projectpvprogress'),
(82, 'app_pv', 'pvbankexpectedhistory'),
(83, 'app_pv', 'pvbankhistory'),
(84, 'app_pv', 'pvbankprogress'),
(85, 'app_pv', 'pvbankprogressexpected'),
(91, 'app_pv', 'pvweek'),
(86, 'app_pv', 'series'),
(87, 'app_pv', 'serieshistory'),
(88, 'app_pv', 'subitempercentage'),
(89, 'app_pv', 'subitempercentagehistory'),
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
(90, 'login', 'browseprogresspermission'),
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
(32, 'pv_app', '0002_pvbank_pvexpected', '2023-12-15 05:51:34.352302'),
(33, 'app_plan', '0001_initial', '2024-03-13 08:19:43.679491'),
(34, 'app_project', '0001_initial', '2024-03-13 08:19:43.723864'),
(35, 'app_pv', '0001_initial', '2024-03-13 08:19:43.758976'),
(36, 'auth', '0013_user_department_user_title', '2024-03-13 08:24:52.571563'),
(37, 'auth', '0014_remove_user_department_remove_user_title', '2024-03-13 08:24:52.616916'),
(38, 'login', '0001_initial', '2024-03-13 08:24:52.649970'),
(39, 'app_pv', '0002_pvweek_alter_projectpvexpectedprogress_table_and_more', '2024-03-14 13:13:03.877897'),
(40, 'app_breeding', '0001_initial', '2024-03-20 02:47:49.644097');

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
  `create_at` date DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `routeName` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `file_progress`
--

INSERT INTO `file_progress` (`id`, `file_name`, `file_link`, `last_update`, `create_at`, `update_description`, `routeName`, `user_id`) VALUES
(1, '000多元Re-financing管理總表', 'https://docs.google.com/spreadsheets/d/1rQLC04I6F-ViQ8D9jqboa5hn3YH31lGK/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 01:43:26', '2024-02-27 05:23:31', '已將2/11-2/17進度更新', 'File_Progress', 0),
(2, '00多元Phase2管理總表', 'https://docs.google.com/spreadsheets/d/1vMsJzYlVB6awlL6ZeLUvczQJ6Oi0OJeg/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 01:43:40', '2024-02-27 05:23:31', '已將2/11-2/17進度更新', 'File_Progress', 0),
(4, 'Phase2電業申辦進度', 'https://docs.google.com/spreadsheets/d/1izRUP1MCWeDeE4MFYlkFqmr5EHpfobeQ/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=trueusp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-22 15:10:07', '2024-02-27 05:23:31', '已更新新進度', 'File_Progress', 0),
(6, '22.8KV多元Phase2監工週報', 'https://docs.google.com/spreadsheets/d/1ZkeCC9llCynfgIa5e7lXIJw6AvkPKlX-/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 01:43:50', '2024-02-27 05:23:31', '已將2/11-2/17進度更新', 'File_Progress', 0),
(25, 'N1多元Phase2光電工程報告', 'https://docs.google.com/spreadsheets/d/1-4NGCAX3ehV-pohqnkCiXYgQImvdHJ2D/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新', 'File_Progress', 0),
(26, 'N向陽多元Phase2-SN2', 'https://docs.google.com/spreadsheets/d/1vbJBXSZsSPhv5fNpHe1GqOhfApEqB1p-/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新', 'File_Progress', 0),
(27, 'N向陽多元Phase2-SN1', 'https://docs.google.com/spreadsheets/d/1jTxdOqMpLjBJ_82hyO4HHcgYmLftawWl/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新', 'File_Progress', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `file_progress_phase`
--

CREATE TABLE `file_progress_phase` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_link` varchar(255) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_description` text DEFAULT NULL,
  `routeName` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `file_progress_phase`
--

INSERT INTO `file_progress_phase` (`id`, `file_name`, `file_link`, `last_update`, `create_at`, `update_description`, `routeName`, `user_id`) VALUES
(3, '00多元Phase1管理總表', 'https://docs.google.com/spreadsheets/d/1HyEo6al2mDjegqgTAYe0OZY_2r1uSzyP/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 01:43:50', '2024-02-27 05:23:31', '已將2/11-2/17進度更新', 'File_Progress', 0),
(4, 'Phase1電業申辦進度', 'https://docs.google.com/spreadsheets/d/132bwWWBZmRaIwtzAm8JWkzuAArJaGuN5/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-22 15:08:47', '2024-02-27 05:23:31', '已更新新進度', 'File_Progress', 0),
(5, '22.8KV多元Phase1監工週報', 'https://docs.google.com/spreadsheets/d/1XrJln7GXJbmOEjgMZdhaBN2ntU-KAV9L/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 01:43:50', '2024-02-27 05:23:31', '已將2/11-2/17進度更新', 'File_Progress', 0),
(7, 'D1多元光電工程報告', 'https://docs.google.com/spreadsheets/d/1RkOG-EzMJnC0nEiIzbMV5KUnfqFnxa68/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 01:43:50', '2024-02-27 05:23:31', '已將2/11-2/17進度更新', 'File_Progress', 0),
(8, 'D2養殖工程進度表', 'https://docs.google.com/spreadsheets/d/1bma8yfhC08IgDKAJow9GtoHrQ-CJpi_1/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 01:43:50', '2024-02-27 05:23:31', '已將2/11-2/17進度更新', 'File_Progress', 0),
(9, 'D向陽多元-S01', 'https://docs.google.com/spreadsheets/d/18L6lMX3UdjKyUHoTeoj3_50n7Zj70H8M/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 01:43:50', '2024-02-27 05:23:31', '完工', 'File_Progress', 0),
(10, 'D向陽多元-S02', 'https://docs.google.com/spreadsheets/d/1uGbX2rl67NvD3g8vpGYH_we6XvgrQuJv/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新\n', 'File_Progress', 0),
(11, 'D向陽多元-S03', 'https://docs.google.com/spreadsheets/d/1z2Hvl8qzPTuEPZue5wEgB81rRQ44_A3D/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新\r\n', 'File_Progress', 0),
(12, 'D向陽多元-S04', 'https://docs.google.com/spreadsheets/d/1J2chE81N082TpIbQ0hGkPhvP5wrfVVSS/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新\r\n', 'File_Progress', 0),
(14, 'D向陽多元-S05', 'https://docs.google.com/spreadsheets/d/1dNshqvGSRf-IX4RjlltJHF7z9IeRYyxh/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新\r\n', 'File_Progress', 0),
(15, 'D向陽多元-S06', 'https://docs.google.com/spreadsheets/d/1Y3dsFmD3tve3DIxFJ_wNya48OWFUJvCI/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新\r\n', 'File_Progress', 0),
(16, 'D向陽多元-S07', 'https://docs.google.com/spreadsheets/d/1Q-Lyv4eFryMFFXpgIIsZClDW2U55T2ks/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新\r\n', 'File_Progress', 0),
(17, 'D向陽多元-S09', 'https://docs.google.com/spreadsheets/d/1kjrmTSmYtzzyOL1r1BuoYnWiROSoyuzs/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新\r\n', 'File_Progress', 0),
(18, 'D向陽多元-S10', 'https://docs.google.com/spreadsheets/d/1_lyJkmgjxeDShnWSVCclK2pU-gyWMDjG/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新\r\n', 'File_Progress', 0),
(19, 'E1泰陽電力工程報告', 'https://docs.google.com/spreadsheets/d/13NSMIksBivIGGsx783daq1QCCE-uKlPQ/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新\r\n', 'File_Progress', 0),
(20, 'E2養殖工程進度表', 'https://docs.google.com/spreadsheets/d/1reiPoUmH281I2pbSi9j3xRGntLH_cyLF/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '已將2/11-2/17進度更新\r\n', 'File_Progress', 0),
(21, 'E泰陽光電-T01', 'https://docs.google.com/spreadsheets/d/1O9P-t2MgA-tsTvUw5Hois5v_alKXi5OX/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '完工', 'File_Progress', 0),
(22, 'E泰陽光電-T02', 'https://docs.google.com/spreadsheets/d/11ZcUzK6a-7Z4lFXDoQwWmecNCdi4fEri/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '完工', 'File_Progress', 0),
(23, 'E泰陽光電-T03', 'https://docs.google.com/spreadsheets/d/1X54He6SAgYNcJ4pr9A7nCqyS1HxUMU-O/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '完工', 'File_Progress', 0),
(24, 'E泰陽光電-T04', 'https://docs.google.com/spreadsheets/d/1nE-g1Goip4wHrL6cJUOJAfogyGrB8i30/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '完工', 'File_Progress', 0),
(27, '升壓站監工周報', 'https://docs.google.com/spreadsheets/d/1OfVYR-cb9JEMb5hq5reNO8PwYIDgwQ5y/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '完工', 'File_Progress', 0),
(28, '161KV施工周報', 'https://docs.google.com/spreadsheets/d/1KS9fCHVwyFjl_3QdFgaJzXY_iieYqPFj/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 02:03:10', '2024-02-27 05:23:31', '完工', 'File_Progress', 0);

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
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `change_description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `change_description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `change_description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `change_description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `routeName` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `meeting_record`
--

INSERT INTO `meeting_record` (`id`, `file_name`, `file_link`, `last_update`, `create_at`, `update_description`, `routeName`, `user_id`) VALUES
(1, '1130109 會議紀錄', 'https://drive.google.com/file/d/1nbyebycLgxObamSn4BPhYwQCmmnj_718/view?usp=sharing', '2024-02-29 02:52:52', '2024-02-29 02:52:52', NULL, '', 0),
(2, '1130116 會議紀錄', 'https://drive.google.com/file/d/1YDzaQZQ5JmC40FX9Cazf1MehnBV54km5/view?usp=sharing', '2024-03-01 05:19:16', '2024-03-05 05:19:16', NULL, '', 0),
(3, '1130124 會議紀錄', 'https://drive.google.com/file/d/1jZvZ1lgtZ8zNGaIBUC8NHspWxkFmRYpj/view?usp=sharing', '2024-03-02 05:20:00', '2024-03-05 05:20:00', NULL, '', 0),
(4, '1130131 職業安全衛生協議組織會議', 'https://drive.google.com/file/d/14yhU0nyOBNWWCX1jR9IAqIkf5A4n69m-/view?usp=sharing', '2024-03-03 05:20:42', '2024-03-05 05:20:42', NULL, '', 0),
(5, '1130207 會議紀錄', 'https://drive.google.com/file/d/1TFRRuqJF1Q9RuDIcqiyUzhzNq72oIuJK/view?usp=sharing', '2024-03-04 05:21:22', '2024-03-05 05:21:22', NULL, '', 0),
(6, '1130221 會議紀錄', 'https://drive.google.com/file/d/1yevm0KqZxLNMWU8oYe0ICTcmE3egoCED/view?usp=sharing', '2024-03-05 05:22:04', '2024-03-05 05:22:04', NULL, '', 0);

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
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `plans`
--

INSERT INTO `plans` (`plan_id`, `plan_name`, `planned_start_date`, `planned_end_date`, `actual_start_date`, `actual_end_date`, `plan_manager`, `plan_status`, `plan_description`, `last_update`, `create_at`, `user_id`) VALUES
(1, 'Phase 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-23 07:32:42', '2024-02-23 07:32:42', 0),
(3, 'Phase 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-23 07:32:42', '2024-02-23 07:32:42', 2);

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
  `change_description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `notes` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `adjustment_reason` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `projects`
--

INSERT INTO `projects` (`project_id`, `plan_id`, `project_name`, `plannedstart_date`, `plannedend_date`, `actualstart_date`, `actualend_date`, `construction_status`, `notes`, `last_update`, `create_at`, `user_id`) VALUES
(1, 1, '161KV', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-26 07:33:28', '2024-02-26 06:45:48', 0),
(2, 1, '22.8KV', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-26 07:33:34', '2024-02-26 06:45:48', 0),
(3, 1, '案場', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-26 06:46:39', '2024-02-26 06:46:39', 0),
(4, 1, '電業申辦', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-26 06:46:39', '2024-02-26 06:46:39', 0),
(5, 3, '161KV', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-26 07:33:28', '2024-02-26 06:45:48', 2),
(6, 3, '22.8KV', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-26 07:33:34', '2024-02-26 06:45:48', 2),
(7, 3, '案場', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-26 06:46:39', '2024-02-26 06:46:39', 2),
(8, 3, '電業申辦', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-26 06:46:39', '2024-02-26 06:46:39', 2),
(9, 3, '升壓站', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-26 06:46:39', '2024-02-26 06:46:39', 2);

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
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `project_breeding`
--

CREATE TABLE `project_breeding` (
  `breeding_id` int(11) NOT NULL,
  `breeding_name` varchar(255) DEFAULT NULL,
  `planned_start_date` date DEFAULT NULL,
  `planned_end_date` date DEFAULT NULL,
  `actual_start_date` date DEFAULT NULL,
  `actual_end_date` date DEFAULT NULL,
  `construction_status` varchar(255) DEFAULT NULL,
  `series_id` int(11) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `case_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project_breeding`
--

INSERT INTO `project_breeding` (`breeding_id`, `breeding_name`, `planned_start_date`, `planned_end_date`, `actual_start_date`, `actual_end_date`, `construction_status`, `series_id`, `last_update`, `create_at`, `case_id`, `user_id`) VALUES
(1, '升三-A02區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-29 02:33:34', '2024-02-29 02:33:34', 1, 0),
(2, '升三-A02區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-29 02:33:34', '2024-02-29 02:33:34', 2, 0),
(3, '升三-A03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:15:40', '2024-03-23 14:15:40', 7, 2),
(4, '升三-B01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:15:40', '2024-03-23 14:15:40', 8, 2),
(5, '升三-E01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:15:40', '2024-03-23 14:15:40', 9, 2),
(6, '升三-F01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:15:40', '2024-03-23 14:15:40', 49, 2),
(7, '升三-F02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:15:40', '2024-03-23 14:15:40', 50, 2),
(8, '升三-I01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:15:40', '2024-03-23 14:15:40', 51, 2),
(9, '升三-I02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:15:40', '2024-03-23 14:15:40', 52, 2),
(10, '升四-K01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:15:40', '2024-03-23 14:15:40', 53, 2),
(11, '升四-K02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:15:40', '2024-03-23 14:15:40', 54, 2),
(12, '升四-D03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:24:49', '2024-03-23 14:24:49', 17, 2),
(13, '升三-D01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:24:49', '2024-03-23 14:24:49', 16, 2),
(14, '升四-D04區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:24:49', '2024-03-23 14:24:49', 18, 2),
(15, '升四-G01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:24:49', '2024-03-23 14:24:49', 19, 2),
(16, '升四-G02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:24:49', '2024-03-23 14:24:49', 20, 2),
(17, '升三-H01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:24:49', '2024-03-23 14:24:49', 21, 2),
(18, '升三-H02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:24:49', '2024-03-23 14:24:49', 22, 2),
(19, '升四-H03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:24:49', '2024-03-23 14:24:49', 23, 2),
(20, '升四-H04區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:24:49', '2024-03-23 14:24:49', 24, 2),
(21, '升四-H05區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:24:49', '2024-03-23 14:24:49', 25, 2),
(22, '升四-H06區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:24:49', '2024-03-23 14:24:49', 26, 2),
(30, '升三-B02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:10:35', '2024-03-25 01:10:35', 81, 2),
(31, '升三-C01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:10:35', '2024-03-25 01:10:35', 82, 2),
(32, '升三-C02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:10:35', '2024-03-25 01:10:35', 83, 2),
(33, '升三-C03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:10:35', '2024-03-25 01:10:35', 84, 2),
(34, '升三-C07區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:10:35', '2024-03-25 01:10:35', 85, 2),
(35, '升三-C08區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:10:35', '2024-03-25 01:10:35', 86, 2),
(36, '升三-C09區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:10:35', '2024-03-25 01:10:35', 87, 2),
(37, '升三-E02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:15:19', '2024-03-25 01:15:19', 88, 2),
(38, '升三-E03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:15:19', '2024-03-25 01:15:19', 89, 2),
(39, '升三-E04區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:15:19', '2024-03-25 01:15:19', 90, 2),
(40, '升三-E04區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:15:19', '2024-03-25 01:15:19', 91, 2),
(41, '升四-E05區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:15:19', '2024-03-25 01:15:19', 92, 2),
(42, '升四-E05區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:15:19', '2024-03-25 01:15:19', 93, 2),
(43, '升四-E06區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:15:19', '2024-03-25 01:15:19', 94, 2),
(44, '升三-F03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:15:19', '2024-03-25 01:15:19', 95, 2),
(45, '升四-J01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:15:19', '2024-03-25 01:15:19', 96, 2),
(46, '升三-A01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:24:18', '2024-03-25 01:24:18', 115, 2),
(47, '升四-A04區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:24:18', '2024-03-25 01:24:18', 116, 2),
(48, '升四-D02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:24:18', '2024-03-25 01:24:18', 117, 2),
(49, '升四-G05區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:24:18', '2024-03-25 01:24:18', 118, 2),
(50, '升四-G06區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:24:18', '2024-03-25 01:24:18', 119, 2),
(51, '升四-G07區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:24:18', '2024-03-25 01:24:18', 120, 2),
(52, '升四-H08區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:24:18', '2024-03-25 01:24:18', 121, 2),
(53, '升四-H09區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:24:18', '2024-03-25 01:24:18', 122, 2),
(54, '升四-H10區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:24:18', '2024-03-25 01:24:18', 123, 2),
(55, '升四-H10區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:24:18', '2024-03-25 01:24:18', 124, 2),
(56, '升四-G03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:27:27', '2024-03-25 01:27:27', 145, 2),
(57, '升四-G04區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:27:27', '2024-03-25 01:27:27', 146, 2),
(58, '升四-H07區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:27:27', '2024-03-25 01:27:27', 147, 2),
(59, '升四-L01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:27:27', '2024-03-25 01:27:27', 148, 2),
(60, '升四-L02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:27:27', '2024-03-25 01:27:27', 149, 2),
(61, '升四-L03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:27:27', '2024-03-25 01:27:27', 150, 2),
(62, '升三-C04區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:30:26', '2024-03-25 01:30:26', 163, 2),
(63, '升三-C04區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:30:26', '2024-03-25 01:30:26', 164, 2),
(64, '升三-C05區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:30:26', '2024-03-25 01:30:26', 165, 2),
(65, '升三-C05區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:30:26', '2024-03-25 01:30:26', 166, 2),
(66, '升三-C06區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:30:26', '2024-03-25 01:30:26', 167, 2),
(67, '升四-C15區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:30:26', '2024-03-25 01:30:26', 168, 2),
(68, '升四-C10區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:32:56', '2024-03-25 01:32:56', 181, 2),
(69, '升四-C11區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:32:56', '2024-03-25 01:32:56', 182, 2),
(70, '升四-C12區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:32:56', '2024-03-25 01:32:56', 183, 2),
(71, '升四-C13區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:32:56', '2024-03-25 01:32:56', 184, 2),
(72, '升四-C14區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:32:56', '2024-03-25 01:32:56', 185, 2),
(73, '升四-F04區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:32:56', '2024-03-25 01:32:56', 186, 2),
(74, '升四-F05區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:32:56', '2024-03-25 01:32:56', 187, 2),
(75, '升四-F06區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:34:46', '2024-03-25 01:34:46', 202, 2),
(76, '升四-F07區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:34:46', '2024-03-25 01:34:46', 203, 2),
(77, '升四-F07區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:34:46', '2024-03-25 01:34:46', 204, 2),
(78, '升四-F07區-C棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:34:46', '2024-03-25 01:34:46', 205, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `project_breeding_history`
--

CREATE TABLE `project_breeding_history` (
  `history_id` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `changed_column` varchar(255) DEFAULT NULL,
  `previous_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `change_type` varchar(50) DEFAULT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` varchar(255) DEFAULT NULL,
  `change_reason` text DEFAULT NULL,
  `change_description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project_cases`
--

INSERT INTO `project_cases` (`case_id`, `loop_id`, `cases_name`, `longitude`, `latitude`, `address`, `plannedstart_date`, `plannedend_date`, `actualstart_date`, `actualend_date`, `construction_status`, `notes`, `last_update`, `create_at`, `user_id`) VALUES
(1, 1, '升三-A02區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-29 02:32:45', '2024-02-29 02:32:45', 0),
(2, 1, '升三-A02區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-29 02:32:45', '2024-02-29 02:32:45', 0),
(3, 5, '升三-A02區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-29 02:32:45', '2024-02-29 02:32:45', 2),
(4, 5, '升三-A02區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-29 02:32:45', '2024-02-29 02:32:45', 2),
(5, 6, '升三-A02區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-29 02:32:45', '2024-02-29 02:32:45', 2),
(6, 6, '升三-A02區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-29 02:32:45', '2024-02-29 02:32:45', 2),
(7, 1, '升三-I02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:54:20', '2024-03-22 03:54:20', 2),
(8, 1, '升四-K02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:54:20', '2024-03-22 03:54:20', 2),
(9, 1, '升三-A03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:55:14', '2024-03-22 03:54:20', 2),
(10, 5, '升三-I02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:54:49', '2024-03-22 03:54:49', 2),
(11, 5, '升四-K02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:54:49', '2024-03-22 03:54:49', 2),
(12, 5, '升三-A03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:54:49', '2024-03-22 03:54:49', 2),
(13, 6, '升三-I02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:54:59', '2024-03-22 03:54:59', 2),
(14, 6, '升四-K02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:54:59', '2024-03-22 03:54:59', 2),
(15, 6, '升三-A03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:54:59', '2024-03-22 03:54:59', 2),
(16, 2, '升三-D01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(17, 2, '升四-D03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(18, 2, '升四-D04區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(19, 2, '升四-G01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(20, 2, '升四-G02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(21, 2, '升三-H01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(22, 2, '升三-H02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(23, 2, '升四-H03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(24, 2, '升四-H04區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(25, 2, '升四-H05區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(26, 2, '升四-H06區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(27, 14, '升三-D01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(28, 14, '升四-D03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(29, 14, '升四-D04區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(30, 14, '升四-G01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(31, 14, '升四-G02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(32, 14, '升三-H01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(33, 14, '升三-H02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(34, 14, '升四-H03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(35, 14, '升四-H04區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(36, 14, '升四-H05區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(37, 14, '升四-H06區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(38, 22, '升三-D01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(39, 22, '升四-D03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(40, 22, '升四-D04區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(41, 22, '升四-G01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(42, 22, '升四-G02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(43, 22, '升三-H01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(44, 22, '升三-H02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(45, 22, '升四-H03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(46, 22, '升四-H04區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(47, 22, '升四-H05區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(48, 22, '升四-H06區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:12:01', '2024-03-22 05:12:01', 2),
(49, 1, '升三-B01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:45:30', '2024-03-22 05:45:30', 2),
(50, 1, '升三-E01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:45:30', '2024-03-22 05:45:30', 2),
(51, 1, '升三-F01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:45:30', '2024-03-22 05:45:30', 2),
(52, 1, '升三-F02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:45:30', '2024-03-22 05:45:30', 2),
(53, 1, '升三-I01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:45:30', '2024-03-22 05:45:30', 2),
(54, 1, '升四-K01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:45:30', '2024-03-22 05:45:30', 2),
(55, 5, '升三-B01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:45:30', '2024-03-22 05:45:30', 2),
(56, 5, '升三-E01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:45:30', '2024-03-22 05:45:30', 2),
(57, 5, '升三-F01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:45:30', '2024-03-22 05:45:30', 2),
(58, 5, '升三-F02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:45:30', '2024-03-22 05:45:30', 2),
(59, 5, '升三-I01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:45:30', '2024-03-22 05:45:30', 2),
(60, 5, '升四-K01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:45:30', '2024-03-22 05:45:30', 2),
(61, 6, '升三-B01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:45:30', '2024-03-22 05:45:30', 2),
(62, 6, '升三-E01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:45:30', '2024-03-22 05:45:30', 2),
(63, 6, '升三-F01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:45:30', '2024-03-22 05:45:30', 2),
(64, 6, '升三-F02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:45:30', '2024-03-22 05:45:30', 2),
(65, 6, '升三-I01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:45:30', '2024-03-22 05:45:30', 2),
(66, 6, '升四-K01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:45:30', '2024-03-22 05:45:30', 2),
(67, 7, '升三-B02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:48:50', '2024-03-22 05:48:50', 2),
(68, 7, '升三-C01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:48:50', '2024-03-22 05:48:50', 2),
(69, 7, '升三-C02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:48:50', '2024-03-22 05:48:50', 2),
(70, 7, '升三-C03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:48:50', '2024-03-22 05:48:50', 2),
(71, 7, '升三-C07區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:48:50', '2024-03-22 05:48:50', 2),
(72, 7, '升三-C08區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:48:50', '2024-03-22 05:48:50', 2),
(73, 7, '升三-C09區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:48:50', '2024-03-22 05:48:50', 2),
(74, 15, '升三-B02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:48:50', '2024-03-22 05:48:50', 2),
(75, 15, '升三-C01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:48:50', '2024-03-22 05:48:50', 2),
(76, 15, '升三-C02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:48:50', '2024-03-22 05:48:50', 2),
(77, 15, '升三-C03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:48:50', '2024-03-22 05:48:50', 2),
(78, 15, '升三-C07區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:48:50', '2024-03-22 05:48:50', 2),
(79, 15, '升三-C08區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:48:50', '2024-03-22 05:48:50', 2),
(80, 15, '升三-C09區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:48:50', '2024-03-22 05:48:50', 2),
(81, 23, '升三-B02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:48:50', '2024-03-22 05:48:50', 2),
(82, 23, '升三-C01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:48:50', '2024-03-22 05:48:50', 2),
(83, 23, '升三-C02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:48:50', '2024-03-22 05:48:50', 2),
(84, 23, '升三-C03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:48:50', '2024-03-22 05:48:50', 2),
(85, 23, '升三-C07區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:48:50', '2024-03-22 05:48:50', 2),
(86, 23, '升三-C08區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:48:50', '2024-03-22 05:48:50', 2),
(87, 23, '升三-C09區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:48:50', '2024-03-22 05:48:50', 2),
(88, 8, '升三-E02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(89, 8, '升三-E03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(90, 8, '升三-E04區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(91, 8, '升三-E04區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(92, 8, '升四-E05區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(93, 8, '升四-E05區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(94, 8, '升四-E06區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(95, 8, '升三-F03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(96, 8, '升四-J01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(97, 16, '升三-E02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(98, 16, '升三-E03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(99, 16, '升三-E04區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(100, 16, '升三-E04區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(101, 16, '升四-E05區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(102, 16, '升四-E05區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(103, 16, '升四-E06區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(104, 16, '升三-F03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(105, 16, '升四-J01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(106, 24, '升三-E02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(107, 24, '升三-E03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(108, 24, '升三-E04區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(109, 24, '升三-E04區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(110, 24, '升四-E05區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(111, 24, '升四-E05區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(112, 24, '升四-E06區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(113, 24, '升三-F03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(114, 24, '升四-J01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:52:08', '2024-03-22 05:52:08', 2),
(115, 9, '升三-A01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(116, 9, '升四-A04區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(117, 9, '升四-D02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(118, 9, '升四-G05區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(119, 9, '升四-G06區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(120, 9, '升四-G07區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(121, 9, '升四-H08區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(122, 9, '升四-H09區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(123, 9, '升四-H10區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(124, 9, '升四-H10區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(125, 17, '升三-A01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(126, 17, '升四-A04區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(127, 17, '升四-D02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(128, 17, '升四-G05區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(129, 17, '升四-G06區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(130, 17, '升四-G07區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(131, 17, '升四-H08區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(132, 17, '升四-H09區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(133, 17, '升四-H10區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(134, 17, '升四-H10區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(135, 25, '升三-A01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(136, 25, '升四-A04區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(137, 25, '升四-D02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(138, 25, '升四-G05區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(139, 25, '升四-G06區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(140, 25, '升四-G07區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(141, 25, '升四-H08區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(142, 25, '升四-H09區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(143, 25, '升四-H10區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(144, 25, '升四-H10區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:54:26', '2024-03-22 15:54:26', 2),
(145, 10, '升四-G03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:58:08', '2024-03-22 15:58:08', 2),
(146, 10, '升四-G04區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:58:08', '2024-03-22 15:58:08', 2),
(147, 10, '升四-H07區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:58:08', '2024-03-22 15:58:08', 2),
(148, 10, '升四-L01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:58:08', '2024-03-22 15:58:08', 2),
(149, 10, '升四-L02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:58:08', '2024-03-22 15:58:08', 2),
(150, 10, '升四-L03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:58:08', '2024-03-22 15:58:08', 2),
(151, 18, '升四-G03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:58:08', '2024-03-22 15:58:08', 2),
(152, 18, '升四-G04區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:58:08', '2024-03-22 15:58:08', 2),
(153, 18, '升四-H07區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:58:08', '2024-03-22 15:58:08', 2),
(154, 18, '升四-L01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:58:08', '2024-03-22 15:58:08', 2),
(155, 18, '升四-L02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:58:08', '2024-03-22 15:58:08', 2),
(156, 18, '升四-L03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:58:08', '2024-03-22 15:58:08', 2),
(157, 26, '升四-G03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:58:08', '2024-03-22 15:58:08', 2),
(158, 26, '升四-G04區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:58:08', '2024-03-22 15:58:08', 2),
(159, 26, '升四-H07區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:58:08', '2024-03-22 15:58:08', 2),
(160, 26, '升四-L01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:58:08', '2024-03-22 15:58:08', 2),
(161, 26, '升四-L02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:58:08', '2024-03-22 15:58:08', 2),
(162, 26, '升四-L03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 15:58:08', '2024-03-22 15:58:08', 2),
(163, 11, '升三-C04區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 16:00:58', '2024-03-22 16:00:58', 2),
(164, 11, '升三-C04區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 16:00:58', '2024-03-22 16:00:58', 2),
(165, 11, '升三-C05區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 16:00:58', '2024-03-22 16:00:58', 2),
(166, 11, '升三-C05區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 16:00:58', '2024-03-22 16:00:58', 2),
(167, 11, '升三-C06區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 16:00:58', '2024-03-22 16:00:58', 2),
(168, 11, '升四-C15區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 16:00:58', '2024-03-22 16:00:58', 2),
(169, 19, '升三-C04區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 16:00:58', '2024-03-22 16:00:58', 2),
(170, 19, '升三-C04區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 16:00:58', '2024-03-22 16:00:58', 2),
(171, 19, '升三-C05區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 16:00:58', '2024-03-22 16:00:58', 2),
(172, 19, '升三-C05區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 16:00:58', '2024-03-22 16:00:58', 2),
(173, 19, '升三-C06區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 16:00:58', '2024-03-22 16:00:58', 2),
(174, 19, '升四-C15區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 16:00:58', '2024-03-22 16:00:58', 2),
(175, 27, '升三-C04區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 16:00:58', '2024-03-22 16:00:58', 2),
(176, 27, '升三-C04區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 16:00:58', '2024-03-22 16:00:58', 2),
(177, 27, '升三-C05區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 16:00:58', '2024-03-22 16:00:58', 2),
(178, 27, '升三-C05區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 16:00:58', '2024-03-22 16:00:58', 2),
(179, 27, '升三-C06區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 16:00:58', '2024-03-22 16:00:58', 2),
(180, 27, '升四-C15區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 16:00:58', '2024-03-22 16:00:58', 2),
(181, 12, '升四-C10區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:28:53', '2024-03-23 13:28:53', 2),
(182, 12, '升四-C11區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:28:53', '2024-03-23 13:28:53', 2),
(183, 12, '升四-C12區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:28:53', '2024-03-23 13:28:53', 2),
(184, 12, '升四-C13區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:28:53', '2024-03-23 13:28:53', 2),
(185, 12, '升四-C14區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:28:53', '2024-03-23 13:28:53', 2),
(186, 12, '升四-F04區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:28:53', '2024-03-23 13:28:53', 2),
(187, 12, '升四-F05區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:28:53', '2024-03-23 13:28:53', 2),
(188, 20, '升四-C10區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:28:53', '2024-03-23 13:28:53', 2),
(189, 20, '升四-C11區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:28:53', '2024-03-23 13:28:53', 2),
(190, 20, '升四-C12區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:28:53', '2024-03-23 13:28:53', 2),
(191, 20, '升四-C13區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:28:53', '2024-03-23 13:28:53', 2),
(192, 20, '升四-C14區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:28:53', '2024-03-23 13:28:53', 2),
(193, 20, '升四-F04區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:28:53', '2024-03-23 13:28:53', 2),
(194, 20, '升四-F05區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:28:53', '2024-03-23 13:28:53', 2),
(195, 28, '升四-C10區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:28:53', '2024-03-23 13:28:53', 2),
(196, 28, '升四-C11區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:28:53', '2024-03-23 13:28:53', 2),
(197, 28, '升四-C12區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:28:53', '2024-03-23 13:28:53', 2),
(198, 28, '升四-C13區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:28:53', '2024-03-23 13:28:53', 2),
(199, 28, '升四-C14區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:28:53', '2024-03-23 13:28:53', 2),
(200, 28, '升四-F04區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:28:53', '2024-03-23 13:28:53', 2),
(201, 28, '升四-F05區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:28:53', '2024-03-23 13:28:53', 2),
(202, 13, '升四-F06區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:41:04', '2024-03-23 13:41:04', 2),
(203, 13, '升四-F07區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:41:04', '2024-03-23 13:41:04', 2),
(204, 13, '升四-F07區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:41:04', '2024-03-23 13:41:04', 2),
(205, 13, '升四-F07區-C棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:41:04', '2024-03-23 13:41:04', 2),
(206, 21, '升四-F06區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:41:04', '2024-03-23 13:41:04', 2),
(207, 21, '升四-F07區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:41:04', '2024-03-23 13:41:04', 2),
(208, 21, '升四-F07區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:41:04', '2024-03-23 13:41:04', 2),
(209, 21, '升四-F07區-C棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:41:04', '2024-03-23 13:41:04', 2),
(210, 29, '升四-F06區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:41:04', '2024-03-23 13:41:04', 2),
(211, 29, '升四-F07區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:41:04', '2024-03-23 13:41:04', 2),
(212, 29, '升四-F07區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:41:04', '2024-03-23 13:41:04', 2),
(213, 29, '升四-F07區-C棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 13:41:04', '2024-03-23 13:41:04', 2);

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
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project_loops`
--

INSERT INTO `project_loops` (`loop_id`, `project_id`, `loop_name`, `plannedstart_date`, `plannedend_date`, `actualstart_date`, `actualend_date`, `construction_status`, `planned_parallel_date`, `actual_parallel_date`, `parallel_status`, `notes`, `last_update`, `create_at`, `user_id`) VALUES
(1, 3, 'SN1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-27 12:24:35', '2024-02-27 12:24:35', 0),
(2, 3, 'SN2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-27 12:24:35', '2024-02-27 12:24:35', 0),
(5, 2, 'SN1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-27 12:24:35', '2024-02-27 12:24:35', 2),
(6, 1, 'SN1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-27 12:24:35', '2024-02-27 12:24:35', 2),
(7, 2, 'SN3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:45:42', '2024-03-22 03:45:30', 2),
(8, 3, 'SN4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:46:04', '2024-03-22 03:45:30', 2),
(9, 3, 'SN5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:46:16', '2024-03-22 03:45:30', 2),
(10, 3, 'SN6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:46:21', '2024-03-22 03:45:30', 2),
(11, 3, 'SN7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:46:27', '2024-03-22 03:45:30', 2),
(12, 3, 'SN8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:46:29', '2024-03-22 03:45:30', 2),
(13, 3, 'SN9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:46:32', '2024-03-22 03:45:30', 2),
(14, 1, 'SN2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:48:20', '2024-03-22 03:48:20', 2),
(15, 1, 'SN3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:48:20', '2024-03-22 03:48:20', 2),
(16, 1, 'SN4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:48:20', '2024-03-22 03:48:20', 2),
(17, 1, 'SN5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:48:20', '2024-03-22 03:48:20', 2),
(18, 1, 'SN6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:48:20', '2024-03-22 03:48:20', 2),
(19, 1, 'SN7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:48:20', '2024-03-22 03:48:20', 2),
(20, 1, 'SN8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:48:20', '2024-03-22 03:48:20', 2),
(21, 1, 'SN9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:48:20', '2024-03-22 03:48:20', 2),
(22, 2, 'SN2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:48:42', '2024-03-22 03:48:42', 2),
(23, 3, 'SN3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 05:54:55', '2024-03-22 03:48:42', 2),
(24, 2, 'SN4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:48:42', '2024-03-22 03:48:42', 2),
(25, 2, 'SN5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:48:42', '2024-03-22 03:48:42', 2),
(26, 2, 'SN6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:48:42', '2024-03-22 03:48:42', 2),
(27, 2, 'SN7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:48:42', '2024-03-22 03:48:42', 2),
(28, 2, 'SN8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:48:42', '2024-03-22 03:48:42', 2),
(29, 2, 'SN9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:48:42', '2024-03-22 03:48:42', 2);

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
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `case_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project_pv`
--

INSERT INTO `project_pv` (`pv_id`, `pv_name`, `planned_start_date`, `planned_end_date`, `actual_start_date`, `actual_end_date`, `construction_status`, `series_id`, `last_update`, `create_at`, `case_id`, `user_id`) VALUES
(1, '升三-A02區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-29 02:33:34', '2024-02-29 02:33:34', 1, 0),
(2, '升三-A02區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-29 02:33:34', '2024-02-29 02:33:34', 2, 0),
(3, '升三-A03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:16:52', '2024-03-23 14:16:52', 7, 2),
(4, '升三-B01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:16:52', '2024-03-23 14:16:52', 8, 2),
(5, '升三-E01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:16:52', '2024-03-23 14:16:52', 9, 2),
(6, '升三-F01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:16:52', '2024-03-23 14:16:52', 49, 2),
(7, '升三-F02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:16:52', '2024-03-23 14:16:52', 50, 2),
(8, '升三-I01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:16:52', '2024-03-23 14:16:52', 51, 2),
(9, '升三-I02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:16:52', '2024-03-23 14:16:52', 52, 2),
(10, '升四-K01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:16:52', '2024-03-23 14:16:52', 53, 2),
(11, '升四-K02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:16:52', '2024-03-23 14:16:52', 54, 2),
(12, '升四-D03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:25:14', '2024-03-23 14:25:14', 17, 2),
(13, '升三-D01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:25:14', '2024-03-23 14:25:14', 16, 2),
(14, '升四-D04區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:25:14', '2024-03-23 14:25:14', 18, 2),
(15, '升四-G01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:25:14', '2024-03-23 14:25:14', 19, 2),
(16, '升四-G02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:25:14', '2024-03-23 14:25:14', 20, 2),
(17, '升三-H01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:25:14', '2024-03-23 14:25:14', 21, 2),
(18, '升三-H02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:25:14', '2024-03-23 14:25:14', 22, 2),
(19, '升四-H03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:25:14', '2024-03-23 14:25:14', 23, 2),
(20, '升四-H04區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:25:14', '2024-03-23 14:25:14', 24, 2),
(21, '升四-H05區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:25:14', '2024-03-23 14:25:14', 25, 2),
(22, '升四-H06區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 14:25:14', '2024-03-23 14:25:14', 26, 2),
(30, '升三-B02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:10:36', '2024-03-25 01:10:36', 81, 2),
(31, '升三-C01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:10:36', '2024-03-25 01:10:36', 82, 2),
(32, '升三-C02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:10:36', '2024-03-25 01:10:36', 83, 2),
(33, '升三-C03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:10:36', '2024-03-25 01:10:36', 84, 2),
(34, '升三-C07區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:10:36', '2024-03-25 01:10:36', 85, 2),
(35, '升三-C08區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:10:36', '2024-03-25 01:10:36', 86, 2),
(36, '升三-C09區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:10:36', '2024-03-25 01:10:36', 87, 2),
(37, '升三-E02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:15:19', '2024-03-25 01:15:19', 88, 2),
(38, '升三-E03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:15:19', '2024-03-25 01:15:19', 89, 2),
(39, '升三-E04區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:15:19', '2024-03-25 01:15:19', 90, 2),
(40, '升三-E04區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:15:19', '2024-03-25 01:15:19', 91, 2),
(41, '升四-E05區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:15:19', '2024-03-25 01:15:19', 92, 2),
(42, '升四-E05區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:15:19', '2024-03-25 01:15:19', 93, 2),
(43, '升四-E06區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:15:19', '2024-03-25 01:15:19', 94, 2),
(44, '升三-F03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:15:19', '2024-03-25 01:15:19', 95, 2),
(45, '升四-J01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:15:19', '2024-03-25 01:15:19', 96, 2),
(46, '升三-A01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:24:18', '2024-03-25 01:24:18', 115, 2),
(47, '升四-A04區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:24:18', '2024-03-25 01:24:18', 116, 2),
(48, '升四-D02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:24:18', '2024-03-25 01:24:18', 117, 2),
(49, '升四-G05區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:24:18', '2024-03-25 01:24:18', 118, 2),
(50, '升四-G06區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:24:18', '2024-03-25 01:24:18', 119, 2),
(51, '升四-G07區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:24:18', '2024-03-25 01:24:18', 120, 2),
(52, '升四-H08區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:24:18', '2024-03-25 01:24:18', 121, 2),
(53, '升四-H09區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:24:18', '2024-03-25 01:24:18', 122, 2),
(54, '升四-H10區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:24:18', '2024-03-25 01:24:18', 123, 2),
(55, '升四-H10區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:24:18', '2024-03-25 01:24:18', 124, 2),
(56, '升四-G03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:27:27', '2024-03-25 01:27:27', 145, 2),
(57, '升四-G04區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:27:27', '2024-03-25 01:27:27', 146, 2),
(58, '升四-H07區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:27:27', '2024-03-25 01:27:27', 147, 2),
(59, '升四-L01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:27:27', '2024-03-25 01:27:27', 148, 2),
(60, '升四-L02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:27:27', '2024-03-25 01:27:27', 149, 2),
(61, '升四-L03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:27:27', '2024-03-25 01:27:27', 150, 2),
(62, '升三-C04區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:30:26', '2024-03-25 01:30:26', 163, 2),
(63, '升三-C04區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:30:26', '2024-03-25 01:30:26', 164, 2),
(64, '升三-C05區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:30:26', '2024-03-25 01:30:26', 165, 2),
(65, '升三-C05區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:30:26', '2024-03-25 01:30:26', 166, 2),
(66, '升三-C06區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:30:26', '2024-03-25 01:30:26', 167, 2),
(67, '升四-C15區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:30:26', '2024-03-25 01:30:26', 168, 2),
(68, '升四-C10區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:32:56', '2024-03-25 01:32:56', 181, 2),
(69, '升四-C11區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:32:56', '2024-03-25 01:32:56', 182, 2),
(70, '升四-C12區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:32:56', '2024-03-25 01:32:56', 183, 2),
(71, '升四-C13區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:32:56', '2024-03-25 01:32:56', 184, 2),
(72, '升四-C14區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:32:56', '2024-03-25 01:32:56', 185, 2),
(73, '升四-F04區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:32:56', '2024-03-25 01:32:56', 186, 2),
(74, '升四-F05區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:32:56', '2024-03-25 01:32:56', 187, 2),
(75, '升四-F06區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:34:46', '2024-03-25 01:34:46', 202, 2),
(76, '升四-F07區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:34:46', '2024-03-25 01:34:46', 203, 2),
(77, '升四-F07區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:34:46', '2024-03-25 01:34:46', 204, 2),
(78, '升四-F07區-C棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 01:34:46', '2024-03-25 01:34:46', 205, 2);

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
  `change_description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `change_description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `project_voltage161k`
--

CREATE TABLE `project_voltage161k` (
  `voltage161k_id` int(11) NOT NULL,
  `voltage161k_name` varchar(255) DEFAULT NULL,
  `planned_start_date` date DEFAULT NULL,
  `planned_end_date` date DEFAULT NULL,
  `actual_start_date` date DEFAULT NULL,
  `actual_end_date` date DEFAULT NULL,
  `construction_status` varchar(255) DEFAULT NULL,
  `series_id` int(11) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `case_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project_voltage161k`
--

INSERT INTO `project_voltage161k` (`voltage161k_id`, `voltage161k_name`, `planned_start_date`, `planned_end_date`, `actual_start_date`, `actual_end_date`, `construction_status`, `series_id`, `last_update`, `create_at`, `case_id`, `user_id`) VALUES
(1, '升三-A02區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-20 07:48:30', '2024-02-29 02:33:34', 5, 0),
(2, '升三-A02區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-20 07:48:34', '2024-02-29 02:33:34', 6, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `project_voltage228k`
--

CREATE TABLE `project_voltage228k` (
  `voltage228k_id` int(11) NOT NULL,
  `voltage228k_name` varchar(255) DEFAULT NULL,
  `planned_start_date` date DEFAULT NULL,
  `planned_end_date` date DEFAULT NULL,
  `actual_start_date` date DEFAULT NULL,
  `actual_end_date` date DEFAULT NULL,
  `construction_status` varchar(255) DEFAULT NULL,
  `series_id` int(11) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `case_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project_voltage228k`
--

INSERT INTO `project_voltage228k` (`voltage228k_id`, `voltage228k_name`, `planned_start_date`, `planned_end_date`, `actual_start_date`, `actual_end_date`, `construction_status`, `series_id`, `last_update`, `create_at`, `case_id`, `user_id`) VALUES
(1, '升三-A02區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-20 06:39:45', '2024-02-29 02:33:34', 3, 0),
(2, '升三-A02區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-20 06:39:48', '2024-02-29 02:33:34', 4, 0),
(3, '升三-A03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:49:21', '2024-03-25 05:49:21', 12, 2),
(4, '升三-B01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:49:21', '2024-03-25 05:49:21', 55, 2),
(5, '升三-E01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:49:21', '2024-03-25 05:49:21', 56, 2),
(6, '升三-F01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:49:21', '2024-03-25 05:49:21', 57, 2),
(7, '升三-F02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:49:21', '2024-03-25 05:49:21', 58, 2),
(8, '升三-I01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:49:21', '2024-03-25 05:49:21', 59, 2),
(9, '升三-I02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:49:21', '2024-03-25 05:49:21', 10, 2),
(10, '升四-K01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:49:21', '2024-03-25 05:49:21', 60, 2),
(11, '升四-K02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:49:21', '2024-03-25 05:49:21', 11, 2),
(12, '升四-D03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:51:16', '2024-03-25 05:51:16', 39, 2),
(13, '升三-D01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:51:16', '2024-03-25 05:51:16', 38, 2),
(14, '升四-D04區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:51:16', '2024-03-25 05:51:16', 40, 2),
(15, '升四-G01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:51:16', '2024-03-25 05:51:16', 41, 2),
(16, '升四-G02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:51:16', '2024-03-25 05:51:16', 42, 2),
(17, '升三-H01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:51:16', '2024-03-25 05:51:16', 43, 2),
(18, '升三-H02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:51:16', '2024-03-25 05:51:16', 44, 2),
(19, '升四-H03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:51:16', '2024-03-25 05:51:16', 45, 2),
(20, '升四-H04區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:51:16', '2024-03-25 05:51:16', 46, 2),
(21, '升四-H05區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:51:16', '2024-03-25 05:51:16', 47, 2),
(22, '升四-H06區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:51:16', '2024-03-25 05:51:16', 48, 2),
(23, '升三-B02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:52:15', '2024-03-25 05:52:15', 67, 2),
(24, '升三-C01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:52:15', '2024-03-25 05:52:15', 68, 2),
(25, '升三-C02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:52:15', '2024-03-25 05:52:15', 69, 2),
(26, '升三-C03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:52:15', '2024-03-25 05:52:15', 70, 2),
(27, '升三-C07區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:52:15', '2024-03-25 05:52:15', 71, 2),
(28, '升三-C08區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:52:15', '2024-03-25 05:52:15', 72, 2),
(29, '升三-C09區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:52:15', '2024-03-25 05:52:15', 73, 2),
(30, '升三-E02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:53:27', '2024-03-25 05:53:27', 106, 2),
(31, '升三-E03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:53:27', '2024-03-25 05:53:27', 107, 2),
(32, '升三-E04區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:53:27', '2024-03-25 05:53:27', 108, 2),
(33, '升三-E04區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:53:27', '2024-03-25 05:53:27', 109, 2),
(34, '升四-E05區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:53:27', '2024-03-25 05:53:27', 110, 2),
(35, '升四-E05區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:53:27', '2024-03-25 05:53:27', 111, 2),
(36, '升四-E06區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:53:27', '2024-03-25 05:53:27', 112, 2),
(37, '升三-F03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:53:27', '2024-03-25 05:53:27', 113, 2),
(38, '升四-J01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:53:27', '2024-03-25 05:53:27', 114, 2),
(39, '升三-A01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:54:37', '2024-03-25 05:54:37', 135, 2),
(40, '升四-A04區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:54:37', '2024-03-25 05:54:37', 136, 2),
(41, '升四-D02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:54:37', '2024-03-25 05:54:37', 137, 2),
(42, '升四-G05區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:54:37', '2024-03-25 05:54:37', 138, 2),
(43, '升四-G06區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:54:37', '2024-03-25 05:54:37', 139, 2),
(44, '升四-G07區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:54:37', '2024-03-25 05:54:37', 140, 2),
(45, '升四-H08區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:54:37', '2024-03-25 05:54:37', 141, 2),
(46, '升四-H09區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:54:37', '2024-03-25 05:54:37', 142, 2),
(47, '升四-H10區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:54:37', '2024-03-25 05:54:37', 143, 2),
(48, '升四-H10區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:54:37', '2024-03-25 05:54:37', 144, 2),
(49, '升四-G03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:55:40', '2024-03-25 05:55:40', 157, 2),
(50, '升四-G04區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:55:40', '2024-03-25 05:55:40', 158, 2),
(51, '升四-H07區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:55:40', '2024-03-25 05:55:40', 159, 2),
(52, '升四-L01區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:55:40', '2024-03-25 05:55:40', 160, 2),
(53, '升四-L02區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:55:40', '2024-03-25 05:55:40', 161, 2),
(54, '升四-L03區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:55:40', '2024-03-25 05:55:40', 162, 2),
(55, '升三-C04區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:56:41', '2024-03-25 05:56:41', 175, 2),
(56, '升三-C04區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:56:41', '2024-03-25 05:56:41', 176, 2),
(57, '升三-C05區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:56:41', '2024-03-25 05:56:41', 177, 2),
(58, '升三-C05區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:56:41', '2024-03-25 05:56:41', 178, 2),
(59, '升三-C06區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:56:41', '2024-03-25 05:56:41', 179, 2),
(60, '升四-C15區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:56:41', '2024-03-25 05:56:41', 180, 2),
(61, '升四-C10區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:57:42', '2024-03-25 05:57:42', 195, 2),
(62, '升四-C11區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:57:42', '2024-03-25 05:57:42', 196, 2),
(63, '升四-C12區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:57:42', '2024-03-25 05:57:42', 197, 2),
(64, '升四-C13區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:57:42', '2024-03-25 05:57:42', 198, 2),
(65, '升四-C14區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:57:42', '2024-03-25 05:57:42', 199, 2),
(66, '升四-F04區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:57:42', '2024-03-25 05:57:42', 200, 2),
(67, '升四-F05區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:57:42', '2024-03-25 05:57:42', 201, 2),
(68, '升四-F06區', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:58:22', '2024-03-25 05:58:22', 210, 2),
(69, '升四-F07區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:58:22', '2024-03-25 05:58:22', 211, 2),
(70, '升四-F07區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:58:22', '2024-03-25 05:58:22', 212, 2),
(71, '升四-F07區-C棟', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-25 05:58:22', '2024-03-25 05:58:22', 213, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `pvbank_progress`
--

CREATE TABLE `pvbank_progress` (
  `pv_bank_id` int(11) NOT NULL,
  `pv_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(10,5) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `pv_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `pvbank_progress`
--

INSERT INTO `pvbank_progress` (`pv_bank_id`, `pv_id`, `progress_percentage`, `last_update`, `create_at`, `pv_week_id`, `user_id`) VALUES
(1, 17, 0.12600, '2024-03-25 04:14:23', '2024-03-25 04:11:53', 1, 2),
(2, 17, 0.12600, '2024-03-25 04:22:46', '2024-03-25 04:22:46', 2, 2),
(3, 17, 0.60900, '2024-03-25 04:23:43', '2024-03-25 04:23:43', 3, 2),
(4, 17, 0.73900, '2024-03-25 04:24:34', '2024-03-25 04:24:34', 4, 2),
(5, 17, 0.73900, '2024-03-25 04:25:18', '2024-03-25 04:25:18', 5, 2),
(6, 17, 0.73900, '2024-03-25 04:25:35', '2024-03-25 04:25:35', 6, 2),
(7, 17, 0.73900, '2024-03-25 04:25:48', '2024-03-25 04:25:48', 7, 2),
(8, 17, 0.73900, '2024-03-25 04:25:59', '2024-03-25 04:25:59', 8, 2),
(9, 17, 0.73900, '2024-03-25 04:26:14', '2024-03-25 04:26:14', 9, 2),
(10, 18, 0.00000, '2024-03-25 05:15:13', '2024-03-25 05:15:13', 7, 2),
(11, 20, 0.00000, '2024-03-25 05:16:40', '2024-03-25 05:16:40', 7, 2),
(12, 21, 0.00000, '2024-03-25 05:16:40', '2024-03-25 05:16:40', 7, 2),
(13, 18, 0.00000, '2024-03-25 05:19:36', '2024-03-25 05:19:36', 8, 2),
(14, 20, 0.00000, '2024-03-25 05:19:36', '2024-03-25 05:19:36', 8, 2),
(15, 21, 0.00000, '2024-03-25 05:19:36', '2024-03-25 05:19:36', 8, 2),
(16, 18, 0.00000, '2024-03-25 05:20:54', '2024-03-25 05:20:54', 9, 2),
(17, 20, 0.00000, '2024-03-25 05:20:54', '2024-03-25 05:20:54', 9, 2),
(18, 21, 0.00000, '2024-03-25 05:20:55', '2024-03-25 05:20:55', 9, 2),
(19, 4, 0.10500, '2024-03-25 05:36:01', '2024-03-25 05:36:01', 8, 2),
(20, 4, 0.10500, '2024-03-25 05:36:19', '2024-03-25 05:36:19', 9, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `pvbank_progress_expected`
--

CREATE TABLE `pvbank_progress_expected` (
  `pv_bank_expected_id` int(11) NOT NULL,
  `pv_id` int(11) DEFAULT NULL,
  `parameter_id` int(11) DEFAULT NULL,
  `is_parameter_based` tinyint(1) DEFAULT NULL,
  `progress_percentage` decimal(10,5) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `pv_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `pvbank_progress_expected`
--

INSERT INTO `pvbank_progress_expected` (`pv_bank_expected_id`, `pv_id`, `parameter_id`, `is_parameter_based`, `progress_percentage`, `last_update`, `create_at`, `pv_week_id`, `user_id`) VALUES
(1, 17, NULL, NULL, 0.00000, '2024-03-25 04:16:05', '2024-03-25 04:11:53', 1, 2),
(2, 17, NULL, NULL, 0.00000, '2024-03-25 04:24:00', '2024-03-25 04:22:46', 2, 2),
(3, 17, NULL, NULL, 0.00000, '2024-03-25 04:23:43', '2024-03-25 04:23:43', 3, 2),
(4, 17, NULL, NULL, 0.00000, '2024-03-25 04:24:34', '2024-03-25 04:24:34', 4, 2),
(5, 17, NULL, NULL, 0.00000, '2024-03-25 04:25:18', '2024-03-25 04:25:18', 5, 2),
(6, 17, NULL, NULL, 0.00000, '2024-03-25 04:25:35', '2024-03-25 04:25:35', 6, 2),
(7, 17, NULL, NULL, 0.00000, '2024-03-25 04:25:48', '2024-03-25 04:25:48', 7, 2),
(8, 17, NULL, NULL, 0.00000, '2024-03-25 04:25:59', '2024-03-25 04:25:59', 8, 2),
(9, 17, NULL, NULL, 0.00000, '2024-03-25 04:26:14', '2024-03-25 04:26:14', 9, 2),
(10, 18, NULL, NULL, 0.02480, '2024-03-25 05:18:12', '2024-03-25 05:15:13', 7, 2),
(11, 20, NULL, NULL, 0.02480, '2024-03-25 05:18:16', '2024-03-25 05:16:40', 7, 2),
(12, 21, NULL, NULL, 0.02480, '2024-03-25 05:18:22', '2024-03-25 05:16:40', 7, 2),
(13, 18, NULL, NULL, 0.03730, '2024-03-25 05:19:36', '2024-03-25 05:19:36', 8, 2),
(14, 20, NULL, NULL, 0.03730, '2024-03-25 05:19:36', '2024-03-25 05:19:36', 8, 2),
(15, 21, NULL, NULL, 0.03730, '2024-03-25 05:19:36', '2024-03-25 05:19:36', 8, 2),
(16, 18, NULL, NULL, 0.05580, '2024-03-25 05:20:54', '2024-03-25 05:20:54', 9, 2),
(17, 20, NULL, NULL, 0.05580, '2024-03-25 05:20:54', '2024-03-25 05:20:54', 9, 2),
(18, 21, NULL, NULL, 0.05580, '2024-03-25 05:20:55', '2024-03-25 05:20:55', 9, 2),
(19, 4, NULL, NULL, 0.00000, '2024-03-25 05:36:01', '2024-03-25 05:36:01', 8, 2),
(20, 4, NULL, NULL, 0.00000, '2024-03-25 05:36:19', '2024-03-25 05:36:19', 9, 2);

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
  `change_description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `change_description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `pv_expected_progress`
--

CREATE TABLE `pv_expected_progress` (
  `expected_progress_id` int(11) NOT NULL,
  `pv_id` int(11) DEFAULT NULL,
  `parameter_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(10,5) DEFAULT NULL,
  `calculation_date` date DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `pv_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `pv_expected_progress`
--

INSERT INTO `pv_expected_progress` (`expected_progress_id`, `pv_id`, `parameter_id`, `progress_percentage`, `calculation_date`, `last_update`, `create_at`, `pv_week_id`, `user_id`) VALUES
(1, 17, NULL, 0.00000, NULL, '2024-03-25 04:15:58', '2024-03-25 04:11:53', 1, 2),
(2, 17, NULL, 0.00000, NULL, '2024-03-25 04:23:53', '2024-03-25 04:22:46', 2, 2),
(3, 17, NULL, 0.00000, NULL, '2024-03-25 04:23:43', '2024-03-25 04:23:43', 3, 2),
(4, 17, NULL, 0.00000, NULL, '2024-03-25 04:24:34', '2024-03-25 04:24:34', 4, 2),
(5, 17, NULL, 0.00000, NULL, '2024-03-25 04:25:18', '2024-03-25 04:25:18', 5, 2),
(6, 17, NULL, 0.00000, NULL, '2024-03-25 04:25:35', '2024-03-25 04:25:35', 6, 2),
(7, 17, NULL, 0.00000, NULL, '2024-03-25 04:25:48', '2024-03-25 04:25:48', 7, 2),
(8, 17, NULL, 0.00000, NULL, '2024-03-25 04:25:59', '2024-03-25 04:25:59', 8, 2),
(9, 17, NULL, 0.00000, NULL, '2024-03-25 04:26:14', '2024-03-25 04:26:14', 9, 2),
(10, 18, NULL, 0.02480, NULL, '2024-03-25 05:18:33', '2024-03-25 05:15:13', 7, 2),
(11, 20, NULL, 0.02480, NULL, '2024-03-25 05:18:38', '2024-03-25 05:16:40', 7, 2),
(12, 21, NULL, 0.02480, NULL, '2024-03-25 05:18:42', '2024-03-25 05:16:40', 7, 2),
(13, 18, NULL, 0.03730, NULL, '2024-03-25 05:19:36', '2024-03-25 05:19:36', 8, 2),
(14, 20, NULL, 0.03730, NULL, '2024-03-25 05:19:36', '2024-03-25 05:19:36', 8, 2),
(15, 21, NULL, 0.03730, NULL, '2024-03-25 05:19:36', '2024-03-25 05:19:36', 8, 2),
(16, 18, NULL, 0.05580, NULL, '2024-03-25 05:20:54', '2024-03-25 05:20:54', 9, 2),
(17, 20, NULL, 0.05580, NULL, '2024-03-25 05:20:54', '2024-03-25 05:20:54', 9, 2),
(18, 21, NULL, 0.05580, NULL, '2024-03-25 05:20:55', '2024-03-25 05:20:55', 9, 2),
(19, 4, NULL, 0.00000, NULL, '2024-03-25 05:36:01', '2024-03-25 05:36:01', 8, 2),
(20, 4, NULL, 0.00000, NULL, '2024-03-25 05:36:19', '2024-03-25 05:36:19', 9, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `pv_progress`
--

CREATE TABLE `pv_progress` (
  `progress_id` int(11) NOT NULL,
  `pv_id` int(11) DEFAULT NULL,
  `series_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(10,5) DEFAULT NULL,
  `supervisor` varchar(255) DEFAULT NULL,
  `non_construction_reason` text DEFAULT NULL,
  `progress_calculation_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `pv_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `pv_progress`
--

INSERT INTO `pv_progress` (`progress_id`, `pv_id`, `series_id`, `progress_percentage`, `supervisor`, `non_construction_reason`, `progress_calculation_description`, `last_update`, `create_at`, `pv_week_id`, `user_id`) VALUES
(1, 17, NULL, 0.12600, NULL, NULL, NULL, '2024-03-25 04:13:39', '2024-03-25 04:11:53', 1, 2),
(2, 17, NULL, 0.12600, NULL, NULL, NULL, '2024-03-25 04:22:46', '2024-03-25 04:22:46', 2, 2),
(3, 17, NULL, 0.60900, NULL, NULL, NULL, '2024-03-25 04:23:43', '2024-03-25 04:23:43', 3, 2),
(4, 17, NULL, 0.73900, NULL, NULL, NULL, '2024-03-25 04:24:34', '2024-03-25 04:24:34', 4, 2),
(5, 17, NULL, 0.73900, NULL, NULL, NULL, '2024-03-25 04:25:18', '2024-03-25 04:25:18', 5, 2),
(6, 17, NULL, 0.73900, NULL, NULL, NULL, '2024-03-25 04:25:35', '2024-03-25 04:25:35', 6, 2),
(7, 17, NULL, 0.73900, NULL, NULL, NULL, '2024-03-25 04:25:48', '2024-03-25 04:25:48', 7, 2),
(8, 17, NULL, 0.73900, NULL, NULL, NULL, '2024-03-25 04:25:59', '2024-03-25 04:25:59', 8, 2),
(9, 17, NULL, 0.73900, NULL, NULL, NULL, '2024-03-25 04:26:14', '2024-03-25 04:26:14', 9, 2),
(10, 18, NULL, 0.00000, NULL, NULL, NULL, '2024-03-25 05:15:12', '2024-03-25 05:15:12', 7, 2),
(11, 20, NULL, 0.00000, NULL, NULL, NULL, '2024-03-25 05:16:40', '2024-03-25 05:16:40', 7, 2),
(12, 21, NULL, 0.00000, NULL, NULL, NULL, '2024-03-25 05:16:40', '2024-03-25 05:16:40', 7, 2),
(13, 18, NULL, 0.00000, NULL, NULL, NULL, '2024-03-25 05:19:36', '2024-03-25 05:19:36', 8, 2),
(14, 20, NULL, 0.00000, NULL, NULL, NULL, '2024-03-25 05:19:36', '2024-03-25 05:19:36', 8, 2),
(15, 21, NULL, 0.00000, NULL, NULL, NULL, '2024-03-25 05:19:36', '2024-03-25 05:19:36', 8, 2),
(16, 18, NULL, 0.00000, NULL, NULL, NULL, '2024-03-25 05:20:54', '2024-03-25 05:20:54', 9, 2),
(17, 20, NULL, 0.00000, NULL, NULL, NULL, '2024-03-25 05:20:54', '2024-03-25 05:20:54', 9, 2),
(18, 21, NULL, 0.00000, NULL, NULL, NULL, '2024-03-25 05:20:55', '2024-03-25 05:20:55', 9, 2),
(19, 4, NULL, 0.10500, NULL, NULL, NULL, '2024-03-25 05:36:01', '2024-03-25 05:36:01', 8, 2),
(20, 4, NULL, 0.10500, NULL, NULL, NULL, '2024-03-25 05:36:19', '2024-03-25 05:36:19', 9, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `pv_week`
--

CREATE TABLE `pv_week` (
  `week_id` int(11) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `pv_week`
--

INSERT INTO `pv_week` (`week_id`, `year`, `quarter`, `week`, `start_date`, `end_date`, `user_id`) VALUES
(1, '2024', 1, 1, '2023-12-31', '2024-01-06', 2),
(2, '2024', 1, 2, '2024-01-07', '2024-01-13', 2),
(3, '2024', 1, 3, '2024-01-14', '2024-01-20', 2),
(4, '2024', 1, 4, '2024-01-21', '2024-01-27', 2),
(5, '2024', 1, 5, '2024-01-28', '2024-02-03', 2),
(6, '2024', 1, 6, '2024-02-04', '2024-02-10', 2),
(7, '2024', 1, 7, '2024-02-11', '2024-02-17', 2),
(8, '2024', 1, 8, '2024-02-18', '2024-02-24', 2),
(9, '2024', 1, 9, '2024-02-25', '2024-03-02', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `series`
--

CREATE TABLE `series` (
  `series_id` int(11) NOT NULL,
  `series_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `change_description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
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
  `change_description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `voltage161kbank_progress`
--

CREATE TABLE `voltage161kbank_progress` (
  `voltage161k_bank_id` int(11) NOT NULL,
  `voltage161k_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `voltage161k_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `voltage161kbank_progress_expected`
--

CREATE TABLE `voltage161kbank_progress_expected` (
  `voltage161k_bank_expected_id` int(11) NOT NULL,
  `voltage161k_id` int(11) DEFAULT NULL,
  `parameter_id` int(11) DEFAULT NULL,
  `is_parameter_based` tinyint(1) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `voltage161k_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `voltage161k_bank_expected_history`
--

CREATE TABLE `voltage161k_bank_expected_history` (
  `history_id` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `changed_column` varchar(255) DEFAULT NULL,
  `previous_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `change_type` varchar(50) DEFAULT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` varchar(255) DEFAULT NULL,
  `change_reason` text DEFAULT NULL,
  `change_description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `voltage161k_bank_history`
--

CREATE TABLE `voltage161k_bank_history` (
  `history_id` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `changed_column` varchar(255) DEFAULT NULL,
  `previous_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `change_type` varchar(50) DEFAULT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` varchar(255) DEFAULT NULL,
  `change_reason` text DEFAULT NULL,
  `change_description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `voltage161k_expected_progress`
--

CREATE TABLE `voltage161k_expected_progress` (
  `expected_progress_id` int(11) NOT NULL,
  `voltage161k_id` int(11) DEFAULT NULL,
  `parameter_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `calculation_date` date DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `voltage161k_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `voltage161k_progress`
--

CREATE TABLE `voltage161k_progress` (
  `progress_id` int(11) NOT NULL,
  `voltage161k_id` int(11) DEFAULT NULL,
  `series_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `supervisor` varchar(255) DEFAULT NULL,
  `non_construction_reason` text DEFAULT NULL,
  `progress_calculation_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `voltage161k_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `voltage161k_week`
--

CREATE TABLE `voltage161k_week` (
  `week_id` int(11) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `voltage161k_week`
--

INSERT INTO `voltage161k_week` (`week_id`, `year`, `quarter`, `week`, `start_date`, `end_date`, `user_id`) VALUES
(1, '2024', 1, 1, '2023-12-31', '2024-01-06', 2),
(2, '2024', 1, 2, '2024-01-07', '2024-01-13', 2),
(3, '2024', 1, 3, '2024-01-14', '2024-01-20', 2),
(4, '2024', 1, 4, '2024-01-21', '2024-01-27', 2),
(5, '2024', 1, 5, '2024-01-28', '2024-02-03', 2),
(6, '2024', 1, 6, '2024-02-04', '2024-02-10', 2),
(7, '2024', 1, 7, '2024-02-11', '2024-02-17', 2),
(8, '2024', 1, 8, '2024-02-18', '2024-02-24', 2),
(9, '2024', 1, 9, '2024-02-25', '2024-03-02', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `voltage228kbank_progress`
--

CREATE TABLE `voltage228kbank_progress` (
  `voltage228k_bank_id` int(11) NOT NULL,
  `voltage228k_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `voltage228k_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `voltage228kbank_progress_expected`
--

CREATE TABLE `voltage228kbank_progress_expected` (
  `voltage228k_bank_expected_id` int(11) NOT NULL,
  `voltage228k_id` int(11) DEFAULT NULL,
  `parameter_id` int(11) DEFAULT NULL,
  `is_parameter_based` tinyint(1) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `voltage228k_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `voltage228k_bank_expected_history`
--

CREATE TABLE `voltage228k_bank_expected_history` (
  `history_id` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `changed_column` varchar(255) DEFAULT NULL,
  `previous_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `change_type` varchar(50) DEFAULT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` varchar(255) DEFAULT NULL,
  `change_reason` text DEFAULT NULL,
  `change_description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `voltage228k_bank_history`
--

CREATE TABLE `voltage228k_bank_history` (
  `history_id` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `changed_column` varchar(255) DEFAULT NULL,
  `previous_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `change_type` varchar(50) DEFAULT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` varchar(255) DEFAULT NULL,
  `change_reason` text DEFAULT NULL,
  `change_description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `voltage228k_expected_progress`
--

CREATE TABLE `voltage228k_expected_progress` (
  `expected_progress_id` int(11) NOT NULL,
  `voltage228k_id` int(11) DEFAULT NULL,
  `parameter_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `calculation_date` date DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `voltage228k_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `voltage228k_progress`
--

CREATE TABLE `voltage228k_progress` (
  `progress_id` int(11) NOT NULL,
  `voltage228k_id` int(11) DEFAULT NULL,
  `series_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `supervisor` varchar(255) DEFAULT NULL,
  `non_construction_reason` text DEFAULT NULL,
  `progress_calculation_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `voltage228k_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `voltage228k_week`
--

CREATE TABLE `voltage228k_week` (
  `week_id` int(11) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `voltage228k_week`
--

INSERT INTO `voltage228k_week` (`week_id`, `year`, `quarter`, `week`, `start_date`, `end_date`, `user_id`) VALUES
(1, '2024', 1, 1, '2023-12-31', '2024-01-06', 2),
(2, '2024', 1, 2, '2024-01-07', '2024-01-13', 2),
(3, '2024', 1, 3, '2024-01-14', '2024-01-20', 2),
(4, '2024', 1, 4, '2024-01-21', '2024-01-27', 2),
(5, '2024', 1, 5, '2024-01-28', '2024-02-03', 2),
(6, '2024', 1, 6, '2024-02-04', '2024-02-10', 2),
(7, '2024', 1, 7, '2024-02-11', '2024-02-17', 2),
(8, '2024', 1, 8, '2024-02-18', '2024-02-24', 2),
(9, '2024', 1, 9, '2024-02-25', '2024-03-02', 2);

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
-- 資料表索引 `breedingbank_progress`
--
ALTER TABLE `breedingbank_progress`
  ADD PRIMARY KEY (`breeding_bank_id`),
  ADD KEY `breeding_id` (`breeding_id`),
  ADD KEY `breeding_week_id` (`breeding_week_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `breedingbank_progress_expected`
--
ALTER TABLE `breedingbank_progress_expected`
  ADD PRIMARY KEY (`breeding_bank_expected_id`),
  ADD KEY `breeding_id` (`breeding_id`),
  ADD KEY `breeding_week_id` (`breeding_week_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `breeding_bank_expected_history`
--
ALTER TABLE `breeding_bank_expected_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `breeding_bank_history`
--
ALTER TABLE `breeding_bank_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `breeding_expected_progress`
--
ALTER TABLE `breeding_expected_progress`
  ADD PRIMARY KEY (`expected_progress_id`),
  ADD KEY `breeding_id` (`breeding_id`),
  ADD KEY `breeding_week_id` (`breeding_week_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `parameter_id` (`parameter_id`);

--
-- 資料表索引 `breeding_progress`
--
ALTER TABLE `breeding_progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `breeding_id` (`breeding_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `series_id` (`series_id`),
  ADD KEY `breeding_week_id` (`breeding_week_id`);

--
-- 資料表索引 `breeding_week`
--
ALTER TABLE `breeding_week`
  ADD PRIMARY KEY (`week_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `cases_history`
--
ALTER TABLE `cases_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `fk_cases_history_user_id` (`user_id`);

--
-- 資料表索引 `cases_progress`
--
ALTER TABLE `cases_progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `case_id` (`case_id`),
  ADD KEY `series_id` (`series_id`),
  ADD KEY `fk_cases_progress_user_id` (`user_id`);

--
-- 資料表索引 `cases_progress_expected`
--
ALTER TABLE `cases_progress_expected`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `case_id` (`case_id`),
  ADD KEY `fk_cases_progress_expected_user_id` (`user_id`);

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
  ADD KEY `case_energy_id` (`case_energy_id`),
  ADD KEY `fk_energy_production_ratio_user_id` (`user_id`);

--
-- 資料表索引 `energy_production_series`
--
ALTER TABLE `energy_production_series`
  ADD PRIMARY KEY (`series_id`),
  ADD KEY `fk_energy_production_series_user_id` (`user_id`);

--
-- 資料表索引 `file_progress`
--
ALTER TABLE `file_progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_file_progress_user_id` (`user_id`);

--
-- 資料表索引 `file_progress_phase`
--
ALTER TABLE `file_progress_phase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_file_progress_user_id` (`user_id`);

--
-- 資料表索引 `logistic_parameters`
--
ALTER TABLE `logistic_parameters`
  ADD PRIMARY KEY (`parameter_id`),
  ADD KEY `fk_logistic_parameters_user_id` (`user_id`);

--
-- 資料表索引 `logistic_parameters_history`
--
ALTER TABLE `logistic_parameters_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `fk_logistic_parameters_history_user_id` (`user_id`);

--
-- 資料表索引 `loops_history`
--
ALTER TABLE `loops_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `fk_loops_history_user_id` (`user_id`);

--
-- 資料表索引 `loops_progress`
--
ALTER TABLE `loops_progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `loop_id` (`loop_id`),
  ADD KEY `series_id` (`series_id`),
  ADD KEY `fk_loops_progress_user_id` (`user_id`);

--
-- 資料表索引 `loops_progress_expected`
--
ALTER TABLE `loops_progress_expected`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `loop_id` (`loop_id`),
  ADD KEY `fk_loops_progress_expected_user_id` (`user_id`);

--
-- 資料表索引 `major_item_percentage`
--
ALTER TABLE `major_item_percentage`
  ADD PRIMARY KEY (`major_item_id`),
  ADD KEY `series_id` (`series_id`),
  ADD KEY `fk_major_item_percentage_user_id` (`user_id`);

--
-- 資料表索引 `major_item_percentage_history`
--
ALTER TABLE `major_item_percentage_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `fk_major_item_percentage_history_user_id` (`user_id`);

--
-- 資料表索引 `master_plans`
--
ALTER TABLE `master_plans`
  ADD PRIMARY KEY (`master_plan_id`),
  ADD KEY `fk_master_plans_user_id` (`user_id`);

--
-- 資料表索引 `master_plans_history`
--
ALTER TABLE `master_plans_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `fk_master_plans_history_user_id` (`user_id`);

--
-- 資料表索引 `master_plan_progress`
--
ALTER TABLE `master_plan_progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `master_plan_id` (`master_plan_id`),
  ADD KEY `fk_master_plan_progress_user_id` (`user_id`);

--
-- 資料表索引 `meeting_record`
--
ALTER TABLE `meeting_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_meeting_record_user_id` (`user_id`);

--
-- 資料表索引 `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`plan_id`),
  ADD KEY `fk_plans_user_id` (`user_id`);

--
-- 資料表索引 `plans_history`
--
ALTER TABLE `plans_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `fk_plans_history_user_id` (`user_id`);

--
-- 資料表索引 `plans_progress`
--
ALTER TABLE `plans_progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `plan_id` (`plan_id`),
  ADD KEY `ratio_id` (`ratio_id`),
  ADD KEY `fk_plans_progress_user_id` (`user_id`);

--
-- 資料表索引 `plan_associations`
--
ALTER TABLE `plan_associations`
  ADD PRIMARY KEY (`association_id`),
  ADD KEY `master_plan_id` (`master_plan_id`),
  ADD KEY `weight_id` (`weight_id`),
  ADD KEY `fk_plan_associations_user_id` (`user_id`);

--
-- 資料表索引 `plan_total_energy_production`
--
ALTER TABLE `plan_total_energy_production`
  ADD PRIMARY KEY (`plan_total_energy_id`),
  ADD KEY `plan_id` (`plan_id`),
  ADD KEY `fk_plan_total_energy_production_user_id` (`user_id`);

--
-- 資料表索引 `plan_weights`
--
ALTER TABLE `plan_weights`
  ADD PRIMARY KEY (`weight_id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `fk_plan_weights_user_id` (`user_id`);

--
-- 資料表索引 `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`),
  ADD KEY `plan_id` (`plan_id`),
  ADD KEY `fk_projects_user_id` (`user_id`);

--
-- 資料表索引 `projects_progress`
--
ALTER TABLE `projects_progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `ratio_id` (`ratio_id`),
  ADD KEY `fk_projects_progress_user_id` (`user_id`);

--
-- 資料表索引 `projects_progress_expected`
--
ALTER TABLE `projects_progress_expected`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `fk_projects_progress_expected_user_id` (`user_id`);

--
-- 資料表索引 `project_breeding`
--
ALTER TABLE `project_breeding`
  ADD PRIMARY KEY (`breeding_id`),
  ADD KEY `fk_project_breeding_user_id` (`user_id`),
  ADD KEY `case_id` (`case_id`),
  ADD KEY `series_id` (`series_id`);

--
-- 資料表索引 `project_breeding_history`
--
ALTER TABLE `project_breeding_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `project_cases`
--
ALTER TABLE `project_cases`
  ADD PRIMARY KEY (`case_id`),
  ADD KEY `loop_id` (`loop_id`),
  ADD KEY `fk_project_cases_user_id` (`user_id`);

--
-- 資料表索引 `project_case_energy_production`
--
ALTER TABLE `project_case_energy_production`
  ADD PRIMARY KEY (`case_energy_id`),
  ADD KEY `case_id` (`case_id`),
  ADD KEY `fk_project_case_energy_production_user_id` (`user_id`);

--
-- 資料表索引 `project_loops`
--
ALTER TABLE `project_loops`
  ADD PRIMARY KEY (`loop_id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `fk_project_loops_user_id` (`user_id`);

--
-- 資料表索引 `project_loop_energy_production`
--
ALTER TABLE `project_loop_energy_production`
  ADD PRIMARY KEY (`loop_energy_id`),
  ADD KEY `loop_id` (`loop_id`),
  ADD KEY `fk_project_loop_energy_production_user_id` (`user_id`);

--
-- 資料表索引 `project_pv`
--
ALTER TABLE `project_pv`
  ADD PRIMARY KEY (`pv_id`),
  ADD KEY `series_id` (`series_id`),
  ADD KEY `fk_project_pv_case_id` (`case_id`),
  ADD KEY `fk_project_pv_user_id` (`user_id`);

--
-- 資料表索引 `project_pv_history`
--
ALTER TABLE `project_pv_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `fk_project_pv_history_user_id` (`user_id`);

--
-- 資料表索引 `project_value_ratios`
--
ALTER TABLE `project_value_ratios`
  ADD PRIMARY KEY (`ratio_id`),
  ADD KEY `plan_id` (`plan_id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `fk_project_value_ratios_user_id` (`user_id`);

--
-- 資料表索引 `project_value_ratios_history`
--
ALTER TABLE `project_value_ratios_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `fk_project_value_ratios_history_user_id` (`user_id`);

--
-- 資料表索引 `project_voltage161k`
--
ALTER TABLE `project_voltage161k`
  ADD PRIMARY KEY (`voltage161k_id`),
  ADD KEY `fk_project_voltage161k_user_id` (`user_id`),
  ADD KEY `case_id` (`case_id`),
  ADD KEY `series_id` (`series_id`);

--
-- 資料表索引 `project_voltage228k`
--
ALTER TABLE `project_voltage228k`
  ADD PRIMARY KEY (`voltage228k_id`),
  ADD KEY `fk_project_voltage228k_user_id` (`user_id`);

--
-- 資料表索引 `pvbank_progress`
--
ALTER TABLE `pvbank_progress`
  ADD PRIMARY KEY (`pv_bank_id`),
  ADD KEY `pv_id` (`pv_id`),
  ADD KEY `pv_week_id` (`pv_week_id`),
  ADD KEY `fk_pvbank_progress_user_id` (`user_id`);

--
-- 資料表索引 `pvbank_progress_expected`
--
ALTER TABLE `pvbank_progress_expected`
  ADD PRIMARY KEY (`pv_bank_expected_id`),
  ADD KEY `pv_id` (`pv_id`),
  ADD KEY `parameter_id` (`parameter_id`),
  ADD KEY `fk_pv_week_id` (`pv_week_id`),
  ADD KEY `fk_pvbank_progress_expected_user_id` (`user_id`);

--
-- 資料表索引 `pv_bank_expected_history`
--
ALTER TABLE `pv_bank_expected_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `fk_pv_bank_expected_history_user_id` (`user_id`);

--
-- 資料表索引 `pv_bank_history`
--
ALTER TABLE `pv_bank_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `fk_pv_bank_history_user_id` (`user_id`);

--
-- 資料表索引 `pv_expected_progress`
--
ALTER TABLE `pv_expected_progress`
  ADD PRIMARY KEY (`expected_progress_id`),
  ADD KEY `pv_id` (`pv_id`),
  ADD KEY `parameter_id` (`parameter_id`),
  ADD KEY `fk_pv_expected_progress_pv_week` (`pv_week_id`),
  ADD KEY `fk_pv_expected_progress_user_id` (`user_id`);

--
-- 資料表索引 `pv_progress`
--
ALTER TABLE `pv_progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `pv_id` (`pv_id`),
  ADD KEY `series_id` (`series_id`),
  ADD KEY `fk_pv_progress_pv_week` (`pv_week_id`),
  ADD KEY `fk_pv_progress_user_id` (`user_id`);

--
-- 資料表索引 `pv_week`
--
ALTER TABLE `pv_week`
  ADD PRIMARY KEY (`week_id`),
  ADD KEY `fk_pv_week_user_id` (`user_id`);

--
-- 資料表索引 `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`series_id`),
  ADD KEY `fk_series_user_id` (`user_id`);

--
-- 資料表索引 `series_history`
--
ALTER TABLE `series_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `fk_series_history_user_id` (`user_id`);

--
-- 資料表索引 `sub_item_percentage`
--
ALTER TABLE `sub_item_percentage`
  ADD PRIMARY KEY (`sub_item_id`),
  ADD KEY `major_item_id` (`major_item_id`),
  ADD KEY `fk_sub_item_percentage_user_id` (`user_id`);

--
-- 資料表索引 `sub_item_percentage_history`
--
ALTER TABLE `sub_item_percentage_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `fk_sub_item_percentage_history_user_id` (`user_id`);

--
-- 資料表索引 `voltage161kbank_progress`
--
ALTER TABLE `voltage161kbank_progress`
  ADD PRIMARY KEY (`voltage161k_bank_id`),
  ADD KEY `fk_voltage161kbank_progress_user_id` (`user_id`),
  ADD KEY `voltage161k_id` (`voltage161k_id`),
  ADD KEY `voltage161k_week_id` (`voltage161k_week_id`);

--
-- 資料表索引 `voltage161kbank_progress_expected`
--
ALTER TABLE `voltage161kbank_progress_expected`
  ADD PRIMARY KEY (`voltage161k_bank_expected_id`),
  ADD KEY `voltage161k_id` (`voltage161k_id`),
  ADD KEY `voltage161k_week_id` (`voltage161k_week_id`),
  ADD KEY `parameter_id` (`parameter_id`),
  ADD KEY `fk_voltage161kbank_progress_expected_user_id` (`user_id`);

--
-- 資料表索引 `voltage161k_bank_expected_history`
--
ALTER TABLE `voltage161k_bank_expected_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `fk_voltage161k_bank_expected_history_user_id` (`user_id`),
  ADD KEY `reference_id` (`reference_id`);

--
-- 資料表索引 `voltage161k_bank_history`
--
ALTER TABLE `voltage161k_bank_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `fk_voltage161k_bank_history_user_id` (`user_id`),
  ADD KEY `reference_id` (`reference_id`);

--
-- 資料表索引 `voltage161k_expected_progress`
--
ALTER TABLE `voltage161k_expected_progress`
  ADD PRIMARY KEY (`expected_progress_id`),
  ADD KEY `voltage161k_id` (`voltage161k_id`),
  ADD KEY `voltage161k_week_id` (`voltage161k_week_id`),
  ADD KEY `parameter_id` (`parameter_id`),
  ADD KEY `fk_voltage161k_expected_progress_user_id` (`user_id`);

--
-- 資料表索引 `voltage161k_progress`
--
ALTER TABLE `voltage161k_progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `voltage161k_week_id` (`voltage161k_week_id`),
  ADD KEY `voltage161k_id` (`voltage161k_id`),
  ADD KEY `series_id` (`series_id`),
  ADD KEY `fk_voltage161k_progress_user_id` (`user_id`);

--
-- 資料表索引 `voltage161k_week`
--
ALTER TABLE `voltage161k_week`
  ADD PRIMARY KEY (`week_id`),
  ADD KEY `fk_voltage161k_week_user_id` (`user_id`);

--
-- 資料表索引 `voltage228kbank_progress`
--
ALTER TABLE `voltage228kbank_progress`
  ADD PRIMARY KEY (`voltage228k_bank_id`),
  ADD KEY `fk_voltage228kbank_progress_user_id` (`user_id`),
  ADD KEY `voltage228k_week_id` (`voltage228k_week_id`),
  ADD KEY `voltage228k_id` (`voltage228k_id`);

--
-- 資料表索引 `voltage228kbank_progress_expected`
--
ALTER TABLE `voltage228kbank_progress_expected`
  ADD PRIMARY KEY (`voltage228k_bank_expected_id`),
  ADD KEY `parameter_id` (`parameter_id`),
  ADD KEY `voltage228k_week_id` (`voltage228k_week_id`),
  ADD KEY `voltage228k_id` (`voltage228k_id`);

--
-- 資料表索引 `voltage228k_bank_expected_history`
--
ALTER TABLE `voltage228k_bank_expected_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `voltage228k_bank_history`
--
ALTER TABLE `voltage228k_bank_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `voltage228k_expected_progress`
--
ALTER TABLE `voltage228k_expected_progress`
  ADD PRIMARY KEY (`expected_progress_id`),
  ADD KEY `fk_voltage228k_expected_progress_user_id` (`user_id`),
  ADD KEY `voltage228k_week_id` (`voltage228k_week_id`),
  ADD KEY `parameter_id` (`parameter_id`),
  ADD KEY `voltage228k_id` (`voltage228k_id`);

--
-- 資料表索引 `voltage228k_progress`
--
ALTER TABLE `voltage228k_progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `series_id` (`series_id`),
  ADD KEY `voltage228k_week_id` (`voltage228k_week_id`),
  ADD KEY `voltage228k_id` (`voltage228k_id`),
  ADD KEY `fk_voltage228k_progress_user_id` (`user_id`);

--
-- 資料表索引 `voltage228k_week`
--
ALTER TABLE `voltage228k_week`
  ADD PRIMARY KEY (`week_id`),
  ADD KEY `fk_voltage228k_week_user_id` (`user_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `breedingbank_progress`
--
ALTER TABLE `breedingbank_progress`
  MODIFY `breeding_bank_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `breedingbank_progress_expected`
--
ALTER TABLE `breedingbank_progress_expected`
  MODIFY `breeding_bank_expected_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `breeding_bank_expected_history`
--
ALTER TABLE `breeding_bank_expected_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `breeding_bank_history`
--
ALTER TABLE `breeding_bank_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `breeding_expected_progress`
--
ALTER TABLE `breeding_expected_progress`
  MODIFY `expected_progress_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `breeding_progress`
--
ALTER TABLE `breeding_progress`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `breeding_week`
--
ALTER TABLE `breeding_week`
  MODIFY `week_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `file_progress_phase`
--
ALTER TABLE `file_progress_phase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_breeding`
--
ALTER TABLE `project_breeding`
  MODIFY `breeding_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_breeding_history`
--
ALTER TABLE `project_breeding_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_cases`
--
ALTER TABLE `project_cases`
  MODIFY `case_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_case_energy_production`
--
ALTER TABLE `project_case_energy_production`
  MODIFY `case_energy_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_loops`
--
ALTER TABLE `project_loops`
  MODIFY `loop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_loop_energy_production`
--
ALTER TABLE `project_loop_energy_production`
  MODIFY `loop_energy_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_pv`
--
ALTER TABLE `project_pv`
  MODIFY `pv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_pv_history`
--
ALTER TABLE `project_pv_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

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
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_voltage161k`
--
ALTER TABLE `project_voltage161k`
  MODIFY `voltage161k_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_voltage228k`
--
ALTER TABLE `project_voltage228k`
  MODIFY `voltage228k_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pvbank_progress`
--
ALTER TABLE `pvbank_progress`
  MODIFY `pv_bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pvbank_progress_expected`
--
ALTER TABLE `pvbank_progress_expected`
  MODIFY `pv_bank_expected_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_expected_progress`
--
ALTER TABLE `pv_expected_progress`
  MODIFY `expected_progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_progress`
--
ALTER TABLE `pv_progress`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_week`
--
ALTER TABLE `pv_week`
  MODIFY `week_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- 使用資料表自動遞增(AUTO_INCREMENT) `voltage161kbank_progress`
--
ALTER TABLE `voltage161kbank_progress`
  MODIFY `voltage161k_bank_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `voltage161kbank_progress_expected`
--
ALTER TABLE `voltage161kbank_progress_expected`
  MODIFY `voltage161k_bank_expected_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `voltage161k_bank_expected_history`
--
ALTER TABLE `voltage161k_bank_expected_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `voltage161k_bank_history`
--
ALTER TABLE `voltage161k_bank_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `voltage161k_expected_progress`
--
ALTER TABLE `voltage161k_expected_progress`
  MODIFY `expected_progress_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `voltage161k_progress`
--
ALTER TABLE `voltage161k_progress`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `voltage161k_week`
--
ALTER TABLE `voltage161k_week`
  MODIFY `week_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `voltage228kbank_progress`
--
ALTER TABLE `voltage228kbank_progress`
  MODIFY `voltage228k_bank_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `voltage228kbank_progress_expected`
--
ALTER TABLE `voltage228kbank_progress_expected`
  MODIFY `voltage228k_bank_expected_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `voltage228k_bank_expected_history`
--
ALTER TABLE `voltage228k_bank_expected_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `voltage228k_bank_history`
--
ALTER TABLE `voltage228k_bank_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `voltage228k_expected_progress`
--
ALTER TABLE `voltage228k_expected_progress`
  MODIFY `expected_progress_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `voltage228k_progress`
--
ALTER TABLE `voltage228k_progress`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `voltage228k_week`
--
ALTER TABLE `voltage228k_week`
  MODIFY `week_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- 資料表的限制式 `breedingbank_progress`
--
ALTER TABLE `breedingbank_progress`
  ADD CONSTRAINT `breedingbank_progress_ibfk_1` FOREIGN KEY (`breeding_id`) REFERENCES `project_breeding` (`breeding_id`),
  ADD CONSTRAINT `breedingbank_progress_ibfk_2` FOREIGN KEY (`breeding_week_id`) REFERENCES `breeding_week` (`week_id`),
  ADD CONSTRAINT `breedingbank_progress_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `breedingbank_progress_expected`
--
ALTER TABLE `breedingbank_progress_expected`
  ADD CONSTRAINT `breedingbank_progress_expected_ibfk_1` FOREIGN KEY (`breeding_id`) REFERENCES `project_breeding` (`breeding_id`),
  ADD CONSTRAINT `breedingbank_progress_expected_ibfk_2` FOREIGN KEY (`breeding_week_id`) REFERENCES `breeding_week` (`week_id`),
  ADD CONSTRAINT `breedingbank_progress_expected_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `breeding_bank_expected_history`
--
ALTER TABLE `breeding_bank_expected_history`
  ADD CONSTRAINT `breeding_bank_expected_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `breedingbank_progress_expected` (`breeding_bank_expected_id`),
  ADD CONSTRAINT `breeding_bank_expected_history_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `breeding_bank_history`
--
ALTER TABLE `breeding_bank_history`
  ADD CONSTRAINT `breeding_bank_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `breedingbank_progress` (`breeding_bank_id`),
  ADD CONSTRAINT `breeding_bank_history_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `breeding_expected_progress`
--
ALTER TABLE `breeding_expected_progress`
  ADD CONSTRAINT `breeding_expected_progress_ibfk_1` FOREIGN KEY (`breeding_id`) REFERENCES `project_breeding` (`breeding_id`),
  ADD CONSTRAINT `breeding_expected_progress_ibfk_2` FOREIGN KEY (`breeding_week_id`) REFERENCES `breeding_week` (`week_id`),
  ADD CONSTRAINT `breeding_expected_progress_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `breeding_expected_progress_ibfk_4` FOREIGN KEY (`parameter_id`) REFERENCES `logistic_parameters` (`parameter_id`);

--
-- 資料表的限制式 `breeding_progress`
--
ALTER TABLE `breeding_progress`
  ADD CONSTRAINT `breeding_progress_ibfk_1` FOREIGN KEY (`breeding_id`) REFERENCES `project_breeding` (`breeding_id`),
  ADD CONSTRAINT `breeding_progress_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `breeding_progress_ibfk_3` FOREIGN KEY (`series_id`) REFERENCES `series` (`series_id`),
  ADD CONSTRAINT `breeding_progress_ibfk_4` FOREIGN KEY (`breeding_week_id`) REFERENCES `breeding_week` (`week_id`);

--
-- 資料表的限制式 `breeding_week`
--
ALTER TABLE `breeding_week`
  ADD CONSTRAINT `breeding_week_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `cases_history`
--
ALTER TABLE `cases_history`
  ADD CONSTRAINT `cases_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `project_cases` (`case_id`),
  ADD CONSTRAINT `fk_cases_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `cases_progress`
--
ALTER TABLE `cases_progress`
  ADD CONSTRAINT `cases_progress_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `project_cases` (`case_id`),
  ADD CONSTRAINT `cases_progress_ibfk_2` FOREIGN KEY (`series_id`) REFERENCES `energy_production_series` (`series_id`),
  ADD CONSTRAINT `fk_cases_progress_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `cases_progress_expected`
--
ALTER TABLE `cases_progress_expected`
  ADD CONSTRAINT `cases_progress_expected_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `project_cases` (`case_id`),
  ADD CONSTRAINT `fk_cases_progress_expected_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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
  ADD CONSTRAINT `energy_production_ratio_ibfk_4` FOREIGN KEY (`case_energy_id`) REFERENCES `project_case_energy_production` (`case_energy_id`),
  ADD CONSTRAINT `fk_energy_production_ratio_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `energy_production_series`
--
ALTER TABLE `energy_production_series`
  ADD CONSTRAINT `fk_energy_production_series_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `file_progress`
--
ALTER TABLE `file_progress`
  ADD CONSTRAINT `fk_file_progress_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `logistic_parameters`
--
ALTER TABLE `logistic_parameters`
  ADD CONSTRAINT `fk_logistic_parameters_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `logistic_parameters_history`
--
ALTER TABLE `logistic_parameters_history`
  ADD CONSTRAINT `fk_logistic_parameters_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `logistic_parameters_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `logistic_parameters` (`parameter_id`);

--
-- 資料表的限制式 `loops_history`
--
ALTER TABLE `loops_history`
  ADD CONSTRAINT `fk_loops_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `loops_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `project_loops` (`loop_id`);

--
-- 資料表的限制式 `loops_progress`
--
ALTER TABLE `loops_progress`
  ADD CONSTRAINT `fk_loops_progress_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `loops_progress_ibfk_1` FOREIGN KEY (`loop_id`) REFERENCES `project_loops` (`loop_id`),
  ADD CONSTRAINT `loops_progress_ibfk_2` FOREIGN KEY (`series_id`) REFERENCES `energy_production_series` (`series_id`);

--
-- 資料表的限制式 `loops_progress_expected`
--
ALTER TABLE `loops_progress_expected`
  ADD CONSTRAINT `fk_loops_progress_expected_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `loops_progress_expected_ibfk_1` FOREIGN KEY (`loop_id`) REFERENCES `project_loops` (`loop_id`);

--
-- 資料表的限制式 `major_item_percentage`
--
ALTER TABLE `major_item_percentage`
  ADD CONSTRAINT `fk_major_item_percentage_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `major_item_percentage_ibfk_1` FOREIGN KEY (`series_id`) REFERENCES `series` (`series_id`);

--
-- 資料表的限制式 `major_item_percentage_history`
--
ALTER TABLE `major_item_percentage_history`
  ADD CONSTRAINT `fk_major_item_percentage_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `major_item_percentage_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `major_item_percentage` (`major_item_id`);

--
-- 資料表的限制式 `master_plans`
--
ALTER TABLE `master_plans`
  ADD CONSTRAINT `fk_master_plans_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `master_plans_history`
--
ALTER TABLE `master_plans_history`
  ADD CONSTRAINT `fk_master_plans_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `master_plans_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `master_plans` (`master_plan_id`);

--
-- 資料表的限制式 `master_plan_progress`
--
ALTER TABLE `master_plan_progress`
  ADD CONSTRAINT `fk_master_plan_progress_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `master_plan_progress_ibfk_1` FOREIGN KEY (`master_plan_id`) REFERENCES `master_plans` (`master_plan_id`);

--
-- 資料表的限制式 `meeting_record`
--
ALTER TABLE `meeting_record`
  ADD CONSTRAINT `fk_meeting_record_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `plans`
--
ALTER TABLE `plans`
  ADD CONSTRAINT `fk_plans_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `plans_history`
--
ALTER TABLE `plans_history`
  ADD CONSTRAINT `fk_plans_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `plans_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `plans` (`plan_id`);

--
-- 資料表的限制式 `plans_progress`
--
ALTER TABLE `plans_progress`
  ADD CONSTRAINT `fk_plans_progress_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `plans_progress_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`plan_id`),
  ADD CONSTRAINT `plans_progress_ibfk_2` FOREIGN KEY (`ratio_id`) REFERENCES `project_value_ratios` (`ratio_id`);

--
-- 資料表的限制式 `plan_associations`
--
ALTER TABLE `plan_associations`
  ADD CONSTRAINT `fk_plan_associations_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `plan_associations_ibfk_1` FOREIGN KEY (`master_plan_id`) REFERENCES `master_plans` (`master_plan_id`),
  ADD CONSTRAINT `plan_associations_ibfk_2` FOREIGN KEY (`weight_id`) REFERENCES `plan_weights` (`weight_id`);

--
-- 資料表的限制式 `plan_total_energy_production`
--
ALTER TABLE `plan_total_energy_production`
  ADD CONSTRAINT `fk_plan_total_energy_production_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `plan_total_energy_production_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`plan_id`);

--
-- 資料表的限制式 `plan_weights`
--
ALTER TABLE `plan_weights`
  ADD CONSTRAINT `fk_plan_weights_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `plan_weights_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `plans` (`plan_id`);

--
-- 資料表的限制式 `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `fk_projects_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`plan_id`);

--
-- 資料表的限制式 `projects_progress`
--
ALTER TABLE `projects_progress`
  ADD CONSTRAINT `fk_projects_progress_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `projects_progress_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`),
  ADD CONSTRAINT `projects_progress_ibfk_2` FOREIGN KEY (`ratio_id`) REFERENCES `project_value_ratios` (`ratio_id`);

--
-- 資料表的限制式 `projects_progress_expected`
--
ALTER TABLE `projects_progress_expected`
  ADD CONSTRAINT `fk_projects_progress_expected_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `projects_progress_expected_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`);

--
-- 資料表的限制式 `project_breeding`
--
ALTER TABLE `project_breeding`
  ADD CONSTRAINT `fk_project_breeding_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `project_breeding_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `project_cases` (`case_id`),
  ADD CONSTRAINT `project_breeding_ibfk_2` FOREIGN KEY (`series_id`) REFERENCES `series` (`series_id`);

--
-- 資料表的限制式 `project_breeding_history`
--
ALTER TABLE `project_breeding_history`
  ADD CONSTRAINT `project_breeding_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `project_breeding` (`breeding_id`),
  ADD CONSTRAINT `project_breeding_history_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `project_cases`
--
ALTER TABLE `project_cases`
  ADD CONSTRAINT `fk_project_cases_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `project_cases_ibfk_1` FOREIGN KEY (`loop_id`) REFERENCES `project_loops` (`loop_id`);

--
-- 資料表的限制式 `project_case_energy_production`
--
ALTER TABLE `project_case_energy_production`
  ADD CONSTRAINT `fk_project_case_energy_production_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `project_case_energy_production_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `project_cases` (`case_id`);

--
-- 資料表的限制式 `project_loops`
--
ALTER TABLE `project_loops`
  ADD CONSTRAINT `fk_project_loops_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `project_loops_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`);

--
-- 資料表的限制式 `project_loop_energy_production`
--
ALTER TABLE `project_loop_energy_production`
  ADD CONSTRAINT `fk_project_loop_energy_production_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `project_loop_energy_production_ibfk_1` FOREIGN KEY (`loop_id`) REFERENCES `project_loops` (`loop_id`);

--
-- 資料表的限制式 `project_pv`
--
ALTER TABLE `project_pv`
  ADD CONSTRAINT `fk_project_pv_case_id` FOREIGN KEY (`case_id`) REFERENCES `project_cases` (`case_id`),
  ADD CONSTRAINT `fk_project_pv_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `project_pv_ibfk_1` FOREIGN KEY (`series_id`) REFERENCES `series` (`series_id`);

--
-- 資料表的限制式 `project_pv_history`
--
ALTER TABLE `project_pv_history`
  ADD CONSTRAINT `fk_project_pv_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `project_pv_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `project_pv` (`pv_id`);

--
-- 資料表的限制式 `project_value_ratios`
--
ALTER TABLE `project_value_ratios`
  ADD CONSTRAINT `fk_project_value_ratios_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `project_value_ratios_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`plan_id`),
  ADD CONSTRAINT `project_value_ratios_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `plans` (`plan_id`);

--
-- 資料表的限制式 `project_value_ratios_history`
--
ALTER TABLE `project_value_ratios_history`
  ADD CONSTRAINT `fk_project_value_ratios_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `project_value_ratios_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `project_value_ratios` (`ratio_id`);

--
-- 資料表的限制式 `project_voltage161k`
--
ALTER TABLE `project_voltage161k`
  ADD CONSTRAINT `fk_project_voltage161k_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `project_voltage161k_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `project_cases` (`case_id`),
  ADD CONSTRAINT `project_voltage161k_ibfk_2` FOREIGN KEY (`series_id`) REFERENCES `series` (`series_id`);

--
-- 資料表的限制式 `project_voltage228k`
--
ALTER TABLE `project_voltage228k`
  ADD CONSTRAINT `fk_project_voltage228k_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `pvbank_progress`
--
ALTER TABLE `pvbank_progress`
  ADD CONSTRAINT `fk_pvbank_progress_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `pvbank_progress_ibfk_1` FOREIGN KEY (`pv_week_id`) REFERENCES `pv_week` (`week_id`),
  ADD CONSTRAINT `pvbank_progress_ibfk_2` FOREIGN KEY (`pv_id`) REFERENCES `project_pv` (`pv_id`);

--
-- 資料表的限制式 `pvbank_progress_expected`
--
ALTER TABLE `pvbank_progress_expected`
  ADD CONSTRAINT `fk_pv_week_id` FOREIGN KEY (`pv_week_id`) REFERENCES `pv_week` (`week_id`),
  ADD CONSTRAINT `fk_pvbank_progress_expected_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `pvbank_progress_expected_ibfk_1` FOREIGN KEY (`pv_id`) REFERENCES `project_pv` (`pv_id`),
  ADD CONSTRAINT `pvbank_progress_expected_ibfk_2` FOREIGN KEY (`parameter_id`) REFERENCES `logistic_parameters` (`parameter_id`);

--
-- 資料表的限制式 `pv_bank_expected_history`
--
ALTER TABLE `pv_bank_expected_history`
  ADD CONSTRAINT `fk_pv_bank_expected_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `pv_bank_expected_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `pv_bank_progress_expected` (`pv_bank_expected_id`);

--
-- 資料表的限制式 `pv_bank_history`
--
ALTER TABLE `pv_bank_history`
  ADD CONSTRAINT `fk_pv_bank_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `pv_bank_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `pv_bank_progress` (`pv_bank_id`);

--
-- 資料表的限制式 `pv_expected_progress`
--
ALTER TABLE `pv_expected_progress`
  ADD CONSTRAINT `fk_pv_expected_progress_pv_week` FOREIGN KEY (`pv_week_id`) REFERENCES `pv_week` (`week_id`),
  ADD CONSTRAINT `fk_pv_expected_progress_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `pv_expected_progress_ibfk_1` FOREIGN KEY (`pv_id`) REFERENCES `project_pv` (`pv_id`),
  ADD CONSTRAINT `pv_expected_progress_ibfk_2` FOREIGN KEY (`parameter_id`) REFERENCES `logistic_parameters` (`parameter_id`);

--
-- 資料表的限制式 `pv_progress`
--
ALTER TABLE `pv_progress`
  ADD CONSTRAINT `fk_pv_progress_pv_week` FOREIGN KEY (`pv_week_id`) REFERENCES `pv_week` (`week_id`),
  ADD CONSTRAINT `fk_pv_progress_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `pv_progress_ibfk_1` FOREIGN KEY (`pv_id`) REFERENCES `project_pv` (`pv_id`),
  ADD CONSTRAINT `pv_progress_ibfk_2` FOREIGN KEY (`series_id`) REFERENCES `series` (`series_id`);

--
-- 資料表的限制式 `pv_week`
--
ALTER TABLE `pv_week`
  ADD CONSTRAINT `fk_pv_week_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `series`
--
ALTER TABLE `series`
  ADD CONSTRAINT `fk_series_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `series_history`
--
ALTER TABLE `series_history`
  ADD CONSTRAINT `fk_series_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `series_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `series` (`series_id`);

--
-- 資料表的限制式 `sub_item_percentage`
--
ALTER TABLE `sub_item_percentage`
  ADD CONSTRAINT `fk_sub_item_percentage_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `sub_item_percentage_ibfk_1` FOREIGN KEY (`major_item_id`) REFERENCES `major_item_percentage` (`major_item_id`);

--
-- 資料表的限制式 `sub_item_percentage_history`
--
ALTER TABLE `sub_item_percentage_history`
  ADD CONSTRAINT `fk_sub_item_percentage_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `sub_item_percentage_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `sub_item_percentage` (`sub_item_id`);

--
-- 資料表的限制式 `voltage161kbank_progress`
--
ALTER TABLE `voltage161kbank_progress`
  ADD CONSTRAINT `fk_voltage161kbank_progress_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `voltage161kbank_progress_ibfk_1` FOREIGN KEY (`voltage161k_id`) REFERENCES `project_voltage161k` (`voltage161k_id`),
  ADD CONSTRAINT `voltage161kbank_progress_ibfk_2` FOREIGN KEY (`voltage161k_week_id`) REFERENCES `voltage161k_week` (`week_id`);

--
-- 資料表的限制式 `voltage161kbank_progress_expected`
--
ALTER TABLE `voltage161kbank_progress_expected`
  ADD CONSTRAINT `fk_voltage161kbank_progress_expected_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `voltage161kbank_progress_expected_ibfk_1` FOREIGN KEY (`voltage161k_id`) REFERENCES `project_voltage161k` (`voltage161k_id`),
  ADD CONSTRAINT `voltage161kbank_progress_expected_ibfk_2` FOREIGN KEY (`voltage161k_week_id`) REFERENCES `voltage161k_week` (`week_id`),
  ADD CONSTRAINT `voltage161kbank_progress_expected_ibfk_3` FOREIGN KEY (`parameter_id`) REFERENCES `logistic_parameters` (`parameter_id`);

--
-- 資料表的限制式 `voltage161k_bank_expected_history`
--
ALTER TABLE `voltage161k_bank_expected_history`
  ADD CONSTRAINT `fk_voltage161k_bank_expected_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `voltage161k_bank_expected_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `voltage161kbank_progress_expected` (`voltage161k_bank_expected_id`);

--
-- 資料表的限制式 `voltage161k_bank_history`
--
ALTER TABLE `voltage161k_bank_history`
  ADD CONSTRAINT `fk_voltage161k_bank_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `voltage161k_bank_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `voltage161kbank_progress` (`voltage161k_bank_id`);

--
-- 資料表的限制式 `voltage161k_expected_progress`
--
ALTER TABLE `voltage161k_expected_progress`
  ADD CONSTRAINT `fk_voltage161k_expected_progress_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `voltage161k_expected_progress_ibfk_1` FOREIGN KEY (`voltage161k_id`) REFERENCES `project_voltage161k` (`voltage161k_id`),
  ADD CONSTRAINT `voltage161k_expected_progress_ibfk_2` FOREIGN KEY (`voltage161k_week_id`) REFERENCES `voltage161k_week` (`week_id`),
  ADD CONSTRAINT `voltage161k_expected_progress_ibfk_3` FOREIGN KEY (`parameter_id`) REFERENCES `logistic_parameters` (`parameter_id`);

--
-- 資料表的限制式 `voltage161k_progress`
--
ALTER TABLE `voltage161k_progress`
  ADD CONSTRAINT `fk_voltage161k_progress_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `voltage161k_progress_ibfk_1` FOREIGN KEY (`voltage161k_week_id`) REFERENCES `voltage161k_week` (`week_id`),
  ADD CONSTRAINT `voltage161k_progress_ibfk_2` FOREIGN KEY (`voltage161k_id`) REFERENCES `project_voltage161k` (`voltage161k_id`),
  ADD CONSTRAINT `voltage161k_progress_ibfk_3` FOREIGN KEY (`series_id`) REFERENCES `series` (`series_id`);

--
-- 資料表的限制式 `voltage161k_week`
--
ALTER TABLE `voltage161k_week`
  ADD CONSTRAINT `fk_voltage161k_week_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `voltage228kbank_progress`
--
ALTER TABLE `voltage228kbank_progress`
  ADD CONSTRAINT `fk_voltage228kbank_progress_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `voltage228kbank_progress_ibfk_1` FOREIGN KEY (`voltage228k_week_id`) REFERENCES `voltage228k_week` (`week_id`),
  ADD CONSTRAINT `voltage228kbank_progress_ibfk_2` FOREIGN KEY (`voltage228k_id`) REFERENCES `project_voltage228k` (`voltage228k_id`);

--
-- 資料表的限制式 `voltage228kbank_progress_expected`
--
ALTER TABLE `voltage228kbank_progress_expected`
  ADD CONSTRAINT `voltage228kbank_progress_expected_ibfk_1` FOREIGN KEY (`parameter_id`) REFERENCES `logistic_parameters` (`parameter_id`),
  ADD CONSTRAINT `voltage228kbank_progress_expected_ibfk_2` FOREIGN KEY (`voltage228k_week_id`) REFERENCES `voltage228k_week` (`week_id`),
  ADD CONSTRAINT `voltage228kbank_progress_expected_ibfk_3` FOREIGN KEY (`voltage228k_id`) REFERENCES `project_voltage228k` (`voltage228k_id`);

--
-- 資料表的限制式 `voltage228k_bank_expected_history`
--
ALTER TABLE `voltage228k_bank_expected_history`
  ADD CONSTRAINT `voltage228k_bank_expected_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `voltage228kbank_progress_expected` (`voltage228k_bank_expected_id`),
  ADD CONSTRAINT `voltage228k_bank_expected_history_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `voltage228k_bank_history`
--
ALTER TABLE `voltage228k_bank_history`
  ADD CONSTRAINT `voltage228k_bank_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `voltage228kbank_progress` (`voltage228k_bank_id`),
  ADD CONSTRAINT `voltage228k_bank_history_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `voltage228k_expected_progress`
--
ALTER TABLE `voltage228k_expected_progress`
  ADD CONSTRAINT `fk_voltage228k_expected_progress_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `voltage228k_expected_progress_ibfk_1` FOREIGN KEY (`voltage228k_week_id`) REFERENCES `voltage228k_week` (`week_id`),
  ADD CONSTRAINT `voltage228k_expected_progress_ibfk_2` FOREIGN KEY (`parameter_id`) REFERENCES `logistic_parameters` (`parameter_id`),
  ADD CONSTRAINT `voltage228k_expected_progress_ibfk_3` FOREIGN KEY (`voltage228k_id`) REFERENCES `project_voltage228k` (`voltage228k_id`);

--
-- 資料表的限制式 `voltage228k_progress`
--
ALTER TABLE `voltage228k_progress`
  ADD CONSTRAINT `fk_voltage228k_progress_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `voltage228k_progress_ibfk_1` FOREIGN KEY (`series_id`) REFERENCES `series` (`series_id`),
  ADD CONSTRAINT `voltage228k_progress_ibfk_2` FOREIGN KEY (`voltage228k_week_id`) REFERENCES `voltage228k_week` (`week_id`),
  ADD CONSTRAINT `voltage228k_progress_ibfk_3` FOREIGN KEY (`voltage228k_id`) REFERENCES `project_voltage228k` (`voltage228k_id`);

--
-- 資料表的限制式 `voltage228k_week`
--
ALTER TABLE `voltage228k_week`
  ADD CONSTRAINT `fk_voltage228k_week_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
