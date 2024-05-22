-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-05-22 08:57:02
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
  `progress_percentage` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `breeding_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `lag_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `breedingbank_progress`
--

INSERT INTO `breedingbank_progress` (`breeding_bank_id`, `breeding_id`, `progress_percentage`, `last_update`, `create_at`, `breeding_week_id`, `user_id`, `lag_status`) VALUES
(1, 93, 0.8845, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 1, 2, 0),
(2, 93, 0.8845, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 2, 2, 0),
(3, 93, 0.8845, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 3, 2, 0),
(4, 93, 0.8845, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 4, 2, 0),
(5, 93, 0.8845, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 5, 2, 0),
(6, 93, 0.9145, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 6, 2, 0),
(7, 93, 0.9145, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 7, 2, 0),
(8, 93, 0.9145, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 8, 2, 0),
(9, 93, 0.9145, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 9, 2, 0),
(10, 93, 0.9145, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 10, 2, 0),
(11, 93, 0.9145, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 11, 2, 0),
(12, 93, 0.9145, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 14, 2, 0),
(13, 93, 0.9145, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 15, 2, 0),
(14, 93, 0.9283, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 17, 2, 0),
(15, 93, 0.9406, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 18, 2, 0),
(16, 93, 0.9406, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 19, 2, 0),
(17, 93, 0.9406, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 20, 2, 0),
(18, 93, 0.9406, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 21, 2, 0),
(20, 94, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 1, 2, 0),
(21, 94, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 2, 2, 0),
(22, 94, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 3, 2, 0),
(23, 94, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 4, 2, 0),
(24, 94, 0.913, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 5, 2, 0),
(25, 94, 0.913, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 6, 2, 0),
(26, 94, 0.913, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 7, 2, 0),
(27, 94, 0.913, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 8, 2, 0),
(28, 94, 0.913, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 9, 2, 0),
(29, 94, 0.913, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 10, 2, 0),
(30, 94, 0.913, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 11, 2, 0),
(31, 94, 0.925, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 14, 2, 0),
(32, 94, 0.925, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 15, 2, 0),
(33, 94, 0.9298, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 17, 2, 0),
(34, 94, 0.9421, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 18, 2, 0),
(35, 94, 0.9421, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 19, 2, 0),
(36, 94, 0.9421, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 20, 2, 0),
(37, 94, 0.9421, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 21, 2, 0),
(39, 95, 0.9205, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 1, 2, 0),
(40, 95, 0.9205, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 2, 2, 0),
(41, 95, 0.9205, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 3, 2, 0),
(42, 95, 0.9205, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 4, 2, 0),
(43, 95, 0.9205, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 5, 2, 0),
(44, 95, 0.9205, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 6, 2, 0),
(45, 95, 0.9205, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 7, 2, 0),
(46, 95, 0.9205, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 8, 2, 0),
(47, 95, 0.9205, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 9, 2, 0),
(48, 95, 0.9205, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 10, 2, 0),
(49, 95, 0.9205, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 11, 2, 0),
(50, 95, 0.9205, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 14, 2, 0),
(51, 95, 0.9205, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 15, 2, 0),
(52, 95, 0.928, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 17, 2, 0),
(53, 95, 0.943, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 18, 2, 0),
(54, 95, 0.943, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 19, 2, 0),
(55, 95, 0.943, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 20, 2, 0),
(56, 95, 0.943, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 21, 2, 0),
(58, 96, 0.9055, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 1, 2, 0),
(59, 96, 0.9055, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 2, 2, 0),
(60, 96, 0.9055, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 3, 2, 0),
(61, 96, 0.9055, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 4, 2, 0),
(62, 96, 0.916, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 5, 2, 0),
(63, 96, 0.916, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 6, 2, 0),
(64, 96, 0.916, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 7, 2, 0),
(65, 96, 0.916, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 8, 2, 0),
(66, 96, 0.916, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 9, 2, 0),
(67, 96, 0.928, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 10, 2, 0),
(68, 96, 0.928, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 11, 2, 0),
(69, 96, 0.928, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 14, 2, 0),
(70, 96, 0.928, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 15, 2, 0),
(71, 96, 0.928, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 17, 2, 0),
(72, 96, 0.928, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 18, 2, 0),
(73, 96, 0.928, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 19, 2, 0),
(74, 96, 0.928, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 20, 2, 0),
(75, 96, 0.928, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 21, 2, 0),
(77, 97, 0.9082, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 1, 2, 0),
(78, 97, 0.9082, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 2, 2, 0),
(79, 97, 0.9082, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 3, 2, 0),
(80, 97, 0.9082, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 4, 2, 0),
(81, 97, 0.9082, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 5, 2, 0),
(82, 97, 0.9232, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 6, 2, 0),
(83, 97, 0.9232, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 7, 2, 0),
(84, 97, 0.9232, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 8, 2, 0),
(85, 97, 0.9232, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 9, 2, 0),
(86, 97, 0.9232, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 10, 2, 0),
(87, 97, 0.9232, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 11, 2, 0),
(88, 97, 0.9232, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 14, 2, 0),
(89, 97, 0.9232, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 15, 2, 0),
(90, 97, 0.9298, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 17, 2, 0),
(91, 97, 0.9373, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 18, 2, 0),
(92, 97, 0.9373, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 19, 2, 0),
(93, 97, 0.9373, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 20, 2, 0),
(94, 97, 0.9373, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 21, 2, 0),
(96, 98, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 1, 2, 0),
(97, 98, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 2, 2, 0),
(98, 98, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 3, 2, 0),
(99, 98, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 4, 2, 0),
(100, 98, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 5, 2, 0),
(101, 98, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 6, 2, 0),
(102, 98, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 7, 2, 0),
(103, 98, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 8, 2, 0),
(104, 98, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 9, 2, 0),
(105, 98, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 10, 2, 0),
(106, 98, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 11, 2, 0),
(107, 98, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 14, 2, 0),
(108, 98, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 15, 2, 0),
(109, 98, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 17, 2, 0),
(110, 98, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 18, 2, 0),
(111, 98, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 19, 2, 0),
(112, 98, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 20, 2, 0),
(113, 98, 0.898, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 21, 2, 0),
(115, 99, 0.8755, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 1, 2, 0),
(116, 99, 0.8755, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 2, 2, 0),
(117, 99, 0.8755, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 3, 2, 0),
(118, 99, 0.8755, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 4, 2, 0),
(119, 99, 0.8755, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 5, 2, 0),
(120, 99, 0.8755, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 6, 2, 0),
(121, 99, 0.8755, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 7, 2, 0),
(122, 99, 0.8755, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 8, 2, 0),
(123, 99, 0.8755, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 9, 2, 0),
(124, 99, 0.8755, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 10, 2, 0),
(125, 99, 0.8755, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 11, 2, 0),
(126, 99, 0.8755, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 14, 2, 0),
(127, 99, 0.8755, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 15, 2, 0),
(128, 99, 0.8755, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 17, 2, 0),
(129, 99, 0.8755, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 18, 2, 0),
(130, 99, 0.8755, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 19, 2, 0),
(131, 99, 0.8755, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 20, 2, 0),
(132, 99, 0.8755, '2024-05-22 02:11:19', '2024-05-22 02:10:11', 21, 2, 0),
(134, 114, 0.898, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 1, 2, 0),
(135, 114, 0.898, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 2, 2, 0),
(136, 114, 0.898, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 3, 2, 0),
(137, 114, 0.898, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 4, 2, 0),
(138, 114, 0.898, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 5, 2, 0),
(139, 114, 0.898, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 6, 2, 0),
(140, 114, 0.898, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 7, 2, 0),
(141, 114, 0.898, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 8, 2, 0),
(142, 114, 0.898, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 9, 2, 0),
(143, 114, 0.898, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 10, 2, 0),
(144, 114, 0.898, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 11, 2, 0),
(145, 114, 0.898, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 14, 2, 0),
(146, 114, 0.898, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 15, 2, 0),
(147, 114, 0.9079, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 17, 2, 0),
(148, 114, 0.929, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 18, 2, 0),
(149, 114, 0.9304, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 19, 2, 0),
(150, 114, 0.9304, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 20, 2, 0),
(151, 114, 0.9304, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 21, 2, 0),
(153, 115, 0.7641, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 1, 2, 0),
(154, 115, 0.775, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 2, 2, 0),
(155, 115, 0.7879, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 3, 2, 0),
(156, 115, 0.838, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 4, 2, 0),
(157, 115, 0.838, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 5, 2, 0),
(158, 115, 0.838, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 6, 2, 0),
(159, 115, 0.838, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 7, 2, 0),
(160, 115, 0.838, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 8, 2, 0),
(161, 115, 0.838, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 9, 2, 0),
(162, 115, 0.838, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 10, 2, 0),
(163, 115, 0.838, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 11, 2, 0),
(164, 115, 0.838, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 14, 2, 0),
(165, 115, 0.8404, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 15, 2, 0),
(166, 115, 0.8404, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 17, 2, 0),
(167, 115, 0.8404, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 18, 2, 0),
(168, 115, 0.8404, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 19, 2, 0),
(169, 115, 0.8404, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 20, 2, 0),
(170, 115, 0.856, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 21, 2, 0),
(172, 116, 0.7501, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 1, 2, 0),
(173, 116, 0.7613, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 2, 2, 0),
(174, 116, 0.7725, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 3, 2, 0),
(175, 116, 0.8005, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 4, 2, 0),
(176, 116, 0.823, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 5, 2, 0),
(177, 116, 0.838, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 6, 2, 0),
(178, 116, 0.838, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 7, 2, 0),
(179, 116, 0.838, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 8, 2, 0),
(180, 116, 0.838, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 9, 2, 0),
(181, 116, 0.838, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 10, 2, 0),
(182, 116, 0.838, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 11, 2, 0),
(183, 116, 0.838, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 14, 2, 0),
(184, 116, 0.8667, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 15, 2, 0),
(185, 116, 0.8779, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 17, 2, 0),
(186, 116, 0.8779, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 18, 2, 0),
(187, 116, 0.8967, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 19, 2, 0),
(188, 116, 0.9079, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 20, 2, 0),
(189, 116, 0.9157, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 21, 2, 0),
(191, 117, 0.772, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 1, 2, 0),
(192, 117, 0.772, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 2, 2, 0),
(193, 117, 0.772, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 3, 2, 0),
(194, 117, 0.772, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 4, 2, 0),
(195, 117, 0.8734, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 5, 2, 0),
(196, 117, 0.8943, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 6, 2, 0),
(197, 117, 0.8943, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 7, 2, 0),
(198, 117, 0.8943, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 8, 2, 0),
(199, 117, 0.9179, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 9, 2, 0),
(200, 117, 0.9305, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 10, 2, 0),
(201, 117, 0.9305, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 11, 2, 0),
(202, 117, 0.9305, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 14, 2, 0),
(203, 117, 0.9404, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 15, 2, 0),
(204, 117, 0.9404, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 17, 2, 0),
(205, 117, 0.97, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 18, 2, 0),
(206, 117, 0.97, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 19, 2, 0),
(207, 117, 0.97, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 20, 2, 0),
(208, 117, 0.97, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 21, 2, 0),
(210, 118, 0.7396, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 1, 2, 0),
(211, 118, 0.7906, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 2, 2, 0),
(212, 118, 0.7906, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 3, 2, 0),
(213, 118, 0.8089, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 4, 2, 0),
(214, 118, 0.8305, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 5, 2, 0),
(215, 118, 0.8692, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 6, 2, 0),
(216, 118, 0.8692, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 7, 2, 0),
(217, 118, 0.9015, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 8, 2, 0),
(218, 118, 0.9256, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 9, 2, 0),
(219, 118, 0.9331, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 10, 2, 0),
(220, 118, 0.9331, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 11, 2, 0),
(221, 118, 0.9481, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 14, 2, 0),
(222, 118, 0.9481, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 15, 2, 0),
(223, 118, 0.9481, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 17, 2, 0),
(224, 118, 0.9481, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 18, 2, 0),
(225, 118, 0.9481, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 19, 2, 0),
(226, 118, 0.9481, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 20, 2, 0),
(227, 118, 0.9481, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 21, 2, 0),
(229, 119, 0.8163, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 1, 2, 0),
(230, 119, 0.8163, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 2, 2, 0),
(231, 119, 0.8163, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 3, 2, 0),
(232, 119, 0.8263, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 4, 2, 0),
(233, 119, 0.8263, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 5, 2, 0),
(234, 119, 0.8424, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 6, 2, 0),
(235, 119, 0.8424, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 7, 2, 0),
(236, 119, 0.8953, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 8, 2, 0),
(237, 119, 0.9181, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 9, 2, 0),
(238, 119, 0.9271, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 10, 2, 0),
(239, 119, 0.9271, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 11, 2, 0),
(240, 119, 0.9496, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 14, 2, 0),
(241, 119, 0.9496, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 15, 2, 0),
(242, 119, 0.9595, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 17, 2, 0),
(243, 119, 0.9745, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 18, 2, 0),
(244, 119, 0.9865, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 19, 2, 0),
(245, 119, 0.9865, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 20, 2, 0),
(246, 119, 0.9865, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 21, 2, 0),
(248, 120, 0.646, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 1, 2, 0),
(249, 120, 0.646, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 2, 2, 0),
(250, 120, 0.6756, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 3, 2, 0),
(251, 120, 0.7375, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 4, 2, 0),
(252, 120, 0.7375, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 5, 2, 0),
(253, 120, 0.7796, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 6, 2, 0),
(254, 120, 0.7796, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 7, 2, 0),
(255, 120, 0.8019, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 8, 2, 0),
(256, 120, 0.8814, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 9, 2, 0),
(257, 120, 0.9331, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 10, 2, 0),
(258, 120, 0.9331, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 11, 2, 0),
(259, 120, 0.9331, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 14, 2, 0),
(260, 120, 0.943, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 15, 2, 0),
(261, 120, 0.958, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 17, 2, 0),
(262, 120, 0.97, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 18, 2, 0),
(263, 120, 0.97, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 19, 2, 0),
(264, 120, 0.97, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 20, 2, 0),
(265, 120, 0.97, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 21, 2, 0),
(267, 132, 0.656, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 1, 2, 0),
(268, 132, 0.656, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 2, 2, 0),
(269, 132, 0.656, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 3, 2, 0),
(270, 132, 0.656, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 4, 2, 0),
(271, 132, 0.656, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 5, 2, 0),
(272, 132, 0.656, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 6, 2, 0),
(273, 132, 0.656, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 7, 2, 0),
(274, 132, 0.656, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 8, 2, 0),
(275, 132, 0.656, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 9, 2, 0),
(276, 132, 0.656, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 10, 2, 0),
(277, 132, 0.656, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 11, 2, 0),
(278, 132, 0.656, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 14, 2, 0),
(279, 132, 0.656, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 15, 2, 0),
(280, 132, 0.656, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 17, 2, 0),
(281, 132, 0.6813, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 18, 2, 0),
(282, 132, 0.7038, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 19, 2, 0),
(283, 132, 0.7071, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 20, 2, 0),
(284, 132, 0.7071, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 21, 2, 0),
(286, 133, 0.7057, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 1, 2, 0),
(287, 133, 0.7057, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 2, 2, 0),
(288, 133, 0.7057, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 3, 2, 0),
(289, 133, 0.7057, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 4, 2, 0),
(290, 133, 0.7057, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 5, 2, 0),
(291, 133, 0.7057, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 6, 2, 0),
(292, 133, 0.7057, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 7, 2, 0),
(293, 133, 0.7057, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 8, 2, 0),
(294, 133, 0.7057, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 9, 2, 0),
(295, 133, 0.7057, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 10, 2, 0),
(296, 133, 0.7057, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 11, 2, 0),
(297, 133, 0.7057, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 14, 2, 0),
(298, 133, 0.7057, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 15, 2, 0),
(299, 133, 0.7061, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 17, 2, 0),
(300, 133, 0.7174, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 18, 2, 0),
(301, 133, 0.7361, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 19, 2, 0),
(302, 133, 0.7361, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 20, 2, 0),
(303, 133, 0.7361, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 21, 2, 0),
(305, 134, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 1, 2, 0),
(306, 134, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 2, 2, 0),
(307, 134, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 3, 2, 0),
(308, 134, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 4, 2, 0),
(309, 134, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 5, 2, 0),
(310, 134, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 6, 2, 0),
(311, 134, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 7, 2, 0),
(312, 134, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 8, 2, 0),
(313, 134, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 9, 2, 0),
(314, 134, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 10, 2, 0),
(315, 134, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 11, 2, 0),
(316, 134, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 14, 2, 0),
(317, 134, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 15, 2, 0),
(318, 134, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 17, 2, 0),
(319, 134, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 18, 2, 0),
(320, 134, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 19, 2, 0),
(321, 134, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 20, 2, 0),
(322, 134, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 21, 2, 0),
(324, 86, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 1, 2, 0),
(325, 86, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 2, 2, 0),
(326, 86, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 3, 2, 0),
(327, 86, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 4, 2, 0),
(328, 86, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 5, 2, 0),
(329, 86, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 6, 2, 0),
(330, 86, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 7, 2, 0),
(331, 86, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 8, 2, 0),
(332, 86, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 9, 2, 0),
(333, 86, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 10, 2, 0),
(334, 86, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 11, 2, 0),
(335, 86, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 14, 2, 0),
(336, 86, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 15, 2, 0),
(337, 86, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 17, 2, 0),
(338, 86, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 18, 2, 0),
(339, 86, 0.8905, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 19, 2, 0),
(340, 86, 0.9079, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 20, 2, 0),
(341, 86, 0.9232, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 21, 2, 0),
(343, 87, 0.6797, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 1, 2, 0),
(344, 87, 0.759, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 2, 2, 0),
(345, 87, 0.7971, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 3, 2, 0),
(346, 87, 0.8136, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 4, 2, 0),
(347, 87, 0.8136, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 5, 2, 0),
(348, 87, 0.8136, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 6, 2, 0),
(349, 87, 0.8136, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 7, 2, 0),
(350, 87, 0.8136, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 8, 2, 0),
(351, 87, 0.8145, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 9, 2, 0),
(352, 87, 0.8145, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 10, 2, 0),
(353, 87, 0.8145, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 11, 2, 0),
(354, 87, 0.8316, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 14, 2, 0),
(355, 87, 0.8316, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 15, 2, 0),
(356, 87, 0.8745, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 17, 2, 0),
(357, 87, 0.8745, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 18, 2, 0),
(358, 87, 0.8745, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 19, 2, 0),
(359, 87, 0.8745, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 20, 2, 0),
(360, 87, 0.8919, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 21, 2, 0),
(362, 88, 0.638, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 1, 2, 0),
(363, 88, 0.666, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 2, 2, 0),
(364, 88, 0.7343, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 3, 2, 0),
(365, 88, 0.768, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 4, 2, 0),
(366, 88, 0.8143, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 5, 2, 0),
(367, 88, 0.8543, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 6, 2, 0),
(368, 88, 0.8543, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 7, 2, 0),
(369, 88, 0.8655, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 8, 2, 0),
(370, 88, 0.8655, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 9, 2, 0),
(371, 88, 0.8955, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 10, 2, 0),
(372, 88, 0.8955, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 11, 2, 0),
(373, 88, 0.9111, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 14, 2, 0),
(374, 88, 0.9111, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 15, 2, 0),
(375, 88, 0.9159, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 17, 2, 0),
(376, 88, 0.9159, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 18, 2, 0),
(377, 88, 0.9159, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 19, 2, 0),
(378, 88, 0.9159, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 20, 2, 0),
(379, 88, 0.9159, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 21, 2, 0),
(381, 89, 0.6609, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 1, 2, 0),
(382, 89, 0.6979, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 2, 2, 0),
(383, 89, 0.7177, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 3, 2, 0),
(384, 89, 0.7554, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 4, 2, 0),
(385, 89, 0.7921, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 5, 2, 0),
(386, 89, 0.8201, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 6, 2, 0),
(387, 89, 0.8201, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 7, 2, 0),
(388, 89, 0.8467, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 8, 2, 0),
(389, 89, 0.8805, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 9, 2, 0),
(390, 89, 0.8931, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 10, 2, 0),
(391, 89, 0.8931, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 11, 2, 0),
(392, 89, 0.8931, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 14, 2, 0),
(393, 89, 0.9258, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 15, 2, 0),
(394, 89, 0.9258, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 17, 2, 0),
(395, 89, 0.9258, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 18, 2, 0),
(396, 89, 0.9258, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 19, 2, 0),
(397, 89, 0.9258, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 20, 2, 0),
(398, 89, 0.9273, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 21, 2, 0),
(400, 90, 0.57, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 1, 2, 0),
(401, 90, 0.57, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 2, 2, 0),
(402, 90, 0.57, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 3, 2, 0),
(403, 90, 0.57, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 4, 2, 0),
(404, 90, 0.57, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 5, 2, 0),
(405, 90, 0.57, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 6, 2, 0),
(406, 90, 0.57, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 7, 2, 0),
(407, 90, 0.57, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 8, 2, 0),
(408, 90, 0.57, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 9, 2, 0),
(409, 90, 0.57, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 10, 2, 0),
(410, 90, 0.57, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 11, 2, 0),
(411, 90, 0.638, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 14, 2, 0),
(412, 90, 0.638, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 15, 2, 0),
(413, 90, 0.638, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 17, 2, 0),
(414, 90, 0.638, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 18, 2, 0),
(415, 90, 0.638, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 19, 2, 0),
(416, 90, 0.638, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 20, 2, 0),
(417, 90, 0.638, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 21, 2, 0),
(419, 91, 0.576, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 1, 2, 0),
(420, 91, 0.576, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 2, 2, 0),
(421, 91, 0.576, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 3, 2, 0),
(422, 91, 0.576, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 4, 2, 0),
(423, 91, 0.576, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 5, 2, 0),
(424, 91, 0.576, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 6, 2, 0),
(425, 91, 0.576, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 7, 2, 0),
(426, 91, 0.576, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 8, 2, 0),
(427, 91, 0.576, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 9, 2, 0),
(428, 91, 0.576, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 10, 2, 0),
(429, 91, 0.576, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 11, 2, 0),
(430, 91, 0.612, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 14, 2, 0),
(431, 91, 0.612, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 15, 2, 0),
(432, 91, 0.612, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 17, 2, 0),
(433, 91, 0.612, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 18, 2, 0),
(434, 91, 0.612, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 19, 2, 0),
(435, 91, 0.612, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 20, 2, 0),
(436, 91, 0.612, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 21, 2, 0),
(438, 92, 0.51, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 1, 2, 0),
(439, 92, 0.51, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 2, 2, 0),
(440, 92, 0.51, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 3, 2, 0),
(441, 92, 0.51, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 4, 2, 0),
(442, 92, 0.51, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 5, 2, 0),
(443, 92, 0.51, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 6, 2, 0),
(444, 92, 0.51, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 7, 2, 0),
(445, 92, 0.51, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 8, 2, 0),
(446, 92, 0.51, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 9, 2, 0),
(447, 92, 0.51, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 10, 2, 0),
(448, 92, 0.51, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 11, 2, 0),
(449, 92, 0.55, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 14, 2, 0),
(450, 92, 0.55, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 15, 2, 0),
(451, 92, 0.57, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 17, 2, 0),
(452, 92, 0.57, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 18, 2, 0),
(453, 92, 0.57, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 19, 2, 0),
(454, 92, 0.57, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 20, 2, 0),
(455, 92, 0.57, '2024-05-22 02:43:22', '2024-05-22 02:43:22', 21, 2, 0),
(457, 79, 0.4558, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 1, 2, 0),
(458, 79, 0.4558, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 2, 2, 0),
(459, 79, 0.4558, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 3, 2, 0),
(460, 79, 0.4558, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 4, 2, 0),
(461, 79, 0.528, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 5, 2, 0),
(462, 79, 0.54, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 6, 2, 0),
(463, 79, 0.54, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 7, 2, 0),
(464, 79, 0.5956, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 8, 2, 0),
(465, 79, 0.6117, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 9, 2, 0),
(466, 79, 0.6117, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 10, 2, 0),
(467, 79, 0.6117, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 11, 2, 0),
(468, 79, 0.6117, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 14, 2, 0),
(469, 79, 0.6117, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 15, 2, 0),
(470, 79, 0.6117, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 17, 2, 0),
(471, 79, 0.6117, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 18, 2, 0),
(472, 79, 0.6117, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 19, 2, 0),
(473, 79, 0.6117, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 20, 2, 0),
(474, 79, 0.6117, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 21, 2, 0),
(476, 80, 0.45, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 1, 2, 0),
(477, 80, 0.45, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 2, 2, 0),
(478, 80, 0.45, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 3, 2, 0),
(479, 80, 0.46, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 4, 2, 0),
(480, 80, 0.46, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 5, 2, 0),
(481, 80, 0.532, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 6, 2, 0),
(482, 80, 0.532, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 7, 2, 0),
(483, 80, 0.547, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 8, 2, 0),
(484, 80, 0.577, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 9, 2, 0),
(485, 80, 0.577, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 10, 2, 0),
(486, 80, 0.577, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 11, 2, 0),
(487, 80, 0.577, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 14, 2, 0),
(488, 80, 0.577, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 15, 2, 0),
(489, 80, 0.577, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 17, 2, 0),
(490, 80, 0.593, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 18, 2, 0),
(491, 80, 0.593, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 19, 2, 0),
(492, 80, 0.593, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 20, 2, 0),
(493, 80, 0.593, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 21, 2, 0),
(495, 81, 0.4557, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 1, 2, 0),
(496, 81, 0.456, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 2, 2, 0),
(497, 81, 0.54, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 3, 2, 0),
(498, 81, 0.576, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 4, 2, 0),
(499, 81, 0.576, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 5, 2, 0),
(500, 81, 0.582, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 6, 2, 0),
(501, 81, 0.582, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 7, 2, 0),
(502, 81, 0.6002, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 8, 2, 0),
(503, 81, 0.6244, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 9, 2, 0),
(504, 81, 0.6691, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 10, 2, 0),
(505, 81, 0.6691, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 11, 2, 0),
(506, 81, 0.7112, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 14, 2, 0),
(507, 81, 0.7112, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 15, 2, 0),
(508, 81, 0.8186, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 17, 2, 0),
(509, 81, 0.8636, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 18, 2, 0),
(510, 81, 0.8636, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 19, 2, 0),
(511, 81, 0.8636, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 20, 2, 0),
(512, 81, 0.8636, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 21, 2, 0),
(514, 82, 0.4557, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 1, 2, 0),
(515, 82, 0.4557, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 2, 2, 0),
(516, 82, 0.54, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 3, 2, 0),
(517, 82, 0.54, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 4, 2, 0),
(518, 82, 0.5463, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 5, 2, 0),
(519, 82, 0.558, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 6, 2, 0),
(520, 82, 0.558, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 7, 2, 0),
(521, 82, 0.568, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 8, 2, 0),
(522, 82, 0.6061, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 9, 2, 0),
(523, 82, 0.6386, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 10, 2, 0),
(524, 82, 0.6386, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 11, 2, 0),
(525, 82, 0.7157, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 14, 2, 0),
(526, 82, 0.7157, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 15, 2, 0),
(527, 82, 0.72, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 17, 2, 0),
(528, 82, 0.7486, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 18, 2, 0),
(529, 82, 0.7786, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 19, 2, 0),
(530, 82, 0.8161, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 20, 2, 0),
(531, 82, 0.8161, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 21, 2, 0),
(533, 83, 0.45, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 1, 2, 0),
(534, 83, 0.45, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 2, 2, 0),
(535, 83, 0.45, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 3, 2, 0),
(536, 83, 0.528, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 4, 2, 0),
(537, 83, 0.6, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 5, 2, 0),
(538, 83, 0.618, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 6, 2, 0),
(539, 83, 0.618, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 7, 2, 0),
(540, 83, 0.628, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 8, 2, 0),
(541, 83, 0.6658, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 9, 2, 0),
(542, 83, 0.6968, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 10, 2, 0),
(543, 83, 0.6968, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 11, 2, 0),
(544, 83, 0.75, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 14, 2, 0),
(545, 83, 0.75, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 15, 2, 0),
(546, 83, 0.75, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 17, 2, 0),
(547, 83, 0.8236, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 18, 2, 0),
(548, 83, 0.8236, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 19, 2, 0),
(549, 83, 0.8236, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 20, 2, 0),
(550, 83, 0.8236, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 21, 2, 0),
(552, 84, 0.4537, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 1, 2, 0),
(553, 84, 0.456, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 2, 2, 0),
(554, 84, 0.456, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 3, 2, 0),
(555, 84, 0.456, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 4, 2, 0),
(556, 84, 0.456, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 5, 2, 0),
(557, 84, 0.456, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 6, 2, 0),
(558, 84, 0.456, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 7, 2, 0),
(559, 84, 0.456, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 8, 2, 0),
(560, 84, 0.466, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 9, 2, 0),
(561, 84, 0.466, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 10, 2, 0),
(562, 84, 0.466, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 11, 2, 0),
(563, 84, 0.58, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 14, 2, 0),
(564, 84, 0.58, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 15, 2, 0),
(565, 84, 0.598, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 17, 2, 0),
(566, 84, 0.598, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 18, 2, 0),
(567, 84, 0.598, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 19, 2, 0),
(568, 84, 0.6505, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 20, 2, 0),
(569, 84, 0.6685, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 21, 2, 0),
(571, 85, 0.3999, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 1, 2, 0),
(572, 85, 0.3999, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 2, 2, 0),
(573, 85, 0.3999, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 3, 2, 0),
(574, 85, 0.3999, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 4, 2, 0),
(575, 85, 0.406, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 5, 2, 0),
(576, 85, 0.406, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 6, 2, 0),
(577, 85, 0.406, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 7, 2, 0),
(578, 85, 0.406, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 8, 2, 0),
(579, 85, 0.406, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 9, 2, 0),
(580, 85, 0.406, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 10, 2, 0),
(581, 85, 0.406, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 11, 2, 0),
(582, 85, 0.406, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 14, 2, 0),
(583, 85, 0.406, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 15, 2, 0),
(584, 85, 0.4825, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 17, 2, 0),
(585, 85, 0.4825, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 18, 2, 0),
(586, 85, 0.4825, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 19, 2, 0),
(587, 85, 0.4975, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 20, 2, 0),
(588, 85, 0.52, '2024-05-22 03:17:29', '2024-05-22 03:17:29', 21, 2, 0),
(590, 100, 0.5288, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 1, 2, 0),
(591, 100, 0.5588, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 2, 2, 0),
(592, 100, 0.558, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 3, 2, 0),
(593, 100, 0.5698, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 4, 2, 0),
(594, 100, 0.5698, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 5, 2, 0),
(595, 100, 0.6293, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 6, 2, 0),
(596, 100, 0.6293, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 7, 2, 0),
(597, 100, 0.6573, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 8, 2, 0),
(598, 100, 0.7271, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 9, 2, 0),
(599, 100, 0.77, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 10, 2, 0),
(600, 100, 0.77, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 11, 2, 0),
(601, 100, 0.77, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 14, 2, 0),
(602, 100, 0.77, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 15, 2, 0),
(603, 100, 0.8033, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 17, 2, 0),
(604, 100, 0.8336, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 18, 2, 0),
(605, 100, 0.8636, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 19, 2, 0),
(606, 100, 0.8636, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 20, 2, 0),
(607, 100, 0.8636, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 21, 2, 0),
(608, 101, 0.5288, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 1, 2, 0),
(609, 101, 0.5408, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 2, 2, 0),
(610, 101, 0.5828, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 3, 2, 0),
(611, 101, 0.644, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 4, 2, 0),
(612, 101, 0.6991, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 5, 2, 0),
(613, 101, 0.7101, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 6, 2, 0),
(614, 101, 0.7101, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 7, 2, 0),
(615, 101, 0.7309, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 8, 2, 0),
(616, 101, 0.7523, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 9, 2, 0),
(617, 101, 0.7748, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 10, 2, 0),
(618, 101, 0.7748, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 11, 2, 0),
(619, 101, 0.88, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 14, 2, 0),
(620, 101, 0.88, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 15, 2, 0),
(621, 101, 0.8971, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 17, 2, 0),
(622, 101, 0.8971, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 18, 2, 0),
(623, 101, 0.9466, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 19, 2, 0),
(624, 101, 0.9466, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 20, 2, 0),
(625, 101, 0.9466, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 21, 2, 0),
(626, 102, 0.4, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 1, 2, 0),
(627, 102, 0.4, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 2, 2, 0),
(628, 102, 0.4, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 3, 2, 0),
(629, 102, 0.4, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 4, 2, 0),
(630, 102, 0.4, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 5, 2, 0),
(631, 102, 0.4, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 6, 2, 0),
(632, 102, 0.4, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 7, 2, 0),
(633, 102, 0.4, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 8, 2, 0),
(634, 102, 0.4, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 9, 2, 0),
(635, 102, 0.4, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 10, 2, 0),
(636, 102, 0.4, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 11, 2, 0),
(637, 102, 0.4, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 14, 2, 0),
(638, 102, 0.4, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 15, 2, 0),
(639, 102, 0.4, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 17, 2, 0),
(640, 102, 0.4, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 18, 2, 0),
(641, 102, 0.4, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 19, 2, 0),
(642, 102, 0.4, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 20, 2, 0),
(643, 102, 0.4, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 21, 2, 0),
(644, 103, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 1, 2, 0),
(645, 103, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 2, 2, 0),
(646, 103, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 3, 2, 0),
(647, 103, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 4, 2, 0),
(648, 103, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 5, 2, 0),
(649, 103, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 6, 2, 0),
(650, 103, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 7, 2, 0),
(651, 103, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 8, 2, 0),
(652, 103, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 9, 2, 0),
(653, 103, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 10, 2, 0),
(654, 103, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 11, 2, 0),
(655, 103, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 14, 2, 0),
(656, 103, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 15, 2, 0),
(657, 103, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 17, 2, 0),
(658, 103, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 18, 2, 0),
(659, 103, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 19, 2, 0),
(660, 103, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 20, 2, 0),
(661, 103, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 21, 2, 0),
(662, 104, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 1, 2, 0),
(663, 104, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 2, 2, 0),
(664, 104, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 3, 2, 0),
(665, 104, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 4, 2, 0),
(666, 104, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 5, 2, 0),
(667, 104, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 6, 2, 0),
(668, 104, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 7, 2, 0),
(669, 104, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 8, 2, 0),
(670, 104, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 9, 2, 0),
(671, 104, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 10, 2, 0),
(672, 104, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 11, 2, 0),
(673, 104, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 14, 2, 0),
(674, 104, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 15, 2, 0),
(675, 104, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 17, 2, 0),
(676, 104, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 18, 2, 0),
(677, 104, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 19, 2, 0),
(678, 104, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 20, 2, 0),
(679, 104, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 21, 2, 0),
(680, 105, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 1, 2, 0),
(681, 105, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 2, 2, 0),
(682, 105, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 3, 2, 0),
(683, 105, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 4, 2, 0),
(684, 105, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 5, 2, 0),
(685, 105, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 6, 2, 0),
(686, 105, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 7, 2, 0),
(687, 105, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 8, 2, 0),
(688, 105, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 9, 2, 0),
(689, 105, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 10, 2, 0),
(690, 105, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 11, 2, 0),
(691, 105, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 14, 2, 0),
(692, 105, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 15, 2, 0),
(693, 105, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 17, 2, 0),
(694, 105, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 18, 2, 0),
(695, 105, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 19, 2, 0),
(696, 105, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 20, 2, 0),
(697, 105, 0.3998, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 21, 2, 0),
(698, 106, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 1, 2, 0),
(699, 106, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 2, 2, 0),
(700, 106, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 3, 2, 0),
(701, 106, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 4, 2, 0),
(702, 106, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 5, 2, 0),
(703, 106, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 6, 2, 0),
(704, 106, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 7, 2, 0),
(705, 106, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 8, 2, 0),
(706, 106, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 9, 2, 0),
(707, 106, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 10, 2, 0),
(708, 106, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 11, 2, 0),
(709, 106, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 14, 2, 0),
(710, 106, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 15, 2, 0),
(711, 106, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 17, 2, 0),
(712, 106, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 18, 2, 0),
(713, 106, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 19, 2, 0),
(714, 106, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 20, 2, 0),
(715, 106, 0.3999, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 21, 2, 0),
(716, 107, 0.5129, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 1, 2, 0),
(717, 107, 0.5129, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 2, 2, 0),
(718, 107, 0.5129, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 3, 2, 0),
(719, 107, 0.5129, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 4, 2, 0),
(720, 107, 0.5129, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 5, 2, 0);
INSERT INTO `breedingbank_progress` (`breeding_bank_id`, `breeding_id`, `progress_percentage`, `last_update`, `create_at`, `breeding_week_id`, `user_id`, `lag_status`) VALUES
(721, 107, 0.5129, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 6, 2, 0),
(722, 107, 0.5129, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 7, 2, 0),
(723, 107, 0.5129, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 8, 2, 0),
(724, 107, 0.5129, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 9, 2, 0),
(725, 107, 0.5129, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 10, 2, 0),
(726, 107, 0.5129, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 11, 2, 0),
(727, 107, 0.5129, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 14, 2, 0),
(728, 107, 0.5129, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 15, 2, 0),
(729, 107, 0.5129, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 17, 2, 0),
(730, 107, 0.5129, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 18, 2, 0),
(731, 107, 0.5129, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 19, 2, 0),
(732, 107, 0.5129, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 20, 2, 0),
(733, 107, 0.5129, '2024-05-22 03:39:29', '2024-05-22 03:39:29', 21, 2, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `breedingbank_progress_expected`
--

CREATE TABLE `breedingbank_progress_expected` (
  `breeding_bank_expected_id` int(11) NOT NULL,
  `breeding_id` int(11) DEFAULT NULL,
  `parameter_id` int(11) DEFAULT NULL,
  `is_parameter_based` tinyint(1) DEFAULT NULL,
  `progress_percentage` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `breeding_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `lag_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `breedingbank_progress_expected`
--

INSERT INTO `breedingbank_progress_expected` (`breeding_bank_expected_id`, `breeding_id`, `parameter_id`, `is_parameter_based`, `progress_percentage`, `last_update`, `create_at`, `breeding_week_id`, `user_id`, `lag_status`) VALUES
(1, 93, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 1, 2, 0),
(2, 93, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 2, 2, 0),
(3, 93, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 3, 2, 0),
(4, 93, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 4, 2, 0),
(5, 93, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 5, 2, 0),
(6, 93, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 6, 2, 0),
(7, 93, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 7, 2, 0),
(8, 93, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 8, 2, 0),
(9, 93, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 9, 2, 0),
(10, 93, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 10, 2, 0),
(11, 93, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 11, 2, 0),
(12, 93, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 14, 2, 0),
(13, 93, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 15, 2, 0),
(14, 93, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 17, 2, 0),
(15, 93, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 18, 2, 0),
(16, 93, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 19, 2, 0),
(17, 93, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 20, 2, 0),
(18, 93, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 21, 2, 0),
(20, 94, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 1, 2, 0),
(21, 94, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 2, 2, 0),
(22, 94, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 3, 2, 0),
(23, 94, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 4, 2, 0),
(24, 94, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 5, 2, 0),
(25, 94, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 6, 2, 0),
(26, 94, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 7, 2, 0),
(27, 94, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 8, 2, 0),
(28, 94, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 9, 2, 0),
(29, 94, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 10, 2, 0),
(30, 94, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 11, 2, 0),
(31, 94, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 14, 2, 0),
(32, 94, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 15, 2, 0),
(33, 94, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 17, 2, 0),
(34, 94, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 18, 2, 0),
(35, 94, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 19, 2, 0),
(36, 94, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 20, 2, 0),
(37, 94, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 21, 2, 0),
(39, 95, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 1, 2, 0),
(40, 95, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 2, 2, 0),
(41, 95, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 3, 2, 0),
(42, 95, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 4, 2, 0),
(43, 95, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 5, 2, 0),
(44, 95, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 6, 2, 0),
(45, 95, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 7, 2, 0),
(46, 95, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 8, 2, 0),
(47, 95, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 9, 2, 0),
(48, 95, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 10, 2, 0),
(49, 95, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 11, 2, 0),
(50, 95, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 14, 2, 0),
(51, 95, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 15, 2, 0),
(52, 95, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 17, 2, 0),
(53, 95, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 18, 2, 0),
(54, 95, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 19, 2, 0),
(55, 95, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 20, 2, 0),
(56, 95, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 21, 2, 0),
(58, 96, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 1, 2, 0),
(59, 96, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 2, 2, 0),
(60, 96, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 3, 2, 0),
(61, 96, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 4, 2, 0),
(62, 96, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 5, 2, 0),
(63, 96, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 6, 2, 0),
(64, 96, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 7, 2, 0),
(65, 96, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 8, 2, 0),
(66, 96, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 9, 2, 0),
(67, 96, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 10, 2, 0),
(68, 96, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 11, 2, 0),
(69, 96, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 14, 2, 0),
(70, 96, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 15, 2, 0),
(71, 96, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 17, 2, 0),
(72, 96, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 18, 2, 0),
(73, 96, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 19, 2, 0),
(74, 96, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 20, 2, 0),
(75, 96, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 21, 2, 0),
(77, 97, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 1, 2, 0),
(78, 97, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 2, 2, 0),
(79, 97, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 3, 2, 0),
(80, 97, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 4, 2, 0),
(81, 97, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 5, 2, 0),
(82, 97, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 6, 2, 0),
(83, 97, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 7, 2, 0),
(84, 97, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 8, 2, 0),
(85, 97, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 9, 2, 0),
(86, 97, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 10, 2, 0),
(87, 97, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 11, 2, 0),
(88, 97, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 14, 2, 0),
(89, 97, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 15, 2, 0),
(90, 97, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 17, 2, 0),
(91, 97, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 18, 2, 0),
(92, 97, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 19, 2, 0),
(93, 97, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 20, 2, 0),
(94, 97, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 21, 2, 0),
(96, 98, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 1, 2, 0),
(97, 98, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 2, 2, 0),
(98, 98, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 3, 2, 0),
(99, 98, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 4, 2, 0),
(100, 98, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 5, 2, 0),
(101, 98, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 6, 2, 0),
(102, 98, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 7, 2, 0),
(103, 98, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 8, 2, 0),
(104, 98, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 9, 2, 0),
(105, 98, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 10, 2, 0),
(106, 98, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 11, 2, 0),
(107, 98, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 14, 2, 0),
(108, 98, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 15, 2, 0),
(109, 98, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 17, 2, 0),
(110, 98, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 18, 2, 0),
(111, 98, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 19, 2, 0),
(112, 98, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 20, 2, 0),
(113, 98, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 21, 2, 0),
(115, 99, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 1, 2, 0),
(116, 99, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 2, 2, 0),
(117, 99, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 3, 2, 0),
(118, 99, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 4, 2, 0),
(119, 99, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 5, 2, 0),
(120, 99, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 6, 2, 0),
(121, 99, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 7, 2, 0),
(122, 99, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 8, 2, 0),
(123, 99, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 9, 2, 0),
(124, 99, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 10, 2, 0),
(125, 99, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 11, 2, 0),
(126, 99, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 14, 2, 0),
(127, 99, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 15, 2, 0),
(128, 99, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 17, 2, 0),
(129, 99, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 18, 2, 0),
(130, 99, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 19, 2, 0),
(131, 99, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 20, 2, 0),
(132, 99, NULL, NULL, 1, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 21, 2, 0),
(134, 114, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 1, 2, 0),
(135, 114, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 2, 2, 0),
(136, 114, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 3, 2, 0),
(137, 114, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 4, 2, 0),
(138, 114, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 5, 2, 0),
(139, 114, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 6, 2, 0),
(140, 114, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 7, 2, 0),
(141, 114, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 8, 2, 0),
(142, 114, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 9, 2, 0),
(143, 114, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 10, 2, 0),
(144, 114, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 11, 2, 0),
(145, 114, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 14, 2, 0),
(146, 114, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 15, 2, 0),
(147, 114, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 17, 2, 0),
(148, 114, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 18, 2, 0),
(149, 114, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 19, 2, 0),
(150, 114, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 20, 2, 0),
(151, 114, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 21, 2, 0),
(153, 115, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 1, 2, 0),
(154, 115, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 2, 2, 0),
(155, 115, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 3, 2, 0),
(156, 115, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 4, 2, 0),
(157, 115, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 5, 2, 0),
(158, 115, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 6, 2, 0),
(159, 115, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 7, 2, 0),
(160, 115, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 8, 2, 0),
(161, 115, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 9, 2, 0),
(162, 115, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 10, 2, 0),
(163, 115, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 11, 2, 0),
(164, 115, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 14, 2, 0),
(165, 115, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 15, 2, 0),
(166, 115, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 17, 2, 0),
(167, 115, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 18, 2, 0),
(168, 115, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 19, 2, 0),
(169, 115, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 20, 2, 0),
(170, 115, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 21, 2, 0),
(172, 116, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 1, 2, 0),
(173, 116, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 2, 2, 0),
(174, 116, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 3, 2, 0),
(175, 116, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 4, 2, 0),
(176, 116, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 5, 2, 0),
(177, 116, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 6, 2, 0),
(178, 116, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 7, 2, 0),
(179, 116, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 8, 2, 0),
(180, 116, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 9, 2, 0),
(181, 116, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 10, 2, 0),
(182, 116, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 11, 2, 0),
(183, 116, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 14, 2, 0),
(184, 116, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 15, 2, 0),
(185, 116, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 17, 2, 0),
(186, 116, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 18, 2, 0),
(187, 116, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 19, 2, 0),
(188, 116, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 20, 2, 0),
(189, 116, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 21, 2, 0),
(191, 117, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 1, 2, 0),
(192, 117, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 2, 2, 0),
(193, 117, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 3, 2, 0),
(194, 117, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 4, 2, 0),
(195, 117, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 5, 2, 0),
(196, 117, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 6, 2, 0),
(197, 117, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 7, 2, 0),
(198, 117, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 8, 2, 0),
(199, 117, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 9, 2, 0),
(200, 117, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 10, 2, 0),
(201, 117, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 11, 2, 0),
(202, 117, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 14, 2, 0),
(203, 117, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 15, 2, 0),
(204, 117, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 17, 2, 0),
(205, 117, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 18, 2, 0),
(206, 117, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 19, 2, 0),
(207, 117, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 20, 2, 0),
(208, 117, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 21, 2, 0),
(210, 118, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 1, 2, 0),
(211, 118, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 2, 2, 0),
(212, 118, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 3, 2, 0),
(213, 118, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 4, 2, 0),
(214, 118, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 5, 2, 0),
(215, 118, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 6, 2, 0),
(216, 118, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 7, 2, 0),
(217, 118, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 8, 2, 0),
(218, 118, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 9, 2, 0),
(219, 118, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 10, 2, 0),
(220, 118, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 11, 2, 0),
(221, 118, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 14, 2, 0),
(222, 118, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 15, 2, 0),
(223, 118, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 17, 2, 0),
(224, 118, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 18, 2, 0),
(225, 118, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 19, 2, 0),
(226, 118, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 20, 2, 0),
(227, 118, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 21, 2, 0),
(229, 119, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 1, 2, 0),
(230, 119, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 2, 2, 0),
(231, 119, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 3, 2, 0),
(232, 119, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 4, 2, 0),
(233, 119, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 5, 2, 0),
(234, 119, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 6, 2, 0),
(235, 119, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 7, 2, 0),
(236, 119, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 8, 2, 0),
(237, 119, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 9, 2, 0),
(238, 119, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 10, 2, 0),
(239, 119, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 11, 2, 0),
(240, 119, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 14, 2, 0),
(241, 119, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 15, 2, 0),
(242, 119, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 17, 2, 0),
(243, 119, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 18, 2, 0),
(244, 119, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 19, 2, 0),
(245, 119, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 20, 2, 0),
(246, 119, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 21, 2, 0),
(248, 120, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 1, 2, 0),
(249, 120, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 2, 2, 0),
(250, 120, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 3, 2, 0),
(251, 120, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 4, 2, 0),
(252, 120, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 5, 2, 0),
(253, 120, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 6, 2, 0),
(254, 120, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 7, 2, 0),
(255, 120, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 8, 2, 0),
(256, 120, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 9, 2, 0),
(257, 120, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 10, 2, 0),
(258, 120, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 11, 2, 0),
(259, 120, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 14, 2, 0),
(260, 120, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 15, 2, 0),
(261, 120, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 17, 2, 0),
(262, 120, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 18, 2, 0),
(263, 120, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 19, 2, 0),
(264, 120, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 20, 2, 0),
(265, 120, NULL, NULL, 1, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 21, 2, 0),
(267, 132, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 1, 2, 0),
(268, 132, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 2, 2, 0),
(269, 132, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 3, 2, 0),
(270, 132, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 4, 2, 0),
(271, 132, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 5, 2, 0),
(272, 132, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 6, 2, 0),
(273, 132, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 7, 2, 0),
(274, 132, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 8, 2, 0),
(275, 132, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 9, 2, 0),
(276, 132, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 10, 2, 0),
(277, 132, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 11, 2, 0),
(278, 132, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 14, 2, 0),
(279, 132, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 15, 2, 0),
(280, 132, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 17, 2, 0),
(281, 132, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 18, 2, 0),
(282, 132, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 19, 2, 0),
(283, 132, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 20, 2, 0),
(284, 132, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 21, 2, 0),
(286, 133, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 1, 2, 0),
(287, 133, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 2, 2, 0),
(288, 133, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 3, 2, 0),
(289, 133, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 4, 2, 0),
(290, 133, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 5, 2, 0),
(291, 133, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 6, 2, 0),
(292, 133, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 7, 2, 0),
(293, 133, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 8, 2, 0),
(294, 133, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 9, 2, 0),
(295, 133, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 10, 2, 0),
(296, 133, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 11, 2, 0),
(297, 133, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 14, 2, 0),
(298, 133, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 15, 2, 0),
(299, 133, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 17, 2, 0),
(300, 133, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 18, 2, 0),
(301, 133, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 19, 2, 0),
(302, 133, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 20, 2, 0),
(303, 133, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 21, 2, 0),
(305, 134, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 1, 2, 0),
(306, 134, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 2, 2, 0),
(307, 134, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 3, 2, 0),
(308, 134, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 4, 2, 0),
(309, 134, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 5, 2, 0),
(310, 134, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 6, 2, 0),
(311, 134, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 7, 2, 0),
(312, 134, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 8, 2, 0),
(313, 134, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 9, 2, 0),
(314, 134, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 10, 2, 0),
(315, 134, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 11, 2, 0),
(316, 134, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 14, 2, 0),
(317, 134, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 15, 2, 0),
(318, 134, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 17, 2, 0),
(319, 134, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 18, 2, 0),
(320, 134, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 19, 2, 0),
(321, 134, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 20, 2, 0),
(322, 134, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 21, 2, 0),
(324, 86, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 1, 2, 0),
(325, 86, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 2, 2, 0),
(326, 86, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 3, 2, 0),
(327, 86, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 4, 2, 0),
(328, 86, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 5, 2, 0),
(329, 86, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 6, 2, 0),
(330, 86, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 7, 2, 0),
(331, 86, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 8, 2, 0),
(332, 86, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 9, 2, 0),
(333, 86, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 10, 2, 0),
(334, 86, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 11, 2, 0),
(335, 86, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 14, 2, 0),
(336, 86, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 15, 2, 0),
(337, 86, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 17, 2, 0),
(338, 86, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 18, 2, 0),
(339, 86, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 19, 2, 0),
(340, 86, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 20, 2, 0),
(341, 86, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 21, 2, 0),
(343, 87, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 1, 2, 0),
(344, 87, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 2, 2, 0),
(345, 87, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 3, 2, 0),
(346, 87, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 4, 2, 0),
(347, 87, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 5, 2, 0),
(348, 87, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 6, 2, 0),
(349, 87, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 7, 2, 0),
(350, 87, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 8, 2, 0),
(351, 87, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 9, 2, 0),
(352, 87, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 10, 2, 0),
(353, 87, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 11, 2, 0),
(354, 87, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 14, 2, 0),
(355, 87, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 15, 2, 0),
(356, 87, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 17, 2, 0),
(357, 87, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 18, 2, 0),
(358, 87, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 19, 2, 0),
(359, 87, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 20, 2, 0),
(360, 87, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 21, 2, 0),
(362, 88, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 1, 2, 0),
(363, 88, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 2, 2, 0),
(364, 88, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 3, 2, 0),
(365, 88, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 4, 2, 0),
(366, 88, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 5, 2, 0),
(367, 88, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 6, 2, 0),
(368, 88, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 7, 2, 0),
(369, 88, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 8, 2, 0),
(370, 88, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 9, 2, 0),
(371, 88, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 10, 2, 0),
(372, 88, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 11, 2, 0),
(373, 88, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 14, 2, 0),
(374, 88, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 15, 2, 0),
(375, 88, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 17, 2, 0),
(376, 88, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 18, 2, 0),
(377, 88, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 19, 2, 0),
(378, 88, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 20, 2, 0),
(379, 88, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 21, 2, 0),
(381, 89, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 1, 2, 0),
(382, 89, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 2, 2, 0),
(383, 89, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 3, 2, 0),
(384, 89, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 4, 2, 0),
(385, 89, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 5, 2, 0),
(386, 89, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 6, 2, 0),
(387, 89, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 7, 2, 0),
(388, 89, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 8, 2, 0),
(389, 89, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 9, 2, 0),
(390, 89, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 10, 2, 0),
(391, 89, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 11, 2, 0),
(392, 89, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 14, 2, 0),
(393, 89, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 15, 2, 0),
(394, 89, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 17, 2, 0),
(395, 89, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 18, 2, 0),
(396, 89, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 19, 2, 0),
(397, 89, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 20, 2, 0),
(398, 89, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 21, 2, 0),
(400, 90, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 1, 2, 0),
(401, 90, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 2, 2, 0),
(402, 90, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 3, 2, 0),
(403, 90, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 4, 2, 0),
(404, 90, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 5, 2, 0),
(405, 90, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 6, 2, 0),
(406, 90, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 7, 2, 0),
(407, 90, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 8, 2, 0),
(408, 90, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 9, 2, 0),
(409, 90, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 10, 2, 0),
(410, 90, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 11, 2, 0),
(411, 90, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 14, 2, 0),
(412, 90, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 15, 2, 0),
(413, 90, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 17, 2, 0),
(414, 90, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 18, 2, 0),
(415, 90, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 19, 2, 0),
(416, 90, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 20, 2, 0),
(417, 90, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 21, 2, 0),
(419, 91, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 1, 2, 0),
(420, 91, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 2, 2, 0),
(421, 91, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 3, 2, 0),
(422, 91, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 4, 2, 0),
(423, 91, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 5, 2, 0),
(424, 91, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 6, 2, 0),
(425, 91, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 7, 2, 0),
(426, 91, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 8, 2, 0),
(427, 91, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 9, 2, 0),
(428, 91, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 10, 2, 0),
(429, 91, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 11, 2, 0),
(430, 91, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 14, 2, 0),
(431, 91, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 15, 2, 0),
(432, 91, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 17, 2, 0),
(433, 91, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 18, 2, 0),
(434, 91, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 19, 2, 0),
(435, 91, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 20, 2, 0),
(436, 91, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 21, 2, 0),
(438, 92, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 1, 2, 0),
(439, 92, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 2, 2, 0),
(440, 92, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 3, 2, 0),
(441, 92, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 4, 2, 0),
(442, 92, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 5, 2, 0),
(443, 92, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 6, 2, 0),
(444, 92, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 7, 2, 0),
(445, 92, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 8, 2, 0),
(446, 92, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 9, 2, 0),
(447, 92, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 10, 2, 0),
(448, 92, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 11, 2, 0),
(449, 92, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 14, 2, 0),
(450, 92, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 15, 2, 0),
(451, 92, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 17, 2, 0),
(452, 92, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 18, 2, 0),
(453, 92, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 19, 2, 0),
(454, 92, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 20, 2, 0),
(455, 92, NULL, NULL, 1, '2024-05-22 02:44:45', '2024-05-22 02:44:45', 21, 2, 0),
(457, 79, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 1, 2, 0),
(458, 79, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 2, 2, 0),
(459, 79, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 3, 2, 0),
(460, 79, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 4, 2, 0),
(461, 79, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 5, 2, 0),
(462, 79, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 6, 2, 0),
(463, 79, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 7, 2, 0),
(464, 79, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 8, 2, 0),
(465, 79, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 9, 2, 0),
(466, 79, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 10, 2, 0),
(467, 79, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 11, 2, 0),
(468, 79, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 14, 2, 0),
(469, 79, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 15, 2, 0),
(470, 79, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 17, 2, 0),
(471, 79, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 18, 2, 0),
(472, 79, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 19, 2, 0),
(473, 79, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 20, 2, 0),
(474, 79, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 21, 2, 0),
(476, 80, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 1, 2, 0),
(477, 80, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 2, 2, 0),
(478, 80, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 3, 2, 0),
(479, 80, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 4, 2, 0),
(480, 80, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 5, 2, 0),
(481, 80, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 6, 2, 0),
(482, 80, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 7, 2, 0),
(483, 80, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 8, 2, 0),
(484, 80, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 9, 2, 0),
(485, 80, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 10, 2, 0),
(486, 80, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 11, 2, 0),
(487, 80, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 14, 2, 0),
(488, 80, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 15, 2, 0),
(489, 80, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 17, 2, 0),
(490, 80, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 18, 2, 0),
(491, 80, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 19, 2, 0),
(492, 80, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 20, 2, 0),
(493, 80, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 21, 2, 0),
(495, 81, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 1, 2, 0),
(496, 81, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 2, 2, 0),
(497, 81, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 3, 2, 0),
(498, 81, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 4, 2, 0),
(499, 81, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 5, 2, 0),
(500, 81, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 6, 2, 0),
(501, 81, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 7, 2, 0),
(502, 81, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 8, 2, 0),
(503, 81, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 9, 2, 0),
(504, 81, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 10, 2, 0),
(505, 81, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 11, 2, 0),
(506, 81, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 14, 2, 0),
(507, 81, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 15, 2, 0),
(508, 81, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 17, 2, 0),
(509, 81, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 18, 2, 0),
(510, 81, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 19, 2, 0),
(511, 81, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 20, 2, 0),
(512, 81, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 21, 2, 0),
(514, 82, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 1, 2, 0),
(515, 82, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 2, 2, 0),
(516, 82, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 3, 2, 0),
(517, 82, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 4, 2, 0),
(518, 82, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 5, 2, 0),
(519, 82, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 6, 2, 0),
(520, 82, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 7, 2, 0),
(521, 82, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 8, 2, 0),
(522, 82, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 9, 2, 0),
(523, 82, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 10, 2, 0),
(524, 82, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 11, 2, 0),
(525, 82, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 14, 2, 0),
(526, 82, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 15, 2, 0),
(527, 82, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 17, 2, 0),
(528, 82, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 18, 2, 0),
(529, 82, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 19, 2, 0),
(530, 82, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 20, 2, 0),
(531, 82, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 21, 2, 0),
(533, 83, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 1, 2, 0),
(534, 83, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 2, 2, 0),
(535, 83, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 3, 2, 0),
(536, 83, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 4, 2, 0),
(537, 83, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 5, 2, 0),
(538, 83, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 6, 2, 0),
(539, 83, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 7, 2, 0),
(540, 83, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 8, 2, 0),
(541, 83, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 9, 2, 0),
(542, 83, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 10, 2, 0),
(543, 83, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 11, 2, 0),
(544, 83, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 14, 2, 0),
(545, 83, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 15, 2, 0),
(546, 83, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 17, 2, 0),
(547, 83, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 18, 2, 0),
(548, 83, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 19, 2, 0),
(549, 83, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 20, 2, 0),
(550, 83, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 21, 2, 0),
(552, 84, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 1, 2, 0),
(553, 84, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 2, 2, 0),
(554, 84, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 3, 2, 0),
(555, 84, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 4, 2, 0),
(556, 84, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 5, 2, 0),
(557, 84, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 6, 2, 0),
(558, 84, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 7, 2, 0),
(559, 84, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 8, 2, 0),
(560, 84, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 9, 2, 0),
(561, 84, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 10, 2, 0),
(562, 84, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 11, 2, 0),
(563, 84, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 14, 2, 0),
(564, 84, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 15, 2, 0),
(565, 84, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 17, 2, 0),
(566, 84, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 18, 2, 0),
(567, 84, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 19, 2, 0),
(568, 84, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 20, 2, 0),
(569, 84, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 21, 2, 0),
(571, 85, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 1, 2, 0),
(572, 85, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 2, 2, 0),
(573, 85, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 3, 2, 0),
(574, 85, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 4, 2, 0),
(575, 85, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 5, 2, 0),
(576, 85, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 6, 2, 0),
(577, 85, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 7, 2, 0),
(578, 85, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 8, 2, 0),
(579, 85, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 9, 2, 0),
(580, 85, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 10, 2, 0),
(581, 85, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 11, 2, 0),
(582, 85, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 14, 2, 0),
(583, 85, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 15, 2, 0),
(584, 85, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 17, 2, 0),
(585, 85, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 18, 2, 0),
(586, 85, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 19, 2, 0),
(587, 85, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 20, 2, 0),
(588, 85, NULL, NULL, 1, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 21, 2, 0),
(742, 100, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 1, 2, 0),
(743, 100, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 2, 2, 0),
(744, 100, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 3, 2, 0),
(745, 100, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 4, 2, 0),
(746, 100, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 5, 2, 0),
(747, 100, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 6, 2, 0),
(748, 100, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 7, 2, 0),
(749, 100, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 8, 2, 0),
(750, 100, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 9, 2, 0),
(751, 100, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 10, 2, 0),
(752, 100, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 11, 2, 0),
(753, 100, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 14, 2, 0),
(754, 100, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 15, 2, 0),
(755, 100, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 17, 2, 0),
(756, 100, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 18, 2, 0),
(757, 100, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 19, 2, 0),
(758, 100, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 20, 2, 0),
(759, 100, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 21, 2, 0),
(760, 101, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 1, 2, 0),
(761, 101, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 2, 2, 0),
(762, 101, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 3, 2, 0),
(763, 101, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 4, 2, 0),
(764, 101, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 5, 2, 0),
(765, 101, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 6, 2, 0),
(766, 101, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 7, 2, 0),
(767, 101, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 8, 2, 0),
(768, 101, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 9, 2, 0),
(769, 101, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 10, 2, 0),
(770, 101, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 11, 2, 0),
(771, 101, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 14, 2, 0),
(772, 101, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 15, 2, 0),
(773, 101, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 17, 2, 0),
(774, 101, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 18, 2, 0),
(775, 101, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 19, 2, 0),
(776, 101, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 20, 2, 0),
(777, 101, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 21, 2, 0),
(778, 102, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 1, 2, 0),
(779, 102, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 2, 2, 0),
(780, 102, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 3, 2, 0),
(781, 102, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 4, 2, 0),
(782, 102, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 5, 2, 0),
(783, 102, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 6, 2, 0),
(784, 102, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 7, 2, 0),
(785, 102, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 8, 2, 0),
(786, 102, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 9, 2, 0),
(787, 102, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 10, 2, 0),
(788, 102, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 11, 2, 0),
(789, 102, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 14, 2, 0),
(790, 102, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 15, 2, 0),
(791, 102, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 17, 2, 0),
(792, 102, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 18, 2, 0),
(793, 102, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 19, 2, 0),
(794, 102, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 20, 2, 0),
(795, 102, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 21, 2, 0),
(796, 103, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 1, 2, 0),
(797, 103, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 2, 2, 0),
(798, 103, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 3, 2, 0),
(799, 103, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 4, 2, 0),
(800, 103, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 5, 2, 0),
(801, 103, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 6, 2, 0),
(802, 103, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 7, 2, 0),
(803, 103, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 8, 2, 0),
(804, 103, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 9, 2, 0),
(805, 103, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 10, 2, 0),
(806, 103, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 11, 2, 0),
(807, 103, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 14, 2, 0);
INSERT INTO `breedingbank_progress_expected` (`breeding_bank_expected_id`, `breeding_id`, `parameter_id`, `is_parameter_based`, `progress_percentage`, `last_update`, `create_at`, `breeding_week_id`, `user_id`, `lag_status`) VALUES
(808, 103, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 15, 2, 0),
(809, 103, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 17, 2, 0),
(810, 103, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 18, 2, 0),
(811, 103, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 19, 2, 0),
(812, 103, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 20, 2, 0),
(813, 103, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 21, 2, 0),
(814, 104, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 1, 2, 0),
(815, 104, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 2, 2, 0),
(816, 104, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 3, 2, 0),
(817, 104, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 4, 2, 0),
(818, 104, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 5, 2, 0),
(819, 104, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 6, 2, 0),
(820, 104, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 7, 2, 0),
(821, 104, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 8, 2, 0),
(822, 104, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 9, 2, 0),
(823, 104, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 10, 2, 0),
(824, 104, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 11, 2, 0),
(825, 104, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 14, 2, 0),
(826, 104, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 15, 2, 0),
(827, 104, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 17, 2, 0),
(828, 104, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 18, 2, 0),
(829, 104, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 19, 2, 0),
(830, 104, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 20, 2, 0),
(831, 104, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 21, 2, 0),
(832, 105, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 1, 2, 0),
(833, 105, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 2, 2, 0),
(834, 105, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 3, 2, 0),
(835, 105, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 4, 2, 0),
(836, 105, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 5, 2, 0),
(837, 105, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 6, 2, 0),
(838, 105, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 7, 2, 0),
(839, 105, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 8, 2, 0),
(840, 105, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 9, 2, 0),
(841, 105, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 10, 2, 0),
(842, 105, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 11, 2, 0),
(843, 105, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 14, 2, 0),
(844, 105, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 15, 2, 0),
(845, 105, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 17, 2, 0),
(846, 105, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 18, 2, 0),
(847, 105, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 19, 2, 0),
(848, 105, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 20, 2, 0),
(849, 105, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 21, 2, 0),
(850, 106, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 1, 2, 0),
(851, 106, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 2, 2, 0),
(852, 106, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 3, 2, 0),
(853, 106, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 4, 2, 0),
(854, 106, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 5, 2, 0),
(855, 106, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 6, 2, 0),
(856, 106, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 7, 2, 0),
(857, 106, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 8, 2, 0),
(858, 106, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 9, 2, 0),
(859, 106, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 10, 2, 0),
(860, 106, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 11, 2, 0),
(861, 106, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 14, 2, 0),
(862, 106, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 15, 2, 0),
(863, 106, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 17, 2, 0),
(864, 106, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 18, 2, 0),
(865, 106, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 19, 2, 0),
(866, 106, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 20, 2, 0),
(867, 106, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 21, 2, 0),
(868, 107, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 1, 2, 0),
(869, 107, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 2, 2, 0),
(870, 107, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 3, 2, 0),
(871, 107, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 4, 2, 0),
(872, 107, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 5, 2, 0),
(873, 107, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 6, 2, 0),
(874, 107, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 7, 2, 0),
(875, 107, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 8, 2, 0),
(876, 107, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 9, 2, 0),
(877, 107, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 10, 2, 0),
(878, 107, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 11, 2, 0),
(879, 107, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 14, 2, 0),
(880, 107, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 15, 2, 0),
(881, 107, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 17, 2, 0),
(882, 107, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 18, 2, 0),
(883, 107, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 19, 2, 0),
(884, 107, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 20, 2, 0),
(885, 107, NULL, NULL, 1, '2024-05-22 03:40:44', '2024-05-22 03:40:44', 21, 2, 0),
(886, 108, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 1, 2, 0),
(887, 108, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 2, 2, 0),
(888, 108, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 3, 2, 0),
(889, 108, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 4, 2, 0),
(890, 108, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 5, 2, 0),
(891, 108, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 6, 2, 0),
(892, 108, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 7, 2, 0),
(893, 108, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 8, 2, 0),
(894, 108, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 9, 2, 0),
(895, 108, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 10, 2, 0),
(896, 108, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 11, 2, 0),
(897, 108, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 14, 2, 0),
(898, 108, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 15, 2, 0),
(899, 108, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 17, 2, 0),
(900, 108, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 18, 2, 0),
(901, 108, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 19, 2, 0),
(902, 108, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 20, 2, 0),
(903, 108, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 21, 2, 0),
(904, 109, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 1, 2, 0),
(905, 109, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 2, 2, 0),
(906, 109, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 3, 2, 0),
(907, 109, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 4, 2, 0),
(908, 109, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 5, 2, 0),
(909, 109, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 6, 2, 0),
(910, 109, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 7, 2, 0),
(911, 109, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 8, 2, 0),
(912, 109, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 9, 2, 0),
(913, 109, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 10, 2, 0),
(914, 109, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 11, 2, 0),
(915, 109, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 14, 2, 0),
(916, 109, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 15, 2, 0),
(917, 109, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 17, 2, 0),
(918, 109, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 18, 2, 0),
(919, 109, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 19, 2, 0),
(920, 109, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 20, 2, 0),
(921, 109, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 21, 2, 0),
(922, 110, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 1, 2, 0),
(923, 110, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 2, 2, 0),
(924, 110, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 3, 2, 0),
(925, 110, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 4, 2, 0),
(926, 110, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 5, 2, 0),
(927, 110, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 6, 2, 0),
(928, 110, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 7, 2, 0),
(929, 110, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 8, 2, 0),
(930, 110, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 9, 2, 0),
(931, 110, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 10, 2, 0),
(932, 110, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 11, 2, 0),
(933, 110, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 14, 2, 0),
(934, 110, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 15, 2, 0),
(935, 110, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 17, 2, 0),
(936, 110, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 18, 2, 0),
(937, 110, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 19, 2, 0),
(938, 110, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 20, 2, 0),
(939, 110, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 21, 2, 0),
(940, 111, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 1, 2, 0),
(941, 111, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 2, 2, 0),
(942, 111, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 3, 2, 0),
(943, 111, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 4, 2, 0),
(944, 111, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 5, 2, 0),
(945, 111, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 6, 2, 0),
(946, 111, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 7, 2, 0),
(947, 111, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 8, 2, 0),
(948, 111, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 9, 2, 0),
(949, 111, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 10, 2, 0),
(950, 111, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 11, 2, 0),
(951, 111, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 14, 2, 0),
(952, 111, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 15, 2, 0),
(953, 111, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 17, 2, 0),
(954, 111, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 18, 2, 0),
(955, 111, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 19, 2, 0),
(956, 111, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 20, 2, 0),
(957, 111, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 21, 2, 0),
(958, 112, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 1, 2, 0),
(959, 112, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 2, 2, 0),
(960, 112, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 3, 2, 0),
(961, 112, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 4, 2, 0),
(962, 112, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 5, 2, 0),
(963, 112, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 6, 2, 0),
(964, 112, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 7, 2, 0),
(965, 112, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 8, 2, 0),
(966, 112, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 9, 2, 0),
(967, 112, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 10, 2, 0),
(968, 112, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 11, 2, 0),
(969, 112, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 14, 2, 0),
(970, 112, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 15, 2, 0),
(971, 112, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 17, 2, 0),
(972, 112, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 18, 2, 0),
(973, 112, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 19, 2, 0),
(974, 112, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 20, 2, 0),
(975, 112, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 21, 2, 0),
(976, 113, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 1, 2, 0),
(977, 113, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 2, 2, 0),
(978, 113, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 3, 2, 0),
(979, 113, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 4, 2, 0),
(980, 113, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 5, 2, 0),
(981, 113, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 6, 2, 0),
(982, 113, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 7, 2, 0),
(983, 113, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 8, 2, 0),
(984, 113, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 9, 2, 0),
(985, 113, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 10, 2, 0),
(986, 113, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 11, 2, 0),
(987, 113, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 14, 2, 0),
(988, 113, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 15, 2, 0),
(989, 113, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 17, 2, 0),
(990, 113, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 18, 2, 0),
(991, 113, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 19, 2, 0),
(992, 113, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 20, 2, 0),
(993, 113, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 21, 2, 0),
(994, 121, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 1, 2, 0),
(995, 121, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 2, 2, 0),
(996, 121, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 3, 2, 0),
(997, 121, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 4, 2, 0),
(998, 121, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 5, 2, 0),
(999, 121, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 6, 2, 0),
(1000, 121, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 7, 2, 0),
(1001, 121, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 8, 2, 0),
(1002, 121, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 9, 2, 0),
(1003, 121, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 10, 2, 0),
(1004, 121, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 11, 2, 0),
(1005, 121, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 14, 2, 0),
(1006, 121, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 15, 2, 0),
(1007, 121, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 17, 2, 0),
(1008, 121, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 18, 2, 0),
(1009, 121, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 19, 2, 0),
(1010, 121, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 20, 2, 0),
(1011, 121, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 21, 2, 0),
(1012, 122, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 1, 2, 0),
(1013, 122, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 2, 2, 0),
(1014, 122, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 3, 2, 0),
(1015, 122, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 4, 2, 0),
(1016, 122, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 5, 2, 0),
(1017, 122, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 6, 2, 0),
(1018, 122, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 7, 2, 0),
(1019, 122, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 8, 2, 0),
(1020, 122, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 9, 2, 0),
(1021, 122, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 10, 2, 0),
(1022, 122, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 11, 2, 0),
(1023, 122, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 14, 2, 0),
(1024, 122, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 15, 2, 0),
(1025, 122, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 17, 2, 0),
(1026, 122, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 18, 2, 0),
(1027, 122, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 19, 2, 0),
(1028, 122, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 20, 2, 0),
(1029, 122, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 21, 2, 0),
(1030, 123, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 1, 2, 0),
(1031, 123, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 2, 2, 0),
(1032, 123, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 3, 2, 0),
(1033, 123, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 4, 2, 0),
(1034, 123, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 5, 2, 0),
(1035, 123, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 6, 2, 0),
(1036, 123, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 7, 2, 0),
(1037, 123, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 8, 2, 0),
(1038, 123, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 9, 2, 0),
(1039, 123, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 10, 2, 0),
(1040, 123, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 11, 2, 0),
(1041, 123, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 14, 2, 0),
(1042, 123, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 15, 2, 0),
(1043, 123, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 17, 2, 0),
(1044, 123, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 18, 2, 0),
(1045, 123, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 19, 2, 0),
(1046, 123, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 20, 2, 0),
(1047, 123, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 21, 2, 0),
(1048, 124, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 1, 2, 0),
(1049, 124, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 2, 2, 0),
(1050, 124, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 3, 2, 0),
(1051, 124, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 4, 2, 0),
(1052, 124, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 5, 2, 0),
(1053, 124, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 6, 2, 0),
(1054, 124, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 7, 2, 0),
(1055, 124, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 8, 2, 0),
(1056, 124, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 9, 2, 0),
(1057, 124, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 10, 2, 0),
(1058, 124, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 11, 2, 0),
(1059, 124, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 14, 2, 0),
(1060, 124, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 15, 2, 0),
(1061, 124, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 17, 2, 0),
(1062, 124, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 18, 2, 0),
(1063, 124, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 19, 2, 0),
(1064, 124, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 20, 2, 0),
(1065, 124, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 21, 2, 0),
(1066, 125, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 1, 2, 0),
(1067, 125, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 2, 2, 0),
(1068, 125, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 3, 2, 0),
(1069, 125, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 4, 2, 0),
(1070, 125, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 5, 2, 0),
(1071, 125, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 6, 2, 0),
(1072, 125, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 7, 2, 0),
(1073, 125, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 8, 2, 0),
(1074, 125, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 9, 2, 0),
(1075, 125, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 10, 2, 0),
(1076, 125, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 11, 2, 0),
(1077, 125, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 14, 2, 0),
(1078, 125, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 15, 2, 0),
(1079, 125, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 17, 2, 0),
(1080, 125, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 18, 2, 0),
(1081, 125, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 19, 2, 0),
(1082, 125, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 20, 2, 0),
(1083, 125, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 21, 2, 0),
(1084, 126, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 1, 2, 0),
(1085, 126, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 2, 2, 0),
(1086, 126, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 3, 2, 0),
(1087, 126, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 4, 2, 0),
(1088, 126, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 5, 2, 0),
(1089, 126, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 6, 2, 0),
(1090, 126, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 7, 2, 0),
(1091, 126, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 8, 2, 0),
(1092, 126, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 9, 2, 0),
(1093, 126, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 10, 2, 0),
(1094, 126, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 11, 2, 0),
(1095, 126, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 14, 2, 0),
(1096, 126, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 15, 2, 0),
(1097, 126, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 17, 2, 0),
(1098, 126, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 18, 2, 0),
(1099, 126, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 19, 2, 0),
(1100, 126, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 20, 2, 0),
(1101, 126, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 21, 2, 0),
(1102, 127, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 1, 2, 0),
(1103, 127, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 2, 2, 0),
(1104, 127, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 3, 2, 0),
(1105, 127, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 4, 2, 0),
(1106, 127, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 5, 2, 0),
(1107, 127, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 6, 2, 0),
(1108, 127, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 7, 2, 0),
(1109, 127, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 8, 2, 0),
(1110, 127, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 9, 2, 0),
(1111, 127, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 10, 2, 0),
(1112, 127, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 11, 2, 0),
(1113, 127, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 14, 2, 0),
(1114, 127, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 15, 2, 0),
(1115, 127, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 17, 2, 0),
(1116, 127, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 18, 2, 0),
(1117, 127, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 19, 2, 0),
(1118, 127, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 20, 2, 0),
(1119, 127, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 21, 2, 0),
(1120, 128, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 1, 2, 0),
(1121, 128, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 2, 2, 0),
(1122, 128, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 3, 2, 0),
(1123, 128, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 4, 2, 0),
(1124, 128, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 5, 2, 0),
(1125, 128, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 6, 2, 0),
(1126, 128, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 7, 2, 0),
(1127, 128, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 8, 2, 0),
(1128, 128, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 9, 2, 0),
(1129, 128, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 10, 2, 0),
(1130, 128, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 11, 2, 0),
(1131, 128, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 14, 2, 0),
(1132, 128, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 15, 2, 0),
(1133, 128, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 17, 2, 0),
(1134, 128, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 18, 2, 0),
(1135, 128, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 19, 2, 0),
(1136, 128, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 20, 2, 0),
(1137, 128, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 21, 2, 0),
(1138, 129, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 1, 2, 0),
(1139, 129, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 2, 2, 0),
(1140, 129, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 3, 2, 0),
(1141, 129, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 4, 2, 0),
(1142, 129, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 5, 2, 0),
(1143, 129, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 6, 2, 0),
(1144, 129, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 7, 2, 0),
(1145, 129, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 8, 2, 0),
(1146, 129, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 9, 2, 0),
(1147, 129, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 10, 2, 0),
(1148, 129, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 11, 2, 0),
(1149, 129, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 14, 2, 0),
(1150, 129, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 15, 2, 0),
(1151, 129, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 17, 2, 0),
(1152, 129, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 18, 2, 0),
(1153, 129, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 19, 2, 0),
(1154, 129, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 20, 2, 0),
(1155, 129, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 21, 2, 0),
(1156, 130, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 1, 2, 0),
(1157, 130, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 2, 2, 0),
(1158, 130, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 3, 2, 0),
(1159, 130, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 4, 2, 0),
(1160, 130, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 5, 2, 0),
(1161, 130, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 6, 2, 0),
(1162, 130, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 7, 2, 0),
(1163, 130, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 8, 2, 0),
(1164, 130, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 9, 2, 0),
(1165, 130, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 10, 2, 0),
(1166, 130, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 11, 2, 0),
(1167, 130, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 14, 2, 0),
(1168, 130, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 15, 2, 0),
(1169, 130, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 17, 2, 0),
(1170, 130, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 18, 2, 0),
(1171, 130, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 19, 2, 0),
(1172, 130, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 20, 2, 0),
(1173, 130, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 21, 2, 0),
(1174, 131, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 1, 2, 0),
(1175, 131, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 2, 2, 0),
(1176, 131, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 3, 2, 0),
(1177, 131, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 4, 2, 0),
(1178, 131, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 5, 2, 0),
(1179, 131, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 6, 2, 0),
(1180, 131, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 7, 2, 0),
(1181, 131, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 8, 2, 0),
(1182, 131, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 9, 2, 0),
(1183, 131, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 10, 2, 0),
(1184, 131, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 11, 2, 0),
(1185, 131, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 14, 2, 0),
(1186, 131, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 15, 2, 0),
(1187, 131, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 17, 2, 0),
(1188, 131, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 18, 2, 0),
(1189, 131, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 19, 2, 0),
(1190, 131, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 20, 2, 0),
(1191, 131, NULL, NULL, 1, '2024-05-22 05:21:02', '2024-05-22 05:21:02', 21, 2, 0);

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
  `progress_percentage` float DEFAULT NULL,
  `calculation_date` date DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `breeding_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `breeding_expected_progress`
--

INSERT INTO `breeding_expected_progress` (`expected_progress_id`, `breeding_id`, `parameter_id`, `progress_percentage`, `calculation_date`, `last_update`, `create_at`, `breeding_week_id`, `user_id`) VALUES
(1, 93, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 1, 2),
(2, 93, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 2, 2),
(3, 93, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 3, 2),
(4, 93, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 4, 2),
(5, 93, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 5, 2),
(6, 93, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 6, 2),
(7, 93, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 7, 2),
(8, 93, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 8, 2),
(9, 93, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 9, 2),
(10, 93, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 10, 2),
(11, 93, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 11, 2),
(12, 93, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 14, 2),
(13, 93, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 15, 2),
(14, 93, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 17, 2),
(15, 93, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 18, 2),
(16, 93, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 19, 2),
(17, 93, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 20, 2),
(18, 93, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 21, 2),
(20, 94, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 1, 2),
(21, 94, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 2, 2),
(22, 94, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 3, 2),
(23, 94, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 4, 2),
(24, 94, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 5, 2),
(25, 94, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 6, 2),
(26, 94, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 7, 2),
(27, 94, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 8, 2),
(28, 94, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 9, 2),
(29, 94, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 10, 2),
(30, 94, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 11, 2),
(31, 94, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 14, 2),
(32, 94, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 15, 2),
(33, 94, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 17, 2),
(34, 94, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 18, 2),
(35, 94, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 19, 2),
(36, 94, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 20, 2),
(37, 94, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 21, 2),
(39, 95, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 1, 2),
(40, 95, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 2, 2),
(41, 95, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 3, 2),
(42, 95, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 4, 2),
(43, 95, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 5, 2),
(44, 95, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 6, 2),
(45, 95, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 7, 2),
(46, 95, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 8, 2),
(47, 95, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 9, 2),
(48, 95, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 10, 2),
(49, 95, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 11, 2),
(50, 95, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 14, 2),
(51, 95, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 15, 2),
(52, 95, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 17, 2),
(53, 95, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 18, 2),
(54, 95, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 19, 2),
(55, 95, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 20, 2),
(56, 95, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 21, 2),
(58, 96, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 1, 2),
(59, 96, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 2, 2),
(60, 96, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 3, 2),
(61, 96, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 4, 2),
(62, 96, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 5, 2),
(63, 96, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 6, 2),
(64, 96, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 7, 2),
(65, 96, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 8, 2),
(66, 96, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 9, 2),
(67, 96, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 10, 2),
(68, 96, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 11, 2),
(69, 96, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 14, 2),
(70, 96, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 15, 2),
(71, 96, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 17, 2),
(72, 96, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 18, 2),
(73, 96, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 19, 2),
(74, 96, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 20, 2),
(75, 96, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 21, 2),
(77, 97, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 1, 2),
(78, 97, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 2, 2),
(79, 97, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 3, 2),
(80, 97, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 4, 2),
(81, 97, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 5, 2),
(82, 97, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 6, 2),
(83, 97, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 7, 2),
(84, 97, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 8, 2),
(85, 97, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 9, 2),
(86, 97, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 10, 2),
(87, 97, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 11, 2),
(88, 97, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 14, 2),
(89, 97, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 15, 2),
(90, 97, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 17, 2),
(91, 97, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 18, 2),
(92, 97, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 19, 2),
(93, 97, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 20, 2),
(94, 97, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 21, 2),
(96, 98, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 1, 2),
(97, 98, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 2, 2),
(98, 98, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 3, 2),
(99, 98, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 4, 2),
(100, 98, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 5, 2),
(101, 98, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 6, 2),
(102, 98, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 7, 2),
(103, 98, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 8, 2),
(104, 98, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 9, 2),
(105, 98, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 10, 2),
(106, 98, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 11, 2),
(107, 98, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 14, 2),
(108, 98, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 15, 2),
(109, 98, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 17, 2),
(110, 98, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 18, 2),
(111, 98, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 19, 2),
(112, 98, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 20, 2),
(113, 98, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 21, 2),
(115, 99, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 1, 2),
(116, 99, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 2, 2),
(117, 99, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 3, 2),
(118, 99, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 4, 2),
(119, 99, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 5, 2),
(120, 99, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 6, 2),
(121, 99, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 7, 2),
(122, 99, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 8, 2),
(123, 99, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 9, 2),
(124, 99, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 10, 2),
(125, 99, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 11, 2),
(126, 99, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 14, 2),
(127, 99, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 15, 2),
(128, 99, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 17, 2),
(129, 99, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 18, 2),
(130, 99, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 19, 2),
(131, 99, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 20, 2),
(132, 99, NULL, 1, NULL, '2024-05-22 02:12:03', '2024-05-22 02:12:03', 21, 2),
(134, 114, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 1, 2),
(135, 114, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 2, 2),
(136, 114, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 3, 2),
(137, 114, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 4, 2),
(138, 114, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 5, 2),
(139, 114, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 6, 2),
(140, 114, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 7, 2),
(141, 114, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 8, 2),
(142, 114, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 9, 2),
(143, 114, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 10, 2),
(144, 114, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 11, 2),
(145, 114, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 14, 2),
(146, 114, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 15, 2),
(147, 114, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 17, 2),
(148, 114, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 18, 2),
(149, 114, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 19, 2),
(150, 114, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 20, 2),
(151, 114, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 21, 2),
(153, 115, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 1, 2),
(154, 115, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 2, 2),
(155, 115, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 3, 2),
(156, 115, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 4, 2),
(157, 115, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 5, 2),
(158, 115, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 6, 2),
(159, 115, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 7, 2),
(160, 115, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 8, 2),
(161, 115, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 9, 2),
(162, 115, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 10, 2),
(163, 115, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 11, 2),
(164, 115, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 14, 2),
(165, 115, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 15, 2),
(166, 115, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 17, 2),
(167, 115, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 18, 2),
(168, 115, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 19, 2),
(169, 115, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 20, 2),
(170, 115, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 21, 2),
(172, 116, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 1, 2),
(173, 116, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 2, 2),
(174, 116, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 3, 2),
(175, 116, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 4, 2),
(176, 116, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 5, 2),
(177, 116, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 6, 2),
(178, 116, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 7, 2),
(179, 116, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 8, 2),
(180, 116, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 9, 2),
(181, 116, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 10, 2),
(182, 116, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 11, 2),
(183, 116, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 14, 2),
(184, 116, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 15, 2),
(185, 116, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 17, 2),
(186, 116, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 18, 2),
(187, 116, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 19, 2),
(188, 116, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 20, 2),
(189, 116, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 21, 2),
(191, 117, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 1, 2),
(192, 117, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 2, 2),
(193, 117, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 3, 2),
(194, 117, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 4, 2),
(195, 117, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 5, 2),
(196, 117, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 6, 2),
(197, 117, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 7, 2),
(198, 117, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 8, 2),
(199, 117, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 9, 2),
(200, 117, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 10, 2),
(201, 117, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 11, 2),
(202, 117, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 14, 2),
(203, 117, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 15, 2),
(204, 117, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 17, 2),
(205, 117, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 18, 2),
(206, 117, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 19, 2),
(207, 117, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 20, 2),
(208, 117, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 21, 2),
(210, 118, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 1, 2),
(211, 118, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 2, 2),
(212, 118, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 3, 2),
(213, 118, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 4, 2),
(214, 118, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 5, 2),
(215, 118, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 6, 2),
(216, 118, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 7, 2),
(217, 118, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 8, 2),
(218, 118, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 9, 2),
(219, 118, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 10, 2),
(220, 118, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 11, 2),
(221, 118, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 14, 2),
(222, 118, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 15, 2),
(223, 118, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 17, 2),
(224, 118, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 18, 2),
(225, 118, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 19, 2),
(226, 118, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 20, 2),
(227, 118, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 21, 2),
(229, 119, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 1, 2),
(230, 119, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 2, 2),
(231, 119, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 3, 2),
(232, 119, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 4, 2),
(233, 119, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 5, 2),
(234, 119, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 6, 2),
(235, 119, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 7, 2),
(236, 119, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 8, 2),
(237, 119, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 9, 2),
(238, 119, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 10, 2),
(239, 119, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 11, 2),
(240, 119, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 14, 2),
(241, 119, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 15, 2),
(242, 119, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 17, 2),
(243, 119, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 18, 2),
(244, 119, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 19, 2),
(245, 119, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 20, 2),
(246, 119, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 21, 2),
(248, 120, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 1, 2),
(249, 120, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 2, 2),
(250, 120, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 3, 2),
(251, 120, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 4, 2),
(252, 120, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 5, 2),
(253, 120, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 6, 2),
(254, 120, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 7, 2),
(255, 120, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 8, 2),
(256, 120, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 9, 2),
(257, 120, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 10, 2),
(258, 120, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 11, 2),
(259, 120, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 14, 2),
(260, 120, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 15, 2),
(261, 120, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 17, 2),
(262, 120, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 18, 2),
(263, 120, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 19, 2),
(264, 120, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 20, 2),
(265, 120, NULL, 1, NULL, '2024-05-22 02:27:43', '2024-05-22 02:27:43', 21, 2),
(267, 132, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 1, 2),
(268, 132, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 2, 2),
(269, 132, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 3, 2),
(270, 132, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 4, 2),
(271, 132, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 5, 2),
(272, 132, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 6, 2),
(273, 132, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 7, 2),
(274, 132, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 8, 2),
(275, 132, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 9, 2),
(276, 132, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 10, 2),
(277, 132, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 11, 2),
(278, 132, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 14, 2),
(279, 132, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 15, 2),
(280, 132, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 17, 2),
(281, 132, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 18, 2),
(282, 132, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 19, 2),
(283, 132, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 20, 2),
(284, 132, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 21, 2),
(286, 133, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 1, 2),
(287, 133, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 2, 2),
(288, 133, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 3, 2),
(289, 133, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 4, 2),
(290, 133, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 5, 2),
(291, 133, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 6, 2),
(292, 133, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 7, 2),
(293, 133, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 8, 2),
(294, 133, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 9, 2),
(295, 133, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 10, 2),
(296, 133, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 11, 2),
(297, 133, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 14, 2),
(298, 133, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 15, 2),
(299, 133, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 17, 2),
(300, 133, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 18, 2),
(301, 133, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 19, 2),
(302, 133, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 20, 2),
(303, 133, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 21, 2),
(305, 134, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 1, 2),
(306, 134, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 2, 2),
(307, 134, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 3, 2),
(308, 134, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 4, 2),
(309, 134, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 5, 2),
(310, 134, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 6, 2),
(311, 134, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 7, 2),
(312, 134, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 8, 2),
(313, 134, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 9, 2),
(314, 134, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 10, 2),
(315, 134, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 11, 2),
(316, 134, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 14, 2),
(317, 134, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 15, 2),
(318, 134, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 17, 2),
(319, 134, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 18, 2),
(320, 134, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 19, 2),
(321, 134, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 20, 2),
(322, 134, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 21, 2),
(324, 86, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 1, 2),
(325, 86, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 2, 2),
(326, 86, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 3, 2),
(327, 86, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 4, 2),
(328, 86, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 5, 2),
(329, 86, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 6, 2),
(330, 86, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 7, 2),
(331, 86, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 8, 2),
(332, 86, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 9, 2),
(333, 86, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 10, 2),
(334, 86, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 11, 2),
(335, 86, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 14, 2),
(336, 86, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 15, 2),
(337, 86, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 17, 2),
(338, 86, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 18, 2),
(339, 86, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 19, 2),
(340, 86, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 20, 2),
(341, 86, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 21, 2),
(343, 87, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 1, 2),
(344, 87, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 2, 2),
(345, 87, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 3, 2),
(346, 87, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 4, 2),
(347, 87, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 5, 2),
(348, 87, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 6, 2),
(349, 87, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 7, 2),
(350, 87, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 8, 2),
(351, 87, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 9, 2),
(352, 87, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 10, 2),
(353, 87, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 11, 2),
(354, 87, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 14, 2),
(355, 87, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 15, 2),
(356, 87, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 17, 2),
(357, 87, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 18, 2),
(358, 87, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 19, 2),
(359, 87, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 20, 2),
(360, 87, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 21, 2),
(362, 88, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 1, 2),
(363, 88, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 2, 2),
(364, 88, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 3, 2),
(365, 88, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 4, 2),
(366, 88, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 5, 2),
(367, 88, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 6, 2),
(368, 88, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 7, 2),
(369, 88, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 8, 2),
(370, 88, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 9, 2),
(371, 88, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 10, 2),
(372, 88, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 11, 2),
(373, 88, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 14, 2),
(374, 88, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 15, 2),
(375, 88, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 17, 2),
(376, 88, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 18, 2),
(377, 88, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 19, 2),
(378, 88, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 20, 2),
(379, 88, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 21, 2),
(381, 89, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 1, 2),
(382, 89, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 2, 2),
(383, 89, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 3, 2),
(384, 89, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 4, 2),
(385, 89, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 5, 2),
(386, 89, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 6, 2),
(387, 89, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 7, 2),
(388, 89, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 8, 2),
(389, 89, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 9, 2),
(390, 89, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 10, 2),
(391, 89, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 11, 2),
(392, 89, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 14, 2),
(393, 89, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 15, 2),
(394, 89, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 17, 2),
(395, 89, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 18, 2),
(396, 89, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 19, 2),
(397, 89, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 20, 2),
(398, 89, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 21, 2),
(400, 90, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 1, 2),
(401, 90, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 2, 2),
(402, 90, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 3, 2),
(403, 90, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 4, 2),
(404, 90, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 5, 2),
(405, 90, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 6, 2),
(406, 90, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 7, 2),
(407, 90, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 8, 2),
(408, 90, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 9, 2),
(409, 90, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 10, 2),
(410, 90, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 11, 2),
(411, 90, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 14, 2),
(412, 90, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 15, 2),
(413, 90, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 17, 2),
(414, 90, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 18, 2),
(415, 90, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 19, 2),
(416, 90, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 20, 2),
(417, 90, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 21, 2),
(419, 91, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 1, 2),
(420, 91, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 2, 2),
(421, 91, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 3, 2),
(422, 91, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 4, 2),
(423, 91, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 5, 2),
(424, 91, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 6, 2),
(425, 91, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 7, 2),
(426, 91, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 8, 2),
(427, 91, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 9, 2),
(428, 91, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 10, 2),
(429, 91, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 11, 2),
(430, 91, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 14, 2),
(431, 91, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 15, 2),
(432, 91, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 17, 2),
(433, 91, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 18, 2),
(434, 91, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 19, 2),
(435, 91, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 20, 2),
(436, 91, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 21, 2),
(438, 92, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 1, 2),
(439, 92, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 2, 2),
(440, 92, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 3, 2),
(441, 92, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 4, 2),
(442, 92, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 5, 2),
(443, 92, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 6, 2),
(444, 92, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 7, 2),
(445, 92, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 8, 2),
(446, 92, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 9, 2),
(447, 92, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 10, 2),
(448, 92, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 11, 2),
(449, 92, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 14, 2),
(450, 92, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 15, 2),
(451, 92, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 17, 2),
(452, 92, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 18, 2),
(453, 92, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 19, 2),
(454, 92, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 20, 2),
(455, 92, NULL, 1, NULL, '2024-05-22 02:45:36', '2024-05-22 02:45:36', 21, 2),
(457, 79, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 1, 2),
(458, 79, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 2, 2),
(459, 79, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 3, 2),
(460, 79, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 4, 2),
(461, 79, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 5, 2),
(462, 79, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 6, 2),
(463, 79, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 7, 2),
(464, 79, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 8, 2),
(465, 79, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 9, 2),
(466, 79, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 10, 2),
(467, 79, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 11, 2),
(468, 79, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 14, 2),
(469, 79, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 15, 2),
(470, 79, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 17, 2),
(471, 79, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 18, 2),
(472, 79, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 19, 2),
(473, 79, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 20, 2),
(474, 79, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 21, 2),
(476, 80, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 1, 2),
(477, 80, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 2, 2),
(478, 80, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 3, 2),
(479, 80, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 4, 2),
(480, 80, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 5, 2),
(481, 80, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 6, 2),
(482, 80, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 7, 2),
(483, 80, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 8, 2),
(484, 80, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 9, 2),
(485, 80, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 10, 2),
(486, 80, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 11, 2),
(487, 80, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 14, 2),
(488, 80, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 15, 2),
(489, 80, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 17, 2),
(490, 80, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 18, 2),
(491, 80, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 19, 2),
(492, 80, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 20, 2),
(493, 80, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 21, 2),
(495, 81, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 1, 2),
(496, 81, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 2, 2),
(497, 81, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 3, 2),
(498, 81, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 4, 2),
(499, 81, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 5, 2),
(500, 81, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 6, 2),
(501, 81, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 7, 2),
(502, 81, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 8, 2),
(503, 81, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 9, 2),
(504, 81, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 10, 2),
(505, 81, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 11, 2),
(506, 81, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 14, 2),
(507, 81, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 15, 2),
(508, 81, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 17, 2),
(509, 81, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 18, 2),
(510, 81, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 19, 2),
(511, 81, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 20, 2),
(512, 81, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 21, 2),
(514, 82, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 1, 2),
(515, 82, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 2, 2),
(516, 82, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 3, 2),
(517, 82, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 4, 2),
(518, 82, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 5, 2),
(519, 82, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 6, 2),
(520, 82, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 7, 2),
(521, 82, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 8, 2),
(522, 82, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 9, 2),
(523, 82, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 10, 2),
(524, 82, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 11, 2),
(525, 82, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 14, 2),
(526, 82, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 15, 2),
(527, 82, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 17, 2),
(528, 82, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 18, 2),
(529, 82, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 19, 2),
(530, 82, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 20, 2),
(531, 82, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 21, 2),
(533, 83, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 1, 2),
(534, 83, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 2, 2),
(535, 83, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 3, 2),
(536, 83, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 4, 2),
(537, 83, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 5, 2),
(538, 83, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 6, 2),
(539, 83, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 7, 2),
(540, 83, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 8, 2),
(541, 83, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 9, 2),
(542, 83, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 10, 2),
(543, 83, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 11, 2),
(544, 83, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 14, 2),
(545, 83, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 15, 2),
(546, 83, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 17, 2),
(547, 83, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 18, 2),
(548, 83, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 19, 2),
(549, 83, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 20, 2),
(550, 83, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 21, 2),
(552, 84, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 1, 2),
(553, 84, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 2, 2),
(554, 84, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 3, 2),
(555, 84, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 4, 2),
(556, 84, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 5, 2),
(557, 84, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 6, 2),
(558, 84, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 7, 2),
(559, 84, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 8, 2),
(560, 84, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 9, 2),
(561, 84, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 10, 2),
(562, 84, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 11, 2),
(563, 84, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 14, 2),
(564, 84, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 15, 2),
(565, 84, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 17, 2),
(566, 84, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 18, 2),
(567, 84, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 19, 2),
(568, 84, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 20, 2),
(569, 84, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 21, 2),
(571, 85, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 1, 2),
(572, 85, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 2, 2),
(573, 85, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 3, 2),
(574, 85, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 4, 2),
(575, 85, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 5, 2),
(576, 85, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 6, 2),
(577, 85, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 7, 2),
(578, 85, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 8, 2),
(579, 85, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 9, 2),
(580, 85, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 10, 2),
(581, 85, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 11, 2),
(582, 85, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 14, 2),
(583, 85, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 15, 2),
(584, 85, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 17, 2),
(585, 85, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 18, 2),
(586, 85, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 19, 2),
(587, 85, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 20, 2),
(588, 85, NULL, 1, NULL, '2024-05-22 03:16:33', '2024-05-22 03:16:33', 21, 2),
(590, 100, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 1, 2),
(591, 100, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 2, 2),
(592, 100, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 3, 2),
(593, 100, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 4, 2),
(594, 100, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 5, 2),
(595, 100, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 6, 2),
(596, 100, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 7, 2),
(597, 100, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 8, 2),
(598, 100, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 9, 2),
(599, 100, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 10, 2),
(600, 100, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 11, 2),
(601, 100, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 14, 2),
(602, 100, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 15, 2),
(603, 100, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 17, 2),
(604, 100, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 18, 2),
(605, 100, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 19, 2),
(606, 100, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 20, 2),
(607, 100, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 21, 2),
(608, 101, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 1, 2),
(609, 101, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 2, 2),
(610, 101, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 3, 2),
(611, 101, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 4, 2),
(612, 101, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 5, 2),
(613, 101, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 6, 2),
(614, 101, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 7, 2),
(615, 101, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 8, 2),
(616, 101, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 9, 2),
(617, 101, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 10, 2),
(618, 101, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 11, 2),
(619, 101, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 14, 2),
(620, 101, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 15, 2),
(621, 101, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 17, 2),
(622, 101, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 18, 2),
(623, 101, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 19, 2),
(624, 101, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 20, 2),
(625, 101, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 21, 2),
(626, 102, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 1, 2),
(627, 102, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 2, 2),
(628, 102, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 3, 2),
(629, 102, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 4, 2),
(630, 102, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 5, 2),
(631, 102, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 6, 2),
(632, 102, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 7, 2),
(633, 102, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 8, 2),
(634, 102, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 9, 2),
(635, 102, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 10, 2),
(636, 102, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 11, 2),
(637, 102, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 14, 2),
(638, 102, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 15, 2),
(639, 102, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 17, 2),
(640, 102, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 18, 2),
(641, 102, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 19, 2),
(642, 102, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 20, 2),
(643, 102, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 21, 2),
(644, 103, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 1, 2),
(645, 103, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 2, 2),
(646, 103, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 3, 2),
(647, 103, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 4, 2),
(648, 103, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 5, 2),
(649, 103, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 6, 2),
(650, 103, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 7, 2),
(651, 103, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 8, 2),
(652, 103, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 9, 2),
(653, 103, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 10, 2),
(654, 103, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 11, 2),
(655, 103, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 14, 2),
(656, 103, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 15, 2),
(657, 103, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 17, 2),
(658, 103, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 18, 2),
(659, 103, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 19, 2),
(660, 103, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 20, 2),
(661, 103, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 21, 2),
(662, 104, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 1, 2),
(663, 104, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 2, 2),
(664, 104, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 3, 2),
(665, 104, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 4, 2),
(666, 104, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 5, 2),
(667, 104, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 6, 2),
(668, 104, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 7, 2),
(669, 104, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 8, 2),
(670, 104, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 9, 2),
(671, 104, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 10, 2),
(672, 104, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 11, 2),
(673, 104, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 14, 2),
(674, 104, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 15, 2),
(675, 104, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 17, 2),
(676, 104, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 18, 2),
(677, 104, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 19, 2),
(678, 104, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 20, 2),
(679, 104, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 21, 2);
INSERT INTO `breeding_expected_progress` (`expected_progress_id`, `breeding_id`, `parameter_id`, `progress_percentage`, `calculation_date`, `last_update`, `create_at`, `breeding_week_id`, `user_id`) VALUES
(680, 105, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 1, 2),
(681, 105, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 2, 2),
(682, 105, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 3, 2),
(683, 105, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 4, 2),
(684, 105, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 5, 2),
(685, 105, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 6, 2),
(686, 105, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 7, 2),
(687, 105, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 8, 2),
(688, 105, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 9, 2),
(689, 105, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 10, 2),
(690, 105, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 11, 2),
(691, 105, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 14, 2),
(692, 105, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 15, 2),
(693, 105, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 17, 2),
(694, 105, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 18, 2),
(695, 105, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 19, 2),
(696, 105, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 20, 2),
(697, 105, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 21, 2),
(698, 106, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 1, 2),
(699, 106, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 2, 2),
(700, 106, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 3, 2),
(701, 106, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 4, 2),
(702, 106, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 5, 2),
(703, 106, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 6, 2),
(704, 106, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 7, 2),
(705, 106, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 8, 2),
(706, 106, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 9, 2),
(707, 106, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 10, 2),
(708, 106, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 11, 2),
(709, 106, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 14, 2),
(710, 106, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 15, 2),
(711, 106, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 17, 2),
(712, 106, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 18, 2),
(713, 106, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 19, 2),
(714, 106, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 20, 2),
(715, 106, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 21, 2),
(716, 107, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 1, 2),
(717, 107, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 2, 2),
(718, 107, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 3, 2),
(719, 107, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 4, 2),
(720, 107, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 5, 2),
(721, 107, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 6, 2),
(722, 107, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 7, 2),
(723, 107, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 8, 2),
(724, 107, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 9, 2),
(725, 107, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 10, 2),
(726, 107, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 11, 2),
(727, 107, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 14, 2),
(728, 107, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 15, 2),
(729, 107, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 17, 2),
(730, 107, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 18, 2),
(731, 107, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 19, 2),
(732, 107, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 20, 2),
(733, 107, NULL, 1, NULL, '2024-05-22 03:41:34', '2024-05-22 03:41:34', 21, 2),
(734, 108, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 1, 2),
(735, 108, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 2, 2),
(736, 108, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 3, 2),
(737, 108, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 4, 2),
(738, 108, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 5, 2),
(739, 108, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 6, 2),
(740, 108, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 7, 2),
(741, 108, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 8, 2),
(742, 108, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 9, 2),
(743, 108, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 10, 2),
(744, 108, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 11, 2),
(745, 108, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 14, 2),
(746, 108, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 15, 2),
(747, 108, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 17, 2),
(748, 108, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 18, 2),
(749, 108, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 19, 2),
(750, 108, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 20, 2),
(751, 108, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 21, 2),
(752, 109, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 1, 2),
(753, 109, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 2, 2),
(754, 109, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 3, 2),
(755, 109, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 4, 2),
(756, 109, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 5, 2),
(757, 109, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 6, 2),
(758, 109, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 7, 2),
(759, 109, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 8, 2),
(760, 109, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 9, 2),
(761, 109, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 10, 2),
(762, 109, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 11, 2),
(763, 109, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 14, 2),
(764, 109, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 15, 2),
(765, 109, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 17, 2),
(766, 109, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 18, 2),
(767, 109, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 19, 2),
(768, 109, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 20, 2),
(769, 109, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 21, 2),
(770, 110, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 1, 2),
(771, 110, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 2, 2),
(772, 110, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 3, 2),
(773, 110, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 4, 2),
(774, 110, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 5, 2),
(775, 110, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 6, 2),
(776, 110, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 7, 2),
(777, 110, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 8, 2),
(778, 110, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 9, 2),
(779, 110, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 10, 2),
(780, 110, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 11, 2),
(781, 110, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 14, 2),
(782, 110, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 15, 2),
(783, 110, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 17, 2),
(784, 110, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 18, 2),
(785, 110, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 19, 2),
(786, 110, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 20, 2),
(787, 110, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 21, 2),
(788, 111, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 1, 2),
(789, 111, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 2, 2),
(790, 111, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 3, 2),
(791, 111, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 4, 2),
(792, 111, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 5, 2),
(793, 111, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 6, 2),
(794, 111, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 7, 2),
(795, 111, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 8, 2),
(796, 111, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 9, 2),
(797, 111, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 10, 2),
(798, 111, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 11, 2),
(799, 111, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 14, 2),
(800, 111, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 15, 2),
(801, 111, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 17, 2),
(802, 111, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 18, 2),
(803, 111, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 19, 2),
(804, 111, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 20, 2),
(805, 111, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 21, 2),
(806, 112, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 1, 2),
(807, 112, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 2, 2),
(808, 112, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 3, 2),
(809, 112, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 4, 2),
(810, 112, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 5, 2),
(811, 112, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 6, 2),
(812, 112, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 7, 2),
(813, 112, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 8, 2),
(814, 112, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 9, 2),
(815, 112, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 10, 2),
(816, 112, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 11, 2),
(817, 112, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 14, 2),
(818, 112, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 15, 2),
(819, 112, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 17, 2),
(820, 112, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 18, 2),
(821, 112, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 19, 2),
(822, 112, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 20, 2),
(823, 112, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 21, 2),
(824, 113, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 1, 2),
(825, 113, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 2, 2),
(826, 113, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 3, 2),
(827, 113, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 4, 2),
(828, 113, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 5, 2),
(829, 113, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 6, 2),
(830, 113, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 7, 2),
(831, 113, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 8, 2),
(832, 113, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 9, 2),
(833, 113, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 10, 2),
(834, 113, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 11, 2),
(835, 113, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 14, 2),
(836, 113, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 15, 2),
(837, 113, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 17, 2),
(838, 113, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 18, 2),
(839, 113, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 19, 2),
(840, 113, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 20, 2),
(841, 113, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 21, 2),
(842, 121, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 1, 2),
(843, 121, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 2, 2),
(844, 121, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 3, 2),
(845, 121, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 4, 2),
(846, 121, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 5, 2),
(847, 121, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 6, 2),
(848, 121, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 7, 2),
(849, 121, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 8, 2),
(850, 121, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 9, 2),
(851, 121, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 10, 2),
(852, 121, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 11, 2),
(853, 121, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 14, 2),
(854, 121, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 15, 2),
(855, 121, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 17, 2),
(856, 121, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 18, 2),
(857, 121, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 19, 2),
(858, 121, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 20, 2),
(859, 121, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 21, 2),
(860, 122, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 1, 2),
(861, 122, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 2, 2),
(862, 122, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 3, 2),
(863, 122, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 4, 2),
(864, 122, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 5, 2),
(865, 122, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 6, 2),
(866, 122, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 7, 2),
(867, 122, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 8, 2),
(868, 122, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 9, 2),
(869, 122, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 10, 2),
(870, 122, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 11, 2),
(871, 122, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 14, 2),
(872, 122, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 15, 2),
(873, 122, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 17, 2),
(874, 122, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 18, 2),
(875, 122, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 19, 2),
(876, 122, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 20, 2),
(877, 122, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 21, 2),
(878, 123, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 1, 2),
(879, 123, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 2, 2),
(880, 123, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 3, 2),
(881, 123, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 4, 2),
(882, 123, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 5, 2),
(883, 123, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 6, 2),
(884, 123, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 7, 2),
(885, 123, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 8, 2),
(886, 123, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 9, 2),
(887, 123, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 10, 2),
(888, 123, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 11, 2),
(889, 123, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 14, 2),
(890, 123, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 15, 2),
(891, 123, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 17, 2),
(892, 123, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 18, 2),
(893, 123, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 19, 2),
(894, 123, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 20, 2),
(895, 123, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 21, 2),
(896, 124, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 1, 2),
(897, 124, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 2, 2),
(898, 124, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 3, 2),
(899, 124, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 4, 2),
(900, 124, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 5, 2),
(901, 124, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 6, 2),
(902, 124, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 7, 2),
(903, 124, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 8, 2),
(904, 124, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 9, 2),
(905, 124, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 10, 2),
(906, 124, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 11, 2),
(907, 124, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 14, 2),
(908, 124, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 15, 2),
(909, 124, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 17, 2),
(910, 124, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 18, 2),
(911, 124, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 19, 2),
(912, 124, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 20, 2),
(913, 124, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 21, 2),
(914, 125, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 1, 2),
(915, 125, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 2, 2),
(916, 125, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 3, 2),
(917, 125, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 4, 2),
(918, 125, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 5, 2),
(919, 125, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 6, 2),
(920, 125, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 7, 2),
(921, 125, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 8, 2),
(922, 125, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 9, 2),
(923, 125, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 10, 2),
(924, 125, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 11, 2),
(925, 125, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 14, 2),
(926, 125, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 15, 2),
(927, 125, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 17, 2),
(928, 125, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 18, 2),
(929, 125, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 19, 2),
(930, 125, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 20, 2),
(931, 125, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 21, 2),
(932, 126, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 1, 2),
(933, 126, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 2, 2),
(934, 126, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 3, 2),
(935, 126, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 4, 2),
(936, 126, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 5, 2),
(937, 126, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 6, 2),
(938, 126, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 7, 2),
(939, 126, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 8, 2),
(940, 126, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 9, 2),
(941, 126, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 10, 2),
(942, 126, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 11, 2),
(943, 126, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 14, 2),
(944, 126, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 15, 2),
(945, 126, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 17, 2),
(946, 126, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 18, 2),
(947, 126, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 19, 2),
(948, 126, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 20, 2),
(949, 126, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 21, 2),
(950, 127, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 1, 2),
(951, 127, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 2, 2),
(952, 127, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 3, 2),
(953, 127, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 4, 2),
(954, 127, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 5, 2),
(955, 127, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 6, 2),
(956, 127, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 7, 2),
(957, 127, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 8, 2),
(958, 127, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 9, 2),
(959, 127, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 10, 2),
(960, 127, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 11, 2),
(961, 127, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 14, 2),
(962, 127, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 15, 2),
(963, 127, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 17, 2),
(964, 127, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 18, 2),
(965, 127, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 19, 2),
(966, 127, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 20, 2),
(967, 127, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 21, 2),
(968, 128, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 1, 2),
(969, 128, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 2, 2),
(970, 128, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 3, 2),
(971, 128, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 4, 2),
(972, 128, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 5, 2),
(973, 128, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 6, 2),
(974, 128, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 7, 2),
(975, 128, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 8, 2),
(976, 128, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 9, 2),
(977, 128, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 10, 2),
(978, 128, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 11, 2),
(979, 128, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 14, 2),
(980, 128, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 15, 2),
(981, 128, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 17, 2),
(982, 128, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 18, 2),
(983, 128, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 19, 2),
(984, 128, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 20, 2),
(985, 128, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 21, 2),
(986, 129, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 1, 2),
(987, 129, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 2, 2),
(988, 129, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 3, 2),
(989, 129, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 4, 2),
(990, 129, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 5, 2),
(991, 129, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 6, 2),
(992, 129, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 7, 2),
(993, 129, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 8, 2),
(994, 129, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 9, 2),
(995, 129, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 10, 2),
(996, 129, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 11, 2),
(997, 129, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 14, 2),
(998, 129, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 15, 2),
(999, 129, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 17, 2),
(1000, 129, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 18, 2),
(1001, 129, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 19, 2),
(1002, 129, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 20, 2),
(1003, 129, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 21, 2),
(1004, 130, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 1, 2),
(1005, 130, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 2, 2),
(1006, 130, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 3, 2),
(1007, 130, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 4, 2),
(1008, 130, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 5, 2),
(1009, 130, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 6, 2),
(1010, 130, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 7, 2),
(1011, 130, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 8, 2),
(1012, 130, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 9, 2),
(1013, 130, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 10, 2),
(1014, 130, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 11, 2),
(1015, 130, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 14, 2),
(1016, 130, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 15, 2),
(1017, 130, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 17, 2),
(1018, 130, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 18, 2),
(1019, 130, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 19, 2),
(1020, 130, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 20, 2),
(1021, 130, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 21, 2),
(1022, 131, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 1, 2),
(1023, 131, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 2, 2),
(1024, 131, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 3, 2),
(1025, 131, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 4, 2),
(1026, 131, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 5, 2),
(1027, 131, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 6, 2),
(1028, 131, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 7, 2),
(1029, 131, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 8, 2),
(1030, 131, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 9, 2),
(1031, 131, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 10, 2),
(1032, 131, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 11, 2),
(1033, 131, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 14, 2),
(1034, 131, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 15, 2),
(1035, 131, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 17, 2),
(1036, 131, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 18, 2),
(1037, 131, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 19, 2),
(1038, 131, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 20, 2),
(1039, 131, NULL, 1, NULL, '2024-05-22 05:21:17', '2024-05-22 05:21:17', 21, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `breeding_progress`
--

CREATE TABLE `breeding_progress` (
  `progress_id` int(11) NOT NULL,
  `breeding_id` int(11) DEFAULT NULL,
  `series_id` int(11) DEFAULT NULL,
  `progress_percentage` float DEFAULT NULL,
  `supervisor` varchar(255) DEFAULT NULL,
  `non_construction_reason` text DEFAULT NULL,
  `progress_calculation_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `breeding_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `breeding_progress`
--

INSERT INTO `breeding_progress` (`progress_id`, `breeding_id`, `series_id`, `progress_percentage`, `supervisor`, `non_construction_reason`, `progress_calculation_description`, `last_update`, `create_at`, `breeding_week_id`, `user_id`) VALUES
(1, 93, NULL, 0.8845, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 1, 2),
(2, 93, NULL, 0.8845, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 2, 2),
(3, 93, NULL, 0.8845, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 3, 2),
(4, 93, NULL, 0.8845, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 4, 2),
(5, 93, NULL, 0.8845, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 5, 2),
(6, 93, NULL, 0.9145, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 6, 2),
(7, 93, NULL, 0.9145, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 7, 2),
(8, 93, NULL, 0.9145, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 8, 2),
(9, 93, NULL, 0.9145, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 9, 2),
(10, 93, NULL, 0.9145, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 10, 2),
(11, 93, NULL, 0.9145, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 11, 2),
(12, 93, NULL, 0.9145, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 14, 2),
(13, 93, NULL, 0.9145, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 15, 2),
(14, 93, NULL, 0.9283, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 17, 2),
(15, 93, NULL, 0.9406, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 18, 2),
(16, 93, NULL, 0.9406, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 19, 2),
(17, 93, NULL, 0.9406, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 20, 2),
(18, 93, NULL, 0.9406, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 21, 2),
(20, 94, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 1, 2),
(21, 94, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 2, 2),
(22, 94, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 3, 2),
(23, 94, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 4, 2),
(24, 94, NULL, 0.913, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 5, 2),
(25, 94, NULL, 0.913, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 6, 2),
(26, 94, NULL, 0.913, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 7, 2),
(27, 94, NULL, 0.913, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 8, 2),
(28, 94, NULL, 0.913, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 9, 2),
(29, 94, NULL, 0.913, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 10, 2),
(30, 94, NULL, 0.913, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 11, 2),
(31, 94, NULL, 0.925, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 14, 2),
(32, 94, NULL, 0.925, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 15, 2),
(33, 94, NULL, 0.9298, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 17, 2),
(34, 94, NULL, 0.9421, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 18, 2),
(35, 94, NULL, 0.9421, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 19, 2),
(36, 94, NULL, 0.9421, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 20, 2),
(37, 94, NULL, 0.9421, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 21, 2),
(39, 95, NULL, 0.9205, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 1, 2),
(40, 95, NULL, 0.9205, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 2, 2),
(41, 95, NULL, 0.9205, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 3, 2),
(42, 95, NULL, 0.9205, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 4, 2),
(43, 95, NULL, 0.9205, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 5, 2),
(44, 95, NULL, 0.9205, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 6, 2),
(45, 95, NULL, 0.9205, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 7, 2),
(46, 95, NULL, 0.9205, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 8, 2),
(47, 95, NULL, 0.9205, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 9, 2),
(48, 95, NULL, 0.9205, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 10, 2),
(49, 95, NULL, 0.9205, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 11, 2),
(50, 95, NULL, 0.9205, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 14, 2),
(51, 95, NULL, 0.9205, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 15, 2),
(52, 95, NULL, 0.928, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 17, 2),
(53, 95, NULL, 0.943, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 18, 2),
(54, 95, NULL, 0.943, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 19, 2),
(55, 95, NULL, 0.943, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 20, 2),
(56, 95, NULL, 0.943, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 21, 2),
(58, 96, NULL, 0.9055, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 1, 2),
(59, 96, NULL, 0.9055, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 2, 2),
(60, 96, NULL, 0.9055, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 3, 2),
(61, 96, NULL, 0.9055, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 4, 2),
(62, 96, NULL, 0.916, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 5, 2),
(63, 96, NULL, 0.916, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 6, 2),
(64, 96, NULL, 0.916, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 7, 2),
(65, 96, NULL, 0.916, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 8, 2),
(66, 96, NULL, 0.916, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 9, 2),
(67, 96, NULL, 0.928, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 10, 2),
(68, 96, NULL, 0.928, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 11, 2),
(69, 96, NULL, 0.928, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 14, 2),
(70, 96, NULL, 0.928, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 15, 2),
(71, 96, NULL, 0.928, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 17, 2),
(72, 96, NULL, 0.928, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 18, 2),
(73, 96, NULL, 0.928, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 19, 2),
(74, 96, NULL, 0.928, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 20, 2),
(75, 96, NULL, 0.928, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 21, 2),
(77, 97, NULL, 0.9082, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 1, 2),
(78, 97, NULL, 0.9082, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 2, 2),
(79, 97, NULL, 0.9082, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 3, 2),
(80, 97, NULL, 0.9082, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 4, 2),
(81, 97, NULL, 0.9082, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 5, 2),
(82, 97, NULL, 0.9232, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 6, 2),
(83, 97, NULL, 0.9232, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 7, 2),
(84, 97, NULL, 0.9232, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 8, 2),
(85, 97, NULL, 0.9232, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 9, 2),
(86, 97, NULL, 0.9232, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 10, 2),
(87, 97, NULL, 0.9232, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 11, 2),
(88, 97, NULL, 0.9232, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 14, 2),
(89, 97, NULL, 0.9232, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 15, 2),
(90, 97, NULL, 0.9298, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 17, 2),
(91, 97, NULL, 0.9373, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 18, 2),
(92, 97, NULL, 0.9373, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 19, 2),
(93, 97, NULL, 0.9373, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 20, 2),
(94, 97, NULL, 0.9373, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 21, 2),
(96, 98, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 1, 2),
(97, 98, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 2, 2),
(98, 98, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 3, 2),
(99, 98, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 4, 2),
(100, 98, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 5, 2),
(101, 98, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 6, 2),
(102, 98, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 7, 2),
(103, 98, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 8, 2),
(104, 98, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 9, 2),
(105, 98, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 10, 2),
(106, 98, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 11, 2),
(107, 98, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 14, 2),
(108, 98, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 15, 2),
(109, 98, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 17, 2),
(110, 98, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 18, 2),
(111, 98, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 19, 2),
(112, 98, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 20, 2),
(113, 98, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 21, 2),
(115, 99, NULL, 0.8755, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 1, 2),
(116, 99, NULL, 0.8755, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 2, 2),
(117, 99, NULL, 0.8755, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 3, 2),
(118, 99, NULL, 0.8755, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 4, 2),
(119, 99, NULL, 0.8755, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 5, 2),
(120, 99, NULL, 0.8755, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 6, 2),
(121, 99, NULL, 0.8755, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 7, 2),
(122, 99, NULL, 0.8755, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 8, 2),
(123, 99, NULL, 0.8755, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 9, 2),
(124, 99, NULL, 0.8755, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 10, 2),
(125, 99, NULL, 0.8755, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 11, 2),
(126, 99, NULL, 0.8755, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 14, 2),
(127, 99, NULL, 0.8755, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 15, 2),
(128, 99, NULL, 0.8755, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 17, 2),
(129, 99, NULL, 0.8755, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 18, 2),
(130, 99, NULL, 0.8755, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 19, 2),
(131, 99, NULL, 0.8755, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 20, 2),
(132, 99, NULL, 0.8755, NULL, NULL, NULL, '2024-05-22 02:09:28', '2024-05-22 02:09:28', 21, 2),
(134, 114, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 1, 2),
(135, 114, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 2, 2),
(136, 114, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 3, 2),
(137, 114, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 4, 2),
(138, 114, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 5, 2),
(139, 114, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 6, 2),
(140, 114, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 7, 2),
(141, 114, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 8, 2),
(142, 114, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 9, 2),
(143, 114, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 10, 2),
(144, 114, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 11, 2),
(145, 114, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 14, 2),
(146, 114, NULL, 0.898, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 15, 2),
(147, 114, NULL, 0.9079, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 17, 2),
(148, 114, NULL, 0.929, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 18, 2),
(149, 114, NULL, 0.9304, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 19, 2),
(150, 114, NULL, 0.9304, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 20, 2),
(151, 114, NULL, 0.9304, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 21, 2),
(153, 115, NULL, 0.7641, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 1, 2),
(154, 115, NULL, 0.775, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 2, 2),
(155, 115, NULL, 0.7879, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 3, 2),
(156, 115, NULL, 0.838, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 4, 2),
(157, 115, NULL, 0.838, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 5, 2),
(158, 115, NULL, 0.838, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 6, 2),
(159, 115, NULL, 0.838, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 7, 2),
(160, 115, NULL, 0.838, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 8, 2),
(161, 115, NULL, 0.838, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 9, 2),
(162, 115, NULL, 0.838, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 10, 2),
(163, 115, NULL, 0.838, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 11, 2),
(164, 115, NULL, 0.838, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 14, 2),
(165, 115, NULL, 0.8404, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 15, 2),
(166, 115, NULL, 0.8404, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 17, 2),
(167, 115, NULL, 0.8404, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 18, 2),
(168, 115, NULL, 0.8404, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 19, 2),
(169, 115, NULL, 0.8404, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 20, 2),
(170, 115, NULL, 0.856, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 21, 2),
(172, 116, NULL, 0.7501, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 1, 2),
(173, 116, NULL, 0.7613, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 2, 2),
(174, 116, NULL, 0.7725, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 3, 2),
(175, 116, NULL, 0.8005, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 4, 2),
(176, 116, NULL, 0.823, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 5, 2),
(177, 116, NULL, 0.838, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 6, 2),
(178, 116, NULL, 0.838, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 7, 2),
(179, 116, NULL, 0.838, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 8, 2),
(180, 116, NULL, 0.838, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 9, 2),
(181, 116, NULL, 0.838, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 10, 2),
(182, 116, NULL, 0.838, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 11, 2),
(183, 116, NULL, 0.838, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 14, 2),
(184, 116, NULL, 0.8667, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 15, 2),
(185, 116, NULL, 0.8779, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 17, 2),
(186, 116, NULL, 0.8779, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 18, 2),
(187, 116, NULL, 0.8967, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 19, 2),
(188, 116, NULL, 0.9079, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 20, 2),
(189, 116, NULL, 0.9157, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 21, 2),
(191, 117, NULL, 0.772, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 1, 2),
(192, 117, NULL, 0.772, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 2, 2),
(193, 117, NULL, 0.772, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 3, 2),
(194, 117, NULL, 0.772, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 4, 2),
(195, 117, NULL, 0.8734, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 5, 2),
(196, 117, NULL, 0.8943, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 6, 2),
(197, 117, NULL, 0.8943, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 7, 2),
(198, 117, NULL, 0.8943, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 8, 2),
(199, 117, NULL, 0.9179, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 9, 2),
(200, 117, NULL, 0.9305, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 10, 2),
(201, 117, NULL, 0.9305, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 11, 2),
(202, 117, NULL, 0.9305, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 14, 2),
(203, 117, NULL, 0.9404, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 15, 2),
(204, 117, NULL, 0.9404, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 17, 2),
(205, 117, NULL, 0.97, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 18, 2),
(206, 117, NULL, 0.97, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 19, 2),
(207, 117, NULL, 0.97, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 20, 2),
(208, 117, NULL, 0.958, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 21, 2),
(210, 118, NULL, 0.7396, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 1, 2),
(211, 118, NULL, 0.7906, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 2, 2),
(212, 118, NULL, 0.7906, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 3, 2),
(213, 118, NULL, 0.8089, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 4, 2),
(214, 118, NULL, 0.8305, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 5, 2),
(215, 118, NULL, 0.8692, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 6, 2),
(216, 118, NULL, 0.8692, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 7, 2),
(217, 118, NULL, 0.9015, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 8, 2),
(218, 118, NULL, 0.9256, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 9, 2),
(219, 118, NULL, 0.9331, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 10, 2),
(220, 118, NULL, 0.9331, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 11, 2),
(221, 118, NULL, 0.9481, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 14, 2),
(222, 118, NULL, 0.9481, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 15, 2),
(223, 118, NULL, 0.9481, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 17, 2),
(224, 118, NULL, 0.9481, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 18, 2),
(225, 118, NULL, 0.9481, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 19, 2),
(226, 118, NULL, 0.9481, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 20, 2),
(227, 118, NULL, 0.9373, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 21, 2),
(229, 119, NULL, 0.8163, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 1, 2),
(230, 119, NULL, 0.8163, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 2, 2),
(231, 119, NULL, 0.8163, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 3, 2),
(232, 119, NULL, 0.8263, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 4, 2),
(233, 119, NULL, 0.8263, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 5, 2),
(234, 119, NULL, 0.8424, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 6, 2),
(235, 119, NULL, 0.8424, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 7, 2),
(236, 119, NULL, 0.8953, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 8, 2),
(237, 119, NULL, 0.9181, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 9, 2),
(238, 119, NULL, 0.9271, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 10, 2),
(239, 119, NULL, 0.9271, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 11, 2),
(240, 119, NULL, 0.9496, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 14, 2),
(241, 119, NULL, 0.9496, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 15, 2),
(242, 119, NULL, 0.9595, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 17, 2),
(243, 119, NULL, 0.9745, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 18, 2),
(244, 119, NULL, 0.9865, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 19, 2),
(245, 119, NULL, 0.9865, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 20, 2),
(246, 119, NULL, 0.9745, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 21, 2),
(248, 120, NULL, 0.646, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 1, 2),
(249, 120, NULL, 0.646, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 2, 2),
(250, 120, NULL, 0.6756, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 3, 2),
(251, 120, NULL, 0.7375, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 4, 2),
(252, 120, NULL, 0.7375, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 5, 2),
(253, 120, NULL, 0.7796, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 6, 2),
(254, 120, NULL, 0.7796, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 7, 2),
(255, 120, NULL, 0.8019, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 8, 2),
(256, 120, NULL, 0.8814, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 9, 2),
(257, 120, NULL, 0.9331, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 10, 2),
(258, 120, NULL, 0.9331, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 11, 2),
(259, 120, NULL, 0.9331, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 14, 2),
(260, 120, NULL, 0.943, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 15, 2),
(261, 120, NULL, 0.958, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 17, 2),
(262, 120, NULL, 0.97, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 18, 2),
(263, 120, NULL, 0.97, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 19, 2),
(264, 120, NULL, 0.97, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 20, 2),
(265, 120, NULL, 0.958, NULL, NULL, NULL, '2024-05-22 02:26:32', '2024-05-22 02:26:32', 21, 2),
(267, 132, NULL, 0.656, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 1, 2),
(268, 132, NULL, 0.656, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 2, 2),
(269, 132, NULL, 0.656, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 3, 2),
(270, 132, NULL, 0.656, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 4, 2),
(271, 132, NULL, 0.656, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 5, 2),
(272, 132, NULL, 0.656, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 6, 2),
(273, 132, NULL, 0.656, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 7, 2),
(274, 132, NULL, 0.656, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 8, 2),
(275, 132, NULL, 0.656, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 9, 2),
(276, 132, NULL, 0.656, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 10, 2),
(277, 132, NULL, 0.656, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 11, 2),
(278, 132, NULL, 0.656, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 14, 2),
(279, 132, NULL, 0.656, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 15, 2),
(280, 132, NULL, 0.656, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 17, 2),
(281, 132, NULL, 0.6813, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 18, 2),
(282, 132, NULL, 0.7038, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 19, 2),
(283, 132, NULL, 0.7071, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 20, 2),
(284, 132, NULL, 0.6966, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 21, 2),
(286, 133, NULL, 0.7057, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 1, 2),
(287, 133, NULL, 0.7057, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 2, 2),
(288, 133, NULL, 0.7057, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 3, 2),
(289, 133, NULL, 0.7057, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 4, 2),
(290, 133, NULL, 0.7057, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 5, 2),
(291, 133, NULL, 0.7057, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 6, 2),
(292, 133, NULL, 0.7057, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 7, 2),
(293, 133, NULL, 0.7057, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 8, 2),
(294, 133, NULL, 0.7057, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 9, 2),
(295, 133, NULL, 0.7057, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 10, 2),
(296, 133, NULL, 0.7057, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 11, 2),
(297, 133, NULL, 0.7057, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 14, 2),
(298, 133, NULL, 0.7057, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 15, 2),
(299, 133, NULL, 0.7061, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 17, 2),
(300, 133, NULL, 0.7174, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 18, 2),
(301, 133, NULL, 0.7361, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 19, 2),
(302, 133, NULL, 0.7331, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 20, 2),
(303, 133, NULL, 0.7331, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 21, 2),
(305, 134, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 1, 2),
(306, 134, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 2, 2),
(307, 134, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 3, 2),
(308, 134, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 4, 2),
(309, 134, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 5, 2),
(310, 134, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 6, 2),
(311, 134, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 7, 2),
(312, 134, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 8, 2),
(313, 134, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 9, 2),
(314, 134, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 10, 2),
(315, 134, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 11, 2),
(316, 134, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 14, 2),
(317, 134, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 15, 2),
(318, 134, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 17, 2),
(319, 134, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 18, 2),
(320, 134, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 19, 2),
(321, 134, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 20, 2),
(322, 134, NULL, 0.8845, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 21, 2),
(324, 86, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 1, 2),
(325, 86, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 2, 2),
(326, 86, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 3, 2),
(327, 86, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 4, 2),
(328, 86, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 5, 2),
(329, 86, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 6, 2),
(330, 86, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 7, 2),
(331, 86, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 8, 2),
(332, 86, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 9, 2),
(333, 86, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 10, 2),
(334, 86, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 11, 2),
(335, 86, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 14, 2),
(336, 86, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 15, 2),
(337, 86, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 17, 2),
(338, 86, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 18, 2),
(339, 86, NULL, 0.8905, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 19, 2),
(340, 86, NULL, 0.9079, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 20, 2),
(341, 86, NULL, 0.9232, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 21, 2),
(343, 87, NULL, 0.6797, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 1, 2),
(344, 87, NULL, 0.759, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 2, 2),
(345, 87, NULL, 0.7971, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 3, 2),
(346, 87, NULL, 0.8136, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 4, 2),
(347, 87, NULL, 0.8136, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 5, 2),
(348, 87, NULL, 0.8136, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 6, 2),
(349, 87, NULL, 0.8136, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 7, 2),
(350, 87, NULL, 0.8136, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 8, 2),
(351, 87, NULL, 0.8145, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 9, 2),
(352, 87, NULL, 0.8145, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 10, 2),
(353, 87, NULL, 0.8145, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 11, 2),
(354, 87, NULL, 0.8316, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 14, 2),
(355, 87, NULL, 0.8316, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 15, 2),
(356, 87, NULL, 0.8745, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 17, 2),
(357, 87, NULL, 0.8745, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 18, 2),
(358, 87, NULL, 0.8745, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 19, 2),
(359, 87, NULL, 0.8745, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 20, 2),
(360, 87, NULL, 0.8919, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 21, 2),
(362, 88, NULL, 0.638, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 1, 2),
(363, 88, NULL, 0.666, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 2, 2),
(364, 88, NULL, 0.7343, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 3, 2),
(365, 88, NULL, 0.768, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 4, 2),
(366, 88, NULL, 0.8143, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 5, 2),
(367, 88, NULL, 0.8543, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 6, 2),
(368, 88, NULL, 0.8543, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 7, 2),
(369, 88, NULL, 0.8655, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 8, 2),
(370, 88, NULL, 0.8655, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 9, 2),
(371, 88, NULL, 0.8955, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 10, 2),
(372, 88, NULL, 0.8955, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 11, 2),
(373, 88, NULL, 0.9111, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 14, 2),
(374, 88, NULL, 0.9111, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 15, 2),
(375, 88, NULL, 0.9159, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 17, 2),
(376, 88, NULL, 0.9159, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 18, 2),
(377, 88, NULL, 0.9159, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 19, 2),
(378, 88, NULL, 0.9159, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 20, 2),
(379, 88, NULL, 0.9117, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 21, 2),
(381, 89, NULL, 0.6609, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 1, 2),
(382, 89, NULL, 0.6979, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 2, 2),
(383, 89, NULL, 0.7177, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 3, 2),
(384, 89, NULL, 0.7554, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 4, 2),
(385, 89, NULL, 0.7921, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 5, 2),
(386, 89, NULL, 0.8201, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 6, 2),
(387, 89, NULL, 0.8201, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 7, 2),
(388, 89, NULL, 0.8467, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 8, 2),
(389, 89, NULL, 0.8805, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 9, 2),
(390, 89, NULL, 0.8931, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 10, 2),
(391, 89, NULL, 0.8931, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 11, 2),
(392, 89, NULL, 0.8931, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 14, 2),
(393, 89, NULL, 0.9258, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 15, 2),
(394, 89, NULL, 0.9258, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 17, 2),
(395, 89, NULL, 0.9258, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 18, 2),
(396, 89, NULL, 0.9258, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 19, 2),
(397, 89, NULL, 0.9258, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 20, 2),
(398, 89, NULL, 0.9273, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 21, 2),
(400, 90, NULL, 0.57, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 1, 2),
(401, 90, NULL, 0.57, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 2, 2),
(402, 90, NULL, 0.57, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 3, 2),
(403, 90, NULL, 0.57, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 4, 2),
(404, 90, NULL, 0.57, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 5, 2),
(405, 90, NULL, 0.57, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 6, 2),
(406, 90, NULL, 0.57, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 7, 2),
(407, 90, NULL, 0.57, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 8, 2),
(408, 90, NULL, 0.57, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 9, 2),
(409, 90, NULL, 0.57, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 10, 2),
(410, 90, NULL, 0.57, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 11, 2),
(411, 90, NULL, 0.638, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 14, 2),
(412, 90, NULL, 0.638, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 15, 2),
(413, 90, NULL, 0.638, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 17, 2),
(414, 90, NULL, 0.638, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 18, 2),
(415, 90, NULL, 0.638, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 19, 2),
(416, 90, NULL, 0.638, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 20, 2),
(417, 90, NULL, 0.623, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 21, 2),
(419, 91, NULL, 0.576, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 1, 2),
(420, 91, NULL, 0.576, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 2, 2),
(421, 91, NULL, 0.576, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 3, 2),
(422, 91, NULL, 0.576, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 4, 2),
(423, 91, NULL, 0.576, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 5, 2),
(424, 91, NULL, 0.576, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 6, 2),
(425, 91, NULL, 0.576, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 7, 2),
(426, 91, NULL, 0.576, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 8, 2),
(427, 91, NULL, 0.576, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 9, 2),
(428, 91, NULL, 0.576, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 10, 2),
(429, 91, NULL, 0.576, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 11, 2),
(430, 91, NULL, 0.612, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 14, 2),
(431, 91, NULL, 0.612, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 15, 2),
(432, 91, NULL, 0.612, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 17, 2),
(433, 91, NULL, 0.612, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 18, 2),
(434, 91, NULL, 0.612, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 19, 2),
(435, 91, NULL, 0.612, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 20, 2),
(436, 91, NULL, 0.606, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 21, 2),
(438, 92, NULL, 0.51, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 1, 2),
(439, 92, NULL, 0.51, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 2, 2),
(440, 92, NULL, 0.51, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 3, 2),
(441, 92, NULL, 0.51, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 4, 2),
(442, 92, NULL, 0.51, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 5, 2),
(443, 92, NULL, 0.51, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 6, 2),
(444, 92, NULL, 0.51, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 7, 2),
(445, 92, NULL, 0.51, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 8, 2),
(446, 92, NULL, 0.51, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 9, 2),
(447, 92, NULL, 0.51, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 10, 2),
(448, 92, NULL, 0.51, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 11, 2),
(449, 92, NULL, 0.55, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 14, 2),
(450, 92, NULL, 0.55, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 15, 2),
(451, 92, NULL, 0.57, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 17, 2),
(452, 92, NULL, 0.57, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 18, 2),
(453, 92, NULL, 0.57, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 19, 2),
(454, 92, NULL, 0.57, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 20, 2),
(455, 92, NULL, 0.568, NULL, NULL, NULL, '2024-05-22 02:40:29', '2024-05-22 02:40:29', 21, 2),
(457, 79, NULL, 0.4558, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 1, 2),
(458, 79, NULL, 0.4558, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 2, 2),
(459, 79, NULL, 0.4558, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 3, 2),
(460, 79, NULL, 0.4558, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 4, 2),
(461, 79, NULL, 0.528, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 5, 2),
(462, 79, NULL, 0.54, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 6, 2),
(463, 79, NULL, 0.54, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 7, 2),
(464, 79, NULL, 0.5956, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 8, 2),
(465, 79, NULL, 0.6117, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 9, 2),
(466, 79, NULL, 0.6117, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 10, 2),
(467, 79, NULL, 0.6117, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 11, 2),
(468, 79, NULL, 0.6117, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 14, 2),
(469, 79, NULL, 0.6117, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 15, 2),
(470, 79, NULL, 0.6117, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 17, 2),
(471, 79, NULL, 0.6117, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 18, 2),
(472, 79, NULL, 0.6117, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 19, 2),
(473, 79, NULL, 0.6117, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 20, 2),
(474, 79, NULL, 0.5971, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 21, 2),
(476, 80, NULL, 0.45, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 1, 2),
(477, 80, NULL, 0.45, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 2, 2),
(478, 80, NULL, 0.45, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 3, 2),
(479, 80, NULL, 0.46, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 4, 2),
(480, 80, NULL, 0.46, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 5, 2),
(481, 80, NULL, 0.532, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 6, 2),
(482, 80, NULL, 0.532, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 7, 2),
(483, 80, NULL, 0.547, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 8, 2),
(484, 80, NULL, 0.577, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 9, 2),
(485, 80, NULL, 0.577, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 10, 2),
(486, 80, NULL, 0.577, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 11, 2),
(487, 80, NULL, 0.577, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 14, 2),
(488, 80, NULL, 0.577, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 15, 2),
(489, 80, NULL, 0.577, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 17, 2),
(490, 80, NULL, 0.593, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 18, 2),
(491, 80, NULL, 0.593, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 19, 2),
(492, 80, NULL, 0.593, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 20, 2),
(493, 80, NULL, 0.575, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 21, 2),
(495, 81, NULL, 0.4557, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 1, 2),
(496, 81, NULL, 0.456, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 2, 2),
(497, 81, NULL, 0.54, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 3, 2),
(498, 81, NULL, 0.576, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 4, 2),
(499, 81, NULL, 0.576, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 5, 2),
(500, 81, NULL, 0.582, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 6, 2),
(501, 81, NULL, 0.582, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 7, 2),
(502, 81, NULL, 0.6002, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 8, 2),
(503, 81, NULL, 0.6244, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 9, 2),
(504, 81, NULL, 0.6691, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 10, 2),
(505, 81, NULL, 0.6691, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 11, 2),
(506, 81, NULL, 0.7112, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 14, 2),
(507, 81, NULL, 0.7112, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 15, 2),
(508, 81, NULL, 0.8186, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 17, 2),
(509, 81, NULL, 0.8636, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 18, 2),
(510, 81, NULL, 0.8636, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 19, 2),
(511, 81, NULL, 0.8636, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 20, 2),
(512, 81, NULL, 0.8408, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 21, 2),
(514, 82, NULL, 0.4557, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 1, 2),
(515, 82, NULL, 0.4557, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 2, 2),
(516, 82, NULL, 0.54, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 3, 2),
(517, 82, NULL, 0.54, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 4, 2),
(518, 82, NULL, 0.5463, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 5, 2),
(519, 82, NULL, 0.558, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 6, 2),
(520, 82, NULL, 0.558, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 7, 2),
(521, 82, NULL, 0.568, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 8, 2),
(522, 82, NULL, 0.6061, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 9, 2),
(523, 82, NULL, 0.6386, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 10, 2),
(524, 82, NULL, 0.6386, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 11, 2),
(525, 82, NULL, 0.7157, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 14, 2),
(526, 82, NULL, 0.7157, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 15, 2),
(527, 82, NULL, 0.72, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 17, 2),
(528, 82, NULL, 0.7486, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 18, 2),
(529, 82, NULL, 0.7786, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 19, 2),
(530, 82, NULL, 0.8161, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 20, 2),
(531, 82, NULL, 0.8066, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 21, 2),
(533, 83, NULL, 0.45, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 1, 2),
(534, 83, NULL, 0.45, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 2, 2),
(535, 83, NULL, 0.45, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 3, 2),
(536, 83, NULL, 0.528, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 4, 2),
(537, 83, NULL, 0.6, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 5, 2),
(538, 83, NULL, 0.618, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 6, 2),
(539, 83, NULL, 0.618, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 7, 2),
(540, 83, NULL, 0.628, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 8, 2),
(541, 83, NULL, 0.6658, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 9, 2),
(542, 83, NULL, 0.6968, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 10, 2),
(543, 83, NULL, 0.6968, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 11, 2),
(544, 83, NULL, 0.75, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 14, 2),
(545, 83, NULL, 0.75, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 15, 2),
(546, 83, NULL, 0.75, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 17, 2),
(547, 83, NULL, 0.8236, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 18, 2),
(548, 83, NULL, 0.8236, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 19, 2),
(549, 83, NULL, 0.8236, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 20, 2),
(550, 83, NULL, 0.8008, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 21, 2),
(552, 84, NULL, 0.4537, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 1, 2),
(553, 84, NULL, 0.456, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 2, 2),
(554, 84, NULL, 0.456, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 3, 2),
(555, 84, NULL, 0.456, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 4, 2),
(556, 84, NULL, 0.456, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 5, 2),
(557, 84, NULL, 0.456, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 6, 2),
(558, 84, NULL, 0.456, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 7, 2),
(559, 84, NULL, 0.456, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 8, 2),
(560, 84, NULL, 0.466, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 9, 2),
(561, 84, NULL, 0.466, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 10, 2),
(562, 84, NULL, 0.466, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 11, 2),
(563, 84, NULL, 0.58, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 14, 2);
INSERT INTO `breeding_progress` (`progress_id`, `breeding_id`, `series_id`, `progress_percentage`, `supervisor`, `non_construction_reason`, `progress_calculation_description`, `last_update`, `create_at`, `breeding_week_id`, `user_id`) VALUES
(564, 84, NULL, 0.58, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 15, 2),
(565, 84, NULL, 0.598, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 17, 2),
(566, 84, NULL, 0.598, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 18, 2),
(567, 84, NULL, 0.598, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 19, 2),
(568, 84, NULL, 0.6505, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 20, 2),
(569, 84, NULL, 0.6685, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 21, 2),
(571, 85, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 1, 2),
(572, 85, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 2, 2),
(573, 85, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 3, 2),
(574, 85, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 4, 2),
(575, 85, NULL, 0.406, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 5, 2),
(576, 85, NULL, 0.406, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 6, 2),
(577, 85, NULL, 0.406, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 7, 2),
(578, 85, NULL, 0.406, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 8, 2),
(579, 85, NULL, 0.406, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 9, 2),
(580, 85, NULL, 0.406, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 10, 2),
(581, 85, NULL, 0.406, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 11, 2),
(582, 85, NULL, 0.406, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 14, 2),
(583, 85, NULL, 0.406, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 15, 2),
(584, 85, NULL, 0.4825, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 17, 2),
(585, 85, NULL, 0.4825, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 18, 2),
(586, 85, NULL, 0.4825, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 19, 2),
(587, 85, NULL, 0.4975, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 20, 2),
(588, 85, NULL, 0.52, NULL, NULL, NULL, '2024-05-22 03:17:53', '2024-05-22 03:17:53', 21, 2),
(590, 100, NULL, 0.5288, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 1, 2),
(591, 100, NULL, 0.5588, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 2, 2),
(592, 100, NULL, 0.558, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 3, 2),
(593, 100, NULL, 0.5698, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 4, 2),
(594, 100, NULL, 0.5698, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 5, 2),
(595, 100, NULL, 0.6293, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 6, 2),
(596, 100, NULL, 0.6293, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 7, 2),
(597, 100, NULL, 0.6573, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 8, 2),
(598, 100, NULL, 0.7271, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 9, 2),
(599, 100, NULL, 0.77, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 10, 2),
(600, 100, NULL, 0.77, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 11, 2),
(601, 100, NULL, 0.77, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 14, 2),
(602, 100, NULL, 0.77, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 15, 2),
(603, 100, NULL, 0.8033, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 17, 2),
(604, 100, NULL, 0.8336, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 18, 2),
(605, 100, NULL, 0.8636, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 19, 2),
(606, 100, NULL, 0.8636, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 20, 2),
(607, 100, NULL, 0.8636, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 21, 2),
(608, 101, NULL, 0.5288, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 1, 2),
(609, 101, NULL, 0.5408, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 2, 2),
(610, 101, NULL, 0.5828, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 3, 2),
(611, 101, NULL, 0.644, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 4, 2),
(612, 101, NULL, 0.6991, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 5, 2),
(613, 101, NULL, 0.7101, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 6, 2),
(614, 101, NULL, 0.7101, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 7, 2),
(615, 101, NULL, 0.7309, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 8, 2),
(616, 101, NULL, 0.7523, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 9, 2),
(617, 101, NULL, 0.7748, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 10, 2),
(618, 101, NULL, 0.7748, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 11, 2),
(619, 101, NULL, 0.88, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 14, 2),
(620, 101, NULL, 0.88, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 15, 2),
(621, 101, NULL, 0.8971, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 17, 2),
(622, 101, NULL, 0.8971, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 18, 2),
(623, 101, NULL, 0.9466, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 19, 2),
(624, 101, NULL, 0.9466, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 20, 2),
(625, 101, NULL, 0.9466, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 21, 2),
(626, 102, NULL, 0.4, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 1, 2),
(627, 102, NULL, 0.4, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 2, 2),
(628, 102, NULL, 0.4, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 3, 2),
(629, 102, NULL, 0.4, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 4, 2),
(630, 102, NULL, 0.4, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 5, 2),
(631, 102, NULL, 0.4, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 6, 2),
(632, 102, NULL, 0.4, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 7, 2),
(633, 102, NULL, 0.4, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 8, 2),
(634, 102, NULL, 0.4, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 9, 2),
(635, 102, NULL, 0.4, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 10, 2),
(636, 102, NULL, 0.4, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 11, 2),
(637, 102, NULL, 0.4, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 14, 2),
(638, 102, NULL, 0.4, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 15, 2),
(639, 102, NULL, 0.4, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 17, 2),
(640, 102, NULL, 0.4, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 18, 2),
(641, 102, NULL, 0.4, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 19, 2),
(642, 102, NULL, 0.4, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 20, 2),
(643, 102, NULL, 0.4, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 21, 2),
(644, 103, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 1, 2),
(645, 103, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 2, 2),
(646, 103, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 3, 2),
(647, 103, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 4, 2),
(648, 103, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 5, 2),
(649, 103, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 6, 2),
(650, 103, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 7, 2),
(651, 103, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 8, 2),
(652, 103, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 9, 2),
(653, 103, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 10, 2),
(654, 103, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 11, 2),
(655, 103, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 14, 2),
(656, 103, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 15, 2),
(657, 103, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 17, 2),
(658, 103, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 18, 2),
(659, 103, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 19, 2),
(660, 103, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 20, 2),
(661, 103, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 21, 2),
(662, 104, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 1, 2),
(663, 104, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 2, 2),
(664, 104, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 3, 2),
(665, 104, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 4, 2),
(666, 104, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 5, 2),
(667, 104, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 6, 2),
(668, 104, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 7, 2),
(669, 104, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 8, 2),
(670, 104, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 9, 2),
(671, 104, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 10, 2),
(672, 104, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 11, 2),
(673, 104, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 14, 2),
(674, 104, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 15, 2),
(675, 104, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 17, 2),
(676, 104, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 18, 2),
(677, 104, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 19, 2),
(678, 104, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 20, 2),
(679, 104, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 21, 2),
(680, 105, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 1, 2),
(681, 105, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 2, 2),
(682, 105, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 3, 2),
(683, 105, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 4, 2),
(684, 105, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 5, 2),
(685, 105, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 6, 2),
(686, 105, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 7, 2),
(687, 105, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 8, 2),
(688, 105, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 9, 2),
(689, 105, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 10, 2),
(690, 105, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 11, 2),
(691, 105, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 14, 2),
(692, 105, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 15, 2),
(693, 105, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 17, 2),
(694, 105, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 18, 2),
(695, 105, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 19, 2),
(696, 105, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 20, 2),
(697, 105, NULL, 0.3998, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 21, 2),
(698, 106, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 1, 2),
(699, 106, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 2, 2),
(700, 106, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 3, 2),
(701, 106, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 4, 2),
(702, 106, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 5, 2),
(703, 106, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 6, 2),
(704, 106, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 7, 2),
(705, 106, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 8, 2),
(706, 106, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 9, 2),
(707, 106, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 10, 2),
(708, 106, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 11, 2),
(709, 106, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 14, 2),
(710, 106, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 15, 2),
(711, 106, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 17, 2),
(712, 106, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 18, 2),
(713, 106, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 19, 2),
(714, 106, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 20, 2),
(715, 106, NULL, 0.3999, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 21, 2),
(716, 107, NULL, 0.5129, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 1, 2),
(717, 107, NULL, 0.5129, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 2, 2),
(718, 107, NULL, 0.5129, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 3, 2),
(719, 107, NULL, 0.5129, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 4, 2),
(720, 107, NULL, 0.5129, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 5, 2),
(721, 107, NULL, 0.5129, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 6, 2),
(722, 107, NULL, 0.5129, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 7, 2),
(723, 107, NULL, 0.5129, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 8, 2),
(724, 107, NULL, 0.5129, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 9, 2),
(725, 107, NULL, 0.5129, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 10, 2),
(726, 107, NULL, 0.5129, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 11, 2),
(727, 107, NULL, 0.5129, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 14, 2),
(728, 107, NULL, 0.5129, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 15, 2),
(729, 107, NULL, 0.5129, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 17, 2),
(730, 107, NULL, 0.5129, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 18, 2),
(731, 107, NULL, 0.5129, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 19, 2),
(732, 107, NULL, 0.5129, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 20, 2),
(733, 107, NULL, 0.5129, NULL, NULL, NULL, '2024-05-22 03:39:13', '2024-05-22 03:39:13', 21, 2);

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
(9, '2024', 1, 9, '2024-02-25', '2024-03-02', 2),
(10, '2024', 1, 10, '2024-03-03', '2024-03-09', 2),
(11, '2024', 1, 11, '2024-03-10', '2024-03-16', 2),
(14, '2024', 1, 12, '2024-03-17', '2024-03-23', 2),
(15, '2024', 1, 13, '2024-03-24', '2024-03-30', 2),
(17, '2024', 2, 1, '2024-03-31', '2024-04-06', 2),
(18, '2024', 2, 2, '2024-04-07', '2024-04-13', 2),
(19, '2024', 2, 3, '2024-04-14', '2024-04-20', 2),
(20, '2024', 2, 4, '2024-04-21', '2024-04-27', 2),
(21, '2024', 2, 5, '2024-04-28', '2024-05-04', 2);

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
-- 資料表結構 `electricalbank_progress`
--

CREATE TABLE `electricalbank_progress` (
  `electrical_bank_id` int(11) NOT NULL,
  `electrical_id` int(11) DEFAULT NULL,
  `progress_percentage` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `electrical_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `lag_status` tinyint(1) NOT NULL DEFAULT 0,
  `stage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `electricalbank_progress_expected`
--

CREATE TABLE `electricalbank_progress_expected` (
  `electrical_bank_expected_id` int(11) NOT NULL,
  `electrical_id` int(11) DEFAULT NULL,
  `parameter_id` int(11) DEFAULT NULL,
  `is_parameter_based` tinyint(1) DEFAULT NULL,
  `progress_percentage` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `electrical_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `lag_status` tinyint(1) NOT NULL DEFAULT 0,
  `stage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `electrical_bank_expected_history`
--

CREATE TABLE `electrical_bank_expected_history` (
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
-- 資料表結構 `electrical_bank_history`
--

CREATE TABLE `electrical_bank_history` (
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
-- 資料表結構 `electrical_expected_progress`
--

CREATE TABLE `electrical_expected_progress` (
  `expected_progress_id` int(11) NOT NULL,
  `electrical_id` int(11) DEFAULT NULL,
  `parameter_id` int(11) DEFAULT NULL,
  `progress_percentage` float DEFAULT NULL,
  `calculation_date` date DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `electrical_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `stage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `electrical_progress`
--

CREATE TABLE `electrical_progress` (
  `progress_id` int(11) NOT NULL,
  `electrical_id` int(11) DEFAULT NULL,
  `progress_percentage` float DEFAULT NULL,
  `supervisor` varchar(255) DEFAULT NULL,
  `non_construction_reason` text DEFAULT NULL,
  `progress_calculation_description` text DEFAULT NULL,
  `done_date` date NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `electrical_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `stage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `electrical_progress`
--

INSERT INTO `electrical_progress` (`progress_id`, `electrical_id`, `progress_percentage`, `supervisor`, `non_construction_reason`, `progress_calculation_description`, `done_date`, `last_update`, `create_at`, `electrical_week_id`, `user_id`, `stage_id`) VALUES
(1, 1, 0.35, NULL, NULL, NULL, '2024-01-06', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 1, 2, 5),
(2, 2, 0.35, NULL, NULL, NULL, '2024-01-06', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 1, 2, 5),
(3, 3, 0.05, NULL, NULL, NULL, '2024-01-06', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 1, 2, 1),
(4, 4, 0.05, NULL, NULL, NULL, '2024-01-06', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 1, 2, 1),
(5, 5, 0.05, NULL, NULL, NULL, '2024-01-06', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 1, 2, 1),
(6, 6, 0.05, NULL, NULL, NULL, '2024-01-06', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 1, 2, 1),
(7, 7, 0.05, NULL, NULL, NULL, '2024-01-06', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 1, 2, 1),
(8, 8, 0.05, NULL, NULL, NULL, '2024-01-06', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 1, 2, 1),
(9, 9, 0.05, NULL, NULL, NULL, '2024-01-06', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 1, 2, 1),
(10, 1, 0.35, NULL, NULL, NULL, '2024-03-02', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 9, 2, 5),
(11, 2, 0.35, NULL, NULL, NULL, '2024-03-02', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 9, 2, 5),
(12, 3, 0.3, NULL, NULL, NULL, '2024-03-02', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 9, 2, 5),
(13, 4, 0.3, NULL, NULL, NULL, '2024-03-02', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 9, 2, 5),
(14, 5, 0.3, NULL, NULL, NULL, '2024-03-02', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 9, 2, 5),
(15, 6, 0.3, NULL, NULL, NULL, '2024-03-02', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 9, 2, 5),
(16, 7, 0.3, NULL, NULL, NULL, '2024-03-02', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 9, 2, 5),
(17, 8, 0.3, NULL, NULL, NULL, '2024-03-02', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 9, 2, 5),
(18, 9, 0.3, NULL, NULL, NULL, '2024-03-02', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 9, 2, 5),
(19, 1, 0.4, NULL, NULL, NULL, '2024-03-30', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 15, 2, 6),
(20, 2, 0.4, NULL, NULL, NULL, '2024-03-30', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 15, 2, 6),
(21, 3, 0.3, NULL, NULL, NULL, '2024-03-30', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 15, 2, 5),
(22, 4, 0.3, NULL, NULL, NULL, '2024-03-30', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 15, 2, 5),
(23, 5, 0.3, NULL, NULL, NULL, '2024-03-30', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 15, 2, 5),
(24, 6, 0.3, NULL, NULL, NULL, '2024-03-30', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 15, 2, 5),
(25, 7, 0.3, NULL, NULL, NULL, '2024-03-30', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 15, 2, 5),
(26, 8, 0.3, NULL, NULL, NULL, '2024-03-30', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 15, 2, 5),
(27, 9, 0.3, NULL, NULL, NULL, '2024-03-30', '2024-05-16 07:10:43', '2024-05-16 07:00:18', 15, 2, 5);

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
(1, '000多元Re-financing管理總表', 'https://docs.google.com/spreadsheets/d/1rQLC04I6F-ViQ8D9jqboa5hn3YH31lGK/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-05-20 03:57:54', '2024-02-27 05:23:31', '已將 4/28-5/4 進度更新', 'File_Progress', 0),
(2, '00多元Phase2管理總表', 'https://docs.google.com/spreadsheets/d/1vMsJzYlVB6awlL6ZeLUvczQJ6Oi0OJeg/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-05-20 03:58:02', '2024-02-27 05:23:31', '已將 4/28-5/4 進度更新', 'File_Progress', 0),
(4, 'Phase2電業申辦進度', 'https://docs.google.com/spreadsheets/d/1izRUP1MCWeDeE4MFYlkFqmr5EHpfobeQ/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=trueusp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-22 15:10:07', '2024-02-27 05:23:31', '已更新新進度', 'File_Progress', 0),
(6, '22.8KV多元Phase2監工週報', 'https://docs.google.com/spreadsheets/d/1ZkeCC9llCynfgIa5e7lXIJw6AvkPKlX-/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-05-20 05:07:06', '2024-02-27 05:23:31', '已將 4/28-5/4 進度更新', 'File_Progress', 0),
(25, 'N1多元Phase2光電工程報告', 'https://docs.google.com/spreadsheets/d/1-4NGCAX3ehV-pohqnkCiXYgQImvdHJ2D/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-05-20 05:07:06', '2024-02-27 05:23:31', '已將 4/28-5/4 進度更新', 'File_Progress', 0),
(26, 'N向陽多元Phase2-SN2', 'https://docs.google.com/spreadsheets/d/1vbJBXSZsSPhv5fNpHe1GqOhfApEqB1p-/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-05-20 05:07:06', '2024-02-27 05:23:31', '已將 4/28-5/4 進度更新', 'File_Progress', 0),
(27, 'N向陽多元Phase2-SN1', 'https://docs.google.com/spreadsheets/d/1jTxdOqMpLjBJ_82hyO4HHcgYmLftawWl/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-05-20 05:07:06', '2024-02-27 05:23:31', '已將 4/28-5/4 進度更新', 'File_Progress', 2);

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
(3, '00多元Phase1管理總表', 'https://docs.google.com/spreadsheets/d/1GV8h-tcoK1FOtqenMFEnbuNE3javFyB0/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-05-02 08:59:06', '2024-02-27 05:23:31', '已將 4/14-4/20 進度更新', 'File_Progress', 0),
(4, 'Phase1電業申辦進度', 'https://docs.google.com/spreadsheets/d/132bwWWBZmRaIwtzAm8JWkzuAArJaGuN5/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-22 15:08:47', '2024-02-27 05:23:31', '已更新新進度', 'File_Progress', 0),
(5, '22.8KV多元Phase1監工週報', 'https://docs.google.com/spreadsheets/d/1XrJln7GXJbmOEjgMZdhaBN2ntU-KAV9L/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-04-02 02:51:26', '2024-02-27 05:23:31', '完工', 'File_Progress', 0),
(7, 'D1多元光電工程報告', 'https://docs.google.com/spreadsheets/d/1RkOG-EzMJnC0nEiIzbMV5KUnfqFnxa68/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-05-02 08:59:06', '2024-02-27 05:23:31', '已將 4/14-4/20 進度更新', 'File_Progress', 0),
(8, 'D2養殖工程進度表', 'https://docs.google.com/spreadsheets/d/1bma8yfhC08IgDKAJow9GtoHrQ-CJpi_1/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-05-02 08:59:06', '2024-02-27 05:23:31', '已將 4/14-4/20 進度更新', 'File_Progress', 0),
(9, 'D向陽多元-S01', 'https://docs.google.com/spreadsheets/d/18L6lMX3UdjKyUHoTeoj3_50n7Zj70H8M/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-03-01 01:43:50', '2024-02-27 05:23:31', '完工', 'File_Progress', 0),
(10, 'D向陽多元-S02', 'https://docs.google.com/spreadsheets/d/1uGbX2rl67NvD3g8vpGYH_we6XvgrQuJv/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-05-02 08:59:06', '2024-02-27 05:23:31', '已將 4/14-4/20 進度更新\n', 'File_Progress', 0),
(11, 'D向陽多元-S03', 'https://docs.google.com/spreadsheets/d/1z2Hvl8qzPTuEPZue5wEgB81rRQ44_A3D/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-05-02 08:59:06', '2024-02-27 05:23:31', '已將 4/14-4/20 進度更新\n', 'File_Progress', 0),
(12, 'D向陽多元-S04', 'https://docs.google.com/spreadsheets/d/1J2chE81N082TpIbQ0hGkPhvP5wrfVVSS/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-05-02 08:59:06', '2024-02-27 05:23:31', '已將 4/14-4/20 進度更新', 'File_Progress', 0),
(14, 'D向陽多元-S05', 'https://docs.google.com/spreadsheets/d/1dNshqvGSRf-IX4RjlltJHF7z9IeRYyxh/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-05-02 08:59:06', '2024-02-27 05:23:31', '已將 4/14-4/20 進度更新\n', 'File_Progress', 0),
(15, 'D向陽多元-S06', 'https://docs.google.com/spreadsheets/d/1Y3dsFmD3tve3DIxFJ_wNya48OWFUJvCI/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-05-02 08:59:06', '2024-02-27 05:23:31', '已將 4/14-4/20 進度更新\n', 'File_Progress', 0),
(16, 'D向陽多元-S07', 'https://docs.google.com/spreadsheets/d/1Q-Lyv4eFryMFFXpgIIsZClDW2U55T2ks/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-05-02 08:59:06', '2024-02-27 05:23:31', '已將 4/14-4/20 進度更新', 'File_Progress', 0),
(17, 'D向陽多元-S09', 'https://docs.google.com/spreadsheets/d/1kjrmTSmYtzzyOL1r1BuoYnWiROSoyuzs/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-05-02 08:59:06', '2024-02-27 05:23:31', '已將 4/14-4/20 進度更新', 'File_Progress', 0),
(18, 'D向陽多元-S10', 'https://docs.google.com/spreadsheets/d/1_lyJkmgjxeDShnWSVCclK2pU-gyWMDjG/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-05-02 08:59:06', '2024-02-27 05:23:31', '已將 4/14-4/20 進度更新\n', 'File_Progress', 0),
(19, 'E1泰陽電力工程報告', 'https://docs.google.com/spreadsheets/d/13NSMIksBivIGGsx783daq1QCCE-uKlPQ/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-05-02 08:59:06', '2024-02-27 05:23:31', '已將 4/14-4/20 進度更新\n', 'File_Progress', 0),
(20, 'E2養殖工程進度表', 'https://docs.google.com/spreadsheets/d/1reiPoUmH281I2pbSi9j3xRGntLH_cyLF/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true', '2024-05-02 08:59:06', '2024-02-27 05:23:31', '已將 4/14-4/20 進度更新\n', 'File_Progress', 0),
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
  `progress_percentage` float DEFAULT NULL,
  `progress_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `loop_week_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `loops_progress`
--

INSERT INTO `loops_progress` (`progress_id`, `loop_id`, `series_id`, `progress_percentage`, `progress_description`, `last_update`, `create_at`, `loop_week_id`, `user_id`) VALUES
(9, 1, NULL, 0.0108706, NULL, '2024-05-09 06:42:38', '2024-05-09 06:42:38', 9, 2),
(10, 1, NULL, 0.0108706, NULL, '2024-05-09 06:42:38', '2024-05-09 06:42:38', 10, 2),
(11, 1, NULL, 0.0600471, NULL, '2024-05-09 06:42:38', '2024-05-09 06:42:38', 11, 2),
(12, 1, NULL, 0.0600471, NULL, '2024-05-09 06:42:38', '2024-05-09 06:42:38', 14, 2),
(13, 1, NULL, 0.0642918, NULL, '2024-05-09 06:42:38', '2024-05-09 06:42:38', 15, 2),
(14, 1, NULL, 0.0747482, NULL, '2024-05-09 06:42:38', '2024-05-09 06:42:38', 17, 2),
(15, 1, NULL, 0.0782682, NULL, '2024-05-09 06:42:38', '2024-05-09 06:42:38', 18, 2),
(16, 1, NULL, 0.0784753, NULL, '2024-05-09 06:42:38', '2024-05-09 06:42:38', 19, 2),
(17, 2, NULL, 0.00532459, NULL, '2024-05-09 06:46:47', '2024-05-09 06:46:47', 1, 2),
(18, 2, NULL, 0.00532459, NULL, '2024-05-09 06:46:47', '2024-05-09 06:46:47', 2, 2),
(19, 2, NULL, 0.0257355, NULL, '2024-05-09 06:46:47', '2024-05-09 06:46:47', 3, 2),
(20, 2, NULL, 0.0312291, NULL, '2024-05-09 06:46:47', '2024-05-09 06:46:47', 4, 2),
(21, 2, NULL, 0.0312291, NULL, '2024-05-09 06:46:47', '2024-05-09 06:46:47', 5, 2),
(22, 2, NULL, 0.0312291, NULL, '2024-05-09 06:46:47', '2024-05-09 06:46:47', 6, 2),
(23, 2, NULL, 0.0312291, NULL, '2024-05-09 06:46:47', '2024-05-09 06:46:47', 7, 2),
(24, 2, NULL, 0.0312291, NULL, '2024-05-09 06:46:47', '2024-05-09 06:46:47', 8, 2),
(25, 2, NULL, 0.0312291, NULL, '2024-05-09 06:46:47', '2024-05-09 06:46:47', 9, 2),
(26, 2, NULL, 0.0312291, NULL, '2024-05-09 06:46:47', '2024-05-09 06:46:47', 10, 2),
(27, 2, NULL, 0.0313137, NULL, '2024-05-09 06:46:47', '2024-05-09 06:46:47', 11, 2),
(28, 2, NULL, 0.0313137, NULL, '2024-05-09 06:46:47', '2024-05-09 06:46:47', 14, 2),
(29, 2, NULL, 0.0548014, NULL, '2024-05-09 06:46:47', '2024-05-09 06:46:47', 15, 2),
(30, 2, NULL, 0.0578533, NULL, '2024-05-09 06:46:47', '2024-05-09 06:46:47', 17, 2),
(31, 2, NULL, 0.0746969, NULL, '2024-05-09 06:46:47', '2024-05-09 06:46:47', 18, 2),
(32, 2, NULL, 0.077557, NULL, '2024-05-09 06:46:47', '2024-05-09 06:46:47', 19, 2),
(48, 23, NULL, 0.00463287, NULL, '2024-05-09 06:49:03', '2024-05-09 06:49:03', 19, 2),
(63, 9, NULL, 0.00108431, NULL, '2024-05-09 06:50:29', '2024-05-09 06:50:29', 18, 2),
(64, 9, NULL, 0.00922178, NULL, '2024-05-09 06:50:29', '2024-05-09 06:50:29', 19, 2),
(78, 30, NULL, 0.95, NULL, '2024-05-17 01:05:51', '2024-05-17 01:05:51', 1, 2),
(79, 30, NULL, 0.95, NULL, '2024-05-17 01:05:51', '2024-05-17 01:05:51', 2, 2),
(80, 30, NULL, 0.95, NULL, '2024-05-17 01:05:51', '2024-05-17 01:05:51', 3, 2),
(81, 30, NULL, 0.95, NULL, '2024-05-17 01:05:51', '2024-05-17 01:05:51', 4, 2),
(82, 30, NULL, 0.95, NULL, '2024-05-17 01:05:51', '2024-05-17 01:05:51', 5, 2),
(83, 30, NULL, 0.95, NULL, '2024-05-17 01:05:51', '2024-05-17 01:05:51', 6, 2),
(84, 30, NULL, 0.95, NULL, '2024-05-17 01:05:51', '2024-05-17 01:05:51', 7, 2),
(85, 30, NULL, 0.95, NULL, '2024-05-17 01:05:51', '2024-05-17 01:05:51', 8, 2),
(86, 30, NULL, 0.95, NULL, '2024-05-17 01:05:51', '2024-05-17 01:05:51', 9, 2),
(87, 30, NULL, 0.95, NULL, '2024-05-17 01:05:51', '2024-05-17 01:05:51', 10, 2),
(88, 30, NULL, 0.95, NULL, '2024-05-17 01:05:51', '2024-05-17 01:05:51', 11, 2),
(89, 30, NULL, 0.95, NULL, '2024-05-17 01:05:51', '2024-05-17 01:05:51', 14, 2),
(90, 30, NULL, 0.95, NULL, '2024-05-17 01:05:51', '2024-05-17 01:05:51', 15, 2),
(91, 30, NULL, 0.95, NULL, '2024-05-17 01:05:51', '2024-05-17 01:05:51', 17, 2),
(92, 30, NULL, 0.95, NULL, '2024-05-17 01:05:51', '2024-05-17 01:05:51', 18, 2),
(93, 30, NULL, 0.95, NULL, '2024-05-17 01:05:51', '2024-05-17 01:05:51', 19, 2),
(94, 31, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 1, 2),
(95, 31, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 2, 2),
(96, 31, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 3, 2),
(97, 31, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 4, 2),
(98, 31, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 5, 2),
(99, 31, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 6, 2),
(100, 31, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 7, 2),
(101, 31, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 8, 2),
(102, 31, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 9, 2),
(103, 31, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 10, 2),
(104, 31, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 11, 2),
(105, 31, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 14, 2),
(106, 31, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 15, 2),
(107, 31, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 17, 2),
(108, 31, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 18, 2),
(109, 31, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 19, 2),
(110, 32, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 1, 2),
(111, 32, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 2, 2),
(112, 32, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 3, 2),
(113, 32, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 4, 2),
(114, 32, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 5, 2),
(115, 32, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 6, 2),
(116, 32, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 7, 2),
(117, 32, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 8, 2),
(118, 32, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 9, 2),
(119, 32, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 10, 2),
(120, 32, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 11, 2),
(121, 32, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 14, 2),
(122, 32, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 15, 2),
(123, 32, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 17, 2),
(124, 32, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 18, 2),
(125, 32, NULL, 1, NULL, '2024-05-17 02:20:52', '2024-05-17 02:20:52', 19, 2),
(134, 1, NULL, 0.0785, NULL, '2024-05-20 06:34:50', '2024-05-20 06:34:50', 20, 2),
(135, 2, NULL, 0.0805, NULL, '2024-05-20 06:34:50', '2024-05-20 06:34:50', 20, 2),
(136, 9, NULL, 0.0051, NULL, '2024-05-20 06:34:50', '2024-05-20 06:34:50', 20, 2),
(137, 23, NULL, 0.0108, NULL, '2024-05-20 06:34:50', '2024-05-20 06:34:50', 20, 2),
(138, 1, NULL, 0.0785, NULL, '2024-05-20 06:34:50', '2024-05-20 06:34:50', 21, 2),
(139, 2, NULL, 0.0811, NULL, '2024-05-20 06:34:50', '2024-05-20 06:34:50', 21, 2),
(140, 9, NULL, 0.0051, NULL, '2024-05-20 06:34:50', '2024-05-20 06:34:50', 21, 2),
(141, 23, NULL, 0.0108, NULL, '2024-05-20 06:34:50', '2024-05-20 06:34:50', 21, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `loops_progress_expected`
--

CREATE TABLE `loops_progress_expected` (
  `progress_id` int(11) NOT NULL,
  `loop_id` int(11) DEFAULT NULL,
  `progress_percentage` float DEFAULT NULL,
  `progress_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `loop_week_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `loops_progress_expected`
--

INSERT INTO `loops_progress_expected` (`progress_id`, `loop_id`, `progress_percentage`, `progress_description`, `last_update`, `create_at`, `loop_week_id`, `user_id`) VALUES
(1, 1, 0.0321149, NULL, '2024-05-09 07:28:30', '2024-05-09 07:28:30', 17, 2),
(2, 1, 0.0525152, NULL, '2024-05-09 07:28:30', '2024-05-09 07:28:30', 18, 2),
(3, 1, 0.0839517, NULL, '2024-05-09 07:28:30', '2024-05-09 07:28:30', 19, 2),
(4, 2, 0.0124066, NULL, '2024-05-09 07:28:30', '2024-05-09 07:28:30', 7, 2),
(5, 2, 0.0186725, NULL, '2024-05-09 07:28:30', '2024-05-09 07:28:30', 8, 2),
(6, 2, 0.0279461, NULL, '2024-05-09 07:28:30', '2024-05-09 07:28:30', 9, 2),
(7, 2, 0.0414179, NULL, '2024-05-09 07:28:30', '2024-05-09 07:28:30', 10, 2),
(8, 2, 0.0604663, NULL, '2024-05-09 07:28:30', '2024-05-09 07:28:30', 11, 2),
(9, 2, 0.0866579, NULL, '2024-05-09 07:28:30', '2024-05-09 07:28:30', 14, 2),
(10, 2, 0.121121, NULL, '2024-05-09 07:28:30', '2024-05-09 07:28:30', 15, 2),
(11, 2, 0.163854, NULL, '2024-05-09 07:28:30', '2024-05-09 07:28:30', 17, 2),
(12, 2, 0.21323, NULL, '2024-05-09 07:28:30', '2024-05-09 07:28:30', 18, 2),
(13, 2, 0.265738, NULL, '2024-05-09 07:28:30', '2024-05-09 07:28:30', 19, 2),
(14, 9, 0, NULL, '2024-05-20 06:26:07', '2024-05-20 06:26:07', 18, 2),
(15, 9, 0, NULL, '2024-05-20 06:26:07', '2024-05-20 06:26:07', 19, 2),
(16, 23, 0, NULL, '2024-05-20 06:26:07', '2024-05-20 06:26:07', 19, 2),
(25, 1, 0.1297, NULL, '2024-05-20 06:34:50', '2024-05-20 06:34:50', 20, 2),
(26, 2, 0.3169, NULL, '2024-05-20 06:34:50', '2024-05-20 06:34:50', 20, 2),
(27, 9, 0, NULL, '2024-05-20 06:34:50', '2024-05-20 06:34:50', 20, 2),
(28, 23, 0, NULL, '2024-05-20 06:34:50', '2024-05-20 06:34:50', 20, 2),
(29, 1, 0.2096, NULL, '2024-05-20 06:34:50', '2024-05-20 06:34:50', 21, 2),
(30, 2, 0.39, NULL, '2024-05-20 06:34:50', '2024-05-20 06:34:50', 21, 2),
(31, 9, 0, NULL, '2024-05-20 06:34:50', '2024-05-20 06:34:50', 21, 2),
(32, 23, 0, NULL, '2024-05-20 06:34:50', '2024-05-20 06:34:50', 21, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `loop_week`
--

CREATE TABLE `loop_week` (
  `week_id` int(11) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `loop_week`
--

INSERT INTO `loop_week` (`week_id`, `year`, `quarter`, `week`, `start_date`, `end_date`, `user_id`) VALUES
(1, '2024', 1, 1, '2023-12-31', '2024-01-06', 2),
(2, '2024', 1, 2, '2024-01-07', '2024-01-13', 2),
(3, '2024', 1, 3, '2024-01-14', '2024-01-20', 2),
(4, '2024', 1, 4, '2024-01-21', '2024-01-27', 2),
(5, '2024', 1, 5, '2024-01-28', '2024-02-03', 2),
(6, '2024', 1, 6, '2024-02-04', '2024-02-10', 2),
(7, '2024', 1, 7, '2024-02-11', '2024-02-17', 2),
(8, '2024', 1, 8, '2024-02-18', '2024-02-24', 2),
(9, '2024', 1, 9, '2024-02-25', '2024-03-02', 2),
(10, '2024', 1, 10, '2024-03-03', '2024-03-09', 2),
(11, '2024', 1, 11, '2024-03-10', '2024-03-16', 2),
(14, '2024', 1, 12, '2024-03-17', '2024-03-23', 2),
(15, '2024', 1, 13, '2024-03-24', '2024-03-30', 2),
(17, '2024', 2, 1, '2024-03-31', '2024-04-06', 2),
(18, '2024', 2, 2, '2024-04-07', '2024-04-13', 2),
(19, '2024', 2, 3, '2024-04-14', '2024-04-20', 2),
(20, '2024', 2, 4, '2024-04-21', '2024-04-27', 2),
(21, '2024', 2, 5, '2024-04-28', '2024-05-04', 2);

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

--
-- 傾印資料表的資料 `master_plans`
--

INSERT INTO `master_plans` (`master_plan_id`, `master_plan_name`, `planned_start_date`, `planned_end_date`, `actual_start_date`, `actual_end_date`, `master_plan_manager`, `master_plan_status`, `master_plan_description`, `last_update`, `create_at`, `user_id`) VALUES
(1, 'Re-financing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-10 03:15:36', '2024-05-10 03:15:36', 2);

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
(6, '1130221 會議紀錄', 'https://drive.google.com/file/d/1yevm0KqZxLNMWU8oYe0ICTcmE3egoCED/view?usp=sharing', '2024-03-05 05:22:04', '2024-03-05 05:22:04', NULL, '', 0),
(7, '1130306 會議記錄', 'https://drive.google.com/file/d/1bgH8P_HYOtgibmHxLjc8qmvMmDvh5ZJ_/view?usp=sharing', '2024-04-02 03:01:05', '2024-04-02 03:01:05', NULL, '', 2),
(8, '1130312 會議紀錄', 'https://drive.google.com/file/d/1fZNWEoGtyNWEnA3YbihuNKKqEieE4b5e/view?usp=sharing', '2024-04-02 03:03:04', '2024-04-02 03:03:04', NULL, '', 2),
(9, '1130327 會議紀錄', 'https://drive.google.com/file/d/1ZxcSeimzdzkkG3x2SgnyvKDKy-_o3ykU/view?usp=sharing', '2024-04-02 03:04:11', '2024-04-02 03:04:11', NULL, '', 2),
(10, '1130403 會議紀錄', 'https://drive.google.com/file/d/1kfxNNIF1eaIX3XhYDS4dcUEjG15qH8mt/view?usp=sharing', '2024-04-25 09:53:44', '2024-04-25 09:53:44', NULL, '', 2),
(11, '1130410 會議紀錄', 'https://drive.google.com/file/d/1swR62jJgiStu5m7lK1mZE4J7X3zaZiXF/view?usp=sharing', '2024-04-25 09:54:58', '2024-04-25 09:54:58', NULL, '', 2),
(12, '1130417 會議紀錄', 'https://drive.google.com/file/d/1aqIiheP0mz3zmNX_47Cq6Wh0Oye66982/view?usp=sharing', '2024-04-25 09:55:43', '2024-04-25 09:55:43', NULL, '', 2),
(13, '113.04.24職業安全衛生協議組織', 'https://drive.google.com/file/d/1OOBQx44BI3rH2K231ZyIhFbiptI0SLBv/view?usp=sharing', '2024-05-02 07:59:39', '2024-05-02 07:59:39', NULL, '', 2),
(14, '1130430 會議紀錄', 'https://drive.google.com/file/d/17shBAZZ7tJhFHkPOfjBbKur5SxbJ-wx1/view?usp=sharing', '2024-05-20 05:13:32', '2024-05-20 05:13:32', NULL, '', 2),
(15, '1130508 會議紀錄', 'https://drive.google.com/file/d/1LXHBDU7_Lz3sU6BJXQctSISyoJahvDuQ/view?usp=sharing', '2024-05-20 05:13:32', '2024-05-20 05:13:32', NULL, '', 2);

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
  `construction_status` varchar(255) DEFAULT NULL,
  `plan_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `master_plan_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `plans`
--

INSERT INTO `plans` (`plan_id`, `plan_name`, `planned_start_date`, `planned_end_date`, `actual_start_date`, `actual_end_date`, `plan_manager`, `construction_status`, `plan_description`, `last_update`, `create_at`, `master_plan_id`, `block_id`, `user_id`) VALUES
(1, 'Phase 2', '2024-01-01', '2025-12-31', '2024-01-01', NULL, NULL, '2', NULL, '2024-05-10 05:44:13', '2024-02-23 07:32:42', 1, 89, 2),
(3, 'Phase 1', '2021-01-01', '2024-06-30', '2021-01-01', NULL, NULL, '2', NULL, '2024-05-10 05:44:38', '2024-02-23 07:32:42', 1, 88, 2),
(4, '三小案', '2024-01-01', '2024-06-30', '2024-01-01', NULL, NULL, '2', NULL, '2024-05-10 05:44:41', '2024-04-08 07:11:02', 1, 90, 2);

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
  `progress_percentage` float DEFAULT NULL,
  `progress_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `plan_week_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `plans_progress`
--

INSERT INTO `plans_progress` (`progress_id`, `plan_id`, `ratio_id`, `progress_percentage`, `progress_description`, `last_update`, `create_at`, `plan_week_id`, `user_id`) VALUES
(1, 3, NULL, 0.825676, NULL, '2024-05-10 03:41:07', '2024-05-10 03:41:07', 1, 2),
(2, 3, NULL, 0.834229, NULL, '2024-05-10 03:41:07', '2024-05-10 03:41:07', 2, 2),
(3, 3, NULL, 0.846152, NULL, '2024-05-10 03:41:07', '2024-05-10 03:41:07', 3, 2),
(4, 3, NULL, 0.862997, NULL, '2024-05-10 03:41:07', '2024-05-10 03:41:07', 4, 2),
(5, 3, NULL, 0.873537, NULL, '2024-05-10 03:41:07', '2024-05-10 03:41:07', 5, 2),
(6, 3, NULL, 0.874649, NULL, '2024-05-10 03:41:07', '2024-05-10 03:41:07', 6, 2),
(7, 3, NULL, 0.885907, NULL, '2024-05-10 03:41:07', '2024-05-10 03:41:07', 7, 2),
(8, 3, NULL, 0.888433, NULL, '2024-05-10 03:41:07', '2024-05-10 03:41:07', 8, 2),
(9, 3, NULL, 0.892486, NULL, '2024-05-10 03:41:07', '2024-05-10 03:41:07', 9, 2),
(10, 3, NULL, 0.893174, NULL, '2024-05-10 03:41:07', '2024-05-10 03:41:07', 10, 2),
(11, 3, NULL, 0.894372, NULL, '2024-05-10 03:41:07', '2024-05-10 03:41:07', 11, 2),
(12, 3, NULL, 0.895418, NULL, '2024-05-10 03:41:07', '2024-05-10 03:41:07', 14, 2),
(13, 3, NULL, 0.895897, NULL, '2024-05-10 03:41:07', '2024-05-10 03:41:07', 15, 2),
(14, 3, NULL, 0.897087, NULL, '2024-05-10 03:41:07', '2024-05-10 03:41:07', 17, 2),
(15, 3, NULL, 0.899148, NULL, '2024-05-10 03:41:07', '2024-05-10 03:41:07', 18, 2),
(16, 3, NULL, 0.899867, NULL, '2024-05-10 03:41:07', '2024-05-10 03:41:07', 19, 2),
(17, 1, NULL, 0.0153331, NULL, '2024-05-10 03:43:46', '2024-05-10 03:43:46', 1, 2),
(18, 1, NULL, 0.0153331, NULL, '2024-05-10 03:43:46', '2024-05-10 03:43:46', 2, 2),
(19, 1, NULL, 0.0174895, NULL, '2024-05-10 03:43:46', '2024-05-10 03:43:46', 3, 2),
(20, 1, NULL, 0.0273298, NULL, '2024-05-10 03:43:46', '2024-05-10 03:43:46', 4, 2),
(21, 1, NULL, 0.0273298, NULL, '2024-05-10 03:43:46', '2024-05-10 03:43:46', 5, 2),
(22, 1, NULL, 0.0273298, NULL, '2024-05-10 03:43:46', '2024-05-10 03:43:46', 6, 2),
(23, 1, NULL, 0.0273298, NULL, '2024-05-10 03:43:46', '2024-05-10 03:43:46', 7, 2),
(24, 1, NULL, 0.0273337, NULL, '2024-05-10 03:43:46', '2024-05-10 03:43:46', 8, 2),
(25, 1, NULL, 0.0380325, NULL, '2024-05-10 03:43:46', '2024-05-10 03:43:46', 9, 2),
(26, 1, NULL, 0.0380325, NULL, '2024-05-10 03:43:46', '2024-05-10 03:43:46', 10, 2),
(27, 1, NULL, 0.0420634, NULL, '2024-05-10 03:43:46', '2024-05-10 03:43:46', 11, 2),
(28, 1, NULL, 0.0420634, NULL, '2024-05-10 03:43:46', '2024-05-10 03:43:46', 14, 2),
(29, 1, NULL, 0.0488991, NULL, '2024-05-10 03:43:46', '2024-05-10 03:43:46', 15, 2),
(30, 1, NULL, 0.0500768, NULL, '2024-05-10 03:43:46', '2024-05-10 03:43:46', 17, 2),
(31, 1, NULL, 0.0522338, NULL, '2024-05-10 03:43:46', '2024-05-10 03:43:46', 18, 2),
(32, 1, NULL, 0.0536634, NULL, '2024-05-10 03:43:46', '2024-05-10 03:43:46', 19, 2),
(33, 4, NULL, 0.972, NULL, '2024-05-10 03:44:21', '2024-05-10 03:44:21', 1, 2),
(34, 4, NULL, 0.972, NULL, '2024-05-10 03:44:21', '2024-05-10 03:44:21', 2, 2),
(35, 4, NULL, 0.972, NULL, '2024-05-10 03:44:21', '2024-05-10 03:44:21', 3, 2),
(36, 4, NULL, 0.972, NULL, '2024-05-10 03:44:21', '2024-05-10 03:44:21', 4, 2),
(37, 4, NULL, 0.972, NULL, '2024-05-10 03:44:21', '2024-05-10 03:44:21', 5, 2),
(38, 4, NULL, 0.972, NULL, '2024-05-10 03:44:21', '2024-05-10 03:44:21', 6, 2),
(39, 4, NULL, 0.972, NULL, '2024-05-10 03:44:21', '2024-05-10 03:44:21', 7, 2),
(40, 4, NULL, 0.972, NULL, '2024-05-10 03:44:21', '2024-05-10 03:44:21', 8, 2),
(41, 4, NULL, 0.972, NULL, '2024-05-10 03:44:21', '2024-05-10 03:44:21', 9, 2),
(42, 4, NULL, 0.972, NULL, '2024-05-10 03:44:21', '2024-05-10 03:44:21', 10, 2),
(43, 4, NULL, 0.972, NULL, '2024-05-10 03:44:21', '2024-05-10 03:44:21', 11, 2),
(44, 4, NULL, 0.972, NULL, '2024-05-10 03:44:21', '2024-05-10 03:44:21', 14, 2),
(45, 4, NULL, 0.972, NULL, '2024-05-10 03:44:21', '2024-05-10 03:44:21', 15, 2),
(46, 4, NULL, 0.972, NULL, '2024-05-10 03:44:21', '2024-05-10 03:44:21', 17, 2),
(47, 4, NULL, 0.972, NULL, '2024-05-10 03:44:21', '2024-05-10 03:44:21', 18, 2),
(48, 4, NULL, 0.972, NULL, '2024-05-10 03:44:21', '2024-05-10 03:44:21', 19, 2),
(49, 3, NULL, 0.900027, NULL, '2024-05-10 03:41:07', '2024-05-10 03:41:07', 20, 2),
(50, 1, NULL, 0.0599703, NULL, '2024-05-10 03:43:46', '2024-05-10 03:43:46', 20, 2),
(51, 4, NULL, 0.972, NULL, '2024-05-10 03:44:21', '2024-05-10 03:44:21', 20, 2),
(52, 3, NULL, 0.900448, NULL, '2024-05-10 03:41:07', '2024-05-10 03:41:07', 21, 2),
(53, 1, NULL, 0.0600319, NULL, '2024-05-10 03:43:46', '2024-05-10 03:43:46', 21, 2),
(54, 4, NULL, 0.972, NULL, '2024-05-10 03:44:21', '2024-05-10 03:44:21', 21, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `plans_progress_expected`
--

CREATE TABLE `plans_progress_expected` (
  `progress_id` int(11) NOT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `progress_percentage` float DEFAULT NULL,
  `progress_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `plan_week_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `plans_progress_expected`
--

INSERT INTO `plans_progress_expected` (`progress_id`, `plan_id`, `progress_percentage`, `progress_description`, `last_update`, `create_at`, `plan_week_id`, `user_id`) VALUES
(1, 1, 0.00934177, NULL, '2024-05-10 03:54:14', '2024-05-10 03:54:14', 1, 2),
(2, 1, 0.0103453, NULL, '2024-05-10 03:54:14', '2024-05-10 03:54:14', 2, 2),
(3, 1, 0.0113489, NULL, '2024-05-10 03:54:14', '2024-05-10 03:54:14', 3, 2),
(4, 1, 0.0123525, NULL, '2024-05-10 03:54:14', '2024-05-10 03:54:14', 4, 2),
(5, 1, 0.013356, NULL, '2024-05-10 03:54:14', '2024-05-10 03:54:14', 5, 2),
(6, 1, 0.0143596, NULL, '2024-05-10 03:54:14', '2024-05-10 03:54:14', 6, 2),
(7, 1, 0.0166761, NULL, '2024-05-10 03:54:14', '2024-05-10 03:54:14', 7, 2),
(8, 1, 0.018342, NULL, '2024-05-10 03:54:14', '2024-05-10 03:54:14', 8, 2),
(9, 1, 0.0203231, NULL, '2024-05-10 03:54:14', '2024-05-10 03:54:14', 9, 2),
(10, 1, 0.0227464, NULL, '2024-05-10 03:54:14', '2024-05-10 03:54:14', 10, 2),
(11, 1, 0.0257652, NULL, '2024-05-10 03:54:14', '2024-05-10 03:54:14', 11, 2),
(12, 1, 0.0295378, NULL, '2024-05-10 03:54:14', '2024-05-10 03:54:14', 14, 2),
(13, 1, 0.0346728, NULL, '2024-05-10 03:54:14', '2024-05-10 03:54:14', 15, 2),
(14, 1, 0.0433098, NULL, '2024-05-10 03:54:14', '2024-05-10 03:54:14', 17, 2),
(15, 1, 0.0516879, NULL, '2024-05-10 03:54:14', '2024-05-10 03:54:14', 18, 2),
(16, 1, 0.0613023, NULL, '2024-05-10 03:54:14', '2024-05-10 03:54:14', 19, 2),
(17, 4, 0.904812, NULL, '2024-05-10 03:54:46', '2024-05-10 03:54:46', 1, 2),
(18, 4, 0.950001, NULL, '2024-05-10 03:54:46', '2024-05-10 03:54:46', 2, 2),
(19, 4, 0.974345, NULL, '2024-05-10 03:54:46', '2024-05-10 03:54:46', 3, 2),
(20, 4, 0.986999, NULL, '2024-05-10 03:54:46', '2024-05-10 03:54:46', 4, 2),
(21, 4, 0.993453, NULL, '2024-05-10 03:54:46', '2024-05-10 03:54:46', 5, 2),
(22, 4, 0.996714, NULL, '2024-05-10 03:54:46', '2024-05-10 03:54:46', 6, 2),
(23, 4, 0.998353, NULL, '2024-05-10 03:54:46', '2024-05-10 03:54:46', 7, 2),
(24, 4, 0.999176, NULL, '2024-05-10 03:54:46', '2024-05-10 03:54:46', 8, 2),
(25, 4, 0.999587, NULL, '2024-05-10 03:54:46', '2024-05-10 03:54:46', 9, 2),
(26, 4, 0.999794, NULL, '2024-05-10 03:54:46', '2024-05-10 03:54:46', 10, 2),
(27, 4, 0.999897, NULL, '2024-05-10 03:54:46', '2024-05-10 03:54:46', 11, 2),
(28, 4, 0.999948, NULL, '2024-05-10 03:54:46', '2024-05-10 03:54:46', 14, 2),
(29, 4, 0.999974, NULL, '2024-05-10 03:54:46', '2024-05-10 03:54:46', 15, 2),
(30, 4, 0.999987, NULL, '2024-05-10 03:54:46', '2024-05-10 03:54:46', 17, 2),
(31, 4, 0.999994, NULL, '2024-05-10 03:54:46', '2024-05-10 03:54:46', 18, 2),
(32, 4, 0.999997, NULL, '2024-05-10 03:54:46', '2024-05-10 03:54:46', 19, 2),
(33, 3, 0.749968, NULL, '2024-05-10 07:15:24', '2024-05-10 07:15:24', 1, 2),
(34, 3, 0.817506, NULL, '2024-05-10 07:15:24', '2024-05-10 07:15:24', 2, 2),
(35, 3, 0.869964, NULL, '2024-05-10 07:15:24', '2024-05-10 07:15:24', 3, 2),
(36, 3, 0.909021, NULL, '2024-05-10 07:15:24', '2024-05-10 07:15:24', 4, 2),
(37, 3, 0.937194, NULL, '2024-05-10 07:15:24', '2024-05-10 07:15:24', 5, 2),
(38, 3, 0.957055, NULL, '2024-05-10 07:15:24', '2024-05-10 07:15:24', 6, 2),
(39, 3, 0.970831, NULL, '2024-05-10 07:15:24', '2024-05-10 07:15:24', 7, 2),
(40, 3, 0.980279, NULL, '2024-05-10 07:15:24', '2024-05-10 07:15:24', 8, 2),
(41, 3, 0.986708, NULL, '2024-05-10 07:15:24', '2024-05-10 07:15:24', 9, 2),
(42, 3, 0.991061, NULL, '2024-05-10 07:15:24', '2024-05-10 07:15:24', 10, 2),
(43, 3, 0.993997, NULL, '2024-05-10 07:15:24', '2024-05-10 07:15:24', 11, 2),
(44, 3, 0.995972, NULL, '2024-05-10 07:15:24', '2024-05-10 07:15:24', 14, 2),
(45, 3, 0.9973, NULL, '2024-05-10 07:15:24', '2024-05-10 07:15:24', 15, 2),
(46, 3, 0.99819, NULL, '2024-05-10 07:15:24', '2024-05-10 07:15:24', 17, 2),
(47, 3, 0.998787, NULL, '2024-05-10 07:15:24', '2024-05-10 07:15:24', 18, 2),
(48, 3, 0.999188, NULL, '2024-05-10 07:15:24', '2024-05-10 07:15:24', 19, 2),
(49, 1, 0.071953, NULL, '2024-05-10 03:54:14', '2024-05-10 03:54:14', 20, 2),
(50, 4, 0.999997, NULL, '2024-05-10 03:54:46', '2024-05-10 03:54:46', 20, 2),
(51, 3, 0.999456, NULL, '2024-05-10 07:15:24', '2024-05-10 07:15:24', 20, 2),
(52, 3, 0.999636, NULL, '2024-05-10 07:15:24', '2024-05-10 07:15:24', 21, 2),
(53, 4, 0.999997, NULL, '2024-05-10 03:54:46', '2024-05-10 03:54:46', 21, 2),
(54, 1, 0.0876951, NULL, '2024-05-10 03:54:14', '2024-05-10 03:54:14', 21, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `plans_week`
--

CREATE TABLE `plans_week` (
  `week_id` int(11) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `plans_week`
--

INSERT INTO `plans_week` (`week_id`, `year`, `quarter`, `week`, `start_date`, `end_date`, `user_id`) VALUES
(1, '2024', 1, 1, '2023-12-31', '2024-01-06', 2),
(2, '2024', 1, 2, '2024-01-07', '2024-01-13', 2),
(3, '2024', 1, 3, '2024-01-14', '2024-01-20', 2),
(4, '2024', 1, 4, '2024-01-21', '2024-01-27', 2),
(5, '2024', 1, 5, '2024-01-28', '2024-02-03', 2),
(6, '2024', 1, 6, '2024-02-04', '2024-02-10', 2),
(7, '2024', 1, 7, '2024-02-11', '2024-02-17', 2),
(8, '2024', 1, 8, '2024-02-18', '2024-02-24', 2),
(9, '2024', 1, 9, '2024-02-25', '2024-03-02', 2),
(10, '2024', 1, 10, '2024-03-03', '2024-03-09', 2),
(11, '2024', 1, 11, '2024-03-10', '2024-03-16', 2),
(14, '2024', 1, 12, '2024-03-17', '2024-03-23', 2),
(15, '2024', 1, 13, '2024-03-24', '2024-03-30', 2),
(17, '2024', 2, 1, '2024-03-31', '2024-04-06', 2),
(18, '2024', 2, 2, '2024-04-07', '2024-04-13', 2),
(19, '2024', 2, 3, '2024-04-14', '2024-04-20', 2),
(20, '2024', 2, 4, '2024-04-21', '2024-04-27', 2),
(21, '2024', 2, 5, '2024-04-28', '2024-05-04', 2);

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
  `user_id` int(11) NOT NULL DEFAULT 0,
  `block_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `projects`
--

INSERT INTO `projects` (`project_id`, `plan_id`, `project_name`, `plannedstart_date`, `plannedend_date`, `actualstart_date`, `actualend_date`, `construction_status`, `notes`, `last_update`, `create_at`, `user_id`, `block_id`) VALUES
(1, 1, '161KV', NULL, NULL, NULL, NULL, '2', NULL, '2024-05-10 02:27:24', '2024-02-26 06:45:48', 2, 84),
(2, 1, '22.8KV', NULL, NULL, NULL, NULL, '2', NULL, '2024-05-10 02:27:27', '2024-02-26 06:45:48', 2, 85),
(3, 1, '案場', NULL, NULL, NULL, NULL, '2', NULL, '2024-05-10 02:27:30', '2024-02-26 06:46:39', 2, 86),
(4, 1, '電業申辦', NULL, NULL, NULL, NULL, '2', NULL, '2024-05-10 02:27:32', '2024-02-26 06:46:39', 2, 87),
(5, 3, '161KV', NULL, NULL, NULL, NULL, '1', NULL, '2024-05-10 02:27:34', '2024-02-26 06:45:48', 2, NULL),
(6, 3, '22.8KV', NULL, NULL, NULL, NULL, '1', NULL, '2024-05-10 02:27:38', '2024-02-26 06:45:48', 2, NULL),
(7, 3, '案場', NULL, NULL, NULL, NULL, '2', NULL, '2024-05-10 02:27:42', '2024-02-26 06:46:39', 2, NULL),
(8, 3, '電業申辦', NULL, NULL, NULL, NULL, '2', NULL, '2024-05-10 02:27:45', '2024-02-26 06:46:39', 2, NULL),
(9, 3, '升壓站', NULL, NULL, NULL, NULL, '1', NULL, '2024-05-10 02:27:49', '2024-02-26 06:46:39', 2, NULL),
(10, 4, '其他', NULL, NULL, NULL, NULL, '2', NULL, '2024-05-10 02:27:52', '2024-04-08 07:34:06', 2, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `projects_progress`
--

CREATE TABLE `projects_progress` (
  `progress_id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `ratio_id` int(11) DEFAULT NULL,
  `progress_percentage` float DEFAULT NULL,
  `progress_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `project_week_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `projects_progress`
--

INSERT INTO `projects_progress` (`progress_id`, `project_id`, `ratio_id`, `progress_percentage`, `progress_description`, `last_update`, `create_at`, `project_week_id`, `user_id`) VALUES
(1, 1, NULL, 0.3317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 1, 2),
(2, 1, NULL, 0.3317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 2, 2),
(3, 1, NULL, 0.3317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 3, 2),
(4, 1, NULL, 0.3317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 4, 2),
(5, 1, NULL, 0.3317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 5, 2),
(6, 1, NULL, 0.3317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 6, 2),
(7, 1, NULL, 0.3317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 7, 2),
(8, 1, NULL, 0.3317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 8, 2),
(9, 1, NULL, 0.3317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 9, 2),
(10, 1, NULL, 0.3317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 10, 2),
(11, 1, NULL, 0.3317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 11, 2),
(12, 1, NULL, 0.3317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 14, 2),
(13, 1, NULL, 0.3317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 15, 2),
(14, 1, NULL, 0.3317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 17, 2),
(15, 1, NULL, 0.3317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 18, 2),
(16, 1, NULL, 0.3317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 19, 2),
(17, 2, NULL, 0.0949, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 4, 2),
(18, 2, NULL, 0.0949, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 5, 2),
(19, 2, NULL, 0.0949, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 6, 2),
(20, 2, NULL, 0.0949, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 7, 2),
(21, 2, NULL, 0.0949407, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 8, 2),
(22, 2, NULL, 0.0964238, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 9, 2),
(23, 2, NULL, 0.0964238, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 10, 2),
(24, 2, NULL, 0.0964238, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 11, 2),
(25, 2, NULL, 0.0964238, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 14, 2),
(26, 2, NULL, 0.1317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 15, 2),
(27, 2, NULL, 0.1317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 17, 2),
(28, 2, NULL, 0.1317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 18, 2),
(29, 2, NULL, 0.1317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 19, 2),
(30, 3, NULL, 0.00068129, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 1, 2),
(31, 3, NULL, 0.00068129, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 2, 2),
(32, 3, NULL, 0.0032929, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 3, 2),
(33, 3, NULL, 0.00399582, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 4, 2),
(34, 3, NULL, 0.00399582, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 5, 2),
(35, 3, NULL, 0.00399582, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 6, 2),
(36, 3, NULL, 0.00399582, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 7, 2),
(37, 3, NULL, 0.00399582, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 8, 2),
(38, 3, NULL, 0.00507257, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 9, 2),
(39, 3, NULL, 0.00507257, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 10, 2),
(40, 3, NULL, 0.0099544, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 11, 2),
(41, 3, NULL, 0.0099544, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 14, 2),
(42, 3, NULL, 0.0133801, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 15, 2),
(43, 3, NULL, 0.0148064, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 17, 2),
(44, 3, NULL, 0.0174187, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 18, 2),
(45, 3, NULL, 0.0191501, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 19, 2),
(46, 4, NULL, 0.1181, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 1, 2),
(47, 4, NULL, 0.1181, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 2, 2),
(48, 4, NULL, 0.1181, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 3, 2),
(49, 4, NULL, 0.1181, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 4, 2),
(50, 4, NULL, 0.1181, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 5, 2),
(51, 4, NULL, 0.1181, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 6, 2),
(52, 4, NULL, 0.1181, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 7, 2),
(53, 4, NULL, 0.1181, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 8, 2),
(54, 4, NULL, 0.3114, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 9, 2),
(55, 4, NULL, 0.3114, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 10, 2),
(56, 4, NULL, 0.3114, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 11, 2),
(57, 4, NULL, 0.3114, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 14, 2),
(58, 4, NULL, 0.3227, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 15, 2),
(59, 4, NULL, 0.3227, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 17, 2),
(60, 4, NULL, 0.3227, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 18, 2),
(61, 4, NULL, 0.3227, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 19, 2),
(62, 1, NULL, 0.3317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 20, 2),
(63, 2, NULL, 0.1626, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 20, 2),
(64, 3, NULL, 0.0197526, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 20, 2),
(65, 4, NULL, 0.3786, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 20, 2),
(66, 1, NULL, 0.3317, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 21, 2),
(67, 2, NULL, 0.1626, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 21, 2),
(68, 3, NULL, 0.0198273, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 21, 2),
(69, 4, NULL, 0.3786, NULL, '2024-05-10 01:41:03', '2024-05-10 01:41:03', 21, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `projects_progress_expected`
--

CREATE TABLE `projects_progress_expected` (
  `progress_id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `progress_percentage` float DEFAULT NULL,
  `progress_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `project_week_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `projects_progress_expected`
--

INSERT INTO `projects_progress_expected` (`progress_id`, `project_id`, `progress_percentage`, `progress_description`, `last_update`, `create_at`, `project_week_id`, `user_id`) VALUES
(1, 1, 0.3317, NULL, '2024-05-10 01:42:40', '2024-05-10 01:42:40', 1, 2),
(2, 1, 0.3317, NULL, '2024-05-10 01:42:40', '2024-05-10 01:42:40', 2, 2),
(3, 1, 0.3317, NULL, '2024-05-10 01:42:40', '2024-05-10 01:42:40', 3, 2),
(4, 1, 0.3317, NULL, '2024-05-10 01:42:40', '2024-05-10 01:42:40', 4, 2),
(5, 1, 0.3317, NULL, '2024-05-10 01:42:40', '2024-05-10 01:42:40', 5, 2),
(6, 1, 0.3317, NULL, '2024-05-10 01:42:40', '2024-05-10 01:42:40', 6, 2),
(7, 1, 0.3317, NULL, '2024-05-10 01:42:40', '2024-05-10 01:42:40', 7, 2),
(8, 1, 0.3317, NULL, '2024-05-10 01:42:40', '2024-05-10 01:42:40', 8, 2),
(9, 1, 0.3317, NULL, '2024-05-10 01:42:40', '2024-05-10 01:42:40', 9, 2),
(10, 1, 0.3317, NULL, '2024-05-10 01:42:40', '2024-05-10 01:42:40', 10, 2),
(11, 1, 0.3317, NULL, '2024-05-10 01:42:40', '2024-05-10 01:42:40', 11, 2),
(12, 1, 0.3317, NULL, '2024-05-10 01:42:40', '2024-05-10 01:42:40', 14, 2),
(13, 1, 0.3317, NULL, '2024-05-10 01:42:40', '2024-05-10 01:42:40', 15, 2),
(14, 1, 0.3317, NULL, '2024-05-10 01:42:40', '2024-05-10 01:42:40', 17, 2),
(15, 1, 0.3317, NULL, '2024-05-10 01:42:40', '2024-05-10 01:42:40', 18, 2),
(16, 1, 0.3317, NULL, '2024-05-10 01:42:40', '2024-05-10 01:42:40', 19, 2),
(17, 2, 0.00540484, NULL, '2024-05-10 01:45:37', '2024-05-10 01:45:37', 2, 2),
(18, 2, 0.0108097, NULL, '2024-05-10 01:45:37', '2024-05-10 01:45:37', 3, 2),
(19, 2, 0.0162145, NULL, '2024-05-10 01:45:37', '2024-05-10 01:45:37', 4, 2),
(20, 2, 0.0216194, NULL, '2024-05-10 01:45:37', '2024-05-10 01:45:37', 5, 2),
(21, 2, 0.0270242, NULL, '2024-05-10 01:45:37', '2024-05-10 01:45:37', 6, 2),
(22, 2, 0.032429, NULL, '2024-05-10 01:45:37', '2024-05-10 01:45:37', 7, 2),
(23, 2, 0.0378339, NULL, '2024-05-10 01:45:37', '2024-05-10 01:45:37', 8, 2),
(24, 2, 0.0432387, NULL, '2024-05-10 01:45:37', '2024-05-10 01:45:37', 9, 2),
(25, 2, 0.0486436, NULL, '2024-05-10 01:45:37', '2024-05-10 01:45:37', 10, 2),
(26, 2, 0.0540484, NULL, '2024-05-10 01:45:37', '2024-05-10 01:45:37', 11, 2),
(27, 2, 0.0594532, NULL, '2024-05-10 01:45:37', '2024-05-10 01:45:37', 14, 2),
(28, 2, 0.0699007, NULL, '2024-05-10 01:45:37', '2024-05-10 01:45:37', 15, 2),
(29, 2, 0.0803531, NULL, '2024-05-10 01:45:37', '2024-05-10 01:45:37', 17, 2),
(30, 2, 0.0908031, NULL, '2024-05-10 01:45:37', '2024-05-10 01:45:37', 18, 2),
(31, 2, 0.101253, NULL, '2024-05-10 01:45:37', '2024-05-10 01:45:37', 19, 2),
(32, 3, 0.00159002, NULL, '2024-05-10 01:46:14', '2024-05-10 01:46:14', 7, 2),
(33, 3, 0.00239226, NULL, '2024-05-10 01:46:14', '2024-05-10 01:46:14', 8, 2),
(34, 3, 0.00357613, NULL, '2024-05-10 01:46:14', '2024-05-10 01:46:14', 9, 2),
(35, 3, 0.00529561, NULL, '2024-05-10 01:46:14', '2024-05-10 01:46:14', 10, 2),
(36, 3, 0.00773625, NULL, '2024-05-10 01:46:14', '2024-05-10 01:46:14', 11, 2),
(37, 3, 0.0110897, NULL, '2024-05-10 01:46:14', '2024-05-10 01:46:14', 14, 2),
(38, 3, 0.0154975, NULL, '2024-05-10 01:46:14', '2024-05-10 01:46:14', 15, 2),
(39, 3, 0.0241458, NULL, '2024-05-10 01:46:14', '2024-05-10 01:46:14', 17, 2),
(40, 3, 0.0324808, NULL, '2024-05-10 01:46:14', '2024-05-10 01:46:14', 18, 2),
(41, 3, 0.0423133, NULL, '2024-05-10 01:46:14', '2024-05-10 01:46:14', 19, 2),
(42, 4, 0.00952381, NULL, '2024-05-10 01:46:46', '2024-05-10 01:46:46', 1, 2),
(43, 4, 0.0190476, NULL, '2024-05-10 01:46:46', '2024-05-10 01:46:46', 2, 2),
(44, 4, 0.0285714, NULL, '2024-05-10 01:46:46', '2024-05-10 01:46:46', 3, 2),
(45, 4, 0.0380952, NULL, '2024-05-10 01:46:46', '2024-05-10 01:46:46', 4, 2),
(46, 4, 0.047619, NULL, '2024-05-10 01:46:46', '2024-05-10 01:46:46', 5, 2),
(47, 4, 0.0571429, NULL, '2024-05-10 01:46:46', '2024-05-10 01:46:46', 6, 2),
(48, 4, 0.0666667, NULL, '2024-05-10 01:46:46', '2024-05-10 01:46:46', 7, 2),
(49, 4, 0.0761905, NULL, '2024-05-10 01:46:46', '2024-05-10 01:46:46', 8, 2),
(50, 4, 0.0857143, NULL, '2024-05-10 01:46:46', '2024-05-10 01:46:46', 9, 2),
(51, 4, 0.0952381, NULL, '2024-05-10 01:46:46', '2024-05-10 01:46:46', 10, 2),
(52, 4, 0.104762, NULL, '2024-05-10 01:46:46', '2024-05-10 01:46:46', 11, 2),
(53, 4, 0.114286, NULL, '2024-05-10 01:46:46', '2024-05-10 01:46:46', 14, 2),
(54, 4, 0.12381, NULL, '2024-05-10 01:46:46', '2024-05-10 01:46:46', 15, 2),
(55, 4, 0.133333, NULL, '2024-05-10 01:46:46', '2024-05-10 01:46:46', 17, 2),
(56, 4, 0.142857, NULL, '2024-05-10 01:46:46', '2024-05-10 01:46:46', 18, 2),
(57, 4, 0.152381, NULL, '2024-05-10 01:46:46', '2024-05-10 01:46:46', 19, 2),
(74, 1, 0.3317, NULL, '2024-05-10 01:42:40', '2024-05-10 01:42:40', 20, 2),
(75, 2, 0.111703, NULL, '2024-05-10 01:45:37', '2024-05-10 01:45:37', 20, 2),
(76, 3, 0.0534007, NULL, '2024-05-10 01:46:14', '2024-05-10 01:46:14', 20, 2),
(77, 4, 0.161905, NULL, '2024-05-10 01:46:46', '2024-05-10 01:46:46', 20, 2),
(78, 1, 0.3317, NULL, '2024-05-10 01:42:40', '2024-05-10 01:42:40', 21, 2),
(79, 2, 0.122153, NULL, '2024-05-10 01:45:37', '2024-05-10 01:45:37', 21, 2),
(80, 3, 0.0706542, NULL, '2024-05-10 01:46:14', '2024-05-10 01:46:14', 21, 2),
(81, 4, 0.171429, NULL, '2024-05-10 01:46:46', '2024-05-10 01:46:46', 21, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `projects_week`
--

CREATE TABLE `projects_week` (
  `week_id` int(11) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `projects_week`
--

INSERT INTO `projects_week` (`week_id`, `year`, `quarter`, `week`, `start_date`, `end_date`, `user_id`) VALUES
(1, '2024', 1, 1, '2023-12-31', '2024-01-06', 2),
(2, '2024', 1, 2, '2024-01-07', '2024-01-13', 2),
(3, '2024', 1, 3, '2024-01-14', '2024-01-20', 2),
(4, '2024', 1, 4, '2024-01-21', '2024-01-27', 2),
(5, '2024', 1, 5, '2024-01-28', '2024-02-03', 2),
(6, '2024', 1, 6, '2024-02-04', '2024-02-10', 2),
(7, '2024', 1, 7, '2024-02-11', '2024-02-17', 2),
(8, '2024', 1, 8, '2024-02-18', '2024-02-24', 2),
(9, '2024', 1, 9, '2024-02-25', '2024-03-02', 2),
(10, '2024', 1, 10, '2024-03-03', '2024-03-09', 2),
(11, '2024', 1, 11, '2024-03-10', '2024-03-16', 2),
(14, '2024', 1, 12, '2024-03-17', '2024-03-23', 2),
(15, '2024', 1, 13, '2024-03-24', '2024-03-30', 2),
(17, '2024', 2, 1, '2024-03-31', '2024-04-06', 2),
(18, '2024', 2, 2, '2024-04-07', '2024-04-13', 2),
(19, '2024', 2, 3, '2024-04-14', '2024-04-20', 2),
(20, '2024', 2, 4, '2024-04-21', '2024-04-27', 2),
(21, '2024', 2, 5, '2024-04-28', '2024-05-04', 2);

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
  `construction_status` int(11) DEFAULT NULL,
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
(1, '升三-A02區-A棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-02-29 02:33:34', 1, 0),
(2, '升三-A02區-B棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-02-29 02:33:34', 2, 0),
(3, '升三-A03區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-23 14:15:40', 7, 2),
(4, '升三-B01區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-23 14:15:40', 8, 2),
(5, '升三-E01區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-23 14:15:40', 9, 2),
(6, '升三-F01區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-23 14:15:40', 49, 2),
(7, '升三-F02區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-23 14:15:40', 50, 2),
(8, '升三-I01區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-23 14:15:40', 51, 2),
(9, '升三-I02區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-23 14:15:40', 52, 2),
(10, '升四-K01區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-23 14:15:40', 53, 2),
(11, '升四-K02區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-23 14:15:40', 54, 2),
(12, '升四-D03區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-23 14:24:49', 17, 2),
(13, '升三-D01區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-23 14:24:49', 16, 2),
(14, '升四-D04區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-23 14:24:49', 18, 2),
(15, '升四-G01區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-23 14:24:49', 19, 2),
(16, '升四-G02區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-23 14:24:49', 20, 2),
(17, '升三-H01區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-23 14:24:49', 21, 2),
(18, '升三-H02區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-23 14:24:49', 22, 2),
(19, '升四-H03區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-23 14:24:49', 23, 2),
(20, '升四-H04區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-23 14:24:49', 24, 2),
(21, '升四-H05區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-23 14:24:49', 25, 2),
(22, '升四-H06區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-23 14:24:49', 26, 2),
(30, '升三-B02區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:10:35', 81, 2),
(31, '升三-C01區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:10:35', 82, 2),
(32, '升三-C02區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:10:35', 83, 2),
(33, '升三-C03區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:10:35', 84, 2),
(34, '升三-C07區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:10:35', 85, 2),
(35, '升三-C08區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:10:35', 86, 2),
(36, '升三-C09區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:10:35', 87, 2),
(37, '升三-E02區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:15:19', 88, 2),
(38, '升三-E03區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:15:19', 89, 2),
(39, '升三-E04區-A棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:15:19', 90, 2),
(40, '升三-E04區-B棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:15:19', 91, 2),
(41, '升四-E05區-A棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:15:19', 92, 2),
(42, '升四-E05區-B棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:15:19', 93, 2),
(43, '升四-E06區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:15:19', 94, 2),
(44, '升三-F03區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:15:19', 95, 2),
(45, '升四-J01區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:15:19', 96, 2),
(46, '升三-A01區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:24:18', 115, 2),
(47, '升四-A04區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:24:18', 116, 2),
(48, '升四-D02區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:24:18', 117, 2),
(49, '升四-G05區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:24:18', 118, 2),
(50, '升四-G06區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:24:18', 119, 2),
(51, '升四-G07區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:24:18', 120, 2),
(52, '升四-H08區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:24:18', 121, 2),
(53, '升四-H09區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:24:18', 122, 2),
(54, '升四-H10區-A棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:24:18', 123, 2),
(55, '升四-H10區-B棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:24:18', 124, 2),
(56, '升四-G03區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:27:27', 145, 2),
(57, '升四-G04區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:27:27', 146, 2),
(58, '升四-H07區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:27:27', 147, 2),
(59, '升四-L01區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:27:27', 148, 2),
(60, '升四-L02區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:27:27', 149, 2),
(61, '升四-L03區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:27:27', 150, 2),
(62, '升三-C04區-A棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:30:26', 163, 2),
(63, '升三-C04區-B棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:30:26', 164, 2),
(64, '升三-C05區-A棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:30:26', 165, 2),
(65, '升三-C05區-B棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:30:26', 166, 2),
(66, '升三-C06區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:30:26', 167, 2),
(67, '升四-C15區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:30:26', 168, 2),
(68, '升四-C10區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:32:56', 181, 2),
(69, '升四-C11區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:32:56', 182, 2),
(70, '升四-C12區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:32:56', 183, 2),
(71, '升四-C13區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:32:56', 184, 2),
(72, '升四-C14區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:32:56', 185, 2),
(73, '升四-F04區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:32:56', 186, 2),
(74, '升四-F05區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:32:56', 187, 2),
(75, '升四-F06區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:34:46', 202, 2),
(76, '升四-F07區-A棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:34:46', 203, 2),
(77, '升四-F07區-B棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:34:46', 204, 2),
(78, '升四-F07區-C棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-12 01:45:17', '2024-03-25 01:34:46', 205, 2),
(79, '2-8', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 214, 2),
(80, '2-9', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 215, 2),
(81, '2-10', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 216, 2),
(82, '2-11', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 217, 2),
(83, '2-12', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 218, 2),
(84, '2-30', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 219, 2),
(85, '2-101', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 220, 2),
(86, '3-18', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 221, 2),
(87, '3-103', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 222, 2),
(88, '3-104', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 223, 2),
(89, '3-105', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 224, 2),
(90, '3-106', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 225, 2),
(91, '3-107', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 226, 2),
(92, '3-108', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 227, 2),
(93, '4-6', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 228, 2),
(94, '4-7', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 229, 2),
(95, '4-13', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 230, 2),
(96, '4-14', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 231, 2),
(97, '4-19', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 232, 2),
(98, '4-20', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 233, 2),
(99, '4-21', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 234, 2),
(100, '5-22', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 235, 2),
(101, '5-23', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 236, 2),
(102, '5-24', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 237, 2),
(103, '5-201', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 238, 2),
(104, '5-202', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 239, 2),
(105, '5-203', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 240, 2),
(106, '5-204', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 241, 2),
(107, '5-207', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 242, 2),
(108, '6-208', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 243, 2),
(109, '6-209', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 244, 2),
(110, '6-210', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 245, 2),
(111, '6-211', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 246, 2),
(112, '6-212', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 247, 2),
(113, '6-213', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 248, 2),
(114, '7-5', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 249, 2),
(115, '7-25', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 250, 2),
(116, '7-26', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 251, 2),
(117, '7-27', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 252, 2),
(118, '7-28', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 253, 2),
(119, '7-29', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 254, 2),
(120, '7-214', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 255, 2),
(121, '9-402A', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 256, 2),
(122, '9-402B', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 257, 2),
(123, '9-403', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 258, 2),
(124, '9-410', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 259, 2),
(125, '9-411', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 260, 2),
(126, '9-412', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 261, 2),
(127, '10-301', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 262, 2),
(128, '10-406', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 263, 2),
(129, '10-407', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 264, 2),
(130, '10-408', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 265, 2),
(131, '10-409', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:16:56', '2024-05-21 03:16:56', 266, 2),
(132, '3-15', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 08:09:52', '2024-05-21 08:09:52', 267, 2),
(133, '3-16', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 08:09:52', '2024-05-21 08:09:52', 268, 2),
(134, '3-17', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 08:09:52', '2024-05-21 08:09:52', 269, 2);

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
  `user_id` int(11) NOT NULL DEFAULT 0,
  `block_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project_cases`
--

INSERT INTO `project_cases` (`case_id`, `loop_id`, `cases_name`, `longitude`, `latitude`, `address`, `plannedstart_date`, `plannedend_date`, `actualstart_date`, `actualend_date`, `construction_status`, `notes`, `last_update`, `create_at`, `user_id`, `block_id`) VALUES
(1, 1, '升三-A02區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-20 06:13:06', '2024-02-29 02:32:45', 2, 10),
(2, 1, '升三-A02區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-20 06:13:09', '2024-02-29 02:32:45', 2, 11),
(7, 1, '升三-I02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-20 06:13:47', '2024-03-22 03:54:20', 2, 18),
(8, 1, '升四-K02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-20 06:13:51', '2024-03-22 03:54:20', 2, 20),
(9, 1, '升三-A03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-20 06:13:12', '2024-03-22 03:54:20', 2, 12),
(16, 2, '升三-D01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-20 06:13:58', '2024-03-22 05:12:01', 2, 22),
(17, 2, '升四-D03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-20 06:13:55', '2024-03-22 05:12:01', 2, 21),
(18, 2, '升四-D04區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-20 06:14:01', '2024-03-22 05:12:01', 2, 23),
(19, 2, '升四-G01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-09 06:59:09', '2024-03-22 05:12:01', 2, 24),
(20, 2, '升四-G02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-09 06:59:09', '2024-03-22 05:12:01', 2, 25),
(21, 2, '升三-H01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-09 06:59:09', '2024-03-22 05:12:01', 2, 26),
(22, 2, '升三-H02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-09 06:59:09', '2024-03-22 05:12:01', 2, 27),
(23, 2, '升四-H03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-09 06:59:09', '2024-03-22 05:12:01', 2, 28),
(24, 2, '升四-H04區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-09 06:59:09', '2024-03-22 05:12:01', 2, 29),
(25, 2, '升四-H05區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-09 06:59:09', '2024-03-22 05:12:01', 2, 30),
(26, 2, '升四-H06區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-09 06:59:09', '2024-03-22 05:12:01', 2, 31),
(49, 1, '升三-B01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-09 06:59:09', '2024-03-22 05:45:30', 2, 13),
(50, 1, '升三-E01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-09 06:59:09', '2024-03-22 05:45:30', 2, 14),
(51, 1, '升三-F01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-09 06:59:09', '2024-03-22 05:45:30', 2, 15),
(52, 1, '升三-F02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-09 06:59:09', '2024-03-22 05:45:30', 2, 16),
(53, 1, '升三-I01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-09 06:59:09', '2024-03-22 05:45:30', 2, 17),
(54, 1, '升四-K01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-09 06:59:09', '2024-03-22 05:45:30', 2, 19),
(81, 23, '升三-B02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 05:48:50', 2, 32),
(82, 23, '升三-C01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-09 06:59:09', '2024-03-22 05:48:50', 2, 33),
(83, 23, '升三-C02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 05:48:50', 2, 34),
(84, 23, '升三-C03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 05:48:50', 2, 35),
(85, 23, '升三-C07區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 05:48:50', 2, 36),
(86, 23, '升三-C08區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 05:48:50', 2, 37),
(87, 23, '升三-C09區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 05:48:50', 2, 38),
(88, 8, '升三-E02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 05:52:08', 2, 39),
(89, 8, '升三-E03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 05:52:08', 2, 40),
(90, 8, '升三-E04區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 05:52:08', 2, 41),
(91, 8, '升三-E04區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 05:52:08', 2, 42),
(92, 8, '升四-E05區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 05:52:08', 2, 43),
(93, 8, '升四-E05區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 05:52:08', 2, 44),
(94, 8, '升四-E06區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 05:52:08', 2, 45),
(95, 8, '升三-F03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 05:52:08', 2, 46),
(96, 8, '升四-J01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 05:52:08', 2, 47),
(115, 9, '升三-A01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-09 06:59:09', '2024-03-22 15:54:26', 2, 48),
(116, 9, '升四-A04區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 15:54:26', 2, 49),
(117, 9, '升四-D02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 15:54:26', 2, 50),
(118, 9, '升四-G05區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 15:54:26', 2, 51),
(119, 9, '升四-G06區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 15:54:26', 2, 52),
(120, 9, '升四-G07區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 15:54:26', 2, 53),
(121, 9, '升四-H08區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 15:54:26', 2, 54),
(122, 9, '升四-H09區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 15:54:26', 2, 55),
(123, 9, '升四-H10區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 15:54:26', 2, 56),
(124, 9, '升四-H10區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 15:54:26', 2, 57),
(145, 10, '升四-G03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 15:58:08', 2, 58),
(146, 10, '升四-G04區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 15:58:08', 2, 59),
(147, 10, '升四-H07區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 15:58:08', 2, 60),
(148, 10, '升四-L01區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 15:58:08', 2, 61),
(149, 10, '升四-L02區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 15:58:08', 2, 62),
(150, 10, '升四-L03區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 15:58:08', 2, 63),
(163, 11, '升三-C04區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 16:00:58', 2, 64),
(164, 11, '升三-C04區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 16:00:58', 2, 65),
(165, 11, '升三-C05區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 16:00:58', 2, 66),
(166, 11, '升三-C05區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 16:00:58', 2, 67),
(167, 11, '升三-C06區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 16:00:58', 2, 68),
(168, 11, '升四-C15區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-22 16:00:58', 2, 69),
(181, 12, '升四-C10區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-23 13:28:53', 2, 70),
(182, 12, '升四-C11區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-23 13:28:53', 2, 71),
(183, 12, '升四-C12區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-23 13:28:53', 2, 72),
(184, 12, '升四-C13區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-23 13:28:53', 2, 73),
(185, 12, '升四-C14區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-23 13:28:53', 2, 74),
(186, 12, '升四-F04區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-23 13:28:53', 2, 75),
(187, 12, '升四-F05區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-23 13:28:53', 2, 76),
(202, 13, '升四-F06區', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-23 13:41:04', 2, 77),
(203, 13, '升四-F07區-A棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-23 13:41:04', 2, 78),
(204, 13, '升四-F07區-B棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-23 13:41:04', 2, 79),
(205, 13, '升四-F07區-C棟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2024-05-09 06:59:35', '2024-03-23 13:41:04', 2, 80),
(214, 33, '2-8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 107),
(215, 33, '2-9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 108),
(216, 33, '2-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 109),
(217, 33, '2-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 110),
(218, 33, '2-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 111),
(219, 33, '2-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 112),
(220, 33, '2-101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 113),
(221, 34, '3-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 114),
(222, 34, '3-103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 115),
(223, 34, '3-104', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 116),
(224, 34, '3-105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 117),
(225, 34, '3-106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 118),
(226, 34, '3-107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 119),
(227, 34, '3-108', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 120),
(228, 35, '4-6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 121),
(229, 35, '4-7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 122),
(230, 35, '4-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 123),
(231, 35, '4-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 124),
(232, 35, '4-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 125),
(233, 35, '4-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 126),
(234, 35, '4-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 127),
(235, 36, '5-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 128),
(236, 36, '5-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 129),
(237, 36, '5-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 130),
(238, 36, '5-201', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 131),
(239, 36, '5-202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 132),
(240, 36, '5-203', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 133),
(241, 36, '5-204', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 134),
(242, 36, '5-207', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 135),
(243, 37, '6-208', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 136),
(244, 37, '6-209', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 137),
(245, 37, '6-210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 138),
(246, 37, '6-211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 139),
(247, 37, '6-212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 140),
(248, 37, '6-213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 141),
(249, 38, '7-5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 142),
(250, 38, '7-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 143),
(251, 38, '7-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 144),
(252, 38, '7-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 145),
(253, 38, '7-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 146),
(254, 38, '7-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 147),
(255, 38, '7-214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 148),
(256, 39, '9-402A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 149),
(257, 39, '9-402B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 150),
(258, 39, '9-403', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 151),
(259, 39, '9-410', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 152),
(260, 39, '9-411', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 153),
(261, 39, '9-412', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 154),
(262, 40, '10-301', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 155),
(263, 40, '10-406', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 156),
(264, 40, '10-407', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 157),
(265, 40, '10-408', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 158),
(266, 40, '10-409', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 03:09:06', '2024-05-21 03:09:06', 2, 159),
(267, 34, '3-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 08:01:29', '2024-05-21 08:01:29', 2, 160),
(268, 34, '3-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 08:01:29', '2024-05-21 08:01:29', 2, 161),
(269, 34, '3-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '2024-05-21 08:01:29', '2024-05-21 08:01:29', 2, 162);

-- --------------------------------------------------------

--
-- 資料表結構 `project_electrical`
--

CREATE TABLE `project_electrical` (
  `electrical_id` int(11) NOT NULL,
  `electrical_name` varchar(255) DEFAULT NULL,
  `planned_start_date` date DEFAULT NULL,
  `planned_end_date` date DEFAULT NULL,
  `actual_start_date` date DEFAULT NULL,
  `actual_end_date` date DEFAULT NULL,
  `construction_status` int(11) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `project_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `series_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project_electrical`
--

INSERT INTO `project_electrical` (`electrical_id`, `electrical_name`, `planned_start_date`, `planned_end_date`, `actual_start_date`, `actual_end_date`, `construction_status`, `last_update`, `create_at`, `project_id`, `user_id`, `series_id`) VALUES
(1, 'SN1', NULL, NULL, NULL, NULL, 2, '2024-05-16 05:19:32', '2024-05-13 08:57:30', 4, 2, 1),
(2, 'SN2', NULL, NULL, NULL, NULL, 2, '2024-05-16 05:19:32', '2024-05-13 08:57:30', 4, 2, 1),
(3, 'SN3', NULL, NULL, NULL, NULL, 2, '2024-05-16 05:19:32', '2024-05-13 08:57:30', 4, 2, 1),
(4, 'SN4', NULL, NULL, NULL, NULL, 2, '2024-05-16 05:19:32', '2024-05-13 08:57:30', 4, 2, 1),
(5, 'SN5', NULL, NULL, NULL, NULL, 2, '2024-05-16 05:19:32', '2024-05-13 08:57:30', 4, 2, 1),
(6, 'SN6', NULL, NULL, NULL, NULL, 2, '2024-05-16 05:19:32', '2024-05-13 08:57:30', 4, 2, 1),
(7, 'SN7', NULL, NULL, NULL, NULL, 2, '2024-05-16 05:19:32', '2024-05-13 08:57:30', 4, 2, 1),
(8, 'SN8', NULL, NULL, NULL, NULL, 2, '2024-05-16 05:19:32', '2024-05-13 08:57:30', 4, 2, 1),
(9, 'SN9', NULL, NULL, NULL, NULL, 2, '2024-05-16 05:19:32', '2024-05-13 08:57:30', 4, 2, 1);

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
  `user_id` int(11) NOT NULL DEFAULT 0,
  `block_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project_loops`
--

INSERT INTO `project_loops` (`loop_id`, `project_id`, `loop_name`, `plannedstart_date`, `plannedend_date`, `actualstart_date`, `actualend_date`, `construction_status`, `planned_parallel_date`, `actual_parallel_date`, `parallel_status`, `notes`, `last_update`, `create_at`, `user_id`, `block_id`) VALUES
(1, 3, 'SN1', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, '2024-05-09 07:05:22', '2024-02-27 12:24:35', 2, 1),
(2, 3, 'SN2', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, '2024-05-09 07:05:22', '2024-02-27 12:24:35', 2, 2),
(5, 2, 'SN1', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, '2024-05-09 07:08:22', '2024-02-27 12:24:35', 2, 1),
(7, 2, 'SN3', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, '2024-05-09 07:08:26', '2024-03-22 03:45:30', 2, 3),
(8, 3, 'SN4', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '2024-05-09 07:07:49', '2024-03-22 03:45:30', 2, 4),
(9, 3, 'SN5', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, '2024-05-09 07:05:22', '2024-03-22 03:45:30', 2, 5),
(10, 3, 'SN6', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '2024-05-09 07:07:49', '2024-03-22 03:45:30', 2, 6),
(11, 3, 'SN7', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '2024-05-09 07:07:49', '2024-03-22 03:45:30', 2, 7),
(12, 3, 'SN8', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '2024-05-09 07:07:49', '2024-03-22 03:45:30', 2, 8),
(13, 3, 'SN9', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '2024-05-09 07:07:49', '2024-03-22 03:45:30', 2, 9),
(19, 1, '主變壓器 (#TR3, #TR4)', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '2024-05-09 07:08:04', '2024-03-22 03:48:20', 2, 81),
(20, 1, '台電要求之50+2卸載設備', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '2024-05-09 07:08:07', '2024-03-22 03:48:20', 2, 82),
(21, 1, '管理中心及勤務中心', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '2024-05-09 07:07:49', '2024-03-22 03:48:20', 2, 83),
(22, 2, 'SN2', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, '2024-05-09 07:08:29', '2024-03-22 03:48:42', 2, 2),
(23, 3, 'SN3', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, '2024-05-09 07:05:22', '2024-03-22 03:48:42', 2, 3),
(24, 2, 'SN4', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, '2024-05-09 07:08:32', '2024-03-22 03:48:42', 2, 4),
(25, 2, 'SN5', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, '2024-05-20 06:14:26', '2024-03-22 03:48:42', 2, 5),
(26, 2, 'SN6', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '2024-05-09 07:07:49', '2024-03-22 03:48:42', 2, 6),
(27, 2, 'SN7', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '2024-05-09 07:07:49', '2024-03-22 03:48:42', 2, 7),
(28, 2, 'SN8', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '2024-05-09 07:07:49', '2024-03-22 03:48:42', 2, 8),
(29, 2, 'SN9', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '2024-05-09 07:07:49', '2024-03-22 03:48:42', 2, 9),
(30, 10, '永安案場', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, '2024-05-16 09:23:57', '2024-05-16 09:23:57', 2, 91),
(31, 10, '台西案場', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '2024-05-17 01:07:58', '2024-05-16 09:24:26', 2, 92),
(32, 10, '上東勢案場(內埔)', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '2024-05-17 01:08:03', '2024-05-16 09:24:45', 2, 93),
(33, 7, 'S02', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, '2024-05-21 02:05:24', '2024-05-21 02:05:24', 2, 99),
(34, 7, 'S03', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, '2024-05-21 02:05:24', '2024-05-21 02:05:24', 2, 100),
(35, 7, 'S04', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, '2024-05-21 02:05:24', '2024-05-21 02:05:24', 2, 101),
(36, 7, 'S05', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, '2024-05-21 02:05:24', '2024-05-21 02:05:24', 2, 102),
(37, 7, 'S06', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, '2024-05-21 02:05:24', '2024-05-21 02:05:24', 2, 103),
(38, 7, 'S07', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, '2024-05-21 02:05:24', '2024-05-21 02:05:24', 2, 104),
(39, 7, 'S09', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, '2024-05-21 02:05:24', '2024-05-21 02:05:24', 2, 105),
(40, 7, 'S10', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, '2024-05-21 02:05:24', '2024-05-21 02:05:24', 2, 106);

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
  `construction_status` int(11) DEFAULT NULL,
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
(1, '升三-A02區-A棟', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-20 05:40:16', '2024-02-29 02:33:34', 1, 2),
(2, '升三-A02區-B棟', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-20 05:40:25', '2024-02-29 02:33:34', 2, 2),
(3, '升三-A03區', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-20 05:40:37', '2024-03-23 14:16:52', 7, 2),
(4, '升三-B01區', NULL, NULL, NULL, NULL, 2, NULL, '2024-04-02 03:13:58', '2024-03-23 14:16:52', 8, 2),
(5, '升三-E01區', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-03 01:47:20', '2024-03-23 14:16:52', 9, 2),
(6, '升三-F01區', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-03 01:47:31', '2024-03-23 14:16:52', 49, 2),
(7, '升三-F02區', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-03 01:47:36', '2024-03-23 14:16:52', 50, 2),
(8, '升三-I01區', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-03 01:47:47', '2024-03-23 14:16:52', 51, 2),
(9, '升三-I02區', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-20 05:41:48', '2024-03-23 14:16:52', 52, 2),
(10, '升四-K01區', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-03 01:48:01', '2024-03-23 14:16:52', 53, 2),
(11, '升四-K02區', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-20 05:42:23', '2024-03-23 14:16:52', 54, 2),
(12, '升四-D03區', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-20 05:44:13', '2024-03-23 14:25:14', 17, 2),
(13, '升三-D01區', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-20 05:44:19', '2024-03-23 14:25:14', 16, 2),
(14, '升四-D04區', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-20 05:44:29', '2024-03-23 14:25:14', 18, 2),
(15, '升四-G01區', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-03 01:31:54', '2024-03-23 14:25:14', 19, 2),
(16, '升四-G02區', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-03 01:31:59', '2024-03-23 14:25:14', 20, 2),
(17, '升三-H01區', NULL, NULL, NULL, NULL, 2, NULL, '2024-04-01 07:53:08', '2024-03-23 14:25:14', 21, 2),
(18, '升三-H02區', NULL, NULL, NULL, NULL, 2, NULL, '2024-04-02 03:19:47', '2024-03-23 14:25:14', 22, 2),
(19, '升四-H03區', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-03 01:30:53', '2024-03-23 14:25:14', 23, 2),
(20, '升四-H04區', NULL, NULL, NULL, NULL, 2, NULL, '2024-04-02 03:19:55', '2024-03-23 14:25:14', 24, 2),
(21, '升四-H05區', NULL, NULL, NULL, NULL, 2, NULL, '2024-04-02 03:20:00', '2024-03-23 14:25:14', 25, 2),
(22, '升四-H06區', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-03 01:31:06', '2024-03-23 14:25:14', 26, 2),
(30, '升三-B02區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:10:36', 81, 2),
(31, '升三-C01區', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-03 02:30:48', '2024-03-25 01:10:36', 82, 2),
(32, '升三-C02區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:10:36', 83, 2),
(33, '升三-C03區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:10:36', 84, 2),
(34, '升三-C07區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:10:36', 85, 2),
(35, '升三-C08區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:10:36', 86, 2),
(36, '升三-C09區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:10:36', 87, 2),
(37, '升三-E02區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:15:19', 88, 2),
(38, '升三-E03區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:15:19', 89, 2),
(39, '升三-E04區-A棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:15:19', 90, 2),
(40, '升三-E04區-B棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:15:19', 91, 2),
(41, '升四-E05區-A棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:15:19', 92, 2),
(42, '升四-E05區-B棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:15:19', 93, 2),
(43, '升四-E06區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:15:19', 94, 2),
(44, '升三-F03區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:15:19', 95, 2),
(45, '升四-J01區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:15:19', 96, 2),
(46, '升三-A01區', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-03 02:32:16', '2024-03-25 01:24:18', 115, 2),
(47, '升四-A04區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:24:18', 116, 2),
(48, '升四-D02區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:24:18', 117, 2),
(49, '升四-G05區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:24:18', 118, 2),
(50, '升四-G06區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:24:18', 119, 2),
(51, '升四-G07區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:24:18', 120, 2),
(52, '升四-H08區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:24:18', 121, 2),
(53, '升四-H09區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:24:18', 122, 2),
(54, '升四-H10區-A棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:24:18', 123, 2),
(55, '升四-H10區-B棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:24:18', 124, 2),
(56, '升四-G03區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:27:27', 145, 2),
(57, '升四-G04區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:27:27', 146, 2),
(58, '升四-H07區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:27:27', 147, 2),
(59, '升四-L01區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:27:27', 148, 2),
(60, '升四-L02區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:27:27', 149, 2),
(61, '升四-L03區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:27:27', 150, 2),
(62, '升三-C04區-A棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:30:26', 163, 2),
(63, '升三-C04區-B棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:30:26', 164, 2),
(64, '升三-C05區-A棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:30:26', 165, 2),
(65, '升三-C05區-B棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:30:26', 166, 2),
(66, '升三-C06區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:30:26', 167, 2),
(67, '升四-C15區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:30:26', 168, 2),
(68, '升四-C10區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:32:56', 181, 2),
(69, '升四-C11區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:32:56', 182, 2),
(70, '升四-C12區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:32:56', 183, 2),
(71, '升四-C13區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:32:56', 184, 2),
(72, '升四-C14區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:32:56', 185, 2),
(73, '升四-F04區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:32:56', 186, 2),
(74, '升四-F05區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:32:56', 187, 2),
(75, '升四-F06區', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:34:46', 202, 2),
(76, '升四-F07區-A棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:34:46', 203, 2),
(77, '升四-F07區-B棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:34:46', 204, 2),
(78, '升四-F07區-C棟', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-01 07:55:03', '2024-03-25 01:34:46', 205, 2),
(79, '2-8', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 214, 2),
(80, '2-9', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 215, 2),
(81, '2-10', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 216, 2),
(82, '2-11', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 217, 2),
(83, '2-12', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 218, 2),
(84, '2-30', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 219, 2),
(85, '2-101', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 220, 2),
(86, '3-18', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 221, 2),
(87, '3-103', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 222, 2),
(88, '3-104', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 223, 2),
(89, '3-105', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 224, 2),
(90, '3-106', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 225, 2),
(91, '3-107', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 226, 2),
(92, '3-108', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 227, 2),
(93, '4-6', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 228, 2),
(94, '4-7', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 229, 2),
(95, '4-13', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 230, 2),
(96, '4-14', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 231, 2),
(97, '4-19', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 232, 2),
(98, '4-20', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 233, 2),
(99, '4-21', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 234, 2),
(100, '5-22', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 235, 2),
(101, '5-23', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 236, 2),
(102, '5-24', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 237, 2),
(103, '5-201', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 238, 2),
(104, '5-202', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 239, 2),
(105, '5-203', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 240, 2),
(106, '5-204', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 241, 2),
(107, '5-207', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 242, 2),
(108, '6-208', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 243, 2),
(109, '6-209', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 244, 2),
(110, '6-210', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 245, 2),
(111, '6-211', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 246, 2),
(112, '6-212', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 247, 2),
(113, '6-213', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 248, 2),
(114, '7-5', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 249, 2),
(115, '7-25', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 250, 2),
(116, '7-26', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 251, 2),
(117, '7-27', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 252, 2),
(118, '7-28', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 253, 2),
(119, '7-29', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 254, 2),
(120, '7-214', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 255, 2),
(121, '9-402A', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 256, 2),
(122, '9-402B', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 257, 2),
(123, '9-403', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 258, 2),
(124, '9-410', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 259, 2),
(125, '9-411', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 260, 2),
(126, '9-412', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 261, 2),
(127, '10-301', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 262, 2),
(128, '10-406', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 263, 2),
(129, '10-407', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 264, 2),
(130, '10-408', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 265, 2),
(131, '10-409', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 03:14:55', '2024-05-21 03:14:55', 266, 2),
(132, '3-15', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 08:09:52', '2024-05-21 08:09:52', 267, 2),
(133, '3-16', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 08:09:52', '2024-05-21 08:09:52', 268, 2),
(134, '3-17', NULL, NULL, NULL, NULL, 2, NULL, '2024-05-21 08:09:52', '2024-05-21 08:09:52', 269, 2);

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
  `construction_status` int(11) DEFAULT NULL,
  `series_id` int(11) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `project_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project_voltage161k`
--

INSERT INTO `project_voltage161k` (`voltage161k_id`, `voltage161k_name`, `planned_start_date`, `planned_end_date`, `actual_start_date`, `actual_end_date`, `construction_status`, `series_id`, `last_update`, `create_at`, `project_id`, `user_id`) VALUES
(1, '主變壓器 (#TR3, #TR4)', NULL, NULL, NULL, NULL, 1, NULL, '2024-04-10 09:14:59', '2024-04-10 09:14:59', 1, 2),
(2, '台電要求之50+2卸載設備', NULL, NULL, NULL, NULL, 1, NULL, '2024-04-10 09:14:59', '2024-04-10 09:14:59', 1, 2),
(3, '管理中心及勤務中心', NULL, NULL, NULL, NULL, 0, NULL, '2024-04-10 09:14:59', '2024-04-10 09:14:59', 1, 2);

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
  `construction_status` int(11) DEFAULT NULL,
  `engineer` int(11) DEFAULT NULL,
  `series_id` int(11) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `loop_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project_voltage228k`
--

INSERT INTO `project_voltage228k` (`voltage228k_id`, `voltage228k_name`, `planned_start_date`, `planned_end_date`, `actual_start_date`, `actual_end_date`, `construction_status`, `engineer`, `series_id`, `last_update`, `create_at`, `loop_id`, `user_id`) VALUES
(1, 'SN1', NULL, NULL, NULL, NULL, 2, 1, NULL, '2024-04-09 05:38:22', '2024-03-29 09:19:42', 5, 2),
(2, 'SN1', NULL, NULL, NULL, NULL, 0, 2, NULL, '2024-04-09 05:38:25', '2024-03-29 09:19:42', 5, 2),
(3, 'SN2', NULL, NULL, NULL, NULL, 2, 1, NULL, '2024-04-09 05:38:30', '2024-04-01 01:36:14', 22, 2),
(4, 'SN2', NULL, NULL, NULL, NULL, 0, 2, NULL, '2024-04-09 05:38:32', '2024-04-01 01:36:14', 22, 2),
(5, 'SN3', NULL, NULL, NULL, NULL, 2, 1, NULL, '2024-04-25 11:30:29', '2024-04-01 01:36:14', 7, 2),
(6, 'SN3', NULL, NULL, NULL, NULL, 0, 2, NULL, '2024-04-09 05:38:38', '2024-04-01 01:36:14', 7, 2),
(7, 'SN4', NULL, NULL, NULL, NULL, 2, 1, NULL, '2024-04-25 11:30:23', '2024-04-01 01:36:14', 24, 2),
(8, 'SN4', NULL, NULL, NULL, NULL, 0, 2, NULL, '2024-04-09 05:38:43', '2024-04-01 01:36:14', 24, 2),
(9, 'SN5', NULL, NULL, NULL, NULL, 2, 1, NULL, '2024-05-20 06:36:54', '2024-04-01 01:36:14', 25, 2),
(10, 'SN5', NULL, NULL, NULL, NULL, 0, 2, NULL, '2024-04-09 05:38:47', '2024-04-01 01:36:14', 25, 2),
(11, 'SN6', NULL, NULL, NULL, NULL, 0, 1, NULL, '2024-04-09 05:38:49', '2024-04-01 01:36:14', 26, 2),
(12, 'SN6', NULL, NULL, NULL, NULL, 0, 2, NULL, '2024-04-09 05:38:52', '2024-04-01 01:36:14', 26, 2),
(13, 'SN7', NULL, NULL, NULL, NULL, 0, 1, NULL, '2024-04-09 05:38:54', '2024-04-01 01:36:14', 27, 2),
(14, 'SN7', NULL, NULL, NULL, NULL, 0, 2, NULL, '2024-04-09 05:38:56', '2024-04-01 01:36:14', 27, 2),
(15, 'SN8', NULL, NULL, NULL, NULL, 0, 1, NULL, '2024-04-09 05:38:59', '2024-04-01 01:36:14', 28, 2),
(16, 'SN8', NULL, NULL, NULL, NULL, 0, 2, NULL, '2024-04-09 05:39:01', '2024-04-01 01:36:14', 28, 2),
(17, 'SN9', NULL, NULL, NULL, NULL, 0, 1, NULL, '2024-04-09 05:39:03', '2024-04-01 01:36:14', 29, 2),
(18, 'SN9', NULL, NULL, NULL, NULL, 0, 2, NULL, '2024-04-09 05:39:06', '2024-04-01 01:36:14', 29, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `proportionblocks`
--

CREATE TABLE `proportionblocks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `proportionblocks`
--

INSERT INTO `proportionblocks` (`id`, `name`, `parent_id`, `updated_at`, `user_id`, `type`) VALUES
(1, 'SN1', NULL, '2024-01-01 00:00:00', 2, 'power'),
(2, 'SN2', NULL, '2024-01-01 00:00:00', 2, 'power'),
(3, 'SN3', NULL, '2024-01-01 00:00:00', 2, 'power'),
(4, 'SN4', NULL, '2024-01-01 00:00:00', 2, 'power'),
(5, 'SN5', NULL, '2024-01-01 00:00:00', 2, 'power'),
(6, 'SN6', NULL, '2024-01-01 00:00:00', 2, 'power'),
(7, 'SN7', NULL, '2024-01-01 00:00:00', 2, 'power'),
(8, 'SN8', NULL, '2024-01-01 00:00:00', 2, 'power'),
(9, 'SN9', NULL, '2024-01-01 00:00:00', 2, 'power'),
(10, '升三-A02區-A棟', 1, '2024-01-01 00:00:00', 2, 'power'),
(11, '升三-A02區-B棟', 1, '2024-01-01 00:00:00', 2, 'power'),
(12, '升三-A03區', 1, '2024-01-01 00:00:00', 2, 'power'),
(13, '升三-B01區', 1, '2024-01-01 00:00:00', 2, 'power'),
(14, '升三-E01區', 1, '2024-01-01 00:00:00', 2, 'power'),
(15, '升三-F01區', 1, '2024-01-01 00:00:00', 2, 'power'),
(16, '升三-F02區', 1, '2024-01-01 00:00:00', 2, 'power'),
(17, '升三-I01區', 1, '2024-01-01 00:00:00', 2, 'power'),
(18, '升三-I02區', 1, '2024-01-01 00:00:00', 2, 'power'),
(19, '升四-K01區', 1, '2024-01-01 00:00:00', 2, 'power'),
(20, '升四-K02區', 1, '2024-01-01 00:00:00', 2, 'power'),
(21, '升四-D03區', 2, '2024-01-01 00:00:00', 2, 'power'),
(22, '升三-D01區', 2, '2024-01-01 00:00:00', 2, 'power'),
(23, '升四-D04區', 2, '2024-01-01 00:00:00', 2, 'power'),
(24, '升四-G01區', 2, '2024-01-01 00:00:00', 2, 'power'),
(25, '升四-G02區', 2, '2024-01-01 00:00:00', 2, 'power'),
(26, '升三-H01區', 2, '2024-01-01 00:00:00', 2, 'power'),
(27, '升三-H02區', 2, '2024-01-01 00:00:00', 2, 'power'),
(28, '升四-H03區', 2, '2024-01-01 00:00:00', 2, 'power'),
(29, '升四-H04區', 2, '2024-01-01 00:00:00', 2, 'power'),
(30, '升四-H05區', 2, '2024-01-01 00:00:00', 2, 'power'),
(31, '升四-H06區', 2, '2024-01-01 00:00:00', 2, 'power'),
(32, '升三-B02區', 3, '2024-01-01 00:00:00', 2, 'power'),
(33, '升三-C01區', 3, '2024-01-01 00:00:00', 2, 'power'),
(34, '升三-C02區', 3, '2024-01-01 00:00:00', 2, 'power'),
(35, '升三-C03區', 3, '2024-01-01 00:00:00', 2, 'power'),
(36, '升三-C07區', 3, '2024-01-01 00:00:00', 2, 'power'),
(37, '升三-C08區', 3, '2024-01-01 00:00:00', 2, 'power'),
(38, '升三-C09區', 3, '2024-01-01 00:00:00', 2, 'power'),
(39, '升三-E02區', 4, '2024-01-01 00:00:00', 2, 'power'),
(40, '升三-E03區', 4, '2024-01-01 00:00:00', 2, 'power'),
(41, '升三-E04區-A棟', 4, '2024-01-01 00:00:00', 2, 'power'),
(42, '升三-E04區-B棟', 4, '2024-01-01 00:00:00', 2, 'power'),
(43, '升四-E05區-A棟', 4, '2024-01-01 00:00:00', 2, 'power'),
(44, '升四-E05區-B棟', 4, '2024-01-01 00:00:00', 2, 'power'),
(45, '升四-E06區', 4, '2024-01-01 00:00:00', 2, 'power'),
(46, '升三-F03區', 4, '2024-01-01 00:00:00', 2, 'power'),
(47, '升四-J01區', 4, '2024-01-01 00:00:00', 2, 'power'),
(48, '升三-A01區', 5, '2024-01-01 00:00:00', 2, 'power'),
(49, '升四-A04區', 5, '2024-01-01 00:00:00', 2, 'power'),
(50, '升四-D02區', 5, '2024-01-01 00:00:00', 2, 'power'),
(51, '升四-G05區', 5, '2024-01-01 00:00:00', 2, 'power'),
(52, '升四-G06區', 5, '2024-01-01 00:00:00', 2, 'power'),
(53, '升四-G07區', 5, '2024-01-01 00:00:00', 2, 'power'),
(54, '升四-H08區', 5, '2024-01-01 00:00:00', 2, 'power'),
(55, '升四-H09區', 5, '2024-01-01 00:00:00', 2, 'power'),
(56, '升四-H10區-A棟', 5, '2024-01-01 00:00:00', 2, 'power'),
(57, '升四-H10區-B棟', 5, '2024-01-01 00:00:00', 2, 'power'),
(58, '升四-G03區', 6, '2024-01-01 00:00:00', 2, 'power'),
(59, '升四-G04區', 6, '2024-01-01 00:00:00', 2, 'power'),
(60, '升四-H07區', 6, '2024-01-01 00:00:00', 2, 'power'),
(61, '升四-L01區', 6, '2024-01-01 00:00:00', 2, 'power'),
(62, '升四-L02區', 6, '2024-01-01 00:00:00', 2, 'power'),
(63, '升四-L03區', 6, '2024-01-01 00:00:00', 2, 'power'),
(64, '升三-C04區-A棟', 7, '2024-01-01 00:00:00', 2, 'power'),
(65, '升三-C04區-B棟', 7, '2024-01-01 00:00:00', 2, 'power'),
(66, '升三-C05區-A棟', 7, '2024-01-01 00:00:00', 2, 'power'),
(67, '升三-C05區-B棟', 7, '2024-01-01 00:00:00', 2, 'power'),
(68, '升三-C06區', 7, '2024-01-01 00:00:00', 2, 'power'),
(69, '升四-C15區', 7, '2024-01-01 00:00:00', 2, 'power'),
(70, '升四-C10區', 8, '2024-01-01 00:00:00', 2, 'power'),
(71, '升四-C11區', 8, '2024-01-01 00:00:00', 2, 'power'),
(72, '升四-C12區', 8, '2024-01-01 00:00:00', 2, 'power'),
(73, '升四-C13區', 8, '2024-01-01 00:00:00', 2, 'power'),
(74, '升四-C14區', 8, '2024-01-01 00:00:00', 2, 'power'),
(75, '升四-F04區', 8, '2024-01-01 00:00:00', 2, 'power'),
(76, '升四-F05區', 8, '2024-01-01 00:00:00', 2, 'power'),
(77, '升四-F06區', 9, '2024-01-01 00:00:00', 2, 'power'),
(78, '升四-F07區-A棟', 9, '2024-01-01 00:00:00', 2, 'power'),
(79, '升四-F07區-B棟', 9, '2024-01-01 00:00:00', 2, 'power'),
(80, '升四-F07區-C棟', 9, '2024-01-01 00:00:00', 2, 'power'),
(81, '主變壓器 (#TR3, #TR4)', 84, '2024-01-01 00:00:00', 2, 'money'),
(82, '台電要求之50+2卸載設備', 84, '2024-01-01 00:00:00', 2, 'money'),
(83, '管理中心及勤務中心', 84, '2024-01-01 00:00:00', 2, 'money'),
(84, '161KV', 89, '2024-01-01 00:00:00', 2, 'money'),
(85, '22.8KV', 89, '2024-01-01 00:00:00', 2, 'money'),
(86, '案場', 89, '2024-01-01 00:00:00', 2, 'money'),
(87, '電業申辦', 89, '2024-01-01 00:00:00', 2, 'money'),
(88, 'Phase 1', NULL, '2024-01-01 00:00:00', 2, 'money'),
(89, 'Phase 2', NULL, '2024-01-01 00:00:00', 2, 'money'),
(90, '三小案', NULL, '2024-01-01 00:00:00', 2, 'money'),
(91, '永安案場', 90, '2024-01-01 17:16:27', 2, 'money'),
(92, '台西案場', 90, '2024-01-01 17:16:16', 2, 'money'),
(93, '上東勢案場(內埔)', 90, '2024-01-01 17:16:44', 2, 'money'),
(94, '電業申辦', 88, '2024-01-01 00:00:00', 2, 'money'),
(95, '案場', 88, '2024-01-01 00:00:00', 2, 'money'),
(96, '22.8KV', 88, '2024-01-01 00:00:00', 2, 'money'),
(97, '161KV', 88, '2024-01-01 00:00:00', 2, 'money'),
(98, '升壓站', 88, '2024-01-01 00:00:00', 2, 'money'),
(99, 'S02', 95, '2024-01-01 00:00:00', 2, 'money'),
(100, 'S03', 95, '2024-01-01 00:00:00', 2, 'money'),
(101, 'S04', 95, '2024-01-01 00:00:00', 2, 'money'),
(102, 'S05', 95, '2024-01-01 00:00:00', 2, 'money'),
(103, 'S06', 95, '2024-01-01 00:00:00', 2, 'money'),
(104, 'S07', 95, '2024-01-01 00:00:00', 2, 'money'),
(105, 'S09', 95, '2024-01-01 00:00:00', 2, 'money'),
(106, 'S10', 95, '2024-01-01 00:00:00', 2, 'money'),
(107, '2-8', 99, '2024-01-01 00:00:00', 2, 'money'),
(108, '2-9', 99, '2024-01-01 00:00:00', 2, 'money'),
(109, '2-10', 99, '2024-01-01 00:00:00', 2, 'money'),
(110, '2-11', 99, '2024-01-01 00:00:00', 2, 'money'),
(111, '2-12', 99, '2024-01-01 00:00:00', 2, 'money'),
(112, '2-30', 99, '2024-01-01 00:00:00', 2, 'money'),
(113, '2-101', 99, '2024-01-01 00:00:00', 2, 'money'),
(114, '3-18', 100, '2024-01-01 00:00:00', 2, 'money'),
(115, '3-103', 100, '2024-01-01 00:00:00', 2, 'money'),
(116, '3-104', 100, '2024-01-01 00:00:00', 2, 'money'),
(117, '3-105', 100, '2024-01-01 00:00:00', 2, 'money'),
(118, '3-106', 100, '2024-01-01 00:00:00', 2, 'money'),
(119, '3-107', 100, '2024-01-01 00:00:00', 2, 'money'),
(120, '3-108', 100, '2024-01-01 00:00:00', 2, 'money'),
(121, '4-6', 101, '2024-01-01 00:00:00', 2, 'money'),
(122, '4-7', 101, '2024-01-01 00:00:00', 2, 'money'),
(123, '4-13', 101, '2024-01-01 00:00:00', 2, 'money'),
(124, '4-14', 101, '2024-01-01 00:00:00', 2, 'money'),
(125, '4-19', 101, '2024-01-01 00:00:00', 2, 'money'),
(126, '4-20', 101, '2024-01-01 00:00:00', 2, 'money'),
(127, '4-21', 101, '2024-01-01 00:00:00', 2, 'money'),
(128, '5-22', 102, '2024-01-01 00:00:00', 2, 'money'),
(129, '5-23', 102, '2024-01-01 00:00:00', 2, 'money'),
(130, '5-24', 102, '2024-01-01 00:00:00', 2, 'money'),
(131, '5-201', 102, '2024-01-01 00:00:00', 2, 'money'),
(132, '5-202', 102, '2024-01-01 00:00:00', 2, 'money'),
(133, '5-203', 102, '2024-01-01 00:00:00', 2, 'money'),
(134, '5-204', 102, '2024-01-01 00:00:00', 2, 'money'),
(135, '5-207', 102, '2024-01-01 00:00:00', 2, 'money'),
(136, '6-208', 103, '2024-01-01 00:00:00', 2, 'money'),
(137, '6-209', 103, '2024-01-01 00:00:00', 2, 'money'),
(138, '6-210', 103, '2024-01-01 00:00:00', 2, 'money'),
(139, '6-211', 103, '2024-01-01 00:00:00', 2, 'money'),
(140, '6-212', 103, '2024-01-01 00:00:00', 2, 'money'),
(141, '6-213', 103, '2024-01-01 00:00:00', 2, 'money'),
(142, '7-5', 104, '2024-01-01 00:00:00', 2, 'money'),
(143, '7-25', 104, '2024-01-01 00:00:00', 2, 'money'),
(144, '7-26', 104, '2024-01-01 00:00:00', 2, 'money'),
(145, '7-27', 104, '2024-01-01 00:00:00', 2, 'money'),
(146, '7-28', 104, '2024-01-01 00:00:00', 2, 'money'),
(147, '7-29', 104, '2024-01-01 00:00:00', 2, 'money'),
(148, '7-214', 104, '2024-01-01 00:00:00', 2, 'money'),
(149, '9-402A', 105, '2024-01-01 00:00:00', 2, 'money'),
(150, '9-402B', 105, '2024-01-01 00:00:00', 2, 'money'),
(151, '9-403', 105, '2024-01-01 00:00:00', 2, 'money'),
(152, '9-410', 105, '2024-01-01 00:00:00', 2, 'money'),
(153, '9-411', 105, '2024-01-01 00:00:00', 2, 'money'),
(154, '9-412', 105, '2024-01-01 00:00:00', 2, 'money'),
(155, '10-301', 106, '2024-01-01 00:00:00', 2, 'money'),
(156, '10-406', 106, '2024-01-01 00:00:00', 2, 'money'),
(157, '10-407', 106, '2024-01-01 00:00:00', 2, 'money'),
(158, '10-408', 106, '2024-01-01 00:00:00', 2, 'money'),
(159, '10-409', 106, '2024-01-01 00:00:00', 2, 'money'),
(160, '3-15', 100, '2024-01-01 00:00:00', 2, 'money'),
(161, '3-16', 100, '2024-01-01 00:00:00', 2, 'money'),
(162, '3-17', 100, '2024-01-01 00:00:00', 2, 'money');

-- --------------------------------------------------------

--
-- 資料表結構 `proportionhistory`
--

CREATE TABLE `proportionhistory` (
  `history_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `percentage` float NOT NULL,
  `effective_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `proportionhistory`
--

INSERT INTO `proportionhistory` (`history_id`, `block_id`, `quantity`, `percentage`, `effective_date`, `user_id`) VALUES
(1, 10, 437.76, 0.0376471, '2024-01-01 00:00:00', 2),
(2, 11, 437.76, 0.0376471, '2024-01-01 00:00:00', 2),
(3, 12, 738.72, 0.0635294, '2024-01-01 00:00:00', 2),
(4, 13, 1504.8, 0.129412, '2024-01-01 00:00:00', 2),
(5, 14, 1340.64, 0.115294, '2024-01-01 00:00:00', 2),
(6, 15, 1751.04, 0.150588, '2024-01-01 00:00:00', 2),
(7, 16, 1149.12, 0.0988235, '2024-01-01 00:00:00', 2),
(8, 17, 1413.6, 0.121569, '2024-01-01 00:00:00', 2),
(9, 18, 647.52, 0.0556863, '2024-01-01 00:00:00', 2),
(10, 19, 1532.16, 0.131765, '2024-01-01 00:00:00', 2),
(11, 20, 674.88, 0.0580392, '2024-01-01 00:00:00', 2),
(12, 21, 811.68, 0.0540376, '2024-01-01 00:00:00', 2),
(13, 22, 802.56, 0.0534305, '2024-01-01 00:00:00', 2),
(14, 23, 738.72, 0.0491803, '2024-01-01 00:00:00', 2),
(15, 24, 492.48, 0.0327869, '2024-01-01 00:00:00', 2),
(16, 25, 802.56, 0.0534305, '2024-01-01 00:00:00', 2),
(17, 26, 793.44, 0.0528233, '2024-01-01 00:00:00', 2),
(18, 27, 2015.52, 0.134183, '2024-01-01 00:00:00', 2),
(19, 28, 538.08, 0.0358227, '2024-01-01 00:00:00', 2),
(20, 29, 4660.32, 0.310261, '2024-01-01 00:00:00', 2),
(21, 30, 2736, 0.182149, '2024-01-01 00:00:00', 2),
(22, 31, 629.28, 0.0418944, '2024-01-01 00:00:00', 2),
(23, 32, 973.44, 0.0724234, '2024-01-01 00:00:00', 2),
(24, 33, 823.68, 0.0612813, '2024-01-01 00:00:00', 2),
(25, 34, 2003.04, 0.149025, '2024-01-01 00:00:00', 2),
(26, 35, 2995.2, 0.222841, '2024-01-01 00:00:00', 2),
(27, 36, 3154.32, 0.23468, '2024-01-01 00:00:00', 2),
(28, 37, 2508.48, 0.18663, '2024-01-01 00:00:00', 2),
(29, 38, 982.8, 0.0731198, '2024-01-01 00:00:00', 2),
(30, 39, 1641.6, 0.119048, '2024-01-01 00:00:00', 2),
(31, 40, 2927.52, 0.212302, '2024-01-01 00:00:00', 2),
(32, 41, 1605.12, 0.116402, '2024-01-01 00:00:00', 2),
(33, 42, 1459.2, 0.10582, '2024-01-01 00:00:00', 2),
(34, 43, 583.68, 0.042328, '2024-01-01 00:00:00', 2),
(35, 44, 565.44, 0.0410053, '2024-01-01 00:00:00', 2),
(36, 45, 492.48, 0.0357143, '2024-01-01 00:00:00', 2),
(37, 46, 2599.2, 0.188492, '2024-01-01 00:00:00', 2),
(38, 47, 1915.2, 0.138889, '2024-01-01 00:00:00', 2),
(39, 48, 1516.8, 0.129084, '2024-01-01 00:00:00', 2),
(40, 49, 535.62, 0.0455829, '2024-01-01 00:00:00', 2),
(41, 50, 635.16, 0.0540541, '2024-01-01 00:00:00', 2),
(42, 51, 1156.56, 0.0984268, '2024-01-01 00:00:00', 2),
(43, 52, 1450.44, 0.123437, '2024-01-01 00:00:00', 2),
(44, 53, 1156.56, 0.0984268, '2024-01-01 00:00:00', 2),
(45, 54, 312.84, 0.0266236, '2024-01-01 00:00:00', 2),
(46, 55, 1251.36, 0.106495, '2024-01-01 00:00:00', 2),
(47, 56, 3232.68, 0.275111, '2024-01-01 00:00:00', 2),
(48, 57, 502.44, 0.0427592, '2024-01-01 00:00:00', 2),
(49, 58, 1668.48, 0.175824, '2024-01-01 00:00:00', 2),
(50, 59, 720.48, 0.0759241, '2024-01-01 00:00:00', 2),
(51, 60, 587.76, 0.0619381, '2024-01-01 00:00:00', 2),
(52, 61, 3934.2, 0.414585, '2024-01-01 00:00:00', 2),
(53, 62, 1365.12, 0.143856, '2024-01-01 00:00:00', 2),
(54, 63, 1213.44, 0.127872, '2024-01-01 00:00:00', 2),
(55, 64, 3146.4, 0.188628, '2024-01-01 00:00:00', 2),
(56, 65, 2517.12, 0.150902, '2024-01-01 00:00:00', 2),
(57, 66, 3483.84, 0.208857, '2024-01-01 00:00:00', 2),
(58, 67, 2207.04, 0.132313, '2024-01-01 00:00:00', 2),
(59, 68, 3374.4, 0.202296, '2024-01-01 00:00:00', 2),
(60, 69, 1951.68, 0.117004, '2024-01-01 00:00:00', 2),
(61, 70, 2480.64, 0.174359, '2024-01-01 00:00:00', 2),
(62, 71, 3146.4, 0.221154, '2024-01-01 00:00:00', 2),
(63, 72, 2152.32, 0.151282, '2024-01-01 00:00:00', 2),
(64, 73, 930.24, 0.0653846, '2024-01-01 00:00:00', 2),
(65, 74, 2453.28, 0.172436, '2024-01-01 00:00:00', 2),
(66, 75, 1860.48, 0.130769, '2024-01-01 00:00:00', 2),
(67, 76, 1203.84, 0.0846154, '2024-01-01 00:00:00', 2),
(68, 77, 720.48, 0.0633862, '2024-01-01 00:00:00', 2),
(69, 78, 3754.08, 0.330275, '2024-01-01 00:00:00', 2),
(70, 79, 3071.52, 0.270225, '2024-01-01 00:00:00', 2),
(71, 80, 3820.44, 0.336113, '2024-01-01 00:00:00', 2),
(72, 1, 11628, 0.0990518, '2024-01-01 00:00:00', 2),
(73, 2, 15020.6, 0.127952, '2024-01-01 00:00:00', 2),
(74, 3, 13441, 0.114495, '2024-01-01 00:00:00', 2),
(75, 4, 13789.4, 0.117464, '2024-01-01 00:00:00', 2),
(76, 5, 11750.5, 0.100095, '2024-01-01 00:00:00', 2),
(77, 6, 9489.48, 0.080835, '2024-01-01 00:00:00', 2),
(78, 7, 16680.5, 0.142091, '2024-01-01 00:00:00', 2),
(79, 8, 14227.2, 0.121193, '2024-01-01 00:00:00', 2),
(80, 9, 11366.5, 0.0968244, '2024-01-01 00:00:00', 2),
(81, 81, 73400000, 0.0250627, '2024-01-01 00:00:00', 2),
(82, 82, 6000000, 0.3066, '2024-01-01 00:00:00', 2),
(83, 83, 160000000, 0.668338, '2024-01-01 00:00:00', 2),
(88, 84, 239400000, 0.0267277, '2024-01-01 00:00:00', 2),
(89, 85, 873979000, 0.097575, '2024-01-01 00:00:00', 2),
(90, 86, 7395770000, 0.825697, '2024-01-01 00:00:00', 2),
(91, 87, 0, 0.05, '2024-01-01 00:00:00', 2),
(92, 88, 9605560000, 0.523622, '2024-01-01 00:00:00', 2),
(93, 89, 8509150000, 0.463854, '2024-01-01 00:00:00', 2),
(94, 90, 229735000, 0.0125234, '2024-01-01 00:00:00', 2),
(95, 91, 141681000, 0.56, '2024-01-01 17:18:06', 2),
(96, 92, 64921200, 0.31, '2024-01-01 17:20:15', 2),
(97, 93, 23132000, 0.13, '2024-01-01 11:20:15', 2),
(98, 94, 0, 0.007, '2024-01-01 09:28:17', 2),
(99, 95, 0, 0.796, '2024-01-01 09:28:17', 2),
(100, 96, 0, 0.085, '2024-01-01 09:29:33', 2),
(101, 97, 0, 0.051, '2024-01-01 09:29:33', 2),
(102, 98, 0, 0.061, '2024-01-01 09:31:21', 2),
(103, 99, 0, 0.1062, '2024-01-01 00:00:00', 2),
(104, 100, 0, 0.1267, '2024-01-01 00:00:00', 2),
(105, 101, 0, 0.1352, '2024-01-01 00:00:00', 2),
(106, 102, 0, 0.1408, '2024-01-01 00:00:00', 2),
(107, 103, 0, 0.1206, '2024-01-01 00:00:00', 2),
(108, 104, 0, 0.1182, '2024-01-01 00:00:00', 2),
(109, 105, 0, 0.0749, '2024-01-01 00:00:00', 2),
(110, 106, 0, 0.1134, '2024-01-01 00:00:00', 2),
(111, 107, 0, 0.1134, '2024-01-01 00:00:00', 2),
(112, 108, 0, 0.1908, '2024-01-01 00:00:00', 2),
(113, 109, 0, 0.2135, '2024-01-01 00:00:00', 2),
(114, 110, 0, 0.0674, '2024-01-01 00:00:00', 2),
(115, 111, 0, 0.1511, '2024-01-01 00:00:00', 2),
(116, 112, 0, 0.153, '2024-01-01 00:00:00', 2),
(117, 113, 0, 0.1108, '2024-01-01 00:00:00', 2),
(118, 114, 0, 0.0588935, '2024-01-01 00:00:00', 2),
(119, 115, 0, 0.140393, '2024-01-01 00:00:00', 2),
(120, 116, 0, 0.0523498, '2024-01-01 00:00:00', 2),
(121, 117, 0, 0.0487805, '2024-01-01 00:00:00', 2),
(122, 118, 0, 0.0345033, '2024-01-01 00:00:00', 2),
(123, 119, 0, 0.0446163, '2024-01-01 00:00:00', 2),
(124, 120, 0, 0.0725758, '2024-01-01 00:00:00', 2),
(125, 121, 0, 0.126615, '2024-01-01 00:00:00', 2),
(126, 122, 0, 0.128817, '2024-01-01 00:00:00', 2),
(127, 123, 0, 0.255175, '2024-01-01 00:00:00', 2),
(128, 124, 0, 0.141478, '2024-01-01 00:00:00', 2),
(129, 125, 0, 0.146433, '2024-01-01 00:00:00', 2),
(130, 126, 0, 0.107347, '2024-01-01 00:00:00', 2),
(131, 127, 0, 0.0941354, '2024-01-01 00:00:00', 2),
(132, 128, 0, 0.130145, '2024-01-01 00:00:00', 2),
(133, 129, 0, 0.0860582, '2024-01-01 00:00:00', 2),
(134, 130, 0, 0.145274, '2024-01-01 00:00:00', 2),
(135, 131, 0, 0.151619, '2024-01-01 00:00:00', 2),
(136, 132, 0, 0.100211, '2024-01-01 00:00:00', 2),
(137, 133, 0, 0.0787376, '2024-01-01 00:00:00', 2),
(138, 134, 0, 0.241256, '2024-01-01 00:00:00', 2),
(139, 135, 0, 0.0666992, '2024-01-01 00:00:00', 2),
(140, 136, 0, 0.1451, '2024-01-01 00:00:00', 2),
(141, 137, 0, 0.1001, '2024-01-01 00:00:00', 2),
(142, 138, 0, 0.2195, '2024-01-01 00:00:00', 2),
(143, 139, 0, 0.0732, '2024-01-01 00:00:00', 2),
(144, 140, 0, 0.2279, '2024-01-01 00:00:00', 2),
(145, 141, 0, 0.2343, '2024-01-01 00:00:00', 2),
(146, 142, 0, 0.11335, '2024-01-01 00:00:00', 2),
(147, 143, 0, 0.190806, '2024-01-01 00:00:00', 2),
(148, 144, 0, 0.213476, '2024-01-01 00:00:00', 2),
(149, 145, 0, 0.0673804, '2024-01-01 00:00:00', 2),
(150, 146, 0, 0.151134, '2024-01-01 00:00:00', 2),
(151, 147, 0, 0.153023, '2024-01-01 00:00:00', 2),
(152, 148, 0, 0.110831, '2024-01-01 00:00:00', 2),
(153, 149, 0, 0.331612, '2024-01-01 00:00:00', 2),
(154, 150, 0, 0.247934, '2024-01-01 00:00:00', 2),
(155, 151, 0, 0.213843, '2024-01-01 00:00:00', 2),
(156, 152, 0, 0.0733471, '2024-01-01 00:00:00', 2),
(157, 153, 0, 0.089876, '2024-01-01 00:00:00', 2),
(158, 154, 0, 0.0433884, '2024-01-01 00:00:00', 2),
(159, 155, 0, 0.0778, '2024-01-01 00:00:00', 2),
(160, 156, 0, 0.2161, '2024-01-01 00:00:00', 2),
(161, 157, 0, 0.2467, '2024-01-01 00:00:00', 2),
(162, 158, 0, 0.2148, '2024-01-01 00:00:00', 2),
(163, 159, 0, 0.2447, '2024-01-01 00:00:00', 2),
(164, 160, 0, 0.20345, '2024-01-01 00:00:00', 2),
(165, 161, 0, 0.161808, '2024-01-01 00:00:00', 2),
(166, 162, 0, 0.182629, '2024-01-01 00:00:00', 2);

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
  `user_id` int(11) NOT NULL DEFAULT 0,
  `lag_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `pvbank_progress`
--

INSERT INTO `pvbank_progress` (`pv_bank_id`, `pv_id`, `progress_percentage`, `last_update`, `create_at`, `pv_week_id`, `user_id`, `lag_status`) VALUES
(1, 17, 0.12600, '2024-03-25 04:14:23', '2024-03-25 04:11:53', 1, 2, 0),
(2, 17, 0.12600, '2024-03-25 04:22:46', '2024-03-25 04:22:46', 2, 2, 0),
(3, 17, 0.60900, '2024-03-25 04:23:43', '2024-03-25 04:23:43', 3, 2, 0),
(4, 17, 0.73900, '2024-03-25 04:24:34', '2024-03-25 04:24:34', 4, 2, 0),
(5, 17, 0.73900, '2024-03-25 04:25:18', '2024-03-25 04:25:18', 5, 2, 0),
(6, 17, 0.73900, '2024-03-25 04:25:35', '2024-03-25 04:25:35', 6, 2, 0),
(7, 17, 0.73900, '2024-03-25 04:25:48', '2024-03-25 04:25:48', 7, 2, 0),
(8, 17, 0.73900, '2024-03-25 04:25:59', '2024-03-25 04:25:59', 8, 2, 0),
(9, 17, 0.73900, '2024-03-25 04:26:14', '2024-03-25 04:26:14', 9, 2, 0),
(10, 18, 0.00000, '2024-03-25 05:15:13', '2024-03-25 05:15:13', 7, 2, 0),
(11, 20, 0.00000, '2024-03-25 05:16:40', '2024-03-25 05:16:40', 7, 2, 0),
(12, 21, 0.00000, '2024-03-25 05:16:40', '2024-03-25 05:16:40', 7, 2, 0),
(13, 18, 0.00000, '2024-03-25 05:19:36', '2024-03-25 05:19:36', 8, 2, 0),
(14, 20, 0.00000, '2024-03-25 05:19:36', '2024-03-25 05:19:36', 8, 2, 0),
(15, 21, 0.00000, '2024-03-25 05:19:36', '2024-03-25 05:19:36', 8, 2, 0),
(16, 18, 0.00000, '2024-03-25 05:20:54', '2024-03-25 05:20:54', 9, 2, 0),
(17, 20, 0.00000, '2024-03-25 05:20:54', '2024-03-25 05:20:54', 9, 2, 0),
(18, 21, 0.00000, '2024-03-25 05:20:55', '2024-03-25 05:20:55', 9, 2, 0),
(19, 4, 0.10500, '2024-03-25 05:36:01', '2024-03-25 05:36:01', 8, 2, 0),
(20, 4, 0.10500, '2024-03-25 05:36:19', '2024-03-25 05:36:19', 9, 2, 0),
(21, 4, 0.10500, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 10, 2, 0),
(22, 4, 0.58000, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 11, 2, 0),
(23, 17, 0.73900, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 10, 2, 0),
(24, 17, 0.74100, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 11, 2, 0),
(25, 18, 0.00000, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 10, 2, 0),
(26, 18, 0.00000, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 11, 2, 0),
(27, 20, 0.00000, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 10, 2, 0),
(28, 20, 0.00000, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 11, 2, 0),
(29, 21, 0.00000, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 10, 2, 0),
(30, 21, 0.00000, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 11, 2, 0),
(31, 4, 0.58000, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 14, 2, 0),
(32, 4, 0.62100, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 15, 2, 0),
(33, 4, 0.72200, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2, 0),
(34, 4, 0.75600, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2, 0),
(35, 4, 0.75800, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2, 0),
(36, 17, 0.74100, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 14, 2, 0),
(37, 17, 0.74550, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 15, 2, 0),
(38, 17, 0.74550, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2, 0),
(39, 17, 0.74550, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2, 0),
(40, 17, 0.74550, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2, 0),
(41, 19, 0.00530, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2, 0),
(42, 19, 0.10510, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2, 0),
(43, 22, 0.10500, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 15, 2, 0),
(44, 22, 0.10500, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2, 0),
(45, 22, 0.10500, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2, 0),
(46, 22, 0.10500, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2, 0),
(47, 15, 0.57300, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 15, 2, 0),
(48, 15, 0.57300, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2, 0),
(49, 15, 0.57300, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2, 0),
(50, 15, 0.57300, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2, 0),
(51, 16, 0.11110, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 15, 2, 0),
(52, 16, 0.18250, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2, 0),
(53, 16, 0.57300, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2, 0),
(54, 16, 0.57300, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2, 0),
(55, 5, 0.00000, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 17, 2, 0),
(56, 5, 0.00000, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 18, 2, 0),
(57, 5, 0.00000, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 19, 2, 0),
(58, 6, 0.00000, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 17, 2, 0),
(59, 6, 0.00000, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 18, 2, 0),
(60, 6, 0.00000, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 19, 2, 0),
(61, 7, 0.00000, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 17, 2, 0),
(62, 7, 0.00000, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 18, 2, 0),
(63, 7, 0.00000, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 19, 2, 0),
(64, 8, 0.00000, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 17, 2, 0),
(65, 8, 0.00000, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 18, 2, 0),
(66, 8, 0.00000, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 19, 2, 0),
(67, 10, 0.00000, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 17, 2, 0),
(68, 10, 0.00000, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 18, 2, 0),
(69, 10, 0.00000, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 19, 2, 0),
(70, 18, 0.00000, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 14, 2, 0),
(71, 18, 0.00000, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 15, 2, 0),
(72, 18, 0.00000, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 17, 2, 0),
(73, 18, 0.00000, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 18, 2, 0),
(74, 18, 0.00000, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 19, 2, 0),
(75, 20, 0.00000, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 14, 2, 0),
(76, 20, 0.00000, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 15, 2, 0),
(77, 20, 0.00000, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 17, 2, 0),
(78, 20, 0.00000, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 18, 2, 0),
(79, 20, 0.00000, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 19, 2, 0),
(80, 21, 0.00000, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 14, 2, 0),
(81, 21, 0.00000, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 15, 2, 0),
(82, 21, 0.00000, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 17, 2, 0),
(83, 21, 0.00000, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 18, 2, 0),
(84, 21, 0.00000, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 19, 2, 0),
(85, 31, 0.09450, '2024-05-03 02:29:23', '2024-05-03 02:29:23', 19, 2, 0),
(86, 46, 0.01050, '2024-05-03 02:35:15', '2024-05-03 02:35:15', 18, 2, 0),
(87, 46, 0.08930, '2024-05-03 02:35:15', '2024-05-03 02:35:15', 19, 2, 0),
(88, 4, 0.75800, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2, 0),
(89, 17, 0.74550, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2, 0),
(90, 19, 0.10510, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2, 0),
(91, 22, 0.18050, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2, 0),
(92, 15, 0.57300, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2, 0),
(93, 16, 0.58350, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2, 0),
(94, 5, 0.00000, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2, 0),
(95, 6, 0.00000, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2, 0),
(96, 7, 0.00000, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2, 0),
(97, 8, 0.00000, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2, 0),
(98, 10, 0.00000, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2, 0),
(99, 18, 0.00000, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2, 0),
(100, 20, 0.00000, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2, 0),
(101, 21, 0.00000, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2, 0),
(102, 31, 0.10500, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2, 0),
(103, 46, 0.10500, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2, 0),
(104, 4, 0.75840, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(105, 17, 0.74550, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(106, 19, 0.10510, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(107, 22, 0.18050, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(108, 15, 0.58100, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(109, 16, 0.59150, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(110, 5, 0.00000, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(111, 6, 0.00000, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(112, 7, 0.00000, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(113, 8, 0.00000, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(114, 10, 0.00000, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(115, 18, 0.00000, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(116, 20, 0.00000, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(117, 21, 0.00000, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(118, 31, 0.10500, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(119, 46, 0.10500, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(120, 1, 0.00000, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(121, 2, 0.00000, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(122, 3, 0.00000, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(123, 9, 0.00000, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(124, 11, 0.00000, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(125, 12, 0.00000, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(126, 13, 0.00000, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(127, 14, 0.00000, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2, 0),
(128, 79, 0.92900, '2024-05-21 03:43:49', '2024-05-21 03:43:49', 1, 2, 0),
(129, 79, 0.92900, '2024-05-21 03:43:49', '2024-05-21 03:43:49', 2, 2, 0),
(130, 79, 0.92900, '2024-05-21 03:43:49', '2024-05-21 03:43:49', 3, 2, 0),
(131, 79, 0.92900, '2024-05-21 03:43:49', '2024-05-21 03:43:49', 4, 2, 0),
(132, 79, 0.92900, '2024-05-21 03:43:49', '2024-05-21 03:43:49', 5, 2, 0),
(133, 79, 0.92900, '2024-05-21 03:43:49', '2024-05-21 03:43:49', 6, 2, 0),
(134, 79, 0.92900, '2024-05-21 03:43:49', '2024-05-21 03:43:49', 7, 2, 0),
(135, 79, 0.92900, '2024-05-21 03:43:49', '2024-05-21 03:43:49', 8, 2, 0),
(136, 79, 0.92900, '2024-05-21 03:43:49', '2024-05-21 03:43:49', 9, 2, 0),
(137, 79, 0.92900, '2024-05-21 03:43:49', '2024-05-21 03:43:49', 10, 2, 0),
(138, 79, 0.92900, '2024-05-21 03:43:49', '2024-05-21 03:43:49', 11, 2, 0),
(139, 79, 0.92900, '2024-05-21 03:43:49', '2024-05-21 03:43:49', 14, 2, 0),
(140, 79, 0.92900, '2024-05-21 03:43:49', '2024-05-21 03:43:49', 15, 2, 0),
(141, 79, 0.93350, '2024-05-21 03:43:49', '2024-05-21 03:43:49', 17, 2, 0),
(142, 79, 0.97400, '2024-05-21 03:43:49', '2024-05-21 03:43:49', 18, 2, 0),
(143, 79, 0.97400, '2024-05-21 03:43:49', '2024-05-21 03:43:49', 19, 2, 0),
(144, 79, 0.97400, '2024-05-21 03:43:49', '2024-05-21 03:43:49', 20, 2, 0),
(145, 79, 0.97400, '2024-05-21 03:43:49', '2024-05-21 03:43:49', 21, 2, 0),
(164, 80, 0.94350, '2024-05-21 07:25:14', '2024-05-21 07:25:14', 1, 2, 1),
(165, 80, 0.94350, '2024-05-21 07:25:14', '2024-05-21 07:25:14', 2, 2, 1),
(166, 80, 0.94350, '2024-05-21 07:25:14', '2024-05-21 07:25:14', 3, 2, 1),
(167, 80, 0.94350, '2024-05-21 07:25:14', '2024-05-21 07:25:14', 4, 2, 1),
(168, 80, 0.94350, '2024-05-21 07:25:14', '2024-05-21 07:25:14', 5, 2, 1),
(169, 80, 0.94350, '2024-05-21 07:25:14', '2024-05-21 07:25:14', 6, 2, 1),
(170, 80, 0.94350, '2024-05-21 07:25:14', '2024-05-21 07:25:14', 7, 2, 1),
(171, 80, 0.94350, '2024-05-21 07:25:14', '2024-05-21 07:25:14', 8, 2, 1),
(172, 80, 0.94350, '2024-05-21 07:25:14', '2024-05-21 07:25:14', 9, 2, 1),
(173, 80, 0.94350, '2024-05-21 07:25:14', '2024-05-21 07:25:14', 10, 2, 1),
(174, 80, 0.94350, '2024-05-21 07:25:14', '2024-05-21 07:25:14', 11, 2, 1),
(175, 80, 0.94350, '2024-05-21 07:25:14', '2024-05-21 07:25:14', 14, 2, 1),
(176, 80, 0.94350, '2024-05-21 07:25:14', '2024-05-21 07:25:14', 15, 2, 1),
(177, 80, 0.97700, '2024-05-21 07:25:14', '2024-05-21 07:25:14', 17, 2, 1),
(178, 80, 0.97700, '2024-05-21 07:25:14', '2024-05-21 07:25:14', 18, 2, 0),
(179, 80, 0.97700, '2024-05-21 07:25:14', '2024-05-21 07:25:14', 19, 2, 0),
(180, 80, 0.97700, '2024-05-21 07:25:14', '2024-05-21 07:25:14', 20, 2, 0),
(181, 80, 0.97700, '2024-05-21 07:25:14', '2024-05-21 07:25:14', 21, 2, 0),
(182, 81, 0.97750, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 1, 2, 0),
(183, 81, 0.97750, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 2, 2, 0),
(184, 81, 0.97750, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 3, 2, 0),
(185, 81, 0.97750, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 4, 2, 0),
(186, 81, 0.97750, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 5, 2, 0),
(187, 81, 0.97750, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 6, 2, 0),
(188, 81, 0.97750, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 7, 2, 0),
(189, 81, 0.97750, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 8, 2, 0),
(190, 81, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 9, 2, 0),
(191, 81, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 10, 2, 0),
(192, 81, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 11, 2, 0),
(193, 81, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 14, 2, 0),
(194, 81, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 15, 2, 0),
(195, 81, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 17, 2, 0),
(196, 81, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 18, 2, 0),
(197, 81, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 19, 2, 0),
(198, 81, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 20, 2, 0),
(199, 81, 0.98350, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 21, 2, 0),
(200, 82, 0.93500, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 1, 2, 0),
(201, 82, 0.93500, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 2, 2, 0),
(202, 82, 0.94850, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 3, 2, 0),
(203, 82, 0.98000, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 4, 2, 0),
(204, 82, 0.98000, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 5, 2, 0),
(205, 82, 0.98000, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 6, 2, 0),
(206, 82, 0.98000, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 7, 2, 0),
(207, 82, 0.98000, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 8, 2, 0),
(208, 82, 0.98000, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 9, 2, 0),
(209, 82, 0.98000, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 10, 2, 0),
(210, 82, 0.98000, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 11, 2, 0),
(211, 82, 0.98000, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 14, 2, 0),
(212, 82, 0.98000, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 15, 2, 0),
(213, 82, 0.98000, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 17, 2, 0),
(214, 82, 0.98030, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 18, 2, 0),
(215, 82, 0.98030, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 19, 2, 0),
(216, 82, 0.98030, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 20, 2, 0),
(217, 82, 0.98300, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 21, 2, 0),
(218, 83, 0.92300, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 1, 2, 0),
(219, 83, 0.92300, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 2, 2, 0),
(220, 83, 0.92300, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 3, 2, 0),
(221, 83, 0.96800, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 4, 2, 0),
(222, 83, 0.96800, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 5, 2, 0),
(223, 83, 0.96800, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 6, 2, 0),
(224, 83, 0.96800, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 7, 2, 0),
(225, 83, 0.96800, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 8, 2, 0),
(226, 83, 0.97100, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 9, 2, 0),
(227, 83, 0.97100, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 10, 2, 0),
(228, 83, 0.97100, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 11, 2, 0),
(229, 83, 0.97100, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 14, 2, 0),
(230, 83, 0.97100, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 15, 2, 0),
(231, 83, 0.97100, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 17, 2, 0),
(232, 83, 0.97100, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 18, 2, 0),
(233, 83, 0.97100, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 19, 2, 0),
(234, 83, 0.97100, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 20, 2, 0),
(235, 83, 0.97700, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 21, 2, 0),
(236, 84, 0.92900, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 1, 2, 0),
(237, 84, 0.92900, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 2, 2, 0),
(238, 84, 0.92900, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 3, 2, 0),
(239, 84, 0.92900, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 4, 2, 0),
(240, 84, 0.92900, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 5, 2, 0),
(241, 84, 0.92900, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 6, 2, 0),
(242, 84, 0.92900, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 7, 2, 0),
(243, 84, 0.92900, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 8, 2, 0),
(244, 84, 0.92900, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 9, 2, 0),
(245, 84, 0.92900, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 10, 2, 0),
(246, 84, 0.92900, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 11, 2, 0),
(247, 84, 0.92900, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 14, 2, 0),
(248, 84, 0.92900, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 15, 2, 0),
(249, 84, 0.97400, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 17, 2, 0),
(250, 84, 0.97400, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 18, 2, 0),
(251, 84, 0.97400, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 19, 2, 0),
(252, 84, 0.97400, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 20, 2, 0),
(253, 84, 0.97400, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 21, 2, 0),
(254, 85, 0.93550, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 1, 2, 0),
(255, 85, 0.93550, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 2, 2, 0),
(256, 85, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 3, 2, 0),
(257, 85, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 4, 2, 0),
(258, 85, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 5, 2, 0),
(259, 85, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 6, 2, 0),
(260, 85, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 7, 2, 0),
(261, 85, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 8, 2, 0),
(262, 85, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 9, 2, 0),
(263, 85, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 10, 2, 0),
(264, 85, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 11, 2, 0),
(265, 85, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 14, 2, 0),
(266, 85, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 15, 2, 0),
(267, 85, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 17, 2, 0),
(268, 85, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 18, 2, 0),
(269, 85, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 19, 2, 0),
(270, 85, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 20, 2, 0),
(271, 85, 0.98050, '2024-05-21 07:37:18', '2024-05-21 07:37:18', 21, 2, 0),
(272, 86, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 1, 2, 0),
(273, 86, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 2, 2, 0),
(274, 86, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 3, 2, 0),
(275, 86, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 4, 2, 0),
(276, 86, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 5, 2, 0),
(277, 86, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 6, 2, 0),
(278, 86, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 7, 2, 0),
(279, 86, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 8, 2, 0),
(280, 86, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 9, 2, 0),
(281, 86, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 10, 2, 0),
(282, 86, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 11, 2, 0),
(283, 86, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 14, 2, 0),
(284, 86, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 15, 2, 0),
(285, 86, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 17, 2, 0),
(286, 86, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 18, 2, 0),
(287, 86, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 19, 2, 0),
(288, 86, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 20, 2, 0),
(289, 86, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 21, 2, 0),
(290, 87, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 1, 2, 0),
(291, 87, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 2, 2, 0),
(292, 87, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 3, 2, 0),
(293, 87, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 4, 2, 0),
(294, 87, 0.97465, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 5, 2, 0),
(295, 87, 0.97465, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 6, 2, 0),
(296, 87, 0.97465, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 7, 2, 0),
(297, 87, 0.97465, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 8, 2, 0),
(298, 87, 0.97465, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 9, 2, 0),
(299, 87, 0.97465, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 10, 2, 0),
(300, 87, 0.97465, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 11, 2, 0),
(301, 87, 0.97465, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 14, 2, 0),
(302, 87, 0.97465, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 15, 2, 0),
(303, 87, 0.97465, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 17, 2, 0),
(304, 87, 0.97465, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 18, 2, 0),
(305, 87, 0.97465, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 19, 2, 0),
(306, 87, 0.97465, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 20, 2, 0),
(307, 87, 0.97465, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 21, 2, 0),
(308, 88, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 1, 2, 0),
(309, 88, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 2, 2, 0),
(310, 88, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 3, 2, 0),
(311, 88, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 4, 2, 0),
(312, 88, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 5, 2, 0),
(313, 88, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 6, 2, 0),
(314, 88, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 7, 2, 0),
(315, 88, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 8, 2, 0),
(316, 88, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 9, 2, 0),
(317, 88, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 10, 2, 0),
(318, 88, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 11, 2, 0),
(319, 88, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 14, 2, 0),
(320, 88, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 15, 2, 0),
(321, 88, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 17, 2, 0),
(322, 88, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 18, 2, 0),
(323, 88, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 19, 2, 0),
(324, 88, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 20, 2, 0),
(325, 88, 0.97460, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 21, 2, 0),
(326, 89, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 1, 2, 0),
(327, 89, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 2, 2, 0),
(328, 89, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 3, 2, 0),
(329, 89, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 4, 2, 0),
(330, 89, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 5, 2, 0),
(331, 89, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 6, 2, 0),
(332, 89, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 7, 2, 0),
(333, 89, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 8, 2, 0),
(334, 89, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 9, 2, 0),
(335, 89, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 10, 2, 0),
(336, 89, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 11, 2, 0),
(337, 89, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 14, 2, 0),
(338, 89, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 15, 2, 0),
(339, 89, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 17, 2, 0),
(340, 89, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 18, 2, 0),
(341, 89, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 19, 2, 0),
(342, 89, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 20, 2, 0),
(343, 89, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 21, 2, 0),
(344, 90, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 1, 2, 0),
(345, 90, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 2, 2, 0),
(346, 90, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 3, 2, 0),
(347, 90, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 4, 2, 0),
(348, 90, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 5, 2, 0),
(349, 90, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 6, 2, 0),
(350, 90, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 7, 2, 0),
(351, 90, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 8, 2, 0),
(352, 90, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 9, 2, 0),
(353, 90, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 10, 2, 0),
(354, 90, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 11, 2, 0),
(355, 90, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 14, 2, 0),
(356, 90, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 15, 2, 0),
(357, 90, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 17, 2, 0),
(358, 90, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 18, 2, 0),
(359, 90, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 19, 2, 0),
(360, 90, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 20, 2, 0),
(361, 90, 0.97400, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 21, 2, 1),
(362, 91, 0.92900, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 1, 2, 0),
(363, 91, 0.92900, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 2, 2, 0),
(364, 91, 0.92900, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 3, 2, 0),
(365, 91, 0.92900, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 4, 2, 0),
(366, 91, 0.92900, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 5, 2, 0),
(367, 91, 0.92900, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 6, 2, 0),
(368, 91, 0.92900, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 7, 2, 0),
(369, 91, 0.92900, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 8, 2, 0),
(370, 91, 0.92900, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 9, 2, 0),
(371, 91, 0.92900, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 10, 2, 0),
(372, 91, 0.92900, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 11, 2, 0),
(373, 91, 0.92900, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 14, 2, 0),
(374, 91, 0.92900, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 15, 2, 0),
(375, 91, 0.92900, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 17, 2, 0),
(376, 91, 0.92900, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 18, 2, 0),
(377, 91, 0.92900, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 19, 2, 0),
(378, 91, 0.92900, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 20, 2, 0),
(379, 91, 0.93800, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 21, 2, 0),
(380, 92, 0.92900, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 1, 2, 0),
(381, 92, 0.92900, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 2, 2, 0),
(382, 92, 0.92960, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 3, 2, 0),
(383, 92, 0.92960, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 4, 2, 0),
(384, 92, 0.92960, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 5, 2, 0),
(385, 92, 0.92960, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 6, 2, 0),
(386, 92, 0.92960, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 7, 2, 0),
(387, 92, 0.92960, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 8, 2, 0),
(388, 92, 0.92960, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 9, 2, 0),
(389, 92, 0.92960, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 10, 2, 0),
(390, 92, 0.92960, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 11, 2, 0),
(391, 92, 0.92960, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 14, 2, 0),
(392, 92, 0.92960, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 15, 2, 0),
(393, 92, 0.92960, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 17, 2, 0),
(394, 92, 0.92960, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 18, 2, 0),
(395, 92, 0.92960, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 19, 2, 0),
(396, 92, 0.92960, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 20, 2, 0),
(397, 92, 0.96110, '2024-05-21 08:12:12', '2024-05-21 08:12:12', 21, 2, 0),
(398, 132, 0.93575, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 1, 2, 0),
(399, 132, 0.93575, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 2, 2, 0),
(400, 132, 0.93635, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 3, 2, 0),
(401, 132, 0.93635, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 4, 2, 0),
(402, 132, 0.93635, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 5, 2, 0),
(403, 132, 0.93635, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 6, 2, 0),
(404, 132, 0.93635, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 7, 2, 0),
(405, 132, 0.97460, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 8, 2, 0),
(406, 132, 0.97460, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 9, 2, 0),
(407, 132, 0.97460, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 10, 2, 0),
(408, 132, 0.97460, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 11, 2, 0),
(409, 132, 0.97460, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 14, 2, 0),
(410, 132, 0.97460, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 15, 2, 0),
(411, 132, 0.97460, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 17, 2, 0),
(412, 132, 0.97460, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 18, 2, 0),
(413, 132, 0.97460, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 19, 2, 0),
(414, 132, 0.97460, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 20, 2, 0),
(415, 132, 0.97460, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 21, 2, 0),
(416, 133, 0.93800, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 1, 2, 0),
(417, 133, 0.93800, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 2, 2, 0),
(418, 133, 0.93860, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 3, 2, 0),
(419, 133, 0.93860, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 4, 2, 0),
(420, 133, 0.93860, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 5, 2, 0),
(421, 133, 0.93860, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 6, 2, 0),
(422, 133, 0.93860, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 7, 2, 0),
(423, 133, 0.97460, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 8, 2, 0),
(424, 133, 0.97460, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 9, 2, 0),
(425, 133, 0.97460, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 10, 2, 0),
(426, 133, 0.97460, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 11, 2, 0),
(427, 133, 0.97460, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 14, 2, 0),
(428, 133, 0.97460, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 15, 2, 0),
(429, 133, 0.97465, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 17, 2, 0),
(430, 133, 0.97465, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 18, 2, 0),
(431, 133, 0.97465, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 19, 2, 0),
(432, 133, 0.97465, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 20, 2, 0),
(433, 133, 0.97465, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 21, 2, 0),
(434, 134, 0.97400, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 1, 2, 0),
(435, 134, 0.97400, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 2, 2, 0),
(436, 134, 0.97460, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 3, 2, 0),
(437, 134, 0.97460, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 4, 2, 0),
(438, 134, 0.97465, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 5, 2, 0),
(439, 134, 0.97465, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 6, 2, 0),
(440, 134, 0.97465, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 7, 2, 0),
(441, 134, 0.97465, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 8, 2, 0),
(442, 134, 0.97465, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 9, 2, 0),
(443, 134, 0.97465, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 10, 2, 0),
(444, 134, 0.97465, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 11, 2, 0),
(445, 134, 0.97465, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 14, 2, 0),
(446, 134, 0.97465, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 15, 2, 0),
(447, 134, 0.97465, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 17, 2, 0),
(448, 134, 0.97465, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 18, 2, 0),
(449, 134, 0.97465, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 19, 2, 0),
(450, 134, 0.97465, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 20, 2, 0),
(451, 134, 0.97465, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 21, 2, 0),
(452, 93, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2, 0),
(453, 93, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2, 0),
(454, 93, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2, 0),
(455, 93, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2, 0),
(456, 93, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2, 0),
(457, 93, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2, 0),
(458, 93, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2, 0),
(459, 93, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2, 0),
(460, 93, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2, 0),
(461, 93, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2, 0),
(462, 93, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2, 0),
(463, 93, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2, 0),
(464, 93, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2, 0),
(465, 93, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2, 0),
(466, 93, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2, 0),
(467, 93, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2, 0),
(468, 93, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2, 0),
(469, 93, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2, 0),
(470, 94, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2, 0),
(471, 94, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2, 0),
(472, 94, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2, 0),
(473, 94, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2, 0),
(474, 94, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2, 0),
(475, 94, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2, 0),
(476, 94, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2, 0),
(477, 94, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2, 0),
(478, 94, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2, 0),
(479, 94, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2, 0),
(480, 94, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2, 0),
(481, 94, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2, 0),
(482, 94, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2, 0),
(483, 94, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2, 0),
(484, 94, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2, 0),
(485, 94, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2, 0),
(486, 94, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2, 0),
(487, 94, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2, 0),
(488, 95, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2, 0),
(489, 95, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2, 0),
(490, 95, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2, 0),
(491, 95, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2, 0),
(492, 95, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2, 0),
(493, 95, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2, 0),
(494, 95, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2, 0),
(495, 95, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2, 0),
(496, 95, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2, 0),
(497, 95, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2, 0),
(498, 95, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2, 0),
(499, 95, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2, 0),
(500, 95, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2, 0),
(501, 95, 0.98800, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2, 0),
(502, 95, 0.98800, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2, 0),
(503, 95, 0.98800, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2, 0),
(504, 95, 0.98800, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2, 0),
(505, 95, 0.98800, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2, 0),
(506, 96, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2, 0),
(507, 96, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2, 0),
(508, 96, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2, 0),
(509, 96, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2, 0),
(510, 96, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2, 0),
(511, 96, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2, 0),
(512, 96, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2, 0),
(513, 96, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2, 0),
(514, 96, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2, 0),
(515, 96, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2, 0),
(516, 96, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2, 0),
(517, 96, 0.98740, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2, 0),
(518, 96, 0.98740, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2, 0),
(519, 96, 0.98740, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2, 0),
(520, 96, 0.98740, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2, 0),
(521, 96, 0.98740, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2, 0),
(522, 96, 0.98740, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2, 0),
(523, 96, 0.98740, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2, 0),
(524, 97, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2, 0),
(525, 97, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2, 0),
(526, 97, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2, 0),
(527, 97, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2, 0),
(528, 97, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2, 0),
(529, 97, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2, 0),
(530, 97, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2, 0),
(531, 97, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2, 0),
(532, 97, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2, 0),
(533, 97, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2, 0),
(534, 97, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2, 0),
(535, 97, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2, 0),
(536, 97, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2, 0),
(537, 97, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2, 0),
(538, 97, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2, 0),
(539, 97, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2, 0),
(540, 97, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2, 0),
(541, 97, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2, 0),
(542, 98, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2, 0),
(543, 98, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2, 0),
(544, 98, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2, 0),
(545, 98, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2, 0),
(546, 98, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2, 0),
(547, 98, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2, 0),
(548, 98, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2, 0),
(549, 98, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2, 0),
(550, 98, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2, 0),
(551, 98, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2, 0),
(552, 98, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2, 0),
(553, 98, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2, 0),
(554, 98, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2, 0),
(555, 98, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2, 0),
(556, 98, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2, 0),
(557, 98, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2, 0),
(558, 98, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2, 0),
(559, 98, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2, 0),
(560, 99, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2, 0),
(561, 99, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2, 0),
(562, 99, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2, 0),
(563, 99, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2, 0),
(564, 99, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2, 0),
(565, 99, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2, 0),
(566, 99, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2, 0),
(567, 99, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2, 0),
(568, 99, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2, 0),
(569, 99, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2, 0),
(570, 99, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2, 0),
(571, 99, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2, 0),
(572, 99, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2, 0),
(573, 99, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2, 0),
(574, 99, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2, 0),
(575, 99, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2, 0),
(576, 99, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2, 0),
(577, 99, 0.98710, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2, 0),
(578, 100, 0.92180, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2, 0),
(579, 100, 0.94430, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2, 0),
(580, 100, 0.96680, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2, 0),
(581, 100, 0.96680, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2, 0),
(582, 100, 0.96680, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2, 0),
(583, 100, 0.96680, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2, 0),
(584, 100, 0.96680, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2, 0),
(585, 100, 0.96680, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2, 0),
(586, 100, 0.96680, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2, 0),
(587, 100, 0.96680, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2, 0),
(588, 100, 0.96680, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2, 0),
(589, 100, 0.96680, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2, 0),
(590, 100, 0.96680, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2, 0),
(591, 100, 0.96680, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2, 0),
(592, 100, 0.96680, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2, 0),
(593, 100, 0.96680, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2, 0),
(594, 100, 0.96680, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2, 0),
(595, 100, 0.96680, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2, 0),
(596, 101, 0.94940, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2, 0),
(597, 101, 0.94940, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2, 0),
(598, 101, 0.94940, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2, 0),
(599, 101, 0.94940, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2, 0),
(600, 101, 0.94940, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2, 0),
(601, 101, 0.94940, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2, 0),
(602, 101, 0.96740, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2, 0),
(603, 101, 0.96740, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2, 0),
(604, 101, 0.96740, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2, 0),
(605, 101, 0.96740, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2, 0),
(606, 101, 0.96740, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2, 0),
(607, 101, 0.96740, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2, 0),
(608, 101, 0.96740, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2, 0),
(609, 101, 0.96740, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2, 0),
(610, 101, 0.96740, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2, 0),
(611, 101, 0.96740, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2, 0),
(612, 101, 0.96740, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2, 0),
(613, 101, 0.96740, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2, 0),
(614, 102, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2, 0),
(615, 102, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2, 0),
(616, 102, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2, 0),
(617, 102, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2, 0),
(618, 102, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2, 0),
(619, 102, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2, 0),
(620, 102, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2, 0),
(621, 102, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2, 0),
(622, 102, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2, 0),
(623, 102, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2, 0),
(624, 102, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2, 0),
(625, 102, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2, 0),
(626, 102, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2, 0),
(627, 102, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2, 0),
(628, 102, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2, 0),
(629, 102, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2, 0),
(630, 102, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2, 0),
(631, 102, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2, 0),
(632, 103, 0.92500, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2, 0),
(633, 103, 0.92500, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2, 0),
(634, 103, 0.92500, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2, 0),
(635, 103, 0.92500, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2, 0),
(636, 103, 0.92500, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2, 0),
(637, 103, 0.92500, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2, 0),
(638, 103, 0.92500, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2, 0),
(639, 103, 0.92500, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2, 0),
(640, 103, 0.92500, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2, 0),
(641, 103, 0.92500, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2, 0),
(642, 103, 0.92500, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2, 0),
(643, 103, 0.92500, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2, 0),
(644, 103, 0.92500, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2, 0),
(645, 103, 0.92500, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2, 0),
(646, 103, 0.92500, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2, 0),
(647, 103, 0.92500, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2, 0),
(648, 103, 0.92500, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2, 0),
(649, 103, 0.92500, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2, 0),
(650, 104, 0.91190, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2, 0),
(651, 104, 0.91190, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2, 0),
(652, 104, 0.91190, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2, 0),
(653, 104, 0.91190, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2, 0),
(654, 104, 0.91190, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2, 0),
(655, 104, 0.91190, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2, 0),
(656, 104, 0.91190, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2, 0),
(657, 104, 0.91190, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2, 0),
(658, 104, 0.91240, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2, 0),
(659, 104, 0.91240, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2, 0),
(660, 104, 0.91240, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2, 0),
(661, 104, 0.91240, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2, 0),
(662, 104, 0.91240, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2, 0),
(663, 104, 0.91240, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2, 0),
(664, 104, 0.91240, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2, 0),
(665, 104, 0.91240, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2, 0),
(666, 104, 0.91240, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2, 0),
(667, 104, 0.91240, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2, 0),
(668, 105, 0.92300, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2, 0),
(669, 105, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2, 0),
(670, 105, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2, 0),
(671, 105, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2, 0),
(672, 105, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2, 0),
(673, 105, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2, 0),
(674, 105, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2, 0),
(675, 105, 0.92350, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2, 0),
(676, 105, 0.92375, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2, 0),
(677, 105, 0.92375, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2, 0),
(678, 105, 0.92375, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2, 0),
(679, 105, 0.92375, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2, 0),
(680, 105, 0.92375, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2, 0),
(681, 105, 0.92375, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2, 0),
(682, 105, 0.92375, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2, 0),
(683, 105, 0.92375, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2, 0),
(684, 105, 0.92375, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2, 0),
(685, 105, 0.92375, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2, 0),
(686, 106, 0.92400, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2, 0),
(687, 106, 0.92400, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2, 0),
(688, 106, 0.92450, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2, 0),
(689, 106, 0.92450, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2, 0),
(690, 106, 0.92450, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2, 0),
(691, 106, 0.92450, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2, 0),
(692, 106, 0.92450, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2, 0),
(693, 106, 0.92450, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2, 0),
(694, 106, 0.92450, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2, 0),
(695, 106, 0.92450, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2, 0);
INSERT INTO `pvbank_progress` (`pv_bank_id`, `pv_id`, `progress_percentage`, `last_update`, `create_at`, `pv_week_id`, `user_id`, `lag_status`) VALUES
(696, 106, 0.92450, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2, 0),
(697, 106, 0.92450, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2, 0),
(698, 106, 0.92450, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2, 0),
(699, 106, 0.92450, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2, 0),
(700, 106, 0.92450, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2, 0),
(701, 106, 0.92450, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2, 0),
(702, 106, 0.92450, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2, 0),
(703, 106, 0.92450, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2, 0),
(704, 107, 0.92180, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2, 0),
(705, 107, 0.92180, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2, 0),
(706, 107, 0.92230, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2, 0),
(707, 107, 0.92230, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2, 0),
(708, 107, 0.92230, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2, 0),
(709, 107, 0.92230, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2, 0),
(710, 107, 0.92230, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2, 0),
(711, 107, 0.92230, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2, 0),
(712, 107, 0.92230, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2, 0),
(713, 107, 0.92230, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2, 0),
(714, 107, 0.92230, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2, 0),
(715, 107, 0.92230, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2, 0),
(716, 107, 0.92230, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2, 0),
(717, 107, 0.92230, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2, 0),
(718, 107, 0.92230, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2, 0),
(719, 107, 0.92230, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2, 0),
(720, 107, 0.92230, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2, 0),
(721, 107, 0.92230, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2, 0),
(722, 114, 0.98710, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2, 0),
(723, 114, 0.98710, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2, 0),
(724, 114, 0.98710, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2, 0),
(725, 114, 0.98710, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2, 0),
(726, 114, 0.98710, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2, 0),
(727, 114, 0.98710, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2, 0),
(728, 114, 0.98710, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2, 0),
(729, 114, 0.98710, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2, 0),
(730, 114, 0.98710, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2, 0),
(731, 114, 0.98710, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2, 0),
(732, 114, 0.98710, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2, 0),
(733, 114, 0.98710, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2, 0),
(734, 114, 0.98710, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2, 0),
(735, 114, 0.98710, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2, 0),
(736, 114, 0.98710, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2, 0),
(737, 114, 0.98710, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2, 0),
(738, 114, 0.98710, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2, 0),
(739, 114, 0.98710, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2, 0),
(740, 115, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2, 0),
(741, 115, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2, 0),
(742, 115, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2, 0),
(743, 115, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2, 0),
(744, 115, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2, 0),
(745, 115, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2, 0),
(746, 115, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2, 0),
(747, 115, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2, 0),
(748, 115, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2, 0),
(749, 115, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2, 0),
(750, 115, 0.98000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2, 0),
(751, 115, 0.98000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2, 0),
(752, 115, 0.98600, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2, 0),
(753, 115, 0.98600, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2, 0),
(754, 115, 0.98600, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2, 0),
(755, 115, 0.98600, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2, 0),
(756, 115, 0.98600, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2, 0),
(757, 115, 0.98600, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2, 0),
(758, 116, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2, 0),
(759, 116, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2, 0),
(760, 116, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2, 0),
(761, 116, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2, 0),
(762, 116, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2, 0),
(763, 116, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2, 0),
(764, 116, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2, 0),
(765, 116, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2, 0),
(766, 116, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2, 0),
(767, 116, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2, 0),
(768, 116, 0.98000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2, 0),
(769, 116, 0.98000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2, 0),
(770, 116, 0.98600, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2, 0),
(771, 116, 0.98600, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2, 0),
(772, 116, 0.98600, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2, 0),
(773, 116, 0.98600, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2, 0),
(774, 116, 0.98600, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2, 0),
(775, 116, 0.98600, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2, 0),
(776, 117, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2, 0),
(777, 117, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2, 0),
(778, 117, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2, 0),
(779, 117, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2, 0),
(780, 117, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2, 0),
(781, 117, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2, 0),
(782, 117, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2, 0),
(783, 117, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2, 0),
(784, 117, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2, 0),
(785, 117, 0.97700, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2, 0),
(786, 117, 0.98000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2, 0),
(787, 117, 0.98000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2, 0),
(788, 117, 0.98600, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2, 0),
(789, 117, 0.98600, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2, 0),
(790, 117, 0.98600, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2, 0),
(791, 117, 0.98600, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2, 0),
(792, 117, 0.98600, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2, 0),
(793, 117, 0.98600, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2, 0),
(794, 118, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2, 0),
(795, 118, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2, 0),
(796, 118, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2, 0),
(797, 118, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2, 0),
(798, 118, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2, 0),
(799, 118, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2, 0),
(800, 118, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2, 0),
(801, 118, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2, 0),
(802, 118, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2, 0),
(803, 118, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2, 0),
(804, 118, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2, 0),
(805, 118, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2, 0),
(806, 118, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2, 0),
(807, 118, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2, 0),
(808, 118, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2, 0),
(809, 118, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2, 0),
(810, 118, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2, 0),
(811, 118, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2, 0),
(812, 119, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2, 0),
(813, 119, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2, 0),
(814, 119, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2, 0),
(815, 119, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2, 0),
(816, 119, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2, 0),
(817, 119, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2, 0),
(818, 119, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2, 0),
(819, 119, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2, 0),
(820, 119, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2, 0),
(821, 119, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2, 0),
(822, 119, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2, 0),
(823, 119, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2, 0),
(824, 119, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2, 0),
(825, 119, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2, 0),
(826, 119, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2, 0),
(827, 119, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2, 0),
(828, 119, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2, 0),
(829, 119, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2, 0),
(830, 120, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2, 0),
(831, 120, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2, 0),
(832, 120, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2, 0),
(833, 120, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2, 0),
(834, 120, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2, 0),
(835, 120, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2, 0),
(836, 120, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2, 0),
(837, 120, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2, 0),
(838, 120, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2, 0),
(839, 120, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2, 0),
(840, 120, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2, 0),
(841, 120, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2, 0),
(842, 120, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2, 0),
(843, 120, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2, 0),
(844, 120, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2, 0),
(845, 120, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2, 0),
(846, 120, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2, 0),
(847, 120, 0.97840, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2, 0),
(848, 121, 0.87100, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2, 0),
(849, 121, 0.87100, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2, 0),
(850, 121, 0.87100, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2, 0),
(851, 121, 0.88450, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2, 0),
(852, 121, 0.88450, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2, 0),
(853, 121, 0.88450, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2, 0),
(854, 121, 0.88550, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2, 0),
(855, 121, 0.88550, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2, 0),
(856, 121, 0.88550, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2, 0),
(857, 121, 0.88550, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2, 0),
(858, 121, 0.88550, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2, 0),
(859, 121, 0.88550, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2, 0),
(860, 121, 0.88700, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2, 0),
(861, 121, 0.88700, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2, 0),
(862, 121, 0.88700, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2, 0),
(863, 121, 0.88700, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2, 0),
(864, 121, 0.88700, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2, 0),
(865, 121, 0.88700, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2, 0),
(866, 122, 0.78170, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2, 0),
(867, 122, 0.85980, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2, 0),
(868, 122, 0.86900, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2, 0),
(869, 122, 0.88600, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2, 0),
(870, 122, 0.88600, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2, 0),
(871, 122, 0.88600, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2, 0),
(872, 122, 0.88650, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2, 0),
(873, 122, 0.88650, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2, 0),
(874, 122, 0.88650, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2, 0),
(875, 122, 0.88650, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2, 0),
(876, 122, 0.88850, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2, 0),
(877, 122, 0.88850, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2, 0),
(878, 122, 0.89000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2, 0),
(879, 122, 0.89000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2, 0),
(880, 122, 0.89000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2, 0),
(881, 122, 0.89000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2, 0),
(882, 122, 0.89000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2, 0),
(883, 122, 0.89000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2, 0),
(884, 123, 0.74670, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2, 0),
(885, 123, 0.84980, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2, 0),
(886, 123, 0.86400, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2, 0),
(887, 123, 0.88600, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2, 0),
(888, 123, 0.88600, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2, 0),
(889, 123, 0.88600, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2, 0),
(890, 123, 0.88650, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2, 0),
(891, 123, 0.88650, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2, 0),
(892, 123, 0.88650, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2, 0),
(893, 123, 0.88650, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2, 0),
(894, 123, 0.88850, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2, 0),
(895, 123, 0.88850, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2, 0),
(896, 123, 0.89000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2, 0),
(897, 123, 0.89000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2, 0),
(898, 123, 0.89000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2, 0),
(899, 123, 0.89000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2, 0),
(900, 123, 0.89000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2, 0),
(901, 123, 0.89000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2, 0),
(902, 124, 0.89150, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2, 1),
(903, 124, 0.89150, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2, 1),
(904, 124, 0.89150, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2, 1),
(905, 124, 0.89150, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2, 1),
(906, 124, 0.89150, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2, 1),
(907, 124, 0.89150, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2, 1),
(908, 124, 0.89150, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2, 1),
(909, 124, 0.89150, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2, 1),
(910, 124, 0.89150, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2, 1),
(911, 124, 0.89150, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2, 1),
(912, 124, 0.89150, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2, 1),
(913, 124, 0.89150, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2, 1),
(914, 124, 0.89150, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2, 1),
(915, 124, 0.89150, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2, 1),
(916, 124, 0.89150, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2, 1),
(917, 124, 0.89150, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2, 1),
(918, 124, 0.89150, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2, 1),
(919, 124, 0.89150, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2, 1),
(920, 125, 0.88650, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2, 0),
(921, 125, 0.88650, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2, 0),
(922, 125, 0.88650, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2, 0),
(923, 125, 0.88650, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2, 0),
(924, 125, 0.88650, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2, 0),
(925, 125, 0.88650, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2, 0),
(926, 125, 0.88650, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2, 0),
(927, 125, 0.88650, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2, 0),
(928, 125, 0.88650, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2, 0),
(929, 125, 0.88650, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2, 0),
(930, 125, 0.88650, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2, 0),
(931, 125, 0.88650, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2, 0),
(932, 125, 0.89800, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2, 0),
(933, 125, 0.89800, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2, 0),
(934, 125, 0.89800, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2, 0),
(935, 125, 0.89800, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2, 0),
(936, 125, 0.89800, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2, 0),
(937, 125, 0.89800, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2, 0),
(938, 126, 0.87000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2, 0),
(939, 126, 0.87000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2, 0),
(940, 126, 0.87000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2, 0),
(941, 126, 0.87000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2, 0),
(942, 126, 0.87000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2, 0),
(943, 126, 0.87000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2, 0),
(944, 126, 0.88000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2, 0),
(945, 126, 0.88000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2, 0),
(946, 126, 0.88000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2, 0),
(947, 126, 0.88000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2, 0),
(948, 126, 0.88000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2, 0),
(949, 126, 0.88000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2, 0),
(950, 126, 0.91600, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2, 0),
(951, 126, 0.91600, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2, 0),
(952, 126, 0.91600, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2, 0),
(953, 126, 0.91600, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2, 0),
(954, 126, 0.91600, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2, 0),
(955, 126, 0.91600, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2, 0),
(956, 127, 0.91550, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 1, 2, 1),
(957, 127, 0.91550, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 2, 2, 1),
(958, 127, 0.91550, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 3, 2, 1),
(959, 127, 0.91550, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 4, 2, 1),
(960, 127, 0.91550, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 5, 2, 1),
(961, 127, 0.91550, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 6, 2, 1),
(962, 127, 0.91550, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 7, 2, 1),
(963, 127, 0.91550, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 8, 2, 1),
(964, 127, 0.91550, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 9, 2, 1),
(965, 127, 0.91550, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 10, 2, 1),
(966, 127, 0.91550, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 11, 2, 1),
(967, 127, 0.91550, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 14, 2, 1),
(968, 127, 0.91550, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 15, 2, 1),
(969, 127, 0.91550, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 17, 2, 1),
(970, 127, 0.91550, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 18, 2, 1),
(971, 127, 0.91550, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 19, 2, 1),
(972, 127, 0.91550, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 20, 2, 1),
(973, 127, 0.91550, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 21, 2, 1),
(974, 128, 0.19025, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 1, 2, 0),
(975, 128, 0.37300, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 2, 2, 0),
(976, 128, 0.79045, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 3, 2, 0),
(977, 128, 0.84245, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 4, 2, 0),
(978, 128, 0.87500, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 5, 2, 0),
(979, 128, 0.87500, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 6, 2, 0),
(980, 128, 0.87500, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 7, 2, 0),
(981, 128, 0.87725, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 8, 2, 0),
(982, 128, 0.90425, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 9, 2, 0),
(983, 128, 0.90425, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 10, 2, 0),
(984, 128, 0.92000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 11, 2, 0),
(985, 128, 0.92000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 14, 2, 0),
(986, 128, 0.92000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 15, 2, 0),
(987, 128, 0.92000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 17, 2, 0),
(988, 128, 0.92450, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 18, 2, 0),
(989, 128, 0.92450, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 19, 2, 0),
(990, 128, 0.92450, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 20, 2, 0),
(991, 128, 0.92540, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 21, 2, 0),
(992, 129, 0.15875, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 1, 2, 0),
(993, 129, 0.20500, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 2, 2, 0),
(994, 129, 0.22210, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 3, 2, 0),
(995, 129, 0.45275, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 4, 2, 0),
(996, 129, 0.64675, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 5, 2, 0),
(997, 129, 0.64675, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 6, 2, 0),
(998, 129, 0.82500, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 7, 2, 0),
(999, 129, 0.87500, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 8, 2, 0),
(1000, 129, 0.87500, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 9, 2, 0),
(1001, 129, 0.87500, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 10, 2, 0),
(1002, 129, 0.92000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 11, 2, 0),
(1003, 129, 0.92000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 14, 2, 0),
(1004, 129, 0.92000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 15, 2, 0),
(1005, 129, 0.92900, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 17, 2, 0),
(1006, 129, 0.94475, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 18, 2, 0),
(1007, 129, 0.94700, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 19, 2, 0),
(1008, 129, 0.94700, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 20, 2, 0),
(1009, 129, 0.94835, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 21, 2, 0),
(1010, 130, 0.02555, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 1, 2, 0),
(1011, 130, 0.09150, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 2, 2, 0),
(1012, 130, 0.16565, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 3, 2, 0),
(1013, 130, 0.21130, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 4, 2, 0),
(1014, 130, 0.38125, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 5, 2, 0),
(1015, 130, 0.38125, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 6, 2, 0),
(1016, 130, 0.80500, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 7, 2, 0),
(1017, 130, 0.86500, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 8, 2, 0),
(1018, 130, 0.87500, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 9, 2, 0),
(1019, 130, 0.87500, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 10, 2, 0),
(1020, 130, 0.87500, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 11, 2, 0),
(1021, 130, 0.87500, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 14, 2, 0),
(1022, 130, 0.87500, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 15, 2, 0),
(1023, 130, 0.87500, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 17, 2, 0),
(1024, 130, 0.87500, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 18, 2, 0),
(1025, 130, 0.87500, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 19, 2, 0),
(1026, 130, 0.87500, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 20, 2, 0),
(1027, 130, 0.87500, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 21, 2, 0),
(1028, 131, 0.11130, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 1, 2, 0),
(1029, 131, 0.18270, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 2, 2, 0),
(1030, 131, 0.31825, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 3, 2, 0),
(1031, 131, 0.62075, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 4, 2, 0),
(1032, 131, 0.79450, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 5, 2, 0),
(1033, 131, 0.79450, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 6, 2, 0),
(1034, 131, 0.86950, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 7, 2, 0),
(1035, 131, 0.86950, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 8, 2, 0),
(1036, 131, 0.86950, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 9, 2, 0),
(1037, 131, 0.86950, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 10, 2, 0),
(1038, 131, 0.86950, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 11, 2, 0),
(1039, 131, 0.86950, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 14, 2, 0),
(1040, 131, 0.86950, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 15, 2, 0),
(1041, 131, 0.86950, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 17, 2, 0),
(1042, 131, 0.86950, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 18, 2, 0),
(1043, 131, 0.86950, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 19, 2, 0),
(1044, 131, 0.86950, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 20, 2, 0),
(1045, 131, 0.86950, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 21, 2, 0),
(1046, 108, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 1, 2, 1),
(1047, 108, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 2, 2, 1),
(1048, 108, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 3, 2, 1),
(1049, 108, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 4, 2, 1),
(1050, 108, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 5, 2, 1),
(1051, 108, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 6, 2, 1),
(1052, 108, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 7, 2, 1),
(1053, 108, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 8, 2, 1),
(1054, 108, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 9, 2, 1),
(1055, 108, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 10, 2, 1),
(1056, 108, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 11, 2, 1),
(1057, 108, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 14, 2, 1),
(1058, 108, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 15, 2, 1),
(1059, 108, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 17, 2, 1),
(1060, 108, 0.87700, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 18, 2, 1),
(1061, 108, 0.87700, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 19, 2, 1),
(1062, 108, 0.87700, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 20, 2, 1),
(1063, 108, 0.87700, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 21, 2, 1),
(1064, 109, 0.92100, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 1, 2, 1),
(1065, 109, 0.92130, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 2, 2, 1),
(1066, 109, 0.92130, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 3, 2, 1),
(1067, 109, 0.92130, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 4, 2, 1),
(1068, 109, 0.92130, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 5, 2, 1),
(1069, 109, 0.92130, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 6, 2, 1),
(1070, 109, 0.92130, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 7, 2, 1),
(1071, 109, 0.92130, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 8, 2, 1),
(1072, 109, 0.92130, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 9, 2, 1),
(1073, 109, 0.92130, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 10, 2, 1),
(1074, 109, 0.92130, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 11, 2, 1),
(1075, 109, 0.92130, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 14, 2, 1),
(1076, 109, 0.87630, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 15, 2, 1),
(1077, 109, 0.87630, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 17, 2, 1),
(1078, 109, 0.87630, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 18, 2, 1),
(1079, 109, 0.87630, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 19, 2, 1),
(1080, 109, 0.87630, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 20, 2, 1),
(1081, 109, 0.87630, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 21, 2, 1),
(1082, 110, 0.92100, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 1, 2, 0),
(1083, 110, 0.92100, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 2, 2, 0),
(1084, 110, 0.92100, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 3, 2, 0),
(1085, 110, 0.92100, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 4, 2, 0),
(1086, 110, 0.92100, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 5, 2, 0),
(1087, 110, 0.92100, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 6, 2, 0),
(1088, 110, 0.92100, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 7, 2, 0),
(1089, 110, 0.92100, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 8, 2, 0),
(1090, 110, 0.92100, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 9, 2, 0),
(1091, 110, 0.92100, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 10, 2, 0),
(1092, 110, 0.92100, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 11, 2, 0),
(1093, 110, 0.92100, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 14, 2, 0),
(1094, 110, 0.87600, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 15, 2, 0),
(1095, 110, 0.87600, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 17, 2, 1),
(1096, 110, 0.87600, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 18, 2, 1),
(1097, 110, 0.87600, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 19, 2, 1),
(1098, 110, 0.87600, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 20, 2, 1),
(1099, 110, 0.87600, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 21, 2, 1),
(1100, 111, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 1, 2, 1),
(1101, 111, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 2, 2, 1),
(1102, 111, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 3, 2, 1),
(1103, 111, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 4, 2, 1),
(1104, 111, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 5, 2, 1),
(1105, 111, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 6, 2, 1),
(1106, 111, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 7, 2, 1),
(1107, 111, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 8, 2, 1),
(1108, 111, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 9, 2, 1),
(1109, 111, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 10, 2, 1),
(1110, 111, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 11, 2, 1),
(1111, 111, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 14, 2, 1),
(1112, 111, 0.87700, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 15, 2, 1),
(1113, 111, 0.87700, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 17, 2, 1),
(1114, 111, 0.87700, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 18, 2, 1),
(1115, 111, 0.87700, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 19, 2, 1),
(1116, 111, 0.87700, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 20, 2, 1),
(1117, 111, 0.87700, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 21, 2, 1),
(1118, 112, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 1, 2, 0),
(1119, 112, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 2, 2, 0),
(1120, 112, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 3, 2, 0),
(1121, 112, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 4, 2, 0),
(1122, 112, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 5, 2, 0),
(1123, 112, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 6, 2, 0),
(1124, 112, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 7, 2, 0),
(1125, 112, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 8, 2, 0),
(1126, 112, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 9, 2, 0),
(1127, 112, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 10, 2, 0),
(1128, 112, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 11, 2, 0),
(1129, 112, 0.87700, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 14, 2, 0),
(1130, 112, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 15, 2, 0),
(1131, 112, 0.87700, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 17, 2, 1),
(1132, 112, 0.87700, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 18, 2, 1),
(1133, 112, 0.87700, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 19, 2, 1),
(1134, 112, 0.87700, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 20, 2, 1),
(1135, 112, 0.87700, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 21, 2, 1),
(1136, 113, 0.92200, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 1, 2, 0),
(1137, 113, 0.92225, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 2, 2, 0),
(1138, 113, 0.92225, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 3, 2, 0),
(1139, 113, 0.92225, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 4, 2, 0),
(1140, 113, 0.92225, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 5, 2, 0),
(1141, 113, 0.87730, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 6, 2, 1),
(1142, 113, 0.87730, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 7, 2, 1),
(1143, 113, 0.87730, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 8, 2, 1),
(1144, 113, 0.87730, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 9, 2, 1),
(1145, 113, 0.87730, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 10, 2, 1),
(1146, 113, 0.87730, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 11, 2, 1),
(1147, 113, 0.87730, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 14, 2, 1),
(1148, 113, 0.87730, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 15, 2, 1),
(1149, 113, 0.87730, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 17, 2, 1),
(1150, 113, 0.87730, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 18, 2, 1),
(1151, 113, 0.87730, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 19, 2, 1),
(1152, 113, 0.87730, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 20, 2, 1),
(1153, 113, 0.87730, '2024-05-22 05:28:38', '2024-05-22 05:28:38', 21, 2, 1);

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
  `user_id` int(11) NOT NULL DEFAULT 0,
  `lag_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `pvbank_progress_expected`
--

INSERT INTO `pvbank_progress_expected` (`pv_bank_expected_id`, `pv_id`, `parameter_id`, `is_parameter_based`, `progress_percentage`, `last_update`, `create_at`, `pv_week_id`, `user_id`, `lag_status`) VALUES
(1, 17, NULL, NULL, 0.00000, '2024-03-25 04:16:05', '2024-03-25 04:11:53', 1, 2, 0),
(2, 17, NULL, NULL, 0.00000, '2024-03-25 04:24:00', '2024-03-25 04:22:46', 2, 2, 0),
(3, 17, NULL, NULL, 0.00000, '2024-03-25 04:23:43', '2024-03-25 04:23:43', 3, 2, 0),
(4, 17, NULL, NULL, 0.00000, '2024-03-25 04:24:34', '2024-03-25 04:24:34', 4, 2, 0),
(5, 17, NULL, NULL, 0.00000, '2024-03-25 04:25:18', '2024-03-25 04:25:18', 5, 2, 0),
(6, 17, NULL, NULL, 0.00000, '2024-03-25 04:25:35', '2024-03-25 04:25:35', 6, 2, 0),
(7, 17, NULL, NULL, 0.00000, '2024-03-25 04:25:48', '2024-03-25 04:25:48', 7, 2, 0),
(8, 17, NULL, NULL, 0.00000, '2024-03-25 04:25:59', '2024-03-25 04:25:59', 8, 2, 0),
(9, 17, NULL, NULL, 0.00000, '2024-03-25 04:26:14', '2024-03-25 04:26:14', 9, 2, 0),
(10, 18, NULL, NULL, 0.02480, '2024-03-25 05:18:12', '2024-03-25 05:15:13', 7, 2, 0),
(11, 20, NULL, NULL, 0.02480, '2024-03-25 05:18:16', '2024-03-25 05:16:40', 7, 2, 0),
(12, 21, NULL, NULL, 0.02480, '2024-03-25 05:18:22', '2024-03-25 05:16:40', 7, 2, 0),
(13, 18, NULL, NULL, 0.03730, '2024-03-25 05:19:36', '2024-03-25 05:19:36', 8, 2, 0),
(14, 20, NULL, NULL, 0.03730, '2024-03-25 05:19:36', '2024-03-25 05:19:36', 8, 2, 0),
(15, 21, NULL, NULL, 0.03730, '2024-03-25 05:19:36', '2024-03-25 05:19:36', 8, 2, 0),
(16, 18, NULL, NULL, 0.05580, '2024-03-25 05:20:54', '2024-03-25 05:20:54', 9, 2, 0),
(17, 20, NULL, NULL, 0.05580, '2024-03-25 05:20:54', '2024-03-25 05:20:54', 9, 2, 0),
(18, 21, NULL, NULL, 0.05580, '2024-03-25 05:20:55', '2024-03-25 05:20:55', 9, 2, 0),
(19, 4, NULL, NULL, 0.00000, '2024-03-25 05:36:01', '2024-03-25 05:36:01', 8, 2, 0),
(20, 4, NULL, NULL, 0.00000, '2024-03-25 05:36:19', '2024-03-25 05:36:19', 9, 2, 0),
(21, 4, NULL, NULL, 0.00000, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 10, 2, 0),
(22, 4, NULL, NULL, 0.00000, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 11, 2, 0),
(23, 17, NULL, NULL, 0.00000, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 10, 2, 0),
(24, 17, NULL, NULL, 0.00000, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 11, 2, 0),
(25, 18, NULL, NULL, 0.08260, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 10, 2, 0),
(26, 18, NULL, NULL, 0.12060, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 11, 2, 0),
(27, 20, NULL, NULL, 0.08260, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 10, 2, 0),
(28, 20, NULL, NULL, 0.12060, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 11, 2, 0),
(29, 21, NULL, NULL, 0.08260, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 10, 2, 0),
(30, 21, NULL, NULL, 0.12060, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 11, 2, 0),
(31, 4, NULL, NULL, 0.05370, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2, 0),
(32, 4, NULL, NULL, 0.08780, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2, 0),
(33, 4, NULL, NULL, 0.14040, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2, 0),
(34, 5, NULL, NULL, 0.05370, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2, 0),
(35, 5, NULL, NULL, 0.08780, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2, 0),
(36, 5, NULL, NULL, 0.14040, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2, 0),
(37, 6, NULL, NULL, 0.05370, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2, 0),
(38, 6, NULL, NULL, 0.08780, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2, 0),
(39, 6, NULL, NULL, 0.14040, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2, 0),
(40, 7, NULL, NULL, 0.05370, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2, 0),
(41, 7, NULL, NULL, 0.08780, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2, 0),
(42, 7, NULL, NULL, 0.14040, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2, 0),
(43, 8, NULL, NULL, 0.05370, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2, 0),
(44, 8, NULL, NULL, 0.08780, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2, 0),
(45, 8, NULL, NULL, 0.14040, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2, 0),
(46, 10, NULL, NULL, 0.05370, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2, 0),
(47, 10, NULL, NULL, 0.08780, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2, 0),
(48, 10, NULL, NULL, 0.14040, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2, 0),
(49, 18, NULL, NULL, 0.17290, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 14, 2, 0),
(50, 18, NULL, NULL, 0.24160, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 15, 2, 0),
(51, 18, NULL, NULL, 0.32690, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2, 0),
(52, 18, NULL, NULL, 0.42530, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2, 0),
(53, 18, NULL, NULL, 0.53010, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2, 0),
(54, 20, NULL, NULL, 0.17290, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 14, 2, 0),
(55, 20, NULL, NULL, 0.24160, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 15, 2, 0),
(56, 20, NULL, NULL, 0.32690, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2, 0),
(57, 20, NULL, NULL, 0.42530, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2, 0),
(58, 20, NULL, NULL, 0.53010, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2, 0),
(59, 21, NULL, NULL, 0.17290, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 14, 2, 0),
(60, 21, NULL, NULL, 0.24160, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 15, 2, 0),
(61, 21, NULL, NULL, 0.32690, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2, 0),
(62, 21, NULL, NULL, 0.42530, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2, 0),
(63, 21, NULL, NULL, 0.53010, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2, 0),
(64, 4, NULL, NULL, 0.00000, '2024-05-03 01:54:41', '2024-05-03 01:54:41', 14, 2, 0),
(65, 4, NULL, NULL, 0.00000, '2024-05-03 01:54:41', '2024-05-03 01:54:41', 15, 2, 0),
(66, 17, NULL, NULL, 0.00000, '2024-05-03 02:23:40', '2024-05-03 02:23:40', 14, 2, 0),
(67, 17, NULL, NULL, 0.00000, '2024-05-03 02:23:40', '2024-05-03 02:23:40', 15, 2, 0),
(68, 17, NULL, NULL, 0.00000, '2024-05-03 02:23:40', '2024-05-03 02:23:40', 17, 2, 0),
(69, 17, NULL, NULL, 0.00000, '2024-05-03 02:23:40', '2024-05-03 02:23:40', 18, 2, 0),
(70, 17, NULL, NULL, 0.00000, '2024-05-03 02:23:40', '2024-05-03 02:23:40', 19, 2, 0),
(71, 19, NULL, NULL, 0.00000, '2024-05-03 02:23:40', '2024-05-03 02:23:40', 18, 2, 0),
(72, 19, NULL, NULL, 0.00000, '2024-05-03 02:23:40', '2024-05-03 02:23:40', 19, 2, 0),
(73, 22, NULL, NULL, 0.00000, '2024-05-03 02:23:40', '2024-05-03 02:23:40', 15, 2, 0),
(74, 22, NULL, NULL, 0.00000, '2024-05-03 02:23:40', '2024-05-03 02:23:40', 17, 2, 0),
(75, 22, NULL, NULL, 0.00000, '2024-05-03 02:23:40', '2024-05-03 02:23:40', 18, 2, 0),
(76, 22, NULL, NULL, 0.00000, '2024-05-03 02:23:40', '2024-05-03 02:23:40', 19, 2, 0),
(77, 15, NULL, NULL, 0.00000, '2024-05-03 02:23:40', '2024-05-03 02:23:40', 15, 2, 0),
(78, 15, NULL, NULL, 0.00000, '2024-05-03 02:23:40', '2024-05-03 02:23:40', 17, 2, 0),
(79, 15, NULL, NULL, 0.00000, '2024-05-03 02:23:40', '2024-05-03 02:23:40', 18, 2, 0),
(80, 15, NULL, NULL, 0.00000, '2024-05-03 02:23:40', '2024-05-03 02:23:40', 19, 2, 0),
(81, 16, NULL, NULL, 0.00000, '2024-05-03 02:23:40', '2024-05-03 02:23:40', 15, 2, 0),
(82, 16, NULL, NULL, 0.00000, '2024-05-03 02:23:40', '2024-05-03 02:23:40', 17, 2, 0),
(83, 16, NULL, NULL, 0.00000, '2024-05-03 02:23:40', '2024-05-03 02:23:40', 18, 2, 0),
(84, 16, NULL, NULL, 0.00000, '2024-05-03 02:23:40', '2024-05-03 02:23:40', 19, 2, 0),
(85, 31, NULL, NULL, 0.00000, '2024-05-03 02:29:23', '2024-05-03 02:29:23', 19, 2, 0),
(86, 46, NULL, NULL, 0.00000, '2024-05-03 02:35:15', '2024-05-03 02:35:15', 18, 2, 0),
(87, 46, NULL, NULL, 0.00000, '2024-05-03 02:35:15', '2024-05-03 02:35:15', 19, 2, 0),
(88, 4, NULL, NULL, 0.21700, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2, 0),
(89, 17, NULL, NULL, 0.00000, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2, 0),
(90, 19, NULL, NULL, 0.00000, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2, 0),
(91, 22, NULL, NULL, 0.00000, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2, 0),
(92, 15, NULL, NULL, 0.00000, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2, 0),
(93, 16, NULL, NULL, 0.00000, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2, 0),
(94, 5, NULL, NULL, 0.21700, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2, 0),
(95, 6, NULL, NULL, 0.21700, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2, 0),
(96, 7, NULL, NULL, 0.21700, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2, 0),
(97, 8, NULL, NULL, 0.21700, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2, 0),
(98, 10, NULL, NULL, 0.21700, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2, 0),
(99, 18, NULL, NULL, 0.63220, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2, 0),
(100, 20, NULL, NULL, 0.63220, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2, 0),
(101, 21, NULL, NULL, 0.63220, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2, 0),
(102, 31, NULL, NULL, 0.00000, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2, 0),
(103, 46, NULL, NULL, 0.00000, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2, 0),
(104, 4, NULL, NULL, 0.31970, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(105, 17, NULL, NULL, 0.09090, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(106, 19, NULL, NULL, 0.09090, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(107, 22, NULL, NULL, 0.09090, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(108, 15, NULL, NULL, 0.09090, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(109, 16, NULL, NULL, 0.09090, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(110, 5, NULL, NULL, 0.31970, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(111, 6, NULL, NULL, 0.31970, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(112, 7, NULL, NULL, 0.31970, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(113, 8, NULL, NULL, 0.31970, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(114, 10, NULL, NULL, 0.31970, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(115, 18, NULL, NULL, 0.72380, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(116, 20, NULL, NULL, 0.72380, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(117, 21, NULL, NULL, 0.72380, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(118, 31, NULL, NULL, 0.00000, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(119, 46, NULL, NULL, 0.00000, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(120, 1, NULL, NULL, 0.09090, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(121, 2, NULL, NULL, 0.09090, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(122, 3, NULL, NULL, 0.09090, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(123, 9, NULL, NULL, 0.09090, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(124, 11, NULL, NULL, 0.09090, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(125, 12, NULL, NULL, 0.09090, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(126, 13, NULL, NULL, 0.09090, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(127, 14, NULL, NULL, 0.09090, '2024-05-20 06:04:53', '2024-05-20 06:04:53', 21, 2, 0),
(128, 79, NULL, NULL, 1.00000, '2024-05-21 03:45:21', '2024-05-21 03:45:21', 1, 2, 0),
(129, 79, NULL, NULL, 1.00000, '2024-05-21 03:45:21', '2024-05-21 03:45:21', 2, 2, 0),
(130, 79, NULL, NULL, 1.00000, '2024-05-21 03:45:21', '2024-05-21 03:45:21', 3, 2, 0),
(131, 79, NULL, NULL, 1.00000, '2024-05-21 03:45:21', '2024-05-21 03:45:21', 4, 2, 0),
(132, 79, NULL, NULL, 1.00000, '2024-05-21 03:45:21', '2024-05-21 03:45:21', 5, 2, 0),
(133, 79, NULL, NULL, 1.00000, '2024-05-21 03:45:21', '2024-05-21 03:45:21', 6, 2, 0),
(134, 79, NULL, NULL, 1.00000, '2024-05-21 03:45:21', '2024-05-21 03:45:21', 7, 2, 0),
(135, 79, NULL, NULL, 1.00000, '2024-05-21 03:45:21', '2024-05-21 03:45:21', 8, 2, 0),
(136, 79, NULL, NULL, 1.00000, '2024-05-21 03:45:21', '2024-05-21 03:45:21', 9, 2, 0),
(137, 79, NULL, NULL, 1.00000, '2024-05-21 03:45:21', '2024-05-21 03:45:21', 10, 2, 0),
(138, 79, NULL, NULL, 1.00000, '2024-05-21 03:45:21', '2024-05-21 03:45:21', 11, 2, 0),
(139, 79, NULL, NULL, 1.00000, '2024-05-21 03:45:21', '2024-05-21 03:45:21', 14, 2, 0),
(140, 79, NULL, NULL, 1.00000, '2024-05-21 03:45:21', '2024-05-21 03:45:21', 15, 2, 0),
(141, 79, NULL, NULL, 1.00000, '2024-05-21 03:45:21', '2024-05-21 03:45:21', 17, 2, 0),
(142, 79, NULL, NULL, 1.00000, '2024-05-21 03:45:21', '2024-05-21 03:45:21', 18, 2, 0),
(143, 79, NULL, NULL, 1.00000, '2024-05-21 03:45:21', '2024-05-21 03:45:21', 19, 2, 0),
(144, 79, NULL, NULL, 1.00000, '2024-05-21 03:45:21', '2024-05-21 03:45:21', 20, 2, 0),
(145, 79, NULL, NULL, 1.00000, '2024-05-21 03:45:21', '2024-05-21 03:45:21', 21, 2, 0),
(146, 80, NULL, NULL, 1.00000, '2024-05-21 07:22:07', '2024-05-21 07:22:07', 1, 2, 0),
(147, 80, NULL, NULL, 1.00000, '2024-05-21 07:22:07', '2024-05-21 07:22:07', 2, 2, 0),
(148, 80, NULL, NULL, 1.00000, '2024-05-21 07:22:07', '2024-05-21 07:22:07', 3, 2, 0),
(149, 80, NULL, NULL, 1.00000, '2024-05-21 07:22:07', '2024-05-21 07:22:07', 4, 2, 0),
(150, 80, NULL, NULL, 1.00000, '2024-05-21 07:22:07', '2024-05-21 07:22:07', 5, 2, 0),
(151, 80, NULL, NULL, 1.00000, '2024-05-21 07:22:07', '2024-05-21 07:22:07', 6, 2, 0),
(152, 80, NULL, NULL, 1.00000, '2024-05-21 07:22:07', '2024-05-21 07:22:07', 7, 2, 0),
(153, 80, NULL, NULL, 1.00000, '2024-05-21 07:22:07', '2024-05-21 07:22:07', 8, 2, 0),
(154, 80, NULL, NULL, 1.00000, '2024-05-21 07:22:07', '2024-05-21 07:22:07', 9, 2, 0),
(155, 80, NULL, NULL, 1.00000, '2024-05-21 07:22:07', '2024-05-21 07:22:07', 10, 2, 0),
(156, 80, NULL, NULL, 1.00000, '2024-05-21 07:22:07', '2024-05-21 07:22:07', 11, 2, 0),
(157, 80, NULL, NULL, 1.00000, '2024-05-21 07:22:07', '2024-05-21 07:22:07', 14, 2, 0),
(158, 80, NULL, NULL, 1.00000, '2024-05-21 07:22:07', '2024-05-21 07:22:07', 15, 2, 0),
(159, 80, NULL, NULL, 1.00000, '2024-05-21 07:22:07', '2024-05-21 07:22:07', 17, 2, 0),
(160, 80, NULL, NULL, 1.00000, '2024-05-21 07:22:07', '2024-05-21 07:22:07', 18, 2, 0),
(161, 80, NULL, NULL, 1.00000, '2024-05-21 07:22:07', '2024-05-21 07:22:07', 19, 2, 0),
(162, 80, NULL, NULL, 1.00000, '2024-05-21 07:22:07', '2024-05-21 07:22:07', 20, 2, 0),
(163, 80, NULL, NULL, 1.00000, '2024-05-21 07:22:07', '2024-05-21 07:22:07', 21, 2, 0),
(164, 81, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 1, 2, 0),
(165, 81, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 2, 2, 0),
(166, 81, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 3, 2, 0),
(167, 81, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 4, 2, 0),
(168, 81, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 5, 2, 0),
(169, 81, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 6, 2, 0),
(170, 81, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 7, 2, 0),
(171, 81, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 8, 2, 0),
(172, 81, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 9, 2, 0),
(173, 81, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 10, 2, 0),
(174, 81, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 11, 2, 0),
(175, 81, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 14, 2, 0),
(176, 81, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 15, 2, 0),
(177, 81, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 17, 2, 0),
(178, 81, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 18, 2, 0),
(179, 81, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 19, 2, 0),
(180, 81, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 20, 2, 0),
(181, 81, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 21, 2, 0),
(182, 82, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 1, 2, 0),
(183, 82, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 2, 2, 0),
(184, 82, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 3, 2, 0),
(185, 82, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 4, 2, 0),
(186, 82, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 5, 2, 0),
(187, 82, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 6, 2, 0),
(188, 82, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 7, 2, 0),
(189, 82, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 8, 2, 0),
(190, 82, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 9, 2, 0),
(191, 82, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 10, 2, 0),
(192, 82, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 11, 2, 0),
(193, 82, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 14, 2, 0),
(194, 82, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 15, 2, 0),
(195, 82, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 17, 2, 0),
(196, 82, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 18, 2, 0),
(197, 82, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 19, 2, 0),
(198, 82, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 20, 2, 0),
(199, 82, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 21, 2, 0),
(200, 83, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 1, 2, 0),
(201, 83, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 2, 2, 0),
(202, 83, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 3, 2, 0),
(203, 83, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 4, 2, 0),
(204, 83, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 5, 2, 0),
(205, 83, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 6, 2, 0),
(206, 83, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 7, 2, 0),
(207, 83, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 8, 2, 0),
(208, 83, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 9, 2, 0),
(209, 83, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 10, 2, 0),
(210, 83, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 11, 2, 0),
(211, 83, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 14, 2, 0),
(212, 83, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 15, 2, 0),
(213, 83, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 17, 2, 0),
(214, 83, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 18, 2, 0),
(215, 83, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 19, 2, 0),
(216, 83, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 20, 2, 0),
(217, 83, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 21, 2, 0),
(218, 84, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 1, 2, 0),
(219, 84, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 2, 2, 0),
(220, 84, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 3, 2, 0),
(221, 84, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 4, 2, 0),
(222, 84, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 5, 2, 0),
(223, 84, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 6, 2, 0),
(224, 84, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 7, 2, 0),
(225, 84, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 8, 2, 0),
(226, 84, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 9, 2, 0),
(227, 84, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 10, 2, 0),
(228, 84, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 11, 2, 0),
(229, 84, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 14, 2, 0),
(230, 84, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 15, 2, 0),
(231, 84, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 17, 2, 0),
(232, 84, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 18, 2, 0),
(233, 84, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 19, 2, 0),
(234, 84, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 20, 2, 0),
(235, 84, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 21, 2, 0),
(236, 85, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 1, 2, 0),
(237, 85, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 2, 2, 0),
(238, 85, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 3, 2, 0),
(239, 85, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 4, 2, 0),
(240, 85, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 5, 2, 0),
(241, 85, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 6, 2, 0),
(242, 85, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 7, 2, 0),
(243, 85, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 8, 2, 0),
(244, 85, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 9, 2, 0),
(245, 85, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 10, 2, 0),
(246, 85, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 11, 2, 0),
(247, 85, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 14, 2, 0),
(248, 85, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 15, 2, 0),
(249, 85, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 17, 2, 0),
(250, 85, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 18, 2, 0),
(251, 85, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 19, 2, 0),
(252, 85, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 20, 2, 0),
(253, 85, NULL, NULL, 1.00000, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 21, 2, 0),
(254, 86, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 1, 2, 0),
(255, 86, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 2, 2, 0),
(256, 86, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 3, 2, 0),
(257, 86, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 4, 2, 0),
(258, 86, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 5, 2, 0),
(259, 86, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 6, 2, 0),
(260, 86, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 7, 2, 0),
(261, 86, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 8, 2, 0),
(262, 86, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 9, 2, 0),
(263, 86, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 10, 2, 0),
(264, 86, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 11, 2, 0),
(265, 86, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 14, 2, 0),
(266, 86, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 15, 2, 0),
(267, 86, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 17, 2, 0),
(268, 86, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 18, 2, 0),
(269, 86, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 19, 2, 0),
(270, 86, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 20, 2, 0),
(271, 86, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 21, 2, 0),
(272, 87, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 1, 2, 0),
(273, 87, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 2, 2, 0),
(274, 87, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 3, 2, 0),
(275, 87, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 4, 2, 0),
(276, 87, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 5, 2, 0),
(277, 87, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 6, 2, 0),
(278, 87, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 7, 2, 0),
(279, 87, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 8, 2, 0),
(280, 87, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 9, 2, 0),
(281, 87, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 10, 2, 0),
(282, 87, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 11, 2, 0),
(283, 87, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 14, 2, 0),
(284, 87, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 15, 2, 0),
(285, 87, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 17, 2, 0),
(286, 87, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 18, 2, 0),
(287, 87, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 19, 2, 0),
(288, 87, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 20, 2, 0),
(289, 87, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 21, 2, 0),
(290, 88, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 1, 2, 0),
(291, 88, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 2, 2, 0),
(292, 88, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 3, 2, 0),
(293, 88, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 4, 2, 0),
(294, 88, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 5, 2, 0),
(295, 88, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 6, 2, 0),
(296, 88, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 7, 2, 0),
(297, 88, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 8, 2, 0),
(298, 88, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 9, 2, 0),
(299, 88, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 10, 2, 0),
(300, 88, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 11, 2, 0),
(301, 88, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 14, 2, 0),
(302, 88, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 15, 2, 0),
(303, 88, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 17, 2, 0),
(304, 88, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 18, 2, 0),
(305, 88, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 19, 2, 0),
(306, 88, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 20, 2, 0),
(307, 88, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 21, 2, 0),
(308, 89, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 1, 2, 0),
(309, 89, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 2, 2, 0),
(310, 89, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 3, 2, 0),
(311, 89, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 4, 2, 0),
(312, 89, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 5, 2, 0),
(313, 89, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 6, 2, 0),
(314, 89, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 7, 2, 0),
(315, 89, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 8, 2, 0),
(316, 89, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 9, 2, 0),
(317, 89, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 10, 2, 0),
(318, 89, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 11, 2, 0),
(319, 89, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 14, 2, 0),
(320, 89, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 15, 2, 0),
(321, 89, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 17, 2, 0),
(322, 89, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 18, 2, 0),
(323, 89, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 19, 2, 0),
(324, 89, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 20, 2, 0),
(325, 89, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 21, 2, 0),
(326, 90, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 1, 2, 0),
(327, 90, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 2, 2, 0),
(328, 90, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 3, 2, 0),
(329, 90, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 4, 2, 0),
(330, 90, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 5, 2, 0),
(331, 90, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 6, 2, 0),
(332, 90, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 7, 2, 0),
(333, 90, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 8, 2, 0),
(334, 90, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 9, 2, 0),
(335, 90, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 10, 2, 0),
(336, 90, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 11, 2, 0),
(337, 90, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 14, 2, 0),
(338, 90, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 15, 2, 0),
(339, 90, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 17, 2, 0),
(340, 90, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 18, 2, 0),
(341, 90, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 19, 2, 0),
(342, 90, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 20, 2, 0),
(343, 90, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 21, 2, 0),
(344, 91, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 1, 2, 0),
(345, 91, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 2, 2, 0),
(346, 91, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 3, 2, 0),
(347, 91, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 4, 2, 0),
(348, 91, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 5, 2, 0),
(349, 91, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 6, 2, 0),
(350, 91, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 7, 2, 0),
(351, 91, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 8, 2, 0),
(352, 91, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 9, 2, 0),
(353, 91, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 10, 2, 0),
(354, 91, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 11, 2, 0),
(355, 91, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 14, 2, 0),
(356, 91, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 15, 2, 0),
(357, 91, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 17, 2, 0),
(358, 91, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 18, 2, 0),
(359, 91, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 19, 2, 0),
(360, 91, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 20, 2, 0),
(361, 91, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 21, 2, 0),
(362, 92, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 1, 2, 0),
(363, 92, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 2, 2, 0),
(364, 92, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 3, 2, 0),
(365, 92, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 4, 2, 0),
(366, 92, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 5, 2, 0),
(367, 92, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 6, 2, 0),
(368, 92, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 7, 2, 0),
(369, 92, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 8, 2, 0),
(370, 92, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 9, 2, 0),
(371, 92, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 10, 2, 0),
(372, 92, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 11, 2, 0),
(373, 92, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 14, 2, 0),
(374, 92, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 15, 2, 0),
(375, 92, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 17, 2, 0),
(376, 92, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 18, 2, 0),
(377, 92, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 19, 2, 0),
(378, 92, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 20, 2, 0),
(379, 92, NULL, NULL, 1.00000, '2024-05-21 08:13:33', '2024-05-21 08:13:33', 21, 2, 0),
(380, 132, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 1, 2, 0),
(381, 132, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 2, 2, 0),
(382, 132, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 3, 2, 0),
(383, 132, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 4, 2, 0),
(384, 132, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 5, 2, 0),
(385, 132, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 6, 2, 0),
(386, 132, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 7, 2, 0),
(387, 132, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 8, 2, 0),
(388, 132, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 9, 2, 0),
(389, 132, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 10, 2, 0),
(390, 132, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 11, 2, 0),
(391, 132, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 14, 2, 0),
(392, 132, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 15, 2, 0),
(393, 132, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 17, 2, 0),
(394, 132, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 18, 2, 0),
(395, 132, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 19, 2, 0),
(396, 132, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 20, 2, 0),
(397, 132, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 21, 2, 0),
(398, 133, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 1, 2, 0),
(399, 133, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 2, 2, 0),
(400, 133, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 3, 2, 0),
(401, 133, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 4, 2, 0),
(402, 133, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 5, 2, 0),
(403, 133, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 6, 2, 0),
(404, 133, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 7, 2, 0),
(405, 133, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 8, 2, 0),
(406, 133, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 9, 2, 0),
(407, 133, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 10, 2, 0),
(408, 133, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 11, 2, 0),
(409, 133, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 14, 2, 0),
(410, 133, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 15, 2, 0),
(411, 133, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 17, 2, 0),
(412, 133, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 18, 2, 0),
(413, 133, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 19, 2, 0),
(414, 133, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 20, 2, 0),
(415, 133, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 21, 2, 0),
(416, 134, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 1, 2, 0),
(417, 134, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 2, 2, 0),
(418, 134, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 3, 2, 0),
(419, 134, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 4, 2, 0),
(420, 134, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 5, 2, 0),
(421, 134, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 6, 2, 0),
(422, 134, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 7, 2, 0),
(423, 134, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 8, 2, 0),
(424, 134, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 9, 2, 0),
(425, 134, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 10, 2, 0),
(426, 134, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 11, 2, 0),
(427, 134, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 14, 2, 0),
(428, 134, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 15, 2, 0),
(429, 134, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 17, 2, 0),
(430, 134, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 18, 2, 0),
(431, 134, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 19, 2, 0),
(432, 134, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 20, 2, 0),
(433, 134, NULL, NULL, 1.00000, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 21, 2, 0),
(434, 93, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2, 0),
(435, 93, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2, 0),
(436, 93, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2, 0),
(437, 93, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2, 0),
(438, 93, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2, 0),
(439, 93, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2, 0),
(440, 93, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2, 0),
(441, 93, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2, 0),
(442, 93, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2, 0),
(443, 93, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2, 0),
(444, 93, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2, 0),
(445, 93, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2, 0),
(446, 93, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2, 0),
(447, 93, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2, 0),
(448, 93, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2, 0),
(449, 93, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2, 0),
(450, 93, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2, 0),
(451, 93, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2, 0),
(452, 94, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2, 0),
(453, 94, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2, 0),
(454, 94, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2, 0),
(455, 94, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2, 0),
(456, 94, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2, 0),
(457, 94, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2, 0),
(458, 94, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2, 0),
(459, 94, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2, 0),
(460, 94, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2, 0),
(461, 94, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2, 0),
(462, 94, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2, 0),
(463, 94, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2, 0),
(464, 94, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2, 0),
(465, 94, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2, 0),
(466, 94, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2, 0),
(467, 94, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2, 0),
(468, 94, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2, 0),
(469, 94, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2, 0),
(470, 95, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2, 0),
(471, 95, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2, 0),
(472, 95, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2, 0),
(473, 95, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2, 0),
(474, 95, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2, 0),
(475, 95, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2, 0),
(476, 95, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2, 0),
(477, 95, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2, 0),
(478, 95, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2, 0),
(479, 95, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2, 0),
(480, 95, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2, 0),
(481, 95, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2, 0),
(482, 95, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2, 0),
(483, 95, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2, 0),
(484, 95, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2, 0),
(485, 95, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2, 0),
(486, 95, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2, 0),
(487, 95, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2, 0),
(488, 96, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2, 0),
(489, 96, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2, 0),
(490, 96, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2, 0),
(491, 96, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2, 0),
(492, 96, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2, 0),
(493, 96, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2, 0),
(494, 96, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2, 0),
(495, 96, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2, 0),
(496, 96, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2, 0),
(497, 96, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2, 0),
(498, 96, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2, 0),
(499, 96, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2, 0),
(500, 96, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2, 0),
(501, 96, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2, 0),
(502, 96, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2, 0),
(503, 96, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2, 0),
(504, 96, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2, 0),
(505, 96, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2, 0),
(506, 97, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2, 0),
(507, 97, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2, 0),
(508, 97, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2, 0),
(509, 97, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2, 0),
(510, 97, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2, 0),
(511, 97, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2, 0),
(512, 97, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2, 0),
(513, 97, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2, 0),
(514, 97, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2, 0),
(515, 97, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2, 0),
(516, 97, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2, 0),
(517, 97, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2, 0),
(518, 97, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2, 0),
(519, 97, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2, 0),
(520, 97, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2, 0),
(521, 97, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2, 0),
(522, 97, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2, 0),
(523, 97, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2, 0),
(524, 98, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2, 0),
(525, 98, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2, 0),
(526, 98, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2, 0),
(527, 98, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2, 0),
(528, 98, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2, 0),
(529, 98, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2, 0),
(530, 98, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2, 0),
(531, 98, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2, 0),
(532, 98, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2, 0),
(533, 98, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2, 0),
(534, 98, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2, 0),
(535, 98, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2, 0),
(536, 98, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2, 0),
(537, 98, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2, 0),
(538, 98, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2, 0),
(539, 98, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2, 0),
(540, 98, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2, 0),
(541, 98, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2, 0),
(542, 99, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2, 0),
(543, 99, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2, 0),
(544, 99, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2, 0),
(545, 99, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2, 0),
(546, 99, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2, 0),
(547, 99, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2, 0),
(548, 99, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2, 0),
(549, 99, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2, 0),
(550, 99, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2, 0),
(551, 99, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2, 0),
(552, 99, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2, 0),
(553, 99, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2, 0),
(554, 99, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2, 0),
(555, 99, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2, 0),
(556, 99, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2, 0),
(557, 99, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2, 0),
(558, 99, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2, 0),
(559, 99, NULL, NULL, 1.00000, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2, 0),
(560, 100, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2, 0),
(561, 100, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2, 0),
(562, 100, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2, 0),
(563, 100, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2, 0),
(564, 100, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2, 0),
(565, 100, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2, 0),
(566, 100, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2, 0),
(567, 100, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2, 0),
(568, 100, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2, 0),
(569, 100, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2, 0),
(570, 100, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2, 0),
(571, 100, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2, 0),
(572, 100, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2, 0),
(573, 100, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2, 0),
(574, 100, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2, 0),
(575, 100, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2, 0),
(576, 100, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2, 0),
(577, 100, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2, 0),
(578, 101, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2, 0),
(579, 101, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2, 0),
(580, 101, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2, 0),
(581, 101, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2, 0),
(582, 101, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2, 0);
INSERT INTO `pvbank_progress_expected` (`pv_bank_expected_id`, `pv_id`, `parameter_id`, `is_parameter_based`, `progress_percentage`, `last_update`, `create_at`, `pv_week_id`, `user_id`, `lag_status`) VALUES
(583, 101, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2, 0),
(584, 101, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2, 0),
(585, 101, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2, 0),
(586, 101, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2, 0),
(587, 101, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2, 0),
(588, 101, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2, 0),
(589, 101, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2, 0),
(590, 101, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2, 0),
(591, 101, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2, 0),
(592, 101, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2, 0),
(593, 101, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2, 0),
(594, 101, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2, 0),
(595, 101, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2, 0),
(596, 102, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2, 0),
(597, 102, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2, 0),
(598, 102, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2, 0),
(599, 102, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2, 0),
(600, 102, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2, 0),
(601, 102, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2, 0),
(602, 102, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2, 0),
(603, 102, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2, 0),
(604, 102, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2, 0),
(605, 102, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2, 0),
(606, 102, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2, 0),
(607, 102, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2, 0),
(608, 102, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2, 0),
(609, 102, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2, 0),
(610, 102, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2, 0),
(611, 102, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2, 0),
(612, 102, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2, 0),
(613, 102, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2, 0),
(614, 103, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2, 0),
(615, 103, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2, 0),
(616, 103, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2, 0),
(617, 103, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2, 0),
(618, 103, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2, 0),
(619, 103, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2, 0),
(620, 103, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2, 0),
(621, 103, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2, 0),
(622, 103, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2, 0),
(623, 103, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2, 0),
(624, 103, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2, 0),
(625, 103, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2, 0),
(626, 103, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2, 0),
(627, 103, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2, 0),
(628, 103, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2, 0),
(629, 103, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2, 0),
(630, 103, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2, 0),
(631, 103, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2, 0),
(632, 104, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2, 0),
(633, 104, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2, 0),
(634, 104, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2, 0),
(635, 104, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2, 0),
(636, 104, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2, 0),
(637, 104, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2, 0),
(638, 104, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2, 0),
(639, 104, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2, 0),
(640, 104, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2, 0),
(641, 104, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2, 0),
(642, 104, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2, 0),
(643, 104, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2, 0),
(644, 104, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2, 0),
(645, 104, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2, 0),
(646, 104, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2, 0),
(647, 104, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2, 0),
(648, 104, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2, 0),
(649, 104, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2, 0),
(650, 105, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2, 0),
(651, 105, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2, 0),
(652, 105, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2, 0),
(653, 105, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2, 0),
(654, 105, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2, 0),
(655, 105, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2, 0),
(656, 105, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2, 0),
(657, 105, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2, 0),
(658, 105, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2, 0),
(659, 105, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2, 0),
(660, 105, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2, 0),
(661, 105, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2, 0),
(662, 105, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2, 0),
(663, 105, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2, 0),
(664, 105, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2, 0),
(665, 105, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2, 0),
(666, 105, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2, 0),
(667, 105, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2, 0),
(668, 106, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2, 0),
(669, 106, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2, 0),
(670, 106, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2, 0),
(671, 106, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2, 0),
(672, 106, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2, 0),
(673, 106, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2, 0),
(674, 106, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2, 0),
(675, 106, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2, 0),
(676, 106, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2, 0),
(677, 106, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2, 0),
(678, 106, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2, 0),
(679, 106, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2, 0),
(680, 106, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2, 0),
(681, 106, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2, 0),
(682, 106, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2, 0),
(683, 106, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2, 0),
(684, 106, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2, 0),
(685, 106, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2, 0),
(686, 107, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2, 0),
(687, 107, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2, 0),
(688, 107, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2, 0),
(689, 107, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2, 0),
(690, 107, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2, 0),
(691, 107, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2, 0),
(692, 107, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2, 0),
(693, 107, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2, 0),
(694, 107, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2, 0),
(695, 107, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2, 0),
(696, 107, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2, 0),
(697, 107, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2, 0),
(698, 107, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2, 0),
(699, 107, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2, 0),
(700, 107, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2, 0),
(701, 107, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2, 0),
(702, 107, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2, 0),
(703, 107, NULL, NULL, 1.00000, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2, 0),
(704, 114, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2, 0),
(705, 114, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2, 0),
(706, 114, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2, 0),
(707, 114, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2, 0),
(708, 114, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2, 0),
(709, 114, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2, 0),
(710, 114, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2, 0),
(711, 114, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2, 0),
(712, 114, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2, 0),
(713, 114, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2, 0),
(714, 114, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2, 0),
(715, 114, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2, 0),
(716, 114, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2, 0),
(717, 114, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2, 0),
(718, 114, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2, 0),
(719, 114, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2, 0),
(720, 114, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2, 0),
(721, 114, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2, 0),
(722, 115, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2, 0),
(723, 115, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2, 0),
(724, 115, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2, 0),
(725, 115, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2, 0),
(726, 115, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2, 0),
(727, 115, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2, 0),
(728, 115, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2, 0),
(729, 115, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2, 0),
(730, 115, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2, 0),
(731, 115, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2, 0),
(732, 115, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2, 0),
(733, 115, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2, 0),
(734, 115, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2, 0),
(735, 115, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2, 0),
(736, 115, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2, 0),
(737, 115, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2, 0),
(738, 115, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2, 0),
(739, 115, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2, 0),
(740, 116, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2, 0),
(741, 116, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2, 0),
(742, 116, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2, 0),
(743, 116, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2, 0),
(744, 116, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2, 0),
(745, 116, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2, 0),
(746, 116, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2, 0),
(747, 116, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2, 0),
(748, 116, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2, 0),
(749, 116, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2, 0),
(750, 116, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2, 0),
(751, 116, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2, 0),
(752, 116, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2, 0),
(753, 116, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2, 0),
(754, 116, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2, 0),
(755, 116, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2, 0),
(756, 116, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2, 0),
(757, 116, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2, 0),
(758, 117, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2, 0),
(759, 117, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2, 0),
(760, 117, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2, 0),
(761, 117, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2, 0),
(762, 117, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2, 0),
(763, 117, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2, 0),
(764, 117, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2, 0),
(765, 117, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2, 0),
(766, 117, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2, 0),
(767, 117, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2, 0),
(768, 117, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2, 0),
(769, 117, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2, 0),
(770, 117, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2, 0),
(771, 117, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2, 0),
(772, 117, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2, 0),
(773, 117, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2, 0),
(774, 117, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2, 0),
(775, 117, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2, 0),
(776, 118, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2, 0),
(777, 118, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2, 0),
(778, 118, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2, 0),
(779, 118, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2, 0),
(780, 118, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2, 0),
(781, 118, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2, 0),
(782, 118, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2, 0),
(783, 118, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2, 0),
(784, 118, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2, 0),
(785, 118, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2, 0),
(786, 118, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2, 0),
(787, 118, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2, 0),
(788, 118, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2, 0),
(789, 118, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2, 0),
(790, 118, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2, 0),
(791, 118, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2, 0),
(792, 118, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2, 0),
(793, 118, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2, 0),
(794, 119, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2, 0),
(795, 119, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2, 0),
(796, 119, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2, 0),
(797, 119, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2, 0),
(798, 119, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2, 0),
(799, 119, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2, 0),
(800, 119, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2, 0),
(801, 119, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2, 0),
(802, 119, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2, 0),
(803, 119, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2, 0),
(804, 119, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2, 0),
(805, 119, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2, 0),
(806, 119, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2, 0),
(807, 119, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2, 0),
(808, 119, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2, 0),
(809, 119, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2, 0),
(810, 119, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2, 0),
(811, 119, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2, 0),
(812, 120, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2, 0),
(813, 120, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2, 0),
(814, 120, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2, 0),
(815, 120, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2, 0),
(816, 120, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2, 0),
(817, 120, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2, 0),
(818, 120, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2, 0),
(819, 120, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2, 0),
(820, 120, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2, 0),
(821, 120, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2, 0),
(822, 120, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2, 0),
(823, 120, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2, 0),
(824, 120, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2, 0),
(825, 120, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2, 0),
(826, 120, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2, 0),
(827, 120, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2, 0),
(828, 120, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2, 0),
(829, 120, NULL, NULL, 1.00000, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2, 0),
(830, 121, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2, 0),
(831, 121, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2, 0),
(832, 121, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2, 0),
(833, 121, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2, 0),
(834, 121, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2, 0),
(835, 121, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2, 0),
(836, 121, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2, 0),
(837, 121, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2, 0),
(838, 121, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2, 0),
(839, 121, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2, 0),
(840, 121, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2, 0),
(841, 121, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2, 0),
(842, 121, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2, 0),
(843, 121, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2, 0),
(844, 121, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2, 0),
(845, 121, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2, 0),
(846, 121, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2, 0),
(847, 121, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2, 0),
(848, 122, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2, 0),
(849, 122, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2, 0),
(850, 122, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2, 0),
(851, 122, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2, 0),
(852, 122, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2, 0),
(853, 122, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2, 0),
(854, 122, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2, 0),
(855, 122, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2, 0),
(856, 122, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2, 0),
(857, 122, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2, 0),
(858, 122, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2, 0),
(859, 122, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2, 0),
(860, 122, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2, 0),
(861, 122, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2, 0),
(862, 122, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2, 0),
(863, 122, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2, 0),
(864, 122, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2, 0),
(865, 122, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2, 0),
(866, 123, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2, 0),
(867, 123, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2, 0),
(868, 123, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2, 0),
(869, 123, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2, 0),
(870, 123, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2, 0),
(871, 123, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2, 0),
(872, 123, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2, 0),
(873, 123, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2, 0),
(874, 123, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2, 0),
(875, 123, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2, 0),
(876, 123, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2, 0),
(877, 123, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2, 0),
(878, 123, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2, 0),
(879, 123, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2, 0),
(880, 123, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2, 0),
(881, 123, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2, 0),
(882, 123, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2, 0),
(883, 123, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2, 0),
(884, 124, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2, 0),
(885, 124, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2, 0),
(886, 124, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2, 0),
(887, 124, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2, 0),
(888, 124, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2, 0),
(889, 124, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2, 0),
(890, 124, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2, 0),
(891, 124, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2, 0),
(892, 124, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2, 0),
(893, 124, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2, 0),
(894, 124, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2, 0),
(895, 124, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2, 0),
(896, 124, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2, 0),
(897, 124, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2, 0),
(898, 124, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2, 0),
(899, 124, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2, 0),
(900, 124, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2, 0),
(901, 124, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2, 0),
(902, 125, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2, 0),
(903, 125, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2, 0),
(904, 125, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2, 0),
(905, 125, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2, 0),
(906, 125, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2, 0),
(907, 125, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2, 0),
(908, 125, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2, 0),
(909, 125, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2, 0),
(910, 125, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2, 0),
(911, 125, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2, 0),
(912, 125, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2, 0),
(913, 125, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2, 0),
(914, 125, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2, 0),
(915, 125, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2, 0),
(916, 125, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2, 0),
(917, 125, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2, 0),
(918, 125, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2, 0),
(919, 125, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2, 0),
(920, 126, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2, 0),
(921, 126, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2, 0),
(922, 126, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2, 0),
(923, 126, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2, 0),
(924, 126, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2, 0),
(925, 126, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2, 0),
(926, 126, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2, 0),
(927, 126, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2, 0),
(928, 126, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2, 0),
(929, 126, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2, 0),
(930, 126, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2, 0),
(931, 126, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2, 0),
(932, 126, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2, 0),
(933, 126, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2, 0),
(934, 126, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2, 0),
(935, 126, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2, 0),
(936, 126, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2, 0),
(937, 126, NULL, NULL, 1.00000, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2, 0),
(938, 127, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 1, 2, 0),
(939, 127, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 2, 2, 0),
(940, 127, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 3, 2, 0),
(941, 127, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 4, 2, 0),
(942, 127, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 5, 2, 0),
(943, 127, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 6, 2, 0),
(944, 127, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 7, 2, 0),
(945, 127, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 8, 2, 0),
(946, 127, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 9, 2, 0),
(947, 127, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 10, 2, 0),
(948, 127, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 11, 2, 0),
(949, 127, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 14, 2, 0),
(950, 127, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 15, 2, 0),
(951, 127, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 17, 2, 0),
(952, 127, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 18, 2, 0),
(953, 127, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 19, 2, 0),
(954, 127, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 20, 2, 0),
(955, 127, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 21, 2, 0),
(956, 128, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 1, 2, 0),
(957, 128, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 2, 2, 0),
(958, 128, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 3, 2, 0),
(959, 128, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 4, 2, 0),
(960, 128, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 5, 2, 0),
(961, 128, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 6, 2, 0),
(962, 128, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 7, 2, 0),
(963, 128, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 8, 2, 0),
(964, 128, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 9, 2, 0),
(965, 128, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 10, 2, 0),
(966, 128, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 11, 2, 0),
(967, 128, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 14, 2, 0),
(968, 128, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 15, 2, 0),
(969, 128, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 17, 2, 0),
(970, 128, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 18, 2, 0),
(971, 128, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 19, 2, 0),
(972, 128, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 20, 2, 0),
(973, 128, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 21, 2, 0),
(974, 129, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 1, 2, 0),
(975, 129, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 2, 2, 0),
(976, 129, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 3, 2, 0),
(977, 129, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 4, 2, 0),
(978, 129, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 5, 2, 0),
(979, 129, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 6, 2, 0),
(980, 129, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 7, 2, 0),
(981, 129, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 8, 2, 0),
(982, 129, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 9, 2, 0),
(983, 129, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 10, 2, 0),
(984, 129, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 11, 2, 0),
(985, 129, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 14, 2, 0),
(986, 129, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 15, 2, 0),
(987, 129, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 17, 2, 0),
(988, 129, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 18, 2, 0),
(989, 129, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 19, 2, 0),
(990, 129, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 20, 2, 0),
(991, 129, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 21, 2, 0),
(992, 130, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 1, 2, 0),
(993, 130, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 2, 2, 0),
(994, 130, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 3, 2, 0),
(995, 130, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 4, 2, 0),
(996, 130, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 5, 2, 0),
(997, 130, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 6, 2, 0),
(998, 130, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 7, 2, 0),
(999, 130, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 8, 2, 0),
(1000, 130, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 9, 2, 0),
(1001, 130, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 10, 2, 0),
(1002, 130, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 11, 2, 0),
(1003, 130, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 14, 2, 0),
(1004, 130, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 15, 2, 0),
(1005, 130, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 17, 2, 0),
(1006, 130, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 18, 2, 0),
(1007, 130, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 19, 2, 0),
(1008, 130, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 20, 2, 0),
(1009, 130, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 21, 2, 0),
(1010, 131, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 1, 2, 0),
(1011, 131, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 2, 2, 0),
(1012, 131, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 3, 2, 0),
(1013, 131, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 4, 2, 0),
(1014, 131, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 5, 2, 0),
(1015, 131, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 6, 2, 0),
(1016, 131, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 7, 2, 0),
(1017, 131, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 8, 2, 0),
(1018, 131, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 9, 2, 0),
(1019, 131, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 10, 2, 0),
(1020, 131, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 11, 2, 0),
(1021, 131, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 14, 2, 0),
(1022, 131, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 15, 2, 0),
(1023, 131, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 17, 2, 0),
(1024, 131, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 18, 2, 0),
(1025, 131, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 19, 2, 0),
(1026, 131, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 20, 2, 0),
(1027, 131, NULL, NULL, 1.00000, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 21, 2, 0),
(1028, 108, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 1, 2, 0),
(1029, 108, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 2, 2, 0),
(1030, 108, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 3, 2, 0),
(1031, 108, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 4, 2, 0),
(1032, 108, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 5, 2, 0),
(1033, 108, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 6, 2, 0),
(1034, 108, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 7, 2, 0),
(1035, 108, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 8, 2, 0),
(1036, 108, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 9, 2, 0),
(1037, 108, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 10, 2, 0),
(1038, 108, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 11, 2, 0),
(1039, 108, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 14, 2, 0),
(1040, 108, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 15, 2, 0),
(1041, 108, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 17, 2, 0),
(1042, 108, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 18, 2, 0),
(1043, 108, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 19, 2, 0),
(1044, 108, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 20, 2, 0),
(1045, 108, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 21, 2, 0),
(1046, 109, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 1, 2, 0),
(1047, 109, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 2, 2, 0),
(1048, 109, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 3, 2, 0),
(1049, 109, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 4, 2, 0),
(1050, 109, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 5, 2, 0),
(1051, 109, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 6, 2, 0),
(1052, 109, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 7, 2, 0),
(1053, 109, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 8, 2, 0),
(1054, 109, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 9, 2, 0),
(1055, 109, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 10, 2, 0),
(1056, 109, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 11, 2, 0),
(1057, 109, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 14, 2, 0),
(1058, 109, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 15, 2, 0),
(1059, 109, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 17, 2, 0),
(1060, 109, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 18, 2, 0),
(1061, 109, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 19, 2, 0),
(1062, 109, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 20, 2, 0),
(1063, 109, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 21, 2, 0),
(1064, 110, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 1, 2, 0),
(1065, 110, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 2, 2, 0),
(1066, 110, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 3, 2, 0),
(1067, 110, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 4, 2, 0),
(1068, 110, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 5, 2, 0),
(1069, 110, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 6, 2, 0),
(1070, 110, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 7, 2, 0),
(1071, 110, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 8, 2, 0),
(1072, 110, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 9, 2, 0),
(1073, 110, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 10, 2, 0),
(1074, 110, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 11, 2, 0),
(1075, 110, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 14, 2, 0),
(1076, 110, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 15, 2, 0),
(1077, 110, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 17, 2, 0),
(1078, 110, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 18, 2, 0),
(1079, 110, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 19, 2, 0),
(1080, 110, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 20, 2, 0),
(1081, 110, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 21, 2, 0),
(1082, 111, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 1, 2, 0),
(1083, 111, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 2, 2, 0),
(1084, 111, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 3, 2, 0),
(1085, 111, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 4, 2, 0),
(1086, 111, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 5, 2, 0),
(1087, 111, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 6, 2, 0),
(1088, 111, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 7, 2, 0),
(1089, 111, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 8, 2, 0),
(1090, 111, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 9, 2, 0),
(1091, 111, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 10, 2, 0),
(1092, 111, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 11, 2, 0),
(1093, 111, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 14, 2, 0),
(1094, 111, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 15, 2, 0),
(1095, 111, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 17, 2, 0),
(1096, 111, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 18, 2, 0),
(1097, 111, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 19, 2, 0),
(1098, 111, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 20, 2, 0),
(1099, 111, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 21, 2, 0),
(1100, 112, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 1, 2, 0),
(1101, 112, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 2, 2, 0),
(1102, 112, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 3, 2, 0),
(1103, 112, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 4, 2, 0),
(1104, 112, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 5, 2, 0),
(1105, 112, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 6, 2, 0),
(1106, 112, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 7, 2, 0),
(1107, 112, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 8, 2, 0),
(1108, 112, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 9, 2, 0),
(1109, 112, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 10, 2, 0),
(1110, 112, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 11, 2, 0),
(1111, 112, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 14, 2, 0),
(1112, 112, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 15, 2, 0),
(1113, 112, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 17, 2, 0),
(1114, 112, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 18, 2, 0),
(1115, 112, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 19, 2, 0),
(1116, 112, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 20, 2, 0),
(1117, 112, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 21, 2, 0),
(1118, 113, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 1, 2, 0),
(1119, 113, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 2, 2, 0),
(1120, 113, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 3, 2, 0),
(1121, 113, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 4, 2, 0),
(1122, 113, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 5, 2, 0),
(1123, 113, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 6, 2, 0),
(1124, 113, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 7, 2, 0),
(1125, 113, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 8, 2, 0),
(1126, 113, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 9, 2, 0),
(1127, 113, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 10, 2, 0),
(1128, 113, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 11, 2, 0),
(1129, 113, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 14, 2, 0),
(1130, 113, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 15, 2, 0),
(1131, 113, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 17, 2, 0),
(1132, 113, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 18, 2, 0),
(1133, 113, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 19, 2, 0),
(1134, 113, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 20, 2, 0),
(1135, 113, NULL, NULL, 1.00000, '2024-05-22 05:28:50', '2024-05-22 05:28:50', 21, 2, 0);

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
(20, 4, NULL, 0.00000, NULL, '2024-03-25 05:36:19', '2024-03-25 05:36:19', 9, 2),
(21, 4, NULL, 0.00000, NULL, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 10, 2),
(22, 4, NULL, 0.00000, NULL, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 11, 2),
(23, 17, NULL, 0.00000, NULL, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 10, 2),
(24, 17, NULL, 0.00000, NULL, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 11, 2),
(25, 18, NULL, 0.08260, NULL, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 10, 2),
(26, 18, NULL, 0.12060, NULL, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 11, 2),
(27, 20, NULL, 0.08260, NULL, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 10, 2),
(28, 20, NULL, 0.12060, NULL, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 11, 2),
(29, 21, NULL, 0.08260, NULL, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 10, 2),
(30, 21, NULL, 0.12060, NULL, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 11, 2),
(31, 4, NULL, 0.05370, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2),
(32, 4, NULL, 0.08780, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2),
(33, 4, NULL, 0.14040, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2),
(34, 5, NULL, 0.05370, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2),
(35, 5, NULL, 0.08780, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2),
(36, 5, NULL, 0.14040, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2),
(37, 6, NULL, 0.05370, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2),
(38, 6, NULL, 0.08780, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2),
(39, 6, NULL, 0.14040, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2),
(40, 7, NULL, 0.05370, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2),
(41, 7, NULL, 0.08780, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2),
(42, 7, NULL, 0.14040, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2),
(43, 8, NULL, 0.05370, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2),
(44, 8, NULL, 0.08780, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2),
(45, 8, NULL, 0.14040, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2),
(46, 10, NULL, 0.05370, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2),
(47, 10, NULL, 0.08780, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2),
(48, 10, NULL, 0.14040, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2),
(49, 18, NULL, 0.17290, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 14, 2),
(50, 18, NULL, 0.24160, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 15, 2),
(51, 18, NULL, 0.32690, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2),
(52, 18, NULL, 0.42530, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2),
(53, 18, NULL, 0.53010, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2),
(54, 20, NULL, 0.17290, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 14, 2),
(55, 20, NULL, 0.24160, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 15, 2),
(56, 20, NULL, 0.32690, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2),
(57, 20, NULL, 0.42530, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2),
(58, 20, NULL, 0.53010, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2),
(59, 21, NULL, 0.17290, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 14, 2),
(60, 21, NULL, 0.24160, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 15, 2),
(61, 21, NULL, 0.32690, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2),
(62, 21, NULL, 0.42530, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2),
(63, 21, NULL, 0.53010, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2),
(64, 4, NULL, 0.00000, NULL, '2024-05-03 01:54:16', '2024-05-03 01:54:16', 14, 2),
(65, 4, NULL, 0.00000, NULL, '2024-05-03 01:54:16', '2024-05-03 01:54:16', 15, 2),
(66, 17, NULL, 0.00000, NULL, '2024-05-03 02:23:21', '2024-05-03 02:23:21', 14, 2),
(67, 17, NULL, 0.00000, NULL, '2024-05-03 02:23:21', '2024-05-03 02:23:21', 15, 2),
(68, 17, NULL, 0.00000, NULL, '2024-05-03 02:23:21', '2024-05-03 02:23:21', 17, 2),
(69, 17, NULL, 0.00000, NULL, '2024-05-03 02:23:21', '2024-05-03 02:23:21', 18, 2),
(70, 17, NULL, 0.00000, NULL, '2024-05-03 02:23:21', '2024-05-03 02:23:21', 19, 2),
(71, 19, NULL, 0.00000, NULL, '2024-05-03 02:23:21', '2024-05-03 02:23:21', 18, 2),
(72, 19, NULL, 0.00000, NULL, '2024-05-03 02:23:21', '2024-05-03 02:23:21', 19, 2),
(73, 22, NULL, 0.00000, NULL, '2024-05-03 02:23:21', '2024-05-03 02:23:21', 15, 2),
(74, 22, NULL, 0.00000, NULL, '2024-05-03 02:23:21', '2024-05-03 02:23:21', 17, 2),
(75, 22, NULL, 0.00000, NULL, '2024-05-03 02:23:21', '2024-05-03 02:23:21', 18, 2),
(76, 22, NULL, 0.00000, NULL, '2024-05-03 02:23:21', '2024-05-03 02:23:21', 19, 2),
(77, 15, NULL, 0.00000, NULL, '2024-05-03 02:23:21', '2024-05-03 02:23:21', 15, 2),
(78, 15, NULL, 0.00000, NULL, '2024-05-03 02:23:21', '2024-05-03 02:23:21', 17, 2),
(79, 15, NULL, 0.00000, NULL, '2024-05-03 02:23:21', '2024-05-03 02:23:21', 18, 2),
(80, 15, NULL, 0.00000, NULL, '2024-05-03 02:23:21', '2024-05-03 02:23:21', 19, 2),
(81, 16, NULL, 0.00000, NULL, '2024-05-03 02:23:21', '2024-05-03 02:23:21', 15, 2),
(82, 16, NULL, 0.00000, NULL, '2024-05-03 02:23:21', '2024-05-03 02:23:21', 17, 2),
(83, 16, NULL, 0.00000, NULL, '2024-05-03 02:23:21', '2024-05-03 02:23:21', 18, 2),
(84, 16, NULL, 0.00000, NULL, '2024-05-03 02:23:21', '2024-05-03 02:23:21', 19, 2),
(85, 31, NULL, 0.00000, NULL, '2024-05-03 02:29:23', '2024-05-03 02:29:23', 19, 2),
(86, 46, NULL, 0.00000, NULL, '2024-05-03 02:35:15', '2024-05-03 02:35:15', 18, 2),
(87, 46, NULL, 0.00000, NULL, '2024-05-03 02:35:15', '2024-05-03 02:35:15', 19, 2),
(88, 4, NULL, 0.21700, NULL, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2),
(89, 17, NULL, 0.00000, NULL, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2),
(90, 19, NULL, 0.00000, NULL, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2),
(91, 22, NULL, 0.00000, NULL, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2),
(92, 15, NULL, 0.00000, NULL, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2),
(93, 16, NULL, 0.00000, NULL, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2),
(94, 5, NULL, 0.21700, NULL, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2),
(95, 6, NULL, 0.21700, NULL, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2),
(96, 7, NULL, 0.21700, NULL, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2),
(97, 8, NULL, 0.21700, NULL, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2),
(98, 10, NULL, 0.21700, NULL, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2),
(99, 18, NULL, 0.63220, NULL, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2),
(100, 20, NULL, 0.63220, NULL, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2),
(101, 21, NULL, 0.63220, NULL, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2),
(102, 31, NULL, 0.00000, NULL, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2),
(103, 46, NULL, 0.00000, NULL, '2024-05-20 06:01:35', '2024-05-20 06:01:35', 20, 2),
(104, 4, NULL, 0.31970, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(105, 17, NULL, 0.09090, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(106, 19, NULL, 0.09090, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(107, 22, NULL, 0.09090, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(108, 15, NULL, 0.09090, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(109, 16, NULL, 0.09090, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(110, 5, NULL, 0.31970, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(111, 6, NULL, 0.31970, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(112, 7, NULL, 0.31970, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(113, 8, NULL, 0.31970, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(114, 10, NULL, 0.31970, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(115, 18, NULL, 0.72380, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(116, 20, NULL, 0.72380, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(117, 21, NULL, 0.72380, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(118, 31, NULL, 0.00000, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(119, 46, NULL, 0.00000, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(120, 1, NULL, 0.09090, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(121, 2, NULL, 0.09090, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(122, 3, NULL, 0.09090, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(123, 9, NULL, 0.09090, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(124, 11, NULL, 0.09090, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(125, 12, NULL, 0.09090, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(126, 13, NULL, 0.09090, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(127, 14, NULL, 0.09090, NULL, '2024-05-20 06:04:52', '2024-05-20 06:04:52', 21, 2),
(128, 79, NULL, 1.00000, NULL, '2024-05-21 03:45:39', '2024-05-21 03:45:39', 1, 2),
(129, 79, NULL, 1.00000, NULL, '2024-05-21 03:45:39', '2024-05-21 03:45:39', 2, 2),
(130, 79, NULL, 1.00000, NULL, '2024-05-21 03:45:39', '2024-05-21 03:45:39', 3, 2),
(131, 79, NULL, 1.00000, NULL, '2024-05-21 03:45:39', '2024-05-21 03:45:39', 4, 2),
(132, 79, NULL, 1.00000, NULL, '2024-05-21 03:45:39', '2024-05-21 03:45:39', 5, 2),
(133, 79, NULL, 1.00000, NULL, '2024-05-21 03:45:39', '2024-05-21 03:45:39', 6, 2),
(134, 79, NULL, 1.00000, NULL, '2024-05-21 03:45:39', '2024-05-21 03:45:39', 7, 2),
(135, 79, NULL, 1.00000, NULL, '2024-05-21 03:45:39', '2024-05-21 03:45:39', 8, 2),
(136, 79, NULL, 1.00000, NULL, '2024-05-21 03:45:39', '2024-05-21 03:45:39', 9, 2),
(137, 79, NULL, 1.00000, NULL, '2024-05-21 03:45:39', '2024-05-21 03:45:39', 10, 2),
(138, 79, NULL, 1.00000, NULL, '2024-05-21 03:45:39', '2024-05-21 03:45:39', 11, 2),
(139, 79, NULL, 1.00000, NULL, '2024-05-21 03:45:39', '2024-05-21 03:45:39', 14, 2),
(140, 79, NULL, 1.00000, NULL, '2024-05-21 03:45:39', '2024-05-21 03:45:39', 15, 2),
(141, 79, NULL, 1.00000, NULL, '2024-05-21 03:45:39', '2024-05-21 03:45:39', 17, 2),
(142, 79, NULL, 1.00000, NULL, '2024-05-21 03:45:39', '2024-05-21 03:45:39', 18, 2),
(143, 79, NULL, 1.00000, NULL, '2024-05-21 03:45:39', '2024-05-21 03:45:39', 19, 2),
(144, 79, NULL, 1.00000, NULL, '2024-05-21 03:45:39', '2024-05-21 03:45:39', 20, 2),
(145, 79, NULL, 1.00000, NULL, '2024-05-21 03:45:39', '2024-05-21 03:45:39', 21, 2),
(164, 80, NULL, 1.00000, NULL, '2024-05-21 07:27:14', '2024-05-21 07:27:14', 1, 2),
(165, 80, NULL, 1.00000, NULL, '2024-05-21 07:27:14', '2024-05-21 07:27:14', 2, 2),
(166, 80, NULL, 1.00000, NULL, '2024-05-21 07:27:14', '2024-05-21 07:27:14', 3, 2),
(167, 80, NULL, 1.00000, NULL, '2024-05-21 07:27:14', '2024-05-21 07:27:14', 4, 2),
(168, 80, NULL, 1.00000, NULL, '2024-05-21 07:27:14', '2024-05-21 07:27:14', 5, 2),
(169, 80, NULL, 1.00000, NULL, '2024-05-21 07:27:14', '2024-05-21 07:27:14', 6, 2),
(170, 80, NULL, 1.00000, NULL, '2024-05-21 07:27:14', '2024-05-21 07:27:14', 7, 2),
(171, 80, NULL, 1.00000, NULL, '2024-05-21 07:27:14', '2024-05-21 07:27:14', 8, 2),
(172, 80, NULL, 1.00000, NULL, '2024-05-21 07:27:14', '2024-05-21 07:27:14', 9, 2),
(173, 80, NULL, 1.00000, NULL, '2024-05-21 07:27:14', '2024-05-21 07:27:14', 10, 2),
(174, 80, NULL, 1.00000, NULL, '2024-05-21 07:27:14', '2024-05-21 07:27:14', 11, 2),
(175, 80, NULL, 1.00000, NULL, '2024-05-21 07:27:14', '2024-05-21 07:27:14', 14, 2),
(176, 80, NULL, 1.00000, NULL, '2024-05-21 07:27:14', '2024-05-21 07:27:14', 15, 2),
(177, 80, NULL, 1.00000, NULL, '2024-05-21 07:27:14', '2024-05-21 07:27:14', 17, 2),
(178, 80, NULL, 1.00000, NULL, '2024-05-21 07:27:14', '2024-05-21 07:27:14', 18, 2),
(179, 80, NULL, 1.00000, NULL, '2024-05-21 07:27:14', '2024-05-21 07:27:14', 19, 2),
(180, 80, NULL, 1.00000, NULL, '2024-05-21 07:27:14', '2024-05-21 07:27:14', 20, 2),
(181, 80, NULL, 1.00000, NULL, '2024-05-21 07:27:14', '2024-05-21 07:27:14', 21, 2),
(182, 81, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 1, 2),
(183, 81, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 2, 2),
(184, 81, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 3, 2),
(185, 81, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 4, 2),
(186, 81, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 5, 2),
(187, 81, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 6, 2),
(188, 81, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 7, 2),
(189, 81, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 8, 2),
(190, 81, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 9, 2),
(191, 81, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 10, 2),
(192, 81, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 11, 2),
(193, 81, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 14, 2),
(194, 81, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 15, 2),
(195, 81, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 17, 2),
(196, 81, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 18, 2),
(197, 81, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 19, 2),
(198, 81, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 20, 2),
(199, 81, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 21, 2),
(200, 82, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 1, 2),
(201, 82, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 2, 2),
(202, 82, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 3, 2),
(203, 82, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 4, 2),
(204, 82, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 5, 2),
(205, 82, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 6, 2),
(206, 82, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 7, 2),
(207, 82, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 8, 2),
(208, 82, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 9, 2),
(209, 82, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 10, 2),
(210, 82, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 11, 2),
(211, 82, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 14, 2),
(212, 82, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 15, 2),
(213, 82, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 17, 2),
(214, 82, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 18, 2),
(215, 82, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 19, 2),
(216, 82, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 20, 2),
(217, 82, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 21, 2),
(218, 83, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 1, 2),
(219, 83, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 2, 2),
(220, 83, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 3, 2),
(221, 83, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 4, 2),
(222, 83, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 5, 2),
(223, 83, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 6, 2),
(224, 83, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 7, 2),
(225, 83, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 8, 2),
(226, 83, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 9, 2),
(227, 83, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 10, 2),
(228, 83, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 11, 2),
(229, 83, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 14, 2),
(230, 83, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 15, 2),
(231, 83, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 17, 2),
(232, 83, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 18, 2),
(233, 83, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 19, 2),
(234, 83, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 20, 2),
(235, 83, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 21, 2),
(236, 84, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 1, 2),
(237, 84, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 2, 2),
(238, 84, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 3, 2),
(239, 84, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 4, 2),
(240, 84, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 5, 2),
(241, 84, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 6, 2),
(242, 84, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 7, 2),
(243, 84, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 8, 2),
(244, 84, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 9, 2),
(245, 84, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 10, 2),
(246, 84, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 11, 2),
(247, 84, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 14, 2),
(248, 84, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 15, 2),
(249, 84, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 17, 2),
(250, 84, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 18, 2),
(251, 84, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 19, 2),
(252, 84, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 20, 2),
(253, 84, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 21, 2),
(254, 85, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 1, 2),
(255, 85, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 2, 2),
(256, 85, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 3, 2),
(257, 85, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 4, 2),
(258, 85, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 5, 2),
(259, 85, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 6, 2),
(260, 85, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 7, 2),
(261, 85, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 8, 2),
(262, 85, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 9, 2),
(263, 85, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 10, 2),
(264, 85, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 11, 2),
(265, 85, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 14, 2),
(266, 85, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 15, 2),
(267, 85, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 17, 2),
(268, 85, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 18, 2),
(269, 85, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 19, 2),
(270, 85, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 20, 2),
(271, 85, NULL, 1.00000, NULL, '2024-05-21 07:38:19', '2024-05-21 07:38:19', 21, 2),
(272, 86, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 1, 2),
(273, 86, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 2, 2),
(274, 86, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 3, 2),
(275, 86, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 4, 2),
(276, 86, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 5, 2),
(277, 86, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 6, 2),
(278, 86, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 7, 2),
(279, 86, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 8, 2),
(280, 86, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 9, 2),
(281, 86, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 10, 2),
(282, 86, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 11, 2),
(283, 86, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 14, 2),
(284, 86, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 15, 2),
(285, 86, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 17, 2),
(286, 86, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 18, 2),
(287, 86, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 19, 2),
(288, 86, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 20, 2),
(289, 86, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 21, 2),
(290, 87, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 1, 2),
(291, 87, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 2, 2),
(292, 87, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 3, 2),
(293, 87, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 4, 2),
(294, 87, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 5, 2),
(295, 87, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 6, 2),
(296, 87, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 7, 2),
(297, 87, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 8, 2),
(298, 87, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 9, 2),
(299, 87, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 10, 2),
(300, 87, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 11, 2),
(301, 87, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 14, 2),
(302, 87, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 15, 2),
(303, 87, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 17, 2),
(304, 87, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 18, 2),
(305, 87, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 19, 2),
(306, 87, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 20, 2),
(307, 87, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 21, 2),
(308, 88, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 1, 2),
(309, 88, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 2, 2),
(310, 88, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 3, 2),
(311, 88, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 4, 2),
(312, 88, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 5, 2),
(313, 88, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 6, 2),
(314, 88, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 7, 2),
(315, 88, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 8, 2),
(316, 88, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 9, 2),
(317, 88, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 10, 2),
(318, 88, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 11, 2),
(319, 88, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 14, 2),
(320, 88, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 15, 2),
(321, 88, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 17, 2),
(322, 88, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 18, 2),
(323, 88, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 19, 2),
(324, 88, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 20, 2),
(325, 88, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 21, 2),
(326, 89, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 1, 2),
(327, 89, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 2, 2),
(328, 89, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 3, 2),
(329, 89, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 4, 2),
(330, 89, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 5, 2),
(331, 89, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 6, 2),
(332, 89, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 7, 2),
(333, 89, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 8, 2),
(334, 89, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 9, 2),
(335, 89, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 10, 2),
(336, 89, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 11, 2),
(337, 89, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 14, 2),
(338, 89, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 15, 2),
(339, 89, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 17, 2),
(340, 89, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 18, 2),
(341, 89, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 19, 2),
(342, 89, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 20, 2),
(343, 89, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 21, 2),
(344, 90, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 1, 2),
(345, 90, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 2, 2),
(346, 90, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 3, 2),
(347, 90, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 4, 2),
(348, 90, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 5, 2),
(349, 90, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 6, 2),
(350, 90, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 7, 2),
(351, 90, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 8, 2),
(352, 90, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 9, 2),
(353, 90, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 10, 2),
(354, 90, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 11, 2),
(355, 90, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 14, 2),
(356, 90, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 15, 2),
(357, 90, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 17, 2),
(358, 90, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 18, 2),
(359, 90, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 19, 2),
(360, 90, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 20, 2),
(361, 90, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 21, 2),
(362, 91, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 1, 2),
(363, 91, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 2, 2),
(364, 91, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 3, 2),
(365, 91, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 4, 2),
(366, 91, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 5, 2),
(367, 91, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 6, 2),
(368, 91, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 7, 2),
(369, 91, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 8, 2),
(370, 91, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 9, 2),
(371, 91, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 10, 2),
(372, 91, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 11, 2),
(373, 91, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 14, 2),
(374, 91, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 15, 2),
(375, 91, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 17, 2),
(376, 91, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 18, 2),
(377, 91, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 19, 2),
(378, 91, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 20, 2),
(379, 91, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 21, 2),
(380, 92, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 1, 2),
(381, 92, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 2, 2),
(382, 92, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 3, 2),
(383, 92, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 4, 2),
(384, 92, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 5, 2),
(385, 92, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 6, 2),
(386, 92, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 7, 2),
(387, 92, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 8, 2),
(388, 92, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 9, 2),
(389, 92, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 10, 2),
(390, 92, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 11, 2),
(391, 92, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 14, 2),
(392, 92, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 15, 2),
(393, 92, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 17, 2),
(394, 92, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 18, 2),
(395, 92, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 19, 2),
(396, 92, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 20, 2),
(397, 92, NULL, 1.00000, NULL, '2024-05-21 08:13:43', '2024-05-21 08:13:43', 21, 2),
(398, 132, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 1, 2),
(399, 132, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 2, 2),
(400, 132, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 3, 2),
(401, 132, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 4, 2),
(402, 132, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 5, 2),
(403, 132, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 6, 2),
(404, 132, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 7, 2),
(405, 132, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 8, 2),
(406, 132, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 9, 2),
(407, 132, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 10, 2),
(408, 132, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 11, 2),
(409, 132, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 14, 2),
(410, 132, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 15, 2),
(411, 132, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 17, 2),
(412, 132, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 18, 2),
(413, 132, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 19, 2),
(414, 132, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 20, 2),
(415, 132, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 21, 2),
(416, 133, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 1, 2),
(417, 133, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 2, 2),
(418, 133, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 3, 2),
(419, 133, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 4, 2),
(420, 133, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 5, 2),
(421, 133, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 6, 2),
(422, 133, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 7, 2),
(423, 133, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 8, 2),
(424, 133, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 9, 2),
(425, 133, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 10, 2),
(426, 133, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 11, 2),
(427, 133, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 14, 2),
(428, 133, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 15, 2),
(429, 133, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 17, 2),
(430, 133, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 18, 2),
(431, 133, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 19, 2),
(432, 133, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 20, 2),
(433, 133, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 21, 2),
(434, 134, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 1, 2),
(435, 134, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 2, 2),
(436, 134, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 3, 2),
(437, 134, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 4, 2),
(438, 134, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 5, 2),
(439, 134, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 6, 2),
(440, 134, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 7, 2),
(441, 134, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 8, 2),
(442, 134, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 9, 2),
(443, 134, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 10, 2),
(444, 134, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 11, 2),
(445, 134, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 14, 2),
(446, 134, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 15, 2),
(447, 134, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 17, 2),
(448, 134, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 18, 2),
(449, 134, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 19, 2),
(450, 134, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 20, 2),
(451, 134, NULL, 1.00000, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 21, 2),
(452, 93, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2),
(453, 93, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2),
(454, 93, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2),
(455, 93, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2),
(456, 93, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2),
(457, 93, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2),
(458, 93, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2),
(459, 93, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2),
(460, 93, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2),
(461, 93, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2),
(462, 93, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2),
(463, 93, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2),
(464, 93, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2),
(465, 93, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2),
(466, 93, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2),
(467, 93, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2),
(468, 93, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2),
(469, 93, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2),
(470, 94, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2),
(471, 94, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2),
(472, 94, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2),
(473, 94, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2),
(474, 94, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2),
(475, 94, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2),
(476, 94, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2),
(477, 94, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2),
(478, 94, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2),
(479, 94, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2),
(480, 94, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2),
(481, 94, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2),
(482, 94, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2),
(483, 94, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2),
(484, 94, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2),
(485, 94, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2),
(486, 94, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2),
(487, 94, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2),
(488, 95, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2),
(489, 95, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2),
(490, 95, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2),
(491, 95, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2),
(492, 95, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2),
(493, 95, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2),
(494, 95, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2),
(495, 95, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2),
(496, 95, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2),
(497, 95, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2),
(498, 95, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2),
(499, 95, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2),
(500, 95, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2),
(501, 95, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2),
(502, 95, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2),
(503, 95, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2),
(504, 95, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2),
(505, 95, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2),
(506, 96, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2),
(507, 96, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2),
(508, 96, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2),
(509, 96, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2),
(510, 96, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2),
(511, 96, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2),
(512, 96, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2),
(513, 96, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2),
(514, 96, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2),
(515, 96, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2),
(516, 96, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2),
(517, 96, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2),
(518, 96, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2),
(519, 96, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2),
(520, 96, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2),
(521, 96, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2),
(522, 96, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2),
(523, 96, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2),
(524, 97, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2),
(525, 97, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2),
(526, 97, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2),
(527, 97, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2),
(528, 97, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2),
(529, 97, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2),
(530, 97, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2),
(531, 97, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2),
(532, 97, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2),
(533, 97, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2),
(534, 97, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2),
(535, 97, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2),
(536, 97, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2),
(537, 97, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2),
(538, 97, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2),
(539, 97, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2),
(540, 97, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2),
(541, 97, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2),
(542, 98, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2),
(543, 98, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2),
(544, 98, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2),
(545, 98, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2),
(546, 98, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2),
(547, 98, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2),
(548, 98, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2),
(549, 98, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2),
(550, 98, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2),
(551, 98, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2),
(552, 98, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2),
(553, 98, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2),
(554, 98, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2),
(555, 98, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2),
(556, 98, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2),
(557, 98, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2),
(558, 98, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2),
(559, 98, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2),
(560, 99, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2),
(561, 99, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2),
(562, 99, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2),
(563, 99, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2),
(564, 99, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2),
(565, 99, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2),
(566, 99, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2),
(567, 99, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2),
(568, 99, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2),
(569, 99, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2),
(570, 99, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2),
(571, 99, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2),
(572, 99, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2),
(573, 99, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2),
(574, 99, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2),
(575, 99, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2),
(576, 99, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2),
(577, 99, NULL, 1.00000, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2),
(578, 100, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2),
(579, 100, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2),
(580, 100, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2),
(581, 100, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2),
(582, 100, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2),
(583, 100, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2),
(584, 100, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2),
(585, 100, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2),
(586, 100, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2),
(587, 100, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2),
(588, 100, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2),
(589, 100, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2),
(590, 100, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2),
(591, 100, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2),
(592, 100, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2),
(593, 100, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2),
(594, 100, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2),
(595, 100, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2),
(596, 101, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2),
(597, 101, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2),
(598, 101, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2),
(599, 101, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2),
(600, 101, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2),
(601, 101, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2),
(602, 101, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2),
(603, 101, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2),
(604, 101, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2),
(605, 101, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2),
(606, 101, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2),
(607, 101, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2),
(608, 101, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2),
(609, 101, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2),
(610, 101, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2),
(611, 101, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2),
(612, 101, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2),
(613, 101, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2),
(614, 102, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2),
(615, 102, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2),
(616, 102, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2),
(617, 102, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2),
(618, 102, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2),
(619, 102, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2),
(620, 102, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2),
(621, 102, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2);
INSERT INTO `pv_expected_progress` (`expected_progress_id`, `pv_id`, `parameter_id`, `progress_percentage`, `calculation_date`, `last_update`, `create_at`, `pv_week_id`, `user_id`) VALUES
(622, 102, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2),
(623, 102, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2),
(624, 102, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2),
(625, 102, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2),
(626, 102, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2),
(627, 102, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2),
(628, 102, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2),
(629, 102, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2),
(630, 102, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2),
(631, 102, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2),
(632, 103, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2),
(633, 103, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2),
(634, 103, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2),
(635, 103, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2),
(636, 103, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2),
(637, 103, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2),
(638, 103, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2),
(639, 103, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2),
(640, 103, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2),
(641, 103, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2),
(642, 103, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2),
(643, 103, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2),
(644, 103, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2),
(645, 103, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2),
(646, 103, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2),
(647, 103, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2),
(648, 103, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2),
(649, 103, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2),
(650, 104, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2),
(651, 104, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2),
(652, 104, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2),
(653, 104, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2),
(654, 104, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2),
(655, 104, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2),
(656, 104, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2),
(657, 104, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2),
(658, 104, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2),
(659, 104, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2),
(660, 104, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2),
(661, 104, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2),
(662, 104, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2),
(663, 104, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2),
(664, 104, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2),
(665, 104, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2),
(666, 104, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2),
(667, 104, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2),
(668, 105, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2),
(669, 105, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2),
(670, 105, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2),
(671, 105, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2),
(672, 105, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2),
(673, 105, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2),
(674, 105, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2),
(675, 105, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2),
(676, 105, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2),
(677, 105, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2),
(678, 105, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2),
(679, 105, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2),
(680, 105, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2),
(681, 105, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2),
(682, 105, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2),
(683, 105, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2),
(684, 105, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2),
(685, 105, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2),
(686, 106, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2),
(687, 106, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2),
(688, 106, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2),
(689, 106, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2),
(690, 106, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2),
(691, 106, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2),
(692, 106, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2),
(693, 106, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2),
(694, 106, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2),
(695, 106, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2),
(696, 106, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2),
(697, 106, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2),
(698, 106, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2),
(699, 106, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2),
(700, 106, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2),
(701, 106, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2),
(702, 106, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2),
(703, 106, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2),
(704, 107, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2),
(705, 107, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2),
(706, 107, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2),
(707, 107, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2),
(708, 107, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2),
(709, 107, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2),
(710, 107, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2),
(711, 107, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2),
(712, 107, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2),
(713, 107, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2),
(714, 107, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2),
(715, 107, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2),
(716, 107, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2),
(717, 107, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2),
(718, 107, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2),
(719, 107, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2),
(720, 107, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2),
(721, 107, NULL, 1.00000, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2),
(722, 114, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2),
(723, 114, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2),
(724, 114, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2),
(725, 114, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2),
(726, 114, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2),
(727, 114, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2),
(728, 114, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2),
(729, 114, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2),
(730, 114, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2),
(731, 114, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2),
(732, 114, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2),
(733, 114, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2),
(734, 114, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2),
(735, 114, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2),
(736, 114, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2),
(737, 114, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2),
(738, 114, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2),
(739, 114, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2),
(740, 115, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2),
(741, 115, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2),
(742, 115, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2),
(743, 115, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2),
(744, 115, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2),
(745, 115, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2),
(746, 115, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2),
(747, 115, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2),
(748, 115, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2),
(749, 115, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2),
(750, 115, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2),
(751, 115, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2),
(752, 115, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2),
(753, 115, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2),
(754, 115, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2),
(755, 115, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2),
(756, 115, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2),
(757, 115, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2),
(758, 116, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2),
(759, 116, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2),
(760, 116, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2),
(761, 116, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2),
(762, 116, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2),
(763, 116, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2),
(764, 116, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2),
(765, 116, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2),
(766, 116, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2),
(767, 116, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2),
(768, 116, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2),
(769, 116, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2),
(770, 116, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2),
(771, 116, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2),
(772, 116, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2),
(773, 116, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2),
(774, 116, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2),
(775, 116, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2),
(776, 117, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2),
(777, 117, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2),
(778, 117, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2),
(779, 117, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2),
(780, 117, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2),
(781, 117, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2),
(782, 117, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2),
(783, 117, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2),
(784, 117, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2),
(785, 117, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2),
(786, 117, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2),
(787, 117, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2),
(788, 117, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2),
(789, 117, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2),
(790, 117, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2),
(791, 117, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2),
(792, 117, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2),
(793, 117, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2),
(794, 118, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2),
(795, 118, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2),
(796, 118, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2),
(797, 118, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2),
(798, 118, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2),
(799, 118, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2),
(800, 118, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2),
(801, 118, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2),
(802, 118, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2),
(803, 118, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2),
(804, 118, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2),
(805, 118, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2),
(806, 118, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2),
(807, 118, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2),
(808, 118, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2),
(809, 118, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2),
(810, 118, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2),
(811, 118, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2),
(812, 119, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2),
(813, 119, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2),
(814, 119, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2),
(815, 119, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2),
(816, 119, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2),
(817, 119, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2),
(818, 119, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2),
(819, 119, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2),
(820, 119, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2),
(821, 119, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2),
(822, 119, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2),
(823, 119, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2),
(824, 119, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2),
(825, 119, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2),
(826, 119, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2),
(827, 119, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2),
(828, 119, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2),
(829, 119, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2),
(830, 120, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2),
(831, 120, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2),
(832, 120, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2),
(833, 120, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2),
(834, 120, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2),
(835, 120, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2),
(836, 120, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2),
(837, 120, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2),
(838, 120, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2),
(839, 120, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2),
(840, 120, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2),
(841, 120, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2),
(842, 120, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2),
(843, 120, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2),
(844, 120, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2),
(845, 120, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2),
(846, 120, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2),
(847, 120, NULL, 1.00000, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2),
(848, 121, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2),
(849, 121, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2),
(850, 121, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2),
(851, 121, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2),
(852, 121, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2),
(853, 121, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2),
(854, 121, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2),
(855, 121, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2),
(856, 121, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2),
(857, 121, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2),
(858, 121, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2),
(859, 121, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2),
(860, 121, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2),
(861, 121, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2),
(862, 121, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2),
(863, 121, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2),
(864, 121, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2),
(865, 121, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2),
(866, 122, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2),
(867, 122, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2),
(868, 122, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2),
(869, 122, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2),
(870, 122, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2),
(871, 122, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2),
(872, 122, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2),
(873, 122, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2),
(874, 122, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2),
(875, 122, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2),
(876, 122, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2),
(877, 122, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2),
(878, 122, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2),
(879, 122, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2),
(880, 122, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2),
(881, 122, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2),
(882, 122, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2),
(883, 122, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2),
(884, 123, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2),
(885, 123, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2),
(886, 123, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2),
(887, 123, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2),
(888, 123, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2),
(889, 123, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2),
(890, 123, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2),
(891, 123, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2),
(892, 123, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2),
(893, 123, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2),
(894, 123, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2),
(895, 123, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2),
(896, 123, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2),
(897, 123, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2),
(898, 123, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2),
(899, 123, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2),
(900, 123, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2),
(901, 123, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2),
(902, 124, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2),
(903, 124, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2),
(904, 124, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2),
(905, 124, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2),
(906, 124, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2),
(907, 124, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2),
(908, 124, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2),
(909, 124, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2),
(910, 124, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2),
(911, 124, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2),
(912, 124, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2),
(913, 124, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2),
(914, 124, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2),
(915, 124, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2),
(916, 124, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2),
(917, 124, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2),
(918, 124, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2),
(919, 124, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2),
(920, 125, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2),
(921, 125, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2),
(922, 125, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2),
(923, 125, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2),
(924, 125, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2),
(925, 125, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2),
(926, 125, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2),
(927, 125, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2),
(928, 125, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2),
(929, 125, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2),
(930, 125, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2),
(931, 125, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2),
(932, 125, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2),
(933, 125, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2),
(934, 125, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2),
(935, 125, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2),
(936, 125, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2),
(937, 125, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2),
(938, 126, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2),
(939, 126, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2),
(940, 126, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2),
(941, 126, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2),
(942, 126, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2),
(943, 126, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2),
(944, 126, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2),
(945, 126, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2),
(946, 126, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2),
(947, 126, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2),
(948, 126, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2),
(949, 126, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2),
(950, 126, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2),
(951, 126, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2),
(952, 126, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2),
(953, 126, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2),
(954, 126, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2),
(955, 126, NULL, 1.00000, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2),
(956, 127, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 1, 2),
(957, 127, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 2, 2),
(958, 127, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 3, 2),
(959, 127, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 4, 2),
(960, 127, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 5, 2),
(961, 127, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 6, 2),
(962, 127, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 7, 2),
(963, 127, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 8, 2),
(964, 127, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 9, 2),
(965, 127, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 10, 2),
(966, 127, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 11, 2),
(967, 127, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 14, 2),
(968, 127, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 15, 2),
(969, 127, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 17, 2),
(970, 127, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 18, 2),
(971, 127, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 19, 2),
(972, 127, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 20, 2),
(973, 127, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 21, 2),
(974, 128, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 1, 2),
(975, 128, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 2, 2),
(976, 128, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 3, 2),
(977, 128, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 4, 2),
(978, 128, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 5, 2),
(979, 128, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 6, 2),
(980, 128, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 7, 2),
(981, 128, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 8, 2),
(982, 128, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 9, 2),
(983, 128, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 10, 2),
(984, 128, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 11, 2),
(985, 128, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 14, 2),
(986, 128, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 15, 2),
(987, 128, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 17, 2),
(988, 128, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 18, 2),
(989, 128, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 19, 2),
(990, 128, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 20, 2),
(991, 128, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 21, 2),
(992, 129, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 1, 2),
(993, 129, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 2, 2),
(994, 129, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 3, 2),
(995, 129, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 4, 2),
(996, 129, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 5, 2),
(997, 129, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 6, 2),
(998, 129, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 7, 2),
(999, 129, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 8, 2),
(1000, 129, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 9, 2),
(1001, 129, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 10, 2),
(1002, 129, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 11, 2),
(1003, 129, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 14, 2),
(1004, 129, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 15, 2),
(1005, 129, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 17, 2),
(1006, 129, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 18, 2),
(1007, 129, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 19, 2),
(1008, 129, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 20, 2),
(1009, 129, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 21, 2),
(1010, 130, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 1, 2),
(1011, 130, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 2, 2),
(1012, 130, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 3, 2),
(1013, 130, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 4, 2),
(1014, 130, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 5, 2),
(1015, 130, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 6, 2),
(1016, 130, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 7, 2),
(1017, 130, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 8, 2),
(1018, 130, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 9, 2),
(1019, 130, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 10, 2),
(1020, 130, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 11, 2),
(1021, 130, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 14, 2),
(1022, 130, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 15, 2),
(1023, 130, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 17, 2),
(1024, 130, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 18, 2),
(1025, 130, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 19, 2),
(1026, 130, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 20, 2),
(1027, 130, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 21, 2),
(1028, 131, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 1, 2),
(1029, 131, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 2, 2),
(1030, 131, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 3, 2),
(1031, 131, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 4, 2),
(1032, 131, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 5, 2),
(1033, 131, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 6, 2),
(1034, 131, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 7, 2),
(1035, 131, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 8, 2),
(1036, 131, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 9, 2),
(1037, 131, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 10, 2),
(1038, 131, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 11, 2),
(1039, 131, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 14, 2),
(1040, 131, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 15, 2),
(1041, 131, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 17, 2),
(1042, 131, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 18, 2),
(1043, 131, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 19, 2),
(1044, 131, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 20, 2),
(1045, 131, NULL, 1.00000, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 21, 2),
(1046, 108, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 1, 2),
(1047, 108, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 2, 2),
(1048, 108, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 3, 2),
(1049, 108, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 4, 2),
(1050, 108, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 5, 2),
(1051, 108, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 6, 2),
(1052, 108, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 7, 2),
(1053, 108, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 8, 2),
(1054, 108, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 9, 2),
(1055, 108, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 10, 2),
(1056, 108, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 11, 2),
(1057, 108, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 14, 2),
(1058, 108, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 15, 2),
(1059, 108, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 17, 2),
(1060, 108, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 18, 2),
(1061, 108, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 19, 2),
(1062, 108, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 20, 2),
(1063, 108, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 21, 2),
(1064, 109, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 1, 2),
(1065, 109, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 2, 2),
(1066, 109, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 3, 2),
(1067, 109, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 4, 2),
(1068, 109, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 5, 2),
(1069, 109, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 6, 2),
(1070, 109, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 7, 2),
(1071, 109, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 8, 2),
(1072, 109, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 9, 2),
(1073, 109, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 10, 2),
(1074, 109, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 11, 2),
(1075, 109, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 14, 2),
(1076, 109, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 15, 2),
(1077, 109, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 17, 2),
(1078, 109, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 18, 2),
(1079, 109, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 19, 2),
(1080, 109, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 20, 2),
(1081, 109, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 21, 2),
(1082, 110, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 1, 2),
(1083, 110, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 2, 2),
(1084, 110, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 3, 2),
(1085, 110, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 4, 2),
(1086, 110, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 5, 2),
(1087, 110, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 6, 2),
(1088, 110, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 7, 2),
(1089, 110, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 8, 2),
(1090, 110, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 9, 2),
(1091, 110, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 10, 2),
(1092, 110, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 11, 2),
(1093, 110, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 14, 2),
(1094, 110, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 15, 2),
(1095, 110, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 17, 2),
(1096, 110, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 18, 2),
(1097, 110, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 19, 2),
(1098, 110, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 20, 2),
(1099, 110, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 21, 2),
(1100, 111, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 1, 2),
(1101, 111, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 2, 2),
(1102, 111, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 3, 2),
(1103, 111, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 4, 2),
(1104, 111, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 5, 2),
(1105, 111, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 6, 2),
(1106, 111, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 7, 2),
(1107, 111, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 8, 2),
(1108, 111, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 9, 2),
(1109, 111, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 10, 2),
(1110, 111, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 11, 2),
(1111, 111, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 14, 2),
(1112, 111, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 15, 2),
(1113, 111, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 17, 2),
(1114, 111, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 18, 2),
(1115, 111, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 19, 2),
(1116, 111, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 20, 2),
(1117, 111, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 21, 2),
(1118, 112, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 1, 2),
(1119, 112, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 2, 2),
(1120, 112, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 3, 2),
(1121, 112, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 4, 2),
(1122, 112, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 5, 2),
(1123, 112, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 6, 2),
(1124, 112, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 7, 2),
(1125, 112, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 8, 2),
(1126, 112, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 9, 2),
(1127, 112, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 10, 2),
(1128, 112, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 11, 2),
(1129, 112, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 14, 2),
(1130, 112, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 15, 2),
(1131, 112, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 17, 2),
(1132, 112, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 18, 2),
(1133, 112, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 19, 2),
(1134, 112, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 20, 2),
(1135, 112, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 21, 2),
(1136, 113, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 1, 2),
(1137, 113, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 2, 2),
(1138, 113, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 3, 2),
(1139, 113, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 4, 2),
(1140, 113, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 5, 2),
(1141, 113, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 6, 2),
(1142, 113, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 7, 2),
(1143, 113, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 8, 2),
(1144, 113, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 9, 2),
(1145, 113, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 10, 2),
(1146, 113, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 11, 2),
(1147, 113, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 14, 2),
(1148, 113, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 15, 2),
(1149, 113, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 17, 2),
(1150, 113, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 18, 2),
(1151, 113, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 19, 2),
(1152, 113, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 20, 2),
(1153, 113, NULL, 1.00000, NULL, '2024-05-22 05:32:30', '2024-05-22 05:32:30', 21, 2);

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
(20, 4, NULL, 0.10500, NULL, NULL, NULL, '2024-03-25 05:36:19', '2024-03-25 05:36:19', 9, 2),
(21, 4, NULL, 0.10500, NULL, NULL, NULL, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 10, 2),
(22, 4, NULL, 0.58000, NULL, NULL, NULL, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 11, 2),
(23, 17, NULL, 0.73900, NULL, NULL, NULL, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 10, 2),
(24, 17, NULL, 0.74100, NULL, NULL, NULL, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 11, 2),
(25, 18, NULL, 0.00000, NULL, NULL, NULL, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 10, 2),
(26, 18, NULL, 0.00000, NULL, NULL, NULL, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 11, 2),
(27, 20, NULL, 0.00000, NULL, NULL, NULL, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 10, 2),
(28, 20, NULL, 0.00000, NULL, NULL, NULL, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 11, 2),
(29, 21, NULL, 0.00000, NULL, NULL, NULL, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 10, 2),
(30, 21, NULL, 0.00000, NULL, NULL, NULL, '2024-04-03 06:53:28', '2024-04-03 06:53:28', 11, 2),
(31, 4, NULL, 0.58000, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 14, 2),
(32, 4, NULL, 0.62100, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 15, 2),
(33, 4, NULL, 0.72200, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2),
(34, 4, NULL, 0.75600, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2),
(35, 4, NULL, 0.75800, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2),
(36, 17, NULL, 0.74100, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 14, 2),
(37, 17, NULL, 0.74550, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 15, 2),
(38, 17, NULL, 0.74550, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2),
(39, 17, NULL, 0.74550, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2),
(40, 17, NULL, 0.74550, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2),
(41, 19, NULL, 0.00530, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2),
(42, 19, NULL, 0.10510, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2),
(43, 22, NULL, 0.10500, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 15, 2),
(44, 22, NULL, 0.10500, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2),
(45, 22, NULL, 0.10500, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2),
(46, 22, NULL, 0.10500, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2),
(47, 15, NULL, 0.57300, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 15, 2),
(48, 15, NULL, 0.57300, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2),
(49, 15, NULL, 0.57300, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2),
(50, 15, NULL, 0.57300, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2),
(51, 16, NULL, 0.11110, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 15, 2),
(52, 16, NULL, 0.18250, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 17, 2),
(53, 16, NULL, 0.57300, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 18, 2),
(54, 16, NULL, 0.57300, NULL, NULL, NULL, '2024-05-03 01:28:10', '2024-05-03 01:28:10', 19, 2),
(55, 4, NULL, 0.58000, NULL, NULL, NULL, '2024-05-03 01:46:18', '2024-05-03 01:46:18', 14, 2),
(56, 4, NULL, 0.62100, NULL, NULL, NULL, '2024-05-03 01:46:18', '2024-05-03 01:46:18', 15, 2),
(57, 5, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 17, 2),
(58, 5, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 18, 2),
(59, 5, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 19, 2),
(60, 6, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 17, 2),
(61, 6, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 18, 2),
(62, 6, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 19, 2),
(63, 7, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 17, 2),
(64, 7, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 18, 2),
(65, 7, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 19, 2),
(66, 8, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 17, 2),
(67, 8, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 18, 2),
(68, 8, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 19, 2),
(69, 10, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 17, 2),
(70, 10, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 18, 2),
(71, 10, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:02:47', '2024-05-03 02:02:47', 19, 2),
(72, 18, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 14, 2),
(73, 18, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 15, 2),
(74, 18, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 17, 2),
(75, 18, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 18, 2),
(76, 18, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 19, 2),
(77, 20, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 14, 2),
(78, 20, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 15, 2),
(79, 20, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 17, 2),
(80, 20, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 18, 2),
(81, 20, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 19, 2),
(82, 21, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 14, 2),
(83, 21, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 15, 2),
(84, 21, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 17, 2),
(85, 21, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 18, 2),
(86, 21, NULL, 0.00000, NULL, NULL, NULL, '2024-05-03 02:14:30', '2024-05-03 02:14:30', 19, 2),
(87, 31, NULL, 0.09450, NULL, NULL, NULL, '2024-05-03 02:29:23', '2024-05-03 02:29:23', 19, 2),
(88, 46, NULL, 0.01050, NULL, NULL, NULL, '2024-05-03 02:35:15', '2024-05-03 02:35:15', 18, 2),
(89, 46, NULL, 0.08930, NULL, NULL, NULL, '2024-05-03 02:35:15', '2024-05-03 02:35:15', 19, 2),
(90, 4, NULL, 0.75800, NULL, NULL, NULL, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2),
(91, 17, NULL, 0.74550, NULL, NULL, NULL, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2),
(92, 19, NULL, 0.10510, NULL, NULL, NULL, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2),
(93, 22, NULL, 0.18050, NULL, NULL, NULL, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2),
(94, 15, NULL, 0.57300, NULL, NULL, NULL, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2),
(95, 16, NULL, 0.58350, NULL, NULL, NULL, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2),
(96, 5, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2),
(97, 6, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2),
(98, 7, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2),
(99, 8, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2),
(100, 10, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2),
(101, 18, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2),
(102, 20, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2),
(103, 21, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2),
(104, 31, NULL, 0.10500, NULL, NULL, NULL, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2),
(105, 46, NULL, 0.10500, NULL, NULL, NULL, '2024-05-20 05:59:02', '2024-05-20 05:59:02', 20, 2),
(106, 4, NULL, 0.75840, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(107, 17, NULL, 0.74550, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(108, 19, NULL, 0.10510, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(109, 22, NULL, 0.18050, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(110, 15, NULL, 0.58100, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(111, 16, NULL, 0.59150, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(112, 5, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(113, 6, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(114, 7, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(115, 8, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(116, 10, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(117, 18, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(118, 20, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(119, 21, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(120, 31, NULL, 0.10500, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(121, 46, NULL, 0.10500, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(122, 1, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(123, 2, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(124, 3, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(125, 9, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(126, 11, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(127, 12, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(128, 13, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(129, 14, NULL, 0.00000, NULL, NULL, NULL, '2024-05-20 06:03:20', '2024-05-20 06:03:20', 21, 2),
(130, 79, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 03:44:07', '2024-05-21 03:44:07', 1, 2),
(131, 79, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 03:44:07', '2024-05-21 03:44:07', 2, 2),
(132, 79, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 03:44:07', '2024-05-21 03:44:07', 3, 2),
(133, 79, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 03:44:07', '2024-05-21 03:44:07', 4, 2),
(134, 79, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 03:44:07', '2024-05-21 03:44:07', 5, 2),
(135, 79, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 03:44:07', '2024-05-21 03:44:07', 6, 2),
(136, 79, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 03:44:07', '2024-05-21 03:44:07', 7, 2),
(137, 79, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 03:44:07', '2024-05-21 03:44:07', 8, 2),
(138, 79, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 03:44:07', '2024-05-21 03:44:07', 9, 2),
(139, 79, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 03:44:07', '2024-05-21 03:44:07', 10, 2),
(140, 79, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 03:44:07', '2024-05-21 03:44:07', 11, 2),
(141, 79, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 03:44:07', '2024-05-21 03:44:07', 14, 2),
(142, 79, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 03:44:07', '2024-05-21 03:44:07', 15, 2),
(143, 79, NULL, 0.93350, NULL, NULL, NULL, '2024-05-21 03:44:07', '2024-05-21 03:44:07', 17, 2),
(144, 79, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 03:44:07', '2024-05-21 03:44:07', 18, 2),
(145, 79, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 03:44:07', '2024-05-21 03:44:07', 19, 2),
(146, 79, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 03:44:07', '2024-05-21 03:44:07', 20, 2),
(147, 79, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 03:44:07', '2024-05-21 03:44:07', 21, 2),
(166, 80, NULL, 0.93050, NULL, NULL, NULL, '2024-05-21 07:25:28', '2024-05-21 07:25:28', 1, 2),
(167, 80, NULL, 0.93050, NULL, NULL, NULL, '2024-05-21 07:25:28', '2024-05-21 07:25:28', 2, 2),
(168, 80, NULL, 0.93050, NULL, NULL, NULL, '2024-05-21 07:25:28', '2024-05-21 07:25:28', 3, 2),
(169, 80, NULL, 0.93050, NULL, NULL, NULL, '2024-05-21 07:25:28', '2024-05-21 07:25:28', 4, 2),
(170, 80, NULL, 0.93050, NULL, NULL, NULL, '2024-05-21 07:25:28', '2024-05-21 07:25:28', 5, 2),
(171, 80, NULL, 0.93050, NULL, NULL, NULL, '2024-05-21 07:25:28', '2024-05-21 07:25:28', 6, 2),
(172, 80, NULL, 0.93050, NULL, NULL, NULL, '2024-05-21 07:25:28', '2024-05-21 07:25:28', 7, 2),
(173, 80, NULL, 0.93050, NULL, NULL, NULL, '2024-05-21 07:25:28', '2024-05-21 07:25:28', 8, 2),
(174, 80, NULL, 0.93200, NULL, NULL, NULL, '2024-05-21 07:25:28', '2024-05-21 07:25:28', 9, 2),
(175, 80, NULL, 0.93200, NULL, NULL, NULL, '2024-05-21 07:25:28', '2024-05-21 07:25:28', 10, 2),
(176, 80, NULL, 0.93200, NULL, NULL, NULL, '2024-05-21 07:25:28', '2024-05-21 07:25:28', 11, 2),
(177, 80, NULL, 0.93200, NULL, NULL, NULL, '2024-05-21 07:25:28', '2024-05-21 07:25:28', 14, 2),
(178, 80, NULL, 0.93200, NULL, NULL, NULL, '2024-05-21 07:25:28', '2024-05-21 07:25:28', 15, 2),
(179, 80, NULL, 0.93650, NULL, NULL, NULL, '2024-05-21 07:25:28', '2024-05-21 07:25:28', 17, 2),
(180, 80, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 07:25:28', '2024-05-21 07:25:28', 18, 2),
(181, 80, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 07:25:28', '2024-05-21 07:25:28', 19, 2),
(182, 80, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 07:25:28', '2024-05-21 07:25:28', 20, 2),
(183, 80, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 07:25:28', '2024-05-21 07:25:28', 21, 2),
(184, 81, NULL, 0.97750, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 1, 2),
(185, 81, NULL, 0.97750, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 2, 2),
(186, 81, NULL, 0.97750, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 3, 2),
(187, 81, NULL, 0.97750, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 4, 2),
(188, 81, NULL, 0.97750, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 5, 2),
(189, 81, NULL, 0.97750, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 6, 2),
(190, 81, NULL, 0.97750, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 7, 2),
(191, 81, NULL, 0.97750, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 8, 2),
(192, 81, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 9, 2),
(193, 81, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 10, 2),
(194, 81, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 11, 2),
(195, 81, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 14, 2),
(196, 81, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 15, 2),
(197, 81, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 17, 2),
(198, 81, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 18, 2),
(199, 81, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 19, 2),
(200, 81, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 20, 2),
(201, 81, NULL, 0.98350, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 21, 2),
(202, 82, NULL, 0.93500, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 1, 2),
(203, 82, NULL, 0.93500, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 2, 2),
(204, 82, NULL, 0.94850, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 3, 2),
(205, 82, NULL, 0.98000, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 4, 2),
(206, 82, NULL, 0.98000, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 5, 2),
(207, 82, NULL, 0.98000, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 6, 2),
(208, 82, NULL, 0.98000, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 7, 2),
(209, 82, NULL, 0.98000, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 8, 2),
(210, 82, NULL, 0.98000, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 9, 2),
(211, 82, NULL, 0.98000, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 10, 2),
(212, 82, NULL, 0.98000, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 11, 2),
(213, 82, NULL, 0.98000, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 14, 2),
(214, 82, NULL, 0.98000, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 15, 2),
(215, 82, NULL, 0.98000, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 17, 2),
(216, 82, NULL, 0.98030, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 18, 2),
(217, 82, NULL, 0.98030, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 19, 2),
(218, 82, NULL, 0.98030, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 20, 2),
(219, 82, NULL, 0.98300, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 21, 2),
(220, 83, NULL, 0.92300, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 1, 2),
(221, 83, NULL, 0.92300, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 2, 2),
(222, 83, NULL, 0.92300, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 3, 2),
(223, 83, NULL, 0.96800, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 4, 2),
(224, 83, NULL, 0.96800, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 5, 2),
(225, 83, NULL, 0.96800, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 6, 2),
(226, 83, NULL, 0.96800, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 7, 2),
(227, 83, NULL, 0.96800, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 8, 2),
(228, 83, NULL, 0.97100, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 9, 2),
(229, 83, NULL, 0.97100, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 10, 2),
(230, 83, NULL, 0.97100, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 11, 2),
(231, 83, NULL, 0.97100, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 14, 2),
(232, 83, NULL, 0.97100, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 15, 2),
(233, 83, NULL, 0.97100, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 17, 2),
(234, 83, NULL, 0.97100, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 18, 2),
(235, 83, NULL, 0.97100, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 19, 2),
(236, 83, NULL, 0.97100, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 20, 2),
(237, 83, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 21, 2),
(238, 84, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 1, 2),
(239, 84, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 2, 2),
(240, 84, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 3, 2),
(241, 84, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 4, 2),
(242, 84, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 5, 2),
(243, 84, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 6, 2),
(244, 84, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 7, 2),
(245, 84, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 8, 2),
(246, 84, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 9, 2),
(247, 84, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 10, 2),
(248, 84, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 11, 2),
(249, 84, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 14, 2),
(250, 84, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 15, 2),
(251, 84, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 17, 2),
(252, 84, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 18, 2),
(253, 84, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 19, 2),
(254, 84, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 20, 2),
(255, 84, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 21, 2),
(256, 85, NULL, 0.93550, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 1, 2),
(257, 85, NULL, 0.93550, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 2, 2),
(258, 85, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 3, 2),
(259, 85, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 4, 2),
(260, 85, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 5, 2),
(261, 85, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 6, 2),
(262, 85, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 7, 2),
(263, 85, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 8, 2),
(264, 85, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 9, 2),
(265, 85, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 10, 2),
(266, 85, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 11, 2),
(267, 85, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 14, 2),
(268, 85, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 15, 2),
(269, 85, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 17, 2),
(270, 85, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 18, 2),
(271, 85, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 19, 2),
(272, 85, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 20, 2),
(273, 85, NULL, 0.98050, NULL, NULL, NULL, '2024-05-21 07:37:32', '2024-05-21 07:37:32', 21, 2),
(274, 86, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 1, 2),
(275, 86, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 2, 2),
(276, 86, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 3, 2),
(277, 86, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 4, 2),
(278, 86, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 5, 2),
(279, 86, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 6, 2),
(280, 86, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 7, 2),
(281, 86, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 8, 2),
(282, 86, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 9, 2),
(283, 86, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 10, 2),
(284, 86, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 11, 2),
(285, 86, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 14, 2),
(286, 86, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 15, 2),
(287, 86, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 17, 2),
(288, 86, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 18, 2),
(289, 86, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 19, 2),
(290, 86, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 20, 2),
(291, 86, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 21, 2),
(292, 87, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 1, 2),
(293, 87, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 2, 2),
(294, 87, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 3, 2),
(295, 87, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 4, 2),
(296, 87, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 5, 2),
(297, 87, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 6, 2),
(298, 87, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 7, 2),
(299, 87, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 8, 2),
(300, 87, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 9, 2),
(301, 87, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 10, 2),
(302, 87, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 11, 2),
(303, 87, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 14, 2),
(304, 87, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 15, 2),
(305, 87, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 17, 2),
(306, 87, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 18, 2),
(307, 87, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 19, 2),
(308, 87, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 20, 2),
(309, 87, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 21, 2),
(310, 88, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 1, 2),
(311, 88, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 2, 2),
(312, 88, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 3, 2),
(313, 88, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 4, 2),
(314, 88, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 5, 2),
(315, 88, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 6, 2),
(316, 88, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 7, 2),
(317, 88, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 8, 2),
(318, 88, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 9, 2),
(319, 88, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 10, 2),
(320, 88, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 11, 2),
(321, 88, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 14, 2),
(322, 88, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 15, 2),
(323, 88, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 17, 2),
(324, 88, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 18, 2),
(325, 88, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 19, 2),
(326, 88, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 20, 2),
(327, 88, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 21, 2),
(328, 89, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 1, 2),
(329, 89, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 2, 2),
(330, 89, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 3, 2),
(331, 89, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 4, 2),
(332, 89, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 5, 2),
(333, 89, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 6, 2),
(334, 89, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 7, 2),
(335, 89, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 8, 2),
(336, 89, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 9, 2),
(337, 89, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 10, 2),
(338, 89, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 11, 2),
(339, 89, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 14, 2),
(340, 89, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 15, 2),
(341, 89, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 17, 2),
(342, 89, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 18, 2),
(343, 89, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 19, 2),
(344, 89, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 20, 2),
(345, 89, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 21, 2),
(346, 90, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 1, 2),
(347, 90, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 2, 2),
(348, 90, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 3, 2),
(349, 90, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 4, 2),
(350, 90, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 5, 2),
(351, 90, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 6, 2),
(352, 90, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 7, 2),
(353, 90, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 8, 2),
(354, 90, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 9, 2),
(355, 90, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 10, 2),
(356, 90, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 11, 2),
(357, 90, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 14, 2),
(358, 90, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 15, 2),
(359, 90, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 17, 2),
(360, 90, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 18, 2),
(361, 90, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 19, 2),
(362, 90, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 20, 2),
(363, 90, NULL, 0.93800, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 21, 2),
(364, 91, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 1, 2),
(365, 91, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 2, 2),
(366, 91, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 3, 2),
(367, 91, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 4, 2),
(368, 91, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 5, 2),
(369, 91, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 6, 2),
(370, 91, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 7, 2),
(371, 91, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 8, 2),
(372, 91, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 9, 2),
(373, 91, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 10, 2),
(374, 91, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 11, 2),
(375, 91, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 14, 2),
(376, 91, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 15, 2),
(377, 91, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 17, 2),
(378, 91, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 18, 2),
(379, 91, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 19, 2),
(380, 91, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 20, 2),
(381, 91, NULL, 0.93800, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 21, 2),
(382, 92, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 1, 2),
(383, 92, NULL, 0.92900, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 2, 2),
(384, 92, NULL, 0.92960, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 3, 2),
(385, 92, NULL, 0.92960, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 4, 2),
(386, 92, NULL, 0.92960, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 5, 2),
(387, 92, NULL, 0.92960, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 6, 2),
(388, 92, NULL, 0.92960, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 7, 2),
(389, 92, NULL, 0.92960, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 8, 2),
(390, 92, NULL, 0.92960, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 9, 2),
(391, 92, NULL, 0.92960, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 10, 2),
(392, 92, NULL, 0.92960, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 11, 2),
(393, 92, NULL, 0.92960, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 14, 2),
(394, 92, NULL, 0.92960, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 15, 2),
(395, 92, NULL, 0.92960, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 17, 2),
(396, 92, NULL, 0.92960, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 18, 2),
(397, 92, NULL, 0.92960, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 19, 2),
(398, 92, NULL, 0.92960, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 20, 2),
(399, 92, NULL, 0.96110, NULL, NULL, NULL, '2024-05-21 08:13:18', '2024-05-21 08:13:18', 21, 2),
(400, 132, NULL, 0.93575, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 1, 2),
(401, 132, NULL, 0.93575, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 2, 2),
(402, 132, NULL, 0.93635, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 3, 2),
(403, 132, NULL, 0.93635, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 4, 2),
(404, 132, NULL, 0.93635, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 5, 2),
(405, 132, NULL, 0.93635, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 6, 2),
(406, 132, NULL, 0.93635, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 7, 2),
(407, 132, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 8, 2),
(408, 132, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 9, 2),
(409, 132, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 10, 2),
(410, 132, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 11, 2),
(411, 132, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 14, 2),
(412, 132, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 15, 2),
(413, 132, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 17, 2),
(414, 132, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 18, 2),
(415, 132, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 19, 2),
(416, 132, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 20, 2),
(417, 132, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 21, 2),
(418, 133, NULL, 0.93800, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 1, 2),
(419, 133, NULL, 0.93800, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 2, 2),
(420, 133, NULL, 0.93860, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 3, 2),
(421, 133, NULL, 0.93860, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 4, 2),
(422, 133, NULL, 0.93860, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 5, 2),
(423, 133, NULL, 0.93860, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 6, 2),
(424, 133, NULL, 0.93860, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 7, 2),
(425, 133, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 8, 2),
(426, 133, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 9, 2),
(427, 133, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 10, 2),
(428, 133, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 11, 2),
(429, 133, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 14, 2),
(430, 133, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 15, 2),
(431, 133, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 17, 2),
(432, 133, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 18, 2),
(433, 133, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 19, 2),
(434, 133, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 20, 2),
(435, 133, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 21, 2),
(436, 134, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 1, 2),
(437, 134, NULL, 0.97400, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 2, 2),
(438, 134, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 3, 2),
(439, 134, NULL, 0.97460, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 4, 2),
(440, 134, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 5, 2),
(441, 134, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 6, 2),
(442, 134, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 7, 2),
(443, 134, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 8, 2),
(444, 134, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 9, 2),
(445, 134, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 10, 2),
(446, 134, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 11, 2),
(447, 134, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 14, 2),
(448, 134, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 15, 2),
(449, 134, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 17, 2),
(450, 134, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 18, 2),
(451, 134, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 19, 2),
(452, 134, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 20, 2),
(453, 134, NULL, 0.97465, NULL, NULL, NULL, '2024-05-21 08:26:38', '2024-05-21 08:26:38', 21, 2),
(454, 93, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2),
(455, 93, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2),
(456, 93, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2),
(457, 93, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2),
(458, 93, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2),
(459, 93, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2),
(460, 93, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2),
(461, 93, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2),
(462, 93, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2),
(463, 93, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2),
(464, 93, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2),
(465, 93, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2),
(466, 93, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2),
(467, 93, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2),
(468, 93, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2),
(469, 93, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2),
(470, 93, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2),
(471, 93, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2),
(472, 94, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2),
(473, 94, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2),
(474, 94, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2),
(475, 94, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2),
(476, 94, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2),
(477, 94, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2),
(478, 94, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2),
(479, 94, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2),
(480, 94, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2),
(481, 94, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2),
(482, 94, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2),
(483, 94, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2),
(484, 94, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2),
(485, 94, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2),
(486, 94, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2),
(487, 94, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2),
(488, 94, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2),
(489, 94, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2),
(490, 95, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2),
(491, 95, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2),
(492, 95, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2),
(493, 95, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2),
(494, 95, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2),
(495, 95, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2),
(496, 95, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2),
(497, 95, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2),
(498, 95, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2),
(499, 95, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2),
(500, 95, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2),
(501, 95, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2),
(502, 95, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2),
(503, 95, NULL, 0.98800, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2),
(504, 95, NULL, 0.98800, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2),
(505, 95, NULL, 0.98800, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2),
(506, 95, NULL, 0.98800, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2),
(507, 95, NULL, 0.98800, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2),
(508, 96, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2),
(509, 96, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2),
(510, 96, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2),
(511, 96, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2),
(512, 96, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2),
(513, 96, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2),
(514, 96, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2),
(515, 96, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2),
(516, 96, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2),
(517, 96, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2),
(518, 96, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2),
(519, 96, NULL, 0.98740, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2),
(520, 96, NULL, 0.98740, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2),
(521, 96, NULL, 0.98740, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2),
(522, 96, NULL, 0.98740, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2),
(523, 96, NULL, 0.98740, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2),
(524, 96, NULL, 0.98740, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2),
(525, 96, NULL, 0.98740, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2),
(526, 97, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2),
(527, 97, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2),
(528, 97, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2),
(529, 97, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2),
(530, 97, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2),
(531, 97, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2),
(532, 97, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2),
(533, 97, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2),
(534, 97, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2),
(535, 97, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2),
(536, 97, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2),
(537, 97, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2),
(538, 97, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2),
(539, 97, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2),
(540, 97, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2),
(541, 97, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2),
(542, 97, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2),
(543, 97, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2),
(544, 98, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2),
(545, 98, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2);
INSERT INTO `pv_progress` (`progress_id`, `pv_id`, `series_id`, `progress_percentage`, `supervisor`, `non_construction_reason`, `progress_calculation_description`, `last_update`, `create_at`, `pv_week_id`, `user_id`) VALUES
(546, 98, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2),
(547, 98, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2),
(548, 98, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2),
(549, 98, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2),
(550, 98, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2),
(551, 98, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2),
(552, 98, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2),
(553, 98, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2),
(554, 98, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2),
(555, 98, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2),
(556, 98, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2),
(557, 98, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2),
(558, 98, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2),
(559, 98, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2),
(560, 98, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2),
(561, 98, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2),
(562, 99, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 1, 2),
(563, 99, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 2, 2),
(564, 99, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 3, 2),
(565, 99, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 4, 2),
(566, 99, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 5, 2),
(567, 99, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 6, 2),
(568, 99, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 7, 2),
(569, 99, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 8, 2),
(570, 99, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 9, 2),
(571, 99, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 10, 2),
(572, 99, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 11, 2),
(573, 99, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 14, 2),
(574, 99, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 15, 2),
(575, 99, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 17, 2),
(576, 99, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 18, 2),
(577, 99, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 19, 2),
(578, 99, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 20, 2),
(579, 99, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 08:45:56', '2024-05-21 08:45:56', 21, 2),
(580, 100, NULL, 0.92180, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2),
(581, 100, NULL, 0.94430, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2),
(582, 100, NULL, 0.96680, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2),
(583, 100, NULL, 0.96680, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2),
(584, 100, NULL, 0.96680, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2),
(585, 100, NULL, 0.96680, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2),
(586, 100, NULL, 0.96680, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2),
(587, 100, NULL, 0.96680, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2),
(588, 100, NULL, 0.96680, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2),
(589, 100, NULL, 0.96680, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2),
(590, 100, NULL, 0.96680, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2),
(591, 100, NULL, 0.96680, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2),
(592, 100, NULL, 0.96680, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2),
(593, 100, NULL, 0.96680, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2),
(594, 100, NULL, 0.96680, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2),
(595, 100, NULL, 0.96680, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2),
(596, 100, NULL, 0.96680, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2),
(597, 100, NULL, 0.96680, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2),
(598, 101, NULL, 0.94940, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2),
(599, 101, NULL, 0.94940, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2),
(600, 101, NULL, 0.94940, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2),
(601, 101, NULL, 0.94940, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2),
(602, 101, NULL, 0.94940, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2),
(603, 101, NULL, 0.94940, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2),
(604, 101, NULL, 0.96740, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2),
(605, 101, NULL, 0.96740, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2),
(606, 101, NULL, 0.96740, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2),
(607, 101, NULL, 0.96740, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2),
(608, 101, NULL, 0.96740, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2),
(609, 101, NULL, 0.96740, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2),
(610, 101, NULL, 0.96740, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2),
(611, 101, NULL, 0.96740, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2),
(612, 101, NULL, 0.96740, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2),
(613, 101, NULL, 0.96740, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2),
(614, 101, NULL, 0.96740, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2),
(615, 101, NULL, 0.96740, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2),
(616, 102, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2),
(617, 102, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2),
(618, 102, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2),
(619, 102, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2),
(620, 102, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2),
(621, 102, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2),
(622, 102, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2),
(623, 102, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2),
(624, 102, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2),
(625, 102, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2),
(626, 102, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2),
(627, 102, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2),
(628, 102, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2),
(629, 102, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2),
(630, 102, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2),
(631, 102, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2),
(632, 102, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2),
(633, 102, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2),
(634, 103, NULL, 0.92500, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2),
(635, 103, NULL, 0.92500, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2),
(636, 103, NULL, 0.92500, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2),
(637, 103, NULL, 0.92500, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2),
(638, 103, NULL, 0.92500, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2),
(639, 103, NULL, 0.92500, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2),
(640, 103, NULL, 0.92500, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2),
(641, 103, NULL, 0.92500, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2),
(642, 103, NULL, 0.92500, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2),
(643, 103, NULL, 0.92500, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2),
(644, 103, NULL, 0.92500, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2),
(645, 103, NULL, 0.92500, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2),
(646, 103, NULL, 0.92500, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2),
(647, 103, NULL, 0.92500, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2),
(648, 103, NULL, 0.92500, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2),
(649, 103, NULL, 0.92500, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2),
(650, 103, NULL, 0.92500, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2),
(651, 103, NULL, 0.92500, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2),
(652, 104, NULL, 0.91190, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2),
(653, 104, NULL, 0.91190, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2),
(654, 104, NULL, 0.91190, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2),
(655, 104, NULL, 0.91190, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2),
(656, 104, NULL, 0.91190, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2),
(657, 104, NULL, 0.91190, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2),
(658, 104, NULL, 0.91190, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2),
(659, 104, NULL, 0.91190, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2),
(660, 104, NULL, 0.91240, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2),
(661, 104, NULL, 0.91240, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2),
(662, 104, NULL, 0.91240, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2),
(663, 104, NULL, 0.91240, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2),
(664, 104, NULL, 0.91240, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2),
(665, 104, NULL, 0.91240, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2),
(666, 104, NULL, 0.91240, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2),
(667, 104, NULL, 0.91240, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2),
(668, 104, NULL, 0.91240, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2),
(669, 104, NULL, 0.91240, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2),
(670, 105, NULL, 0.92300, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2),
(671, 105, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2),
(672, 105, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2),
(673, 105, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2),
(674, 105, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2),
(675, 105, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2),
(676, 105, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2),
(677, 105, NULL, 0.92350, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2),
(678, 105, NULL, 0.92375, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2),
(679, 105, NULL, 0.92375, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2),
(680, 105, NULL, 0.92375, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2),
(681, 105, NULL, 0.92375, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2),
(682, 105, NULL, 0.92375, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2),
(683, 105, NULL, 0.92375, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2),
(684, 105, NULL, 0.92375, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2),
(685, 105, NULL, 0.92375, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2),
(686, 105, NULL, 0.92375, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2),
(687, 105, NULL, 0.92375, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2),
(688, 106, NULL, 0.92400, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2),
(689, 106, NULL, 0.92400, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2),
(690, 106, NULL, 0.92450, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2),
(691, 106, NULL, 0.92450, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2),
(692, 106, NULL, 0.92450, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2),
(693, 106, NULL, 0.92450, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2),
(694, 106, NULL, 0.92450, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2),
(695, 106, NULL, 0.92450, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2),
(696, 106, NULL, 0.92450, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2),
(697, 106, NULL, 0.92450, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2),
(698, 106, NULL, 0.92450, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2),
(699, 106, NULL, 0.92450, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2),
(700, 106, NULL, 0.92450, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2),
(701, 106, NULL, 0.92450, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2),
(702, 106, NULL, 0.92450, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2),
(703, 106, NULL, 0.92450, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2),
(704, 106, NULL, 0.92450, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2),
(705, 106, NULL, 0.92450, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2),
(706, 107, NULL, 0.92180, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 1, 2),
(707, 107, NULL, 0.92180, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 2, 2),
(708, 107, NULL, 0.92230, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 3, 2),
(709, 107, NULL, 0.92230, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 4, 2),
(710, 107, NULL, 0.92230, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 5, 2),
(711, 107, NULL, 0.92230, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 6, 2),
(712, 107, NULL, 0.92230, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 7, 2),
(713, 107, NULL, 0.92230, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 8, 2),
(714, 107, NULL, 0.92230, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 9, 2),
(715, 107, NULL, 0.92230, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 10, 2),
(716, 107, NULL, 0.92230, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 11, 2),
(717, 107, NULL, 0.92230, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 14, 2),
(718, 107, NULL, 0.92230, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 15, 2),
(719, 107, NULL, 0.92230, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 17, 2),
(720, 107, NULL, 0.92230, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 18, 2),
(721, 107, NULL, 0.92230, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 19, 2),
(722, 107, NULL, 0.92230, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 20, 2),
(723, 107, NULL, 0.92230, NULL, NULL, NULL, '2024-05-21 09:03:55', '2024-05-21 09:03:55', 21, 2),
(724, 114, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2),
(725, 114, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2),
(726, 114, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2),
(727, 114, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2),
(728, 114, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2),
(729, 114, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2),
(730, 114, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2),
(731, 114, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2),
(732, 114, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2),
(733, 114, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2),
(734, 114, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2),
(735, 114, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2),
(736, 114, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2),
(737, 114, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2),
(738, 114, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2),
(739, 114, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2),
(740, 114, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2),
(741, 114, NULL, 0.98710, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2),
(742, 115, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2),
(743, 115, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2),
(744, 115, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2),
(745, 115, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2),
(746, 115, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2),
(747, 115, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2),
(748, 115, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2),
(749, 115, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2),
(750, 115, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2),
(751, 115, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2),
(752, 115, NULL, 0.98000, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2),
(753, 115, NULL, 0.98000, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2),
(754, 115, NULL, 0.98600, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2),
(755, 115, NULL, 0.98600, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2),
(756, 115, NULL, 0.98600, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2),
(757, 115, NULL, 0.98600, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2),
(758, 115, NULL, 0.98600, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2),
(759, 115, NULL, 0.98600, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2),
(760, 116, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2),
(761, 116, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2),
(762, 116, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2),
(763, 116, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2),
(764, 116, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2),
(765, 116, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2),
(766, 116, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2),
(767, 116, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2),
(768, 116, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2),
(769, 116, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2),
(770, 116, NULL, 0.98000, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2),
(771, 116, NULL, 0.98000, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2),
(772, 116, NULL, 0.98600, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2),
(773, 116, NULL, 0.98600, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2),
(774, 116, NULL, 0.98600, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2),
(775, 116, NULL, 0.98600, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2),
(776, 116, NULL, 0.98600, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2),
(777, 116, NULL, 0.98600, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2),
(778, 117, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2),
(779, 117, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2),
(780, 117, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2),
(781, 117, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2),
(782, 117, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2),
(783, 117, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2),
(784, 117, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2),
(785, 117, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2),
(786, 117, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2),
(787, 117, NULL, 0.97700, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2),
(788, 117, NULL, 0.98000, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2),
(789, 117, NULL, 0.98000, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2),
(790, 117, NULL, 0.98600, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2),
(791, 117, NULL, 0.98600, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2),
(792, 117, NULL, 0.98600, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2),
(793, 117, NULL, 0.98600, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2),
(794, 117, NULL, 0.98600, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2),
(795, 117, NULL, 0.98600, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2),
(796, 118, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2),
(797, 118, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2),
(798, 118, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2),
(799, 118, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2),
(800, 118, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2),
(801, 118, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2),
(802, 118, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2),
(803, 118, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2),
(804, 118, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2),
(805, 118, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2),
(806, 118, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2),
(807, 118, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2),
(808, 118, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2),
(809, 118, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2),
(810, 118, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2),
(811, 118, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2),
(812, 118, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2),
(813, 118, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2),
(814, 119, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2),
(815, 119, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2),
(816, 119, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2),
(817, 119, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2),
(818, 119, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2),
(819, 119, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2),
(820, 119, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2),
(821, 119, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2),
(822, 119, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2),
(823, 119, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2),
(824, 119, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2),
(825, 119, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2),
(826, 119, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2),
(827, 119, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2),
(828, 119, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2),
(829, 119, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2),
(830, 119, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2),
(831, 119, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2),
(832, 120, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 1, 2),
(833, 120, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 2, 2),
(834, 120, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 3, 2),
(835, 120, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 4, 2),
(836, 120, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 5, 2),
(837, 120, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 6, 2),
(838, 120, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 7, 2),
(839, 120, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 8, 2),
(840, 120, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 9, 2),
(841, 120, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 10, 2),
(842, 120, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 11, 2),
(843, 120, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 14, 2),
(844, 120, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 15, 2),
(845, 120, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 17, 2),
(846, 120, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 18, 2),
(847, 120, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 19, 2),
(848, 120, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 20, 2),
(849, 120, NULL, 0.97840, NULL, NULL, NULL, '2024-05-21 09:13:46', '2024-05-21 09:13:46', 21, 2),
(850, 121, NULL, 0.87100, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2),
(851, 121, NULL, 0.87100, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2),
(852, 121, NULL, 0.87100, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2),
(853, 121, NULL, 0.88450, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2),
(854, 121, NULL, 0.88450, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2),
(855, 121, NULL, 0.88450, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2),
(856, 121, NULL, 0.88550, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2),
(857, 121, NULL, 0.88550, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2),
(858, 121, NULL, 0.88550, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2),
(859, 121, NULL, 0.88550, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2),
(860, 121, NULL, 0.88550, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2),
(861, 121, NULL, 0.88550, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2),
(862, 121, NULL, 0.88700, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2),
(863, 121, NULL, 0.88700, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2),
(864, 121, NULL, 0.88700, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2),
(865, 121, NULL, 0.88700, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2),
(866, 121, NULL, 0.88700, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2),
(867, 121, NULL, 0.88700, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2),
(868, 122, NULL, 0.78170, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2),
(869, 122, NULL, 0.85980, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2),
(870, 122, NULL, 0.86900, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2),
(871, 122, NULL, 0.88600, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2),
(872, 122, NULL, 0.88600, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2),
(873, 122, NULL, 0.88600, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2),
(874, 122, NULL, 0.88650, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2),
(875, 122, NULL, 0.88650, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2),
(876, 122, NULL, 0.88650, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2),
(877, 122, NULL, 0.88650, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2),
(878, 122, NULL, 0.88850, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2),
(879, 122, NULL, 0.88850, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2),
(880, 122, NULL, 0.89000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2),
(881, 122, NULL, 0.89000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2),
(882, 122, NULL, 0.89000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2),
(883, 122, NULL, 0.89000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2),
(884, 122, NULL, 0.89000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2),
(885, 122, NULL, 0.89000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2),
(886, 123, NULL, 0.74670, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2),
(887, 123, NULL, 0.84980, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2),
(888, 123, NULL, 0.86400, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2),
(889, 123, NULL, 0.88600, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2),
(890, 123, NULL, 0.88600, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2),
(891, 123, NULL, 0.88600, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2),
(892, 123, NULL, 0.88650, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2),
(893, 123, NULL, 0.88650, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2),
(894, 123, NULL, 0.88650, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2),
(895, 123, NULL, 0.88650, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2),
(896, 123, NULL, 0.88850, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2),
(897, 123, NULL, 0.88850, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2),
(898, 123, NULL, 0.89000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2),
(899, 123, NULL, 0.89000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2),
(900, 123, NULL, 0.89000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2),
(901, 123, NULL, 0.89000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2),
(902, 123, NULL, 0.89000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2),
(903, 123, NULL, 0.89000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2),
(904, 124, NULL, 0.86050, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2),
(905, 124, NULL, 0.86050, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2),
(906, 124, NULL, 0.86050, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2),
(907, 124, NULL, 0.86050, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2),
(908, 124, NULL, 0.86050, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2),
(909, 124, NULL, 0.86050, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2),
(910, 124, NULL, 0.87550, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2),
(911, 124, NULL, 0.87550, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2),
(912, 124, NULL, 0.87550, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2),
(913, 124, NULL, 0.87550, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2),
(914, 124, NULL, 0.87550, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2),
(915, 124, NULL, 0.87550, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2),
(916, 124, NULL, 0.87550, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2),
(917, 124, NULL, 0.87550, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2),
(918, 124, NULL, 0.87550, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2),
(919, 124, NULL, 0.87550, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2),
(920, 124, NULL, 0.87550, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2),
(921, 124, NULL, 0.87550, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2),
(922, 125, NULL, 0.88650, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2),
(923, 125, NULL, 0.88650, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2),
(924, 125, NULL, 0.88650, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2),
(925, 125, NULL, 0.88650, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2),
(926, 125, NULL, 0.88650, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2),
(927, 125, NULL, 0.88650, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2),
(928, 125, NULL, 0.88650, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2),
(929, 125, NULL, 0.88650, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2),
(930, 125, NULL, 0.88650, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2),
(931, 125, NULL, 0.88650, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2),
(932, 125, NULL, 0.88650, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2),
(933, 125, NULL, 0.88650, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2),
(934, 125, NULL, 0.89800, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2),
(935, 125, NULL, 0.89800, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2),
(936, 125, NULL, 0.89800, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2),
(937, 125, NULL, 0.89800, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2),
(938, 125, NULL, 0.89800, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2),
(939, 125, NULL, 0.89800, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2),
(940, 126, NULL, 0.87000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 1, 2),
(941, 126, NULL, 0.87000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 2, 2),
(942, 126, NULL, 0.87000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 3, 2),
(943, 126, NULL, 0.87000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 4, 2),
(944, 126, NULL, 0.87000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 5, 2),
(945, 126, NULL, 0.87000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 6, 2),
(946, 126, NULL, 0.88000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 7, 2),
(947, 126, NULL, 0.88000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 8, 2),
(948, 126, NULL, 0.88000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 9, 2),
(949, 126, NULL, 0.88000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 10, 2),
(950, 126, NULL, 0.88000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 11, 2),
(951, 126, NULL, 0.88000, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 14, 2),
(952, 126, NULL, 0.91600, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 15, 2),
(953, 126, NULL, 0.91600, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 17, 2),
(954, 126, NULL, 0.91600, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 18, 2),
(955, 126, NULL, 0.91600, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 19, 2),
(956, 126, NULL, 0.91600, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 20, 2),
(957, 126, NULL, 0.91600, NULL, NULL, NULL, '2024-05-21 09:35:12', '2024-05-21 09:35:12', 21, 2),
(958, 127, NULL, 0.86400, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 1, 2),
(959, 127, NULL, 0.86400, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 2, 2),
(960, 127, NULL, 0.86400, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 3, 2),
(961, 127, NULL, 0.86400, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 4, 2),
(962, 127, NULL, 0.87600, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 5, 2),
(963, 127, NULL, 0.87600, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 6, 2),
(964, 127, NULL, 0.87600, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 7, 2),
(965, 127, NULL, 0.87600, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 8, 2),
(966, 127, NULL, 0.87600, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 9, 2),
(967, 127, NULL, 0.87600, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 10, 2),
(968, 127, NULL, 0.87600, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 11, 2),
(969, 127, NULL, 0.87600, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 14, 2),
(970, 127, NULL, 0.87600, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 15, 2),
(971, 127, NULL, 0.87600, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 17, 2),
(972, 127, NULL, 0.87600, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 18, 2),
(973, 127, NULL, 0.87600, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 19, 2),
(974, 127, NULL, 0.87600, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 20, 2),
(975, 127, NULL, 0.87600, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 21, 2),
(976, 128, NULL, 0.19025, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 1, 2),
(977, 128, NULL, 0.37300, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 2, 2),
(978, 128, NULL, 0.79045, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 3, 2),
(979, 128, NULL, 0.84245, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 4, 2),
(980, 128, NULL, 0.87500, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 5, 2),
(981, 128, NULL, 0.87500, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 6, 2),
(982, 128, NULL, 0.87500, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 7, 2),
(983, 128, NULL, 0.87725, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 8, 2),
(984, 128, NULL, 0.90425, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 9, 2),
(985, 128, NULL, 0.90425, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 10, 2),
(986, 128, NULL, 0.92000, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 11, 2),
(987, 128, NULL, 0.92000, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 14, 2),
(988, 128, NULL, 0.92000, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 15, 2),
(989, 128, NULL, 0.92000, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 17, 2),
(990, 128, NULL, 0.92450, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 18, 2),
(991, 128, NULL, 0.92450, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 19, 2),
(992, 128, NULL, 0.92450, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 20, 2),
(993, 128, NULL, 0.92540, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 21, 2),
(994, 129, NULL, 0.15875, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 1, 2),
(995, 129, NULL, 0.20500, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 2, 2),
(996, 129, NULL, 0.22210, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 3, 2),
(997, 129, NULL, 0.45275, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 4, 2),
(998, 129, NULL, 0.64675, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 5, 2),
(999, 129, NULL, 0.64675, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 6, 2),
(1000, 129, NULL, 0.82500, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 7, 2),
(1001, 129, NULL, 0.87500, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 8, 2),
(1002, 129, NULL, 0.87500, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 9, 2),
(1003, 129, NULL, 0.87500, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 10, 2),
(1004, 129, NULL, 0.92000, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 11, 2),
(1005, 129, NULL, 0.92000, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 14, 2),
(1006, 129, NULL, 0.92000, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 15, 2),
(1007, 129, NULL, 0.92900, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 17, 2),
(1008, 129, NULL, 0.94475, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 18, 2),
(1009, 129, NULL, 0.94700, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 19, 2),
(1010, 129, NULL, 0.94700, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 20, 2),
(1011, 129, NULL, 0.94835, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 21, 2),
(1012, 130, NULL, 0.02555, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 1, 2),
(1013, 130, NULL, 0.09150, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 2, 2),
(1014, 130, NULL, 0.16565, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 3, 2),
(1015, 130, NULL, 0.21130, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 4, 2),
(1016, 130, NULL, 0.38125, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 5, 2),
(1017, 130, NULL, 0.38125, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 6, 2),
(1018, 130, NULL, 0.80500, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 7, 2),
(1019, 130, NULL, 0.86500, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 8, 2),
(1020, 130, NULL, 0.87500, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 9, 2),
(1021, 130, NULL, 0.87500, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 10, 2),
(1022, 130, NULL, 0.87500, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 11, 2),
(1023, 130, NULL, 0.87500, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 14, 2),
(1024, 130, NULL, 0.87500, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 15, 2),
(1025, 130, NULL, 0.87500, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 17, 2),
(1026, 130, NULL, 0.87500, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 18, 2),
(1027, 130, NULL, 0.87500, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 19, 2),
(1028, 130, NULL, 0.87500, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 20, 2),
(1029, 130, NULL, 0.87500, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 21, 2),
(1030, 131, NULL, 0.11130, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 1, 2),
(1031, 131, NULL, 0.18270, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 2, 2),
(1032, 131, NULL, 0.31825, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 3, 2),
(1033, 131, NULL, 0.62075, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 4, 2),
(1034, 131, NULL, 0.79450, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 5, 2),
(1035, 131, NULL, 0.79450, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 6, 2),
(1036, 131, NULL, 0.86950, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 7, 2),
(1037, 131, NULL, 0.86950, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 8, 2),
(1038, 131, NULL, 0.86950, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 9, 2),
(1039, 131, NULL, 0.86950, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 10, 2),
(1040, 131, NULL, 0.86950, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 11, 2),
(1041, 131, NULL, 0.86950, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 14, 2),
(1042, 131, NULL, 0.86950, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 15, 2),
(1043, 131, NULL, 0.86950, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 17, 2),
(1044, 131, NULL, 0.86950, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 18, 2),
(1045, 131, NULL, 0.86950, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 19, 2),
(1046, 131, NULL, 0.86950, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 20, 2),
(1047, 131, NULL, 0.86950, NULL, NULL, NULL, '2024-05-22 01:39:08', '2024-05-22 01:39:08', 21, 2),
(1048, 108, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 1, 2),
(1049, 108, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 2, 2),
(1050, 108, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 3, 2),
(1051, 108, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 4, 2),
(1052, 108, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 5, 2),
(1053, 108, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 6, 2),
(1054, 108, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 7, 2),
(1055, 108, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 8, 2),
(1056, 108, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 9, 2),
(1057, 108, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 10, 2),
(1058, 108, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 11, 2),
(1059, 108, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 14, 2),
(1060, 108, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 15, 2),
(1061, 108, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 17, 2),
(1062, 108, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 18, 2),
(1063, 108, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 19, 2),
(1064, 108, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 20, 2),
(1065, 108, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 21, 2);
INSERT INTO `pv_progress` (`progress_id`, `pv_id`, `series_id`, `progress_percentage`, `supervisor`, `non_construction_reason`, `progress_calculation_description`, `last_update`, `create_at`, `pv_week_id`, `user_id`) VALUES
(1066, 109, NULL, 0.92450, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 1, 2),
(1067, 109, NULL, 0.92450, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 2, 2),
(1068, 109, NULL, 0.92450, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 3, 2),
(1069, 109, NULL, 0.92450, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 4, 2),
(1070, 109, NULL, 0.92450, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 5, 2),
(1071, 109, NULL, 0.92450, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 6, 2),
(1072, 109, NULL, 0.92450, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 7, 2),
(1073, 109, NULL, 0.92450, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 8, 2),
(1074, 109, NULL, 0.92450, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 9, 2),
(1075, 109, NULL, 0.92450, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 10, 2),
(1076, 109, NULL, 0.92450, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 11, 2),
(1077, 109, NULL, 0.92450, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 14, 2),
(1078, 109, NULL, 0.92450, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 15, 2),
(1079, 109, NULL, 0.92450, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 17, 2),
(1080, 109, NULL, 0.92450, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 18, 2),
(1081, 109, NULL, 0.92450, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 19, 2),
(1082, 109, NULL, 0.92450, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 20, 2),
(1083, 109, NULL, 0.92450, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 21, 2),
(1084, 110, NULL, 0.92100, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 1, 2),
(1085, 110, NULL, 0.92100, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 2, 2),
(1086, 110, NULL, 0.92100, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 3, 2),
(1087, 110, NULL, 0.92100, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 4, 2),
(1088, 110, NULL, 0.92100, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 5, 2),
(1089, 110, NULL, 0.92100, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 6, 2),
(1090, 110, NULL, 0.92100, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 7, 2),
(1091, 110, NULL, 0.92100, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 8, 2),
(1092, 110, NULL, 0.92100, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 9, 2),
(1093, 110, NULL, 0.92100, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 10, 2),
(1094, 110, NULL, 0.92100, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 11, 2),
(1095, 110, NULL, 0.92100, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 14, 2),
(1096, 110, NULL, 0.92100, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 15, 2),
(1097, 110, NULL, 0.92100, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 17, 2),
(1098, 110, NULL, 0.92100, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 18, 2),
(1099, 110, NULL, 0.92100, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 19, 2),
(1100, 110, NULL, 0.92100, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 20, 2),
(1101, 110, NULL, 0.92100, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 21, 2),
(1102, 111, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 1, 2),
(1103, 111, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 2, 2),
(1104, 111, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 3, 2),
(1105, 111, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 4, 2),
(1106, 111, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 5, 2),
(1107, 111, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 6, 2),
(1108, 111, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 7, 2),
(1109, 111, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 8, 2),
(1110, 111, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 9, 2),
(1111, 111, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 10, 2),
(1112, 111, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 11, 2),
(1113, 111, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 14, 2),
(1114, 111, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 15, 2),
(1115, 111, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 17, 2),
(1116, 111, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 18, 2),
(1117, 111, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 19, 2),
(1118, 111, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 20, 2),
(1119, 111, NULL, 0.92600, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 21, 2),
(1120, 112, NULL, 0.92200, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 1, 2),
(1121, 112, NULL, 0.92200, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 2, 2),
(1122, 112, NULL, 0.92200, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 3, 2),
(1123, 112, NULL, 0.92200, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 4, 2),
(1124, 112, NULL, 0.92200, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 5, 2),
(1125, 112, NULL, 0.92200, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 6, 2),
(1126, 112, NULL, 0.92200, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 7, 2),
(1127, 112, NULL, 0.92200, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 8, 2),
(1128, 112, NULL, 0.92200, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 9, 2),
(1129, 112, NULL, 0.92200, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 10, 2),
(1130, 112, NULL, 0.92200, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 11, 2),
(1131, 112, NULL, 0.92200, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 14, 2),
(1132, 112, NULL, 0.92200, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 15, 2),
(1133, 112, NULL, 0.92200, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 17, 2),
(1134, 112, NULL, 0.92200, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 18, 2),
(1135, 112, NULL, 0.92200, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 19, 2),
(1136, 112, NULL, 0.92200, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 20, 2),
(1137, 112, NULL, 0.92200, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 21, 2),
(1138, 113, NULL, 0.92200, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 1, 2),
(1139, 113, NULL, 0.92225, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 2, 2),
(1140, 113, NULL, 0.92225, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 3, 2),
(1141, 113, NULL, 0.92225, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 4, 2),
(1142, 113, NULL, 0.92225, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 5, 2),
(1143, 113, NULL, 0.92225, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 6, 2),
(1144, 113, NULL, 0.92225, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 7, 2),
(1145, 113, NULL, 0.92225, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 8, 2),
(1146, 113, NULL, 0.92225, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 9, 2),
(1147, 113, NULL, 0.92225, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 10, 2),
(1148, 113, NULL, 0.92225, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 11, 2),
(1149, 113, NULL, 0.92225, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 14, 2),
(1150, 113, NULL, 0.92225, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 15, 2),
(1151, 113, NULL, 0.92225, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 17, 2),
(1152, 113, NULL, 0.92225, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 18, 2),
(1153, 113, NULL, 0.92225, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 19, 2),
(1154, 113, NULL, 0.92225, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 20, 2),
(1155, 113, NULL, 0.92225, NULL, NULL, NULL, '2024-05-22 05:28:28', '2024-05-22 05:28:28', 21, 2);

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
(9, '2024', 1, 9, '2024-02-25', '2024-03-02', 2),
(10, '2024', 1, 10, '2024-03-03', '2024-03-09', 2),
(11, '2024', 1, 11, '2024-03-10', '2024-03-16', 2),
(14, '2024', 1, 12, '2024-03-17', '2024-03-23', 2),
(15, '2024', 1, 13, '2024-03-24', '2024-03-30', 2),
(17, '2024', 2, 1, '2024-03-31', '2024-04-06', 2),
(18, '2024', 2, 2, '2024-04-07', '2024-04-13', 2),
(19, '2024', 2, 3, '2024-04-14', '2024-04-20', 2),
(20, '2024', 2, 4, '2024-04-21', '2024-04-27', 2),
(21, '2024', 2, 5, '2024-04-28', '2024-05-04', 2);

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
-- 資料表結構 `stages`
--

CREATE TABLE `stages` (
  `stage_id` int(11) NOT NULL,
  `stage_name` varchar(255) NOT NULL,
  `completion_percentage` decimal(5,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `step_order` int(11) NOT NULL,
  `series_id` int(11) NOT NULL,
  `todolist` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `stages`
--

INSERT INTO `stages` (`stage_id`, `stage_name`, `completion_percentage`, `user_id`, `updated_at`, `step_order`, `series_id`, `todolist`) VALUES
(1, '併聯審查意見書', 0.05, 2, '2024-05-16 03:13:06', 1, 1, NULL),
(2, '地政機關意見書', 0.10, 2, '2024-05-16 03:13:06', 2, 1, NULL),
(3, '環境敏感地區調查', 0.15, 2, '2024-05-16 03:13:06', 3, 1, NULL),
(4, '地方政府同意', 0.20, 2, '2024-05-16 03:13:06', 4, 1, NULL),
(5, '電業籌設', 0.30, 2, '2024-05-16 03:13:06', 5, 1, NULL),
(6, '同意備案', 0.40, 2, '2024-05-16 03:13:06', 6, 1, NULL),
(7, '台電契約', 0.45, 2, '2024-05-16 03:13:06', 7, 1, NULL),
(8, '初步協商', 0.50, 2, '2024-05-16 03:13:06', 8, 1, NULL),
(9, '細部協商', 0.55, 2, '2024-05-16 03:13:06', 9, 1, NULL),
(10, '出流管制', 0.65, 2, '2024-05-16 03:13:06', 10, 1, NULL),
(11, '施工許可', 0.70, 2, '2024-05-16 03:13:06', 11, 1, NULL),
(12, '併聯完工', 0.80, 2, '2024-05-16 03:13:06', 12, 1, NULL),
(13, '使照', 0.85, 2, '2024-05-16 03:13:06', 13, 1, NULL),
(14, '附屬綠能', 0.90, 2, '2024-05-16 03:13:06', 14, 1, NULL),
(15, '電業執照', 0.95, 2, '2024-05-16 03:13:06', 15, 1, NULL),
(16, '正式購售電能', 1.00, 2, '2024-05-16 05:15:28', 16, 1, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `stages_series`
--

CREATE TABLE `stages_series` (
  `series_id` int(11) NOT NULL,
  `series_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `stages_series`
--

INSERT INTO `stages_series` (`series_id`, `series_name`, `description`, `last_update`, `create_at`, `user_id`) VALUES
(1, 'Phase2電業申辦', NULL, '2024-05-16 03:11:12', '2024-05-16 03:11:12', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `stage_changes`
--

CREATE TABLE `stage_changes` (
  `change_id` int(11) NOT NULL,
  `stage_id` int(11) DEFAULT NULL,
  `old_percentage` decimal(5,2) DEFAULT NULL,
  `new_percentage` decimal(5,2) DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT current_timestamp()
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
  `user_id` int(11) NOT NULL DEFAULT 0,
  `lag_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `voltage161kbank_progress`
--

INSERT INTO `voltage161kbank_progress` (`voltage161k_bank_id`, `voltage161k_id`, `progress_percentage`, `last_update`, `create_at`, `voltage161k_week_id`, `user_id`, `lag_status`) VALUES
(1, 1, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 1, 2, 0),
(2, 1, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 2, 2, 0),
(3, 1, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 3, 2, 0),
(4, 1, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 4, 2, 0),
(5, 1, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 5, 2, 0),
(6, 1, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 6, 2, 0),
(7, 1, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 7, 2, 0),
(8, 1, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 8, 2, 0),
(9, 1, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 9, 2, 0),
(10, 1, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 10, 2, 0),
(11, 1, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 11, 2, 0),
(12, 2, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 1, 2, 0),
(13, 2, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 2, 2, 0),
(14, 2, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 3, 2, 0),
(15, 2, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 4, 2, 0),
(16, 2, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 5, 2, 0),
(17, 2, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 6, 2, 0),
(18, 2, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 7, 2, 0),
(19, 2, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 8, 2, 0),
(20, 2, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 9, 2, 0),
(21, 2, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 10, 2, 0),
(22, 2, 1.00, '2024-04-11 05:38:58', '2024-04-11 05:38:58', 11, 2, 0),
(23, 1, 1.00, '2024-05-02 01:18:31', '2024-05-02 01:18:31', 12, 2, 0),
(24, 2, 1.00, '2024-05-02 01:18:31', '2024-05-02 01:18:31', 12, 2, 0),
(25, 1, 1.00, '2024-05-02 01:18:31', '2024-05-02 01:18:31', 13, 2, 0),
(26, 2, 1.00, '2024-05-02 01:18:31', '2024-05-02 01:18:31', 13, 2, 0),
(27, 1, 1.00, '2024-05-02 01:18:31', '2024-05-02 01:18:31', 14, 2, 0),
(28, 2, 1.00, '2024-05-02 01:18:31', '2024-05-02 01:18:31', 14, 2, 0),
(29, 1, 1.00, '2024-05-02 01:18:31', '2024-05-02 01:18:31', 15, 2, 0),
(30, 2, 1.00, '2024-05-02 01:18:31', '2024-05-02 01:18:31', 15, 2, 0),
(31, 1, 1.00, '2024-05-03 02:46:38', '2024-05-03 02:46:38', 16, 2, 0),
(32, 2, 1.00, '2024-05-03 02:46:38', '2024-05-03 02:46:38', 16, 2, 0),
(33, 1, 1.00, '2024-05-20 06:52:25', '2024-05-20 06:52:25', 17, 2, 0),
(34, 2, 1.00, '2024-05-20 06:52:25', '2024-05-20 06:52:25', 17, 2, 0),
(35, 1, 1.00, '2024-05-20 06:52:25', '2024-05-20 06:52:25', 18, 2, 0),
(36, 2, 1.00, '2024-05-20 06:52:25', '2024-05-20 06:52:25', 18, 2, 0);

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
  `user_id` int(11) NOT NULL DEFAULT 0,
  `lag_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `voltage161kbank_progress_expected`
--

INSERT INTO `voltage161kbank_progress_expected` (`voltage161k_bank_expected_id`, `voltage161k_id`, `parameter_id`, `is_parameter_based`, `progress_percentage`, `last_update`, `create_at`, `voltage161k_week_id`, `user_id`, `lag_status`) VALUES
(1, 1, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 1, 2, 0),
(2, 1, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 2, 2, 0),
(3, 1, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 3, 2, 0),
(4, 1, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 4, 2, 0),
(5, 1, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 5, 2, 0),
(6, 1, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 6, 2, 0),
(7, 1, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 7, 2, 0),
(8, 1, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 8, 2, 0),
(9, 1, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 9, 2, 0),
(10, 1, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 10, 2, 0),
(11, 1, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 11, 2, 0),
(12, 2, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 1, 2, 0),
(13, 2, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 2, 2, 0),
(14, 2, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 3, 2, 0),
(15, 2, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 4, 2, 0),
(16, 2, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 5, 2, 0),
(17, 2, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 6, 2, 0),
(18, 2, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 7, 2, 0),
(19, 2, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 8, 2, 0),
(20, 2, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 9, 2, 0),
(21, 2, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 10, 2, 0),
(22, 2, NULL, NULL, 1.00, '2024-04-11 05:39:12', '2024-04-11 05:39:12', 11, 2, 0),
(23, 1, NULL, NULL, 1.00, '2024-05-02 01:18:55', '2024-05-02 01:18:55', 12, 2, 0),
(24, 2, NULL, NULL, 1.00, '2024-05-02 01:18:55', '2024-05-02 01:18:55', 12, 2, 0),
(25, 1, NULL, NULL, 1.00, '2024-05-02 01:18:55', '2024-05-02 01:18:55', 13, 2, 0),
(26, 2, NULL, NULL, 1.00, '2024-05-02 01:18:55', '2024-05-02 01:18:55', 13, 2, 0),
(27, 1, NULL, NULL, 1.00, '2024-05-02 01:18:55', '2024-05-02 01:18:55', 14, 2, 0),
(28, 2, NULL, NULL, 1.00, '2024-05-02 01:18:55', '2024-05-02 01:18:55', 14, 2, 0),
(29, 1, NULL, NULL, 1.00, '2024-05-02 01:18:55', '2024-05-02 01:18:55', 15, 2, 0),
(30, 2, NULL, NULL, 1.00, '2024-05-02 01:18:55', '2024-05-02 01:18:55', 15, 2, 0),
(31, 1, NULL, NULL, 1.00, '2024-05-03 02:47:07', '2024-05-03 02:47:07', 16, 2, 0),
(32, 2, NULL, NULL, 1.00, '2024-05-03 02:47:07', '2024-05-03 02:47:07', 16, 2, 0),
(33, 1, NULL, NULL, 1.00, '2024-05-20 06:52:25', '2024-05-20 06:52:25', 17, 2, 0),
(34, 2, NULL, NULL, 1.00, '2024-05-20 06:52:25', '2024-05-20 06:52:25', 17, 2, 0),
(35, 1, NULL, NULL, 1.00, '2024-05-20 06:52:25', '2024-05-20 06:52:25', 18, 2, 0),
(36, 2, NULL, NULL, 1.00, '2024-05-20 06:52:25', '2024-05-20 06:52:25', 18, 2, 0);

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

--
-- 傾印資料表的資料 `voltage161k_expected_progress`
--

INSERT INTO `voltage161k_expected_progress` (`expected_progress_id`, `voltage161k_id`, `parameter_id`, `progress_percentage`, `calculation_date`, `last_update`, `create_at`, `voltage161k_week_id`, `user_id`) VALUES
(1, 1, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 1, 2),
(2, 1, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 2, 2),
(3, 1, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 3, 2),
(4, 1, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 4, 2),
(5, 1, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 5, 2),
(6, 1, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 6, 2),
(7, 1, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 7, 2),
(8, 1, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 8, 2),
(9, 1, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 9, 2),
(10, 1, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 10, 2),
(11, 1, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 11, 2),
(12, 2, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 1, 2),
(13, 2, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 2, 2),
(14, 2, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 3, 2),
(15, 2, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 4, 2),
(16, 2, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 5, 2),
(17, 2, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 6, 2),
(18, 2, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 7, 2),
(19, 2, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 8, 2),
(20, 2, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 9, 2),
(21, 2, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 10, 2),
(22, 2, NULL, 1.00, NULL, '2024-04-11 05:38:29', '2024-04-11 05:38:29', 11, 2),
(23, 1, NULL, 1.00, NULL, '2024-05-02 01:18:31', '2024-05-02 01:18:31', 12, 2),
(24, 2, NULL, 1.00, NULL, '2024-05-02 01:18:31', '2024-05-02 01:18:31', 12, 2),
(25, 1, NULL, 1.00, NULL, '2024-05-02 01:18:31', '2024-05-02 01:18:31', 13, 2),
(26, 2, NULL, 1.00, NULL, '2024-05-02 01:18:31', '2024-05-02 01:18:31', 13, 2),
(27, 1, NULL, 1.00, NULL, '2024-05-02 01:18:31', '2024-05-02 01:18:31', 14, 2),
(28, 2, NULL, 1.00, NULL, '2024-05-02 01:18:31', '2024-05-02 01:18:31', 14, 2),
(29, 1, NULL, 1.00, NULL, '2024-05-02 01:18:31', '2024-05-02 01:18:31', 15, 2),
(30, 2, NULL, 1.00, NULL, '2024-05-02 01:18:31', '2024-05-02 01:18:31', 15, 2),
(31, 1, NULL, 1.00, NULL, '2024-05-03 02:46:38', '2024-05-03 02:46:38', 16, 2),
(32, 2, NULL, 1.00, NULL, '2024-05-03 02:46:38', '2024-05-03 02:46:38', 16, 2),
(33, 1, NULL, 1.00, NULL, '2024-05-20 06:52:25', '2024-05-20 06:52:25', 17, 2),
(34, 2, NULL, 1.00, NULL, '2024-05-20 06:52:25', '2024-05-20 06:52:25', 17, 2),
(35, 1, NULL, 1.00, NULL, '2024-05-20 06:52:25', '2024-05-20 06:52:25', 18, 2),
(36, 2, NULL, 1.00, NULL, '2024-05-20 06:52:25', '2024-05-20 06:52:25', 18, 2);

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

--
-- 傾印資料表的資料 `voltage161k_progress`
--

INSERT INTO `voltage161k_progress` (`progress_id`, `voltage161k_id`, `series_id`, `progress_percentage`, `supervisor`, `non_construction_reason`, `progress_calculation_description`, `last_update`, `create_at`, `voltage161k_week_id`, `user_id`) VALUES
(1, 1, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 1, 2),
(2, 1, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 2, 2),
(3, 1, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 3, 2),
(4, 1, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 4, 2),
(5, 1, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 5, 2),
(6, 1, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 6, 2),
(7, 1, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 7, 2),
(8, 1, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 8, 2),
(9, 1, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 9, 2),
(10, 1, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 10, 2),
(11, 1, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 11, 2),
(12, 2, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 1, 2),
(13, 2, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 2, 2),
(14, 2, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 3, 2),
(15, 2, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 4, 2),
(16, 2, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 5, 2),
(17, 2, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 6, 2),
(18, 2, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 7, 2),
(19, 2, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 8, 2),
(20, 2, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 9, 2),
(21, 2, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 10, 2),
(22, 2, NULL, 1.00, NULL, NULL, NULL, '2024-04-11 05:38:44', '2024-04-11 05:38:44', 11, 2),
(23, 1, NULL, 1.00, NULL, NULL, NULL, '2024-05-02 01:18:30', '2024-05-02 01:18:30', 12, 2),
(24, 2, NULL, 1.00, NULL, NULL, NULL, '2024-05-02 01:18:30', '2024-05-02 01:18:30', 12, 2),
(25, 1, NULL, 1.00, NULL, NULL, NULL, '2024-05-02 01:18:30', '2024-05-02 01:18:30', 13, 2),
(26, 2, NULL, 1.00, NULL, NULL, NULL, '2024-05-02 01:18:30', '2024-05-02 01:18:30', 13, 2),
(27, 1, NULL, 1.00, NULL, NULL, NULL, '2024-05-02 01:18:30', '2024-05-02 01:18:30', 14, 2),
(28, 2, NULL, 1.00, NULL, NULL, NULL, '2024-05-02 01:18:30', '2024-05-02 01:18:30', 14, 2),
(29, 1, NULL, 1.00, NULL, NULL, NULL, '2024-05-02 01:18:30', '2024-05-02 01:18:30', 15, 2),
(30, 2, NULL, 1.00, NULL, NULL, NULL, '2024-05-02 01:18:30', '2024-05-02 01:18:30', 15, 2),
(31, 1, NULL, 1.00, NULL, NULL, NULL, '2024-05-03 02:46:38', '2024-05-03 02:46:38', 16, 2),
(32, 2, NULL, 1.00, NULL, NULL, NULL, '2024-05-03 02:46:38', '2024-05-03 02:46:38', 16, 2),
(33, 1, NULL, 1.00, NULL, NULL, NULL, '2024-05-20 06:52:25', '2024-05-20 06:52:25', 17, 2),
(34, 2, NULL, 1.00, NULL, NULL, NULL, '2024-05-20 06:52:25', '2024-05-20 06:52:25', 17, 2),
(35, 1, NULL, 1.00, NULL, NULL, NULL, '2024-05-20 06:52:25', '2024-05-20 06:52:25', 18, 2),
(36, 2, NULL, 1.00, NULL, NULL, NULL, '2024-05-20 06:52:25', '2024-05-20 06:52:25', 18, 2);

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
(9, '2024', 1, 9, '2024-02-25', '2024-03-02', 2),
(10, '2024', 1, 10, '2024-03-03', '2024-03-09', 2),
(11, '2024', 1, 11, '2024-03-10', '2024-03-16', 2),
(12, '2024', 1, 12, '2024-03-17', '2024-03-23', 2),
(13, '2024', 1, 13, '2024-03-24', '2024-03-30', 2),
(14, '2024', 2, 1, '2024-03-31', '2024-04-06', 2),
(15, '2024', 2, 2, '2024-04-07', '2024-04-13', 2),
(16, '2024', 2, 3, '2024-04-14', '2024-04-20', 2),
(17, '2024', 2, 4, '2024-04-21', '2024-04-27', 2),
(18, '2024', 2, 5, '2024-04-28', '2024-05-04', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `voltage228kbank_progress`
--

CREATE TABLE `voltage228kbank_progress` (
  `voltage228k_bank_id` int(11) NOT NULL,
  `voltage228k_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(20,10) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `voltage228k_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `lag_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `voltage228kbank_progress`
--

INSERT INTO `voltage228kbank_progress` (`voltage228k_bank_id`, `voltage228k_id`, `progress_percentage`, `last_update`, `create_at`, `voltage228k_week_id`, `user_id`, `lag_status`) VALUES
(1, 1, 0.0000000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 2, 2, 0),
(2, 3, 0.0000000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 2, 2, 0),
(3, 1, 0.0000000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 3, 2, 0),
(4, 3, 0.0000000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 3, 2, 0),
(5, 1, 0.8819000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 4, 2, 0),
(6, 3, 0.8013000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 4, 2, 0),
(7, 1, 0.8819000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 5, 2, 0),
(8, 3, 0.8013000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 5, 2, 0),
(9, 1, 0.8819000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 6, 2, 0),
(10, 3, 0.8013000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 6, 2, 0),
(11, 1, 0.8819000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 7, 2, 0),
(12, 3, 0.8013000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 7, 2, 0),
(13, 1, 0.8819000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 8, 2, 0),
(14, 3, 0.8013000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 8, 2, 0),
(15, 1, 0.8926000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 9, 2, 0),
(16, 3, 0.8162000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 9, 2, 0),
(17, 1, 0.8926000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 10, 2, 0),
(18, 3, 0.8162000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 10, 2, 0),
(19, 1, 0.8926000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 11, 2, 0),
(20, 3, 0.8162000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 11, 2, 0),
(21, 1, 0.8926000000, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 12, 2, 0),
(22, 3, 0.8162000000, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 12, 2, 0),
(23, 1, 0.9570000000, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 13, 2, 0),
(24, 3, 0.8367000000, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 13, 2, 0),
(25, 5, 0.5369000000, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 13, 2, 0),
(26, 1, 0.9570000000, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 14, 2, 0),
(27, 3, 0.8367000000, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 14, 2, 0),
(28, 5, 0.5369000000, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 14, 2, 0),
(29, 1, 0.9570000000, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 15, 2, 0),
(30, 3, 0.8367000000, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 15, 2, 0),
(31, 5, 0.5369000000, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 15, 2, 0),
(32, 1, 0.9570000000, '2024-05-03 02:55:26', '2024-05-03 02:55:26', 16, 2, 0),
(33, 3, 0.8367000000, '2024-05-03 02:55:26', '2024-05-03 02:55:26', 16, 2, 0),
(34, 5, 0.5369000000, '2024-05-03 02:55:26', '2024-05-03 02:55:26', 16, 2, 0),
(35, 7, 0.0000000000, '2024-05-03 02:55:26', '2024-05-03 02:55:26', 16, 2, 0),
(36, 7, 0.0000000000, '2024-05-03 03:05:28', '2024-05-03 03:05:28', 13, 2, 0),
(37, 7, 0.0000000000, '2024-05-03 03:05:28', '2024-05-03 03:05:28', 14, 2, 0),
(38, 7, 0.0000000000, '2024-05-03 03:05:28', '2024-05-03 03:05:28', 15, 2, 0),
(39, 1, 0.9870000000, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 17, 2, 0),
(40, 3, 0.8556000000, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 17, 2, 0),
(41, 5, 0.5369000000, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 17, 2, 0),
(42, 7, 0.0000000000, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 17, 2, 0),
(43, 9, 0.5939000000, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 17, 2, 0),
(44, 1, 0.9870000000, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 18, 2, 0),
(45, 3, 0.8556000000, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 18, 2, 0),
(46, 5, 0.5369000000, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 18, 2, 0),
(47, 7, 0.0000000000, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 18, 2, 0),
(48, 9, 0.5939000000, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 18, 2, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `voltage228kbank_progress_expected`
--

CREATE TABLE `voltage228kbank_progress_expected` (
  `voltage228k_bank_expected_id` int(11) NOT NULL,
  `voltage228k_id` int(11) DEFAULT NULL,
  `parameter_id` int(11) DEFAULT NULL,
  `is_parameter_based` tinyint(1) DEFAULT NULL,
  `progress_percentage` decimal(20,10) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `voltage228k_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `lag_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `voltage228kbank_progress_expected`
--

INSERT INTO `voltage228kbank_progress_expected` (`voltage228k_bank_expected_id`, `voltage228k_id`, `parameter_id`, `is_parameter_based`, `progress_percentage`, `last_update`, `create_at`, `voltage228k_week_id`, `user_id`, `lag_status`) VALUES
(1, 1, NULL, NULL, 0.0476000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 2, 2, 0),
(2, 3, NULL, NULL, 0.0476000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 2, 2, 0),
(3, 1, NULL, NULL, 0.0952000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 3, 2, 0),
(4, 3, NULL, NULL, 0.0952000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 3, 2, 0),
(5, 1, NULL, NULL, 0.1429000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 4, 2, 0),
(6, 3, NULL, NULL, 0.1429000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 4, 2, 0),
(7, 1, NULL, NULL, 0.1905000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 5, 2, 0),
(8, 3, NULL, NULL, 0.1905000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 5, 2, 0),
(9, 1, NULL, NULL, 0.2381000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 6, 2, 0),
(10, 3, NULL, NULL, 0.2381000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 6, 2, 0),
(11, 1, NULL, NULL, 0.2857000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 7, 2, 0),
(12, 3, NULL, NULL, 0.2857000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 7, 2, 0),
(13, 1, NULL, NULL, 0.3333000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 8, 2, 0),
(14, 3, NULL, NULL, 0.3333000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 8, 2, 0),
(15, 1, NULL, NULL, 0.3810000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 9, 2, 0),
(16, 3, NULL, NULL, 0.3810000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 9, 2, 0),
(17, 1, NULL, NULL, 0.4286000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 10, 2, 0),
(18, 3, NULL, NULL, 0.4286000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 10, 2, 0),
(19, 1, NULL, NULL, 0.4762000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 11, 2, 0),
(20, 3, NULL, NULL, 0.4762000000, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 11, 2, 0),
(21, 1, NULL, NULL, 0.5238000000, '2024-04-25 11:28:57', '2024-04-25 11:28:57', 12, 2, 0),
(22, 3, NULL, NULL, 0.5238000000, '2024-04-25 11:28:57', '2024-04-25 11:28:57', 12, 2, 0),
(23, 1, NULL, NULL, 0.5714000000, '2024-04-25 11:28:57', '2024-04-25 11:28:57', 13, 2, 0),
(24, 3, NULL, NULL, 0.5714000000, '2024-04-25 11:28:57', '2024-04-25 11:28:57', 13, 2, 0),
(25, 5, NULL, NULL, 0.0435000000, '2024-04-25 11:28:57', '2024-04-25 11:28:57', 13, 2, 0),
(26, 7, NULL, NULL, 0.0435000000, '2024-04-25 11:28:57', '2024-04-25 11:28:57', 13, 2, 0),
(27, 1, NULL, NULL, 0.6190000000, '2024-04-25 11:28:57', '2024-04-25 11:28:57', 14, 2, 0),
(28, 3, NULL, NULL, 0.6190000000, '2024-04-25 11:28:57', '2024-04-25 11:28:57', 14, 2, 0),
(29, 5, NULL, NULL, 0.0870000000, '2024-04-25 11:28:57', '2024-04-25 11:28:57', 14, 2, 0),
(30, 7, NULL, NULL, 0.0870000000, '2024-04-25 11:28:57', '2024-04-25 11:28:57', 14, 2, 0),
(31, 1, NULL, NULL, 0.6667000000, '2024-04-25 11:28:57', '2024-04-25 11:28:57', 15, 2, 0),
(32, 3, NULL, NULL, 0.6667000000, '2024-04-25 11:28:57', '2024-04-25 11:28:57', 15, 2, 0),
(33, 5, NULL, NULL, 0.1305000000, '2024-04-25 11:28:57', '2024-04-25 11:28:57', 15, 2, 0),
(34, 7, NULL, NULL, 0.1305000000, '2024-04-25 11:28:57', '2024-04-25 11:28:57', 15, 2, 0),
(35, 1, NULL, NULL, 0.7143000000, '2024-05-03 02:55:26', '2024-05-03 02:55:26', 16, 2, 0),
(36, 3, NULL, NULL, 0.7143000000, '2024-05-03 02:55:26', '2024-05-03 02:55:26', 16, 2, 0),
(37, 5, NULL, NULL, 0.1740000000, '2024-05-03 02:55:26', '2024-05-03 02:55:26', 16, 2, 0),
(38, 7, NULL, NULL, 0.1740000000, '2024-05-03 02:55:26', '2024-05-03 02:55:26', 16, 2, 0),
(39, 7, NULL, NULL, 0.0435000000, '2024-05-03 03:05:28', '2024-05-03 03:05:28', 13, 2, 0),
(40, 7, NULL, NULL, 0.0870000000, '2024-05-03 03:05:28', '2024-05-03 03:05:28', 14, 2, 0),
(41, 7, NULL, NULL, 0.1305000000, '2024-05-03 03:05:28', '2024-05-03 03:05:28', 15, 2, 0),
(42, 1, NULL, NULL, 0.7619000000, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 17, 2, 0),
(43, 3, NULL, NULL, 0.7619000000, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 17, 2, 0),
(44, 5, NULL, NULL, 0.2175000000, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 17, 2, 0),
(45, 7, NULL, NULL, 0.2175000000, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 17, 2, 0),
(46, 9, NULL, NULL, 0.0000000000, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 17, 2, 0),
(47, 1, NULL, NULL, 0.8095000000, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 18, 2, 0),
(48, 3, NULL, NULL, 0.8095000000, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 18, 2, 0),
(49, 5, NULL, NULL, 0.2610000000, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 18, 2, 0),
(50, 7, NULL, NULL, 0.2610000000, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 18, 2, 0),
(51, 9, NULL, NULL, 0.0000000000, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 18, 2, 0);

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
  `progress_percentage` decimal(20,10) DEFAULT NULL,
  `calculation_date` date DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `voltage228k_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `voltage228k_expected_progress`
--

INSERT INTO `voltage228k_expected_progress` (`expected_progress_id`, `voltage228k_id`, `parameter_id`, `progress_percentage`, `calculation_date`, `last_update`, `create_at`, `voltage228k_week_id`, `user_id`) VALUES
(1, 1, NULL, 0.0476000000, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 2, 2),
(2, 3, NULL, 0.0476000000, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 2, 2),
(3, 1, NULL, 0.0952000000, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 3, 2),
(4, 3, NULL, 0.0952000000, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 3, 2),
(5, 1, NULL, 0.1429000000, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 4, 2),
(6, 3, NULL, 0.1429000000, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 4, 2),
(7, 1, NULL, 0.1905000000, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 5, 2),
(8, 3, NULL, 0.1905000000, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 5, 2),
(9, 1, NULL, 0.2381000000, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 6, 2),
(10, 3, NULL, 0.2381000000, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 6, 2),
(11, 1, NULL, 0.2857000000, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 7, 2),
(12, 3, NULL, 0.2857000000, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 7, 2),
(13, 1, NULL, 0.3333000000, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 8, 2),
(14, 3, NULL, 0.3333000000, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 8, 2),
(15, 1, NULL, 0.3810000000, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 9, 2),
(16, 3, NULL, 0.3810000000, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 9, 2),
(17, 1, NULL, 0.4286000000, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 10, 2),
(18, 3, NULL, 0.4286000000, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 10, 2),
(19, 1, NULL, 0.4762000000, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 11, 2),
(20, 3, NULL, 0.4762000000, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 11, 2),
(21, 1, NULL, 0.5238000000, NULL, '2024-04-25 11:28:24', '2024-04-25 11:28:24', 12, 2),
(22, 3, NULL, 0.5238000000, NULL, '2024-04-25 11:28:24', '2024-04-25 11:28:24', 12, 2),
(23, 1, NULL, 0.5714000000, NULL, '2024-04-25 11:28:24', '2024-04-25 11:28:24', 13, 2),
(24, 3, NULL, 0.5714000000, NULL, '2024-04-25 11:28:24', '2024-04-25 11:28:24', 13, 2),
(25, 5, NULL, 0.0435000000, NULL, '2024-04-25 11:28:24', '2024-04-25 11:28:24', 13, 2),
(26, 7, NULL, 0.0435000000, NULL, '2024-04-25 11:28:24', '2024-04-25 11:28:24', 13, 2),
(27, 1, NULL, 0.6190000000, NULL, '2024-04-25 11:28:24', '2024-04-25 11:28:24', 14, 2),
(28, 3, NULL, 0.6190000000, NULL, '2024-04-25 11:28:24', '2024-04-25 11:28:24', 14, 2),
(29, 5, NULL, 0.0870000000, NULL, '2024-04-25 11:28:24', '2024-04-25 11:28:24', 14, 2),
(30, 7, NULL, 0.0870000000, NULL, '2024-04-25 11:28:24', '2024-04-25 11:28:24', 14, 2),
(31, 1, NULL, 0.6667000000, NULL, '2024-04-25 11:28:24', '2024-04-25 11:28:24', 15, 2),
(32, 3, NULL, 0.6667000000, NULL, '2024-04-25 11:28:24', '2024-04-25 11:28:24', 15, 2),
(33, 5, NULL, 0.1305000000, NULL, '2024-04-25 11:28:24', '2024-04-25 11:28:24', 15, 2),
(34, 7, NULL, 0.1305000000, NULL, '2024-04-25 11:28:24', '2024-04-25 11:28:24', 15, 2),
(35, 1, NULL, 0.7143000000, NULL, '2024-05-03 02:55:26', '2024-05-03 02:55:26', 16, 2),
(36, 3, NULL, 0.7143000000, NULL, '2024-05-03 02:55:26', '2024-05-03 02:55:26', 16, 2),
(37, 5, NULL, 0.1740000000, NULL, '2024-05-03 02:55:26', '2024-05-03 02:55:26', 16, 2),
(38, 7, NULL, 0.1740000000, NULL, '2024-05-03 02:55:26', '2024-05-03 02:55:26', 16, 2),
(39, 7, NULL, 0.0435000000, NULL, '2024-05-03 03:05:28', '2024-05-03 03:05:28', 13, 2),
(40, 7, NULL, 0.0870000000, NULL, '2024-05-03 03:05:28', '2024-05-03 03:05:28', 14, 2),
(41, 7, NULL, 0.1305000000, NULL, '2024-05-03 03:05:28', '2024-05-03 03:05:28', 15, 2),
(42, 1, NULL, 0.7619000000, NULL, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 17, 2),
(43, 3, NULL, 0.7619000000, NULL, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 17, 2),
(44, 5, NULL, 0.2175000000, NULL, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 17, 2),
(45, 7, NULL, 0.2175000000, NULL, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 17, 2),
(46, 9, NULL, 0.0000000000, NULL, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 17, 2),
(47, 1, NULL, 0.8095000000, NULL, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 18, 2),
(48, 3, NULL, 0.8095000000, NULL, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 18, 2),
(49, 5, NULL, 0.2610000000, NULL, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 18, 2),
(50, 7, NULL, 0.2610000000, NULL, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 18, 2),
(51, 9, NULL, 0.0000000000, NULL, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 18, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `voltage228k_progress`
--

CREATE TABLE `voltage228k_progress` (
  `progress_id` int(11) NOT NULL,
  `voltage228k_id` int(11) DEFAULT NULL,
  `series_id` int(11) DEFAULT NULL,
  `progress_percentage` decimal(20,10) DEFAULT NULL,
  `supervisor` varchar(255) DEFAULT NULL,
  `non_construction_reason` text DEFAULT NULL,
  `progress_calculation_description` text DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `voltage228k_week_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `voltage228k_progress`
--

INSERT INTO `voltage228k_progress` (`progress_id`, `voltage228k_id`, `series_id`, `progress_percentage`, `supervisor`, `non_construction_reason`, `progress_calculation_description`, `last_update`, `create_at`, `voltage228k_week_id`, `user_id`) VALUES
(1, 1, NULL, 0.0000000000, NULL, NULL, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 2, 2),
(2, 3, NULL, 0.0000000000, NULL, NULL, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 2, 2),
(3, 1, NULL, 0.0000000000, NULL, NULL, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 3, 2),
(4, 3, NULL, 0.0000000000, NULL, NULL, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 3, 2),
(5, 1, NULL, 0.8819000000, NULL, NULL, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 4, 2),
(6, 3, NULL, 0.8013000000, NULL, NULL, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 4, 2),
(7, 1, NULL, 0.8819000000, NULL, NULL, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 5, 2),
(8, 3, NULL, 0.8013000000, NULL, NULL, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 5, 2),
(9, 1, NULL, 0.8819000000, NULL, NULL, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 6, 2),
(10, 3, NULL, 0.8013000000, NULL, NULL, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 6, 2),
(11, 1, NULL, 0.8819000000, NULL, NULL, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 7, 2),
(12, 3, NULL, 0.8013000000, NULL, NULL, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 7, 2),
(13, 1, NULL, 0.8819000000, NULL, NULL, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 8, 2),
(14, 3, NULL, 0.8013000000, NULL, NULL, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 8, 2),
(15, 1, NULL, 0.8926000000, NULL, NULL, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 9, 2),
(16, 3, NULL, 0.8162000000, NULL, NULL, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 9, 2),
(17, 1, NULL, 0.8926000000, NULL, NULL, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 10, 2),
(18, 3, NULL, 0.8162000000, NULL, NULL, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 10, 2),
(19, 1, NULL, 0.8926000000, NULL, NULL, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 11, 2),
(20, 3, NULL, 0.8162000000, NULL, NULL, NULL, '2024-04-09 03:59:37', '2024-04-09 03:59:37', 11, 2),
(21, 1, NULL, 0.8926000000, NULL, NULL, NULL, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 12, 2),
(22, 3, NULL, 0.8162000000, NULL, NULL, NULL, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 12, 2),
(23, 1, NULL, 0.9570000000, NULL, NULL, NULL, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 13, 2),
(24, 3, NULL, 0.8367000000, NULL, NULL, NULL, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 13, 2),
(25, 5, NULL, 0.5369000000, NULL, NULL, NULL, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 13, 2),
(26, 1, NULL, 0.9570000000, NULL, NULL, NULL, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 14, 2),
(27, 3, NULL, 0.8367000000, NULL, NULL, NULL, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 14, 2),
(28, 5, NULL, 0.5369000000, NULL, NULL, NULL, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 14, 2),
(29, 1, NULL, 0.9570000000, NULL, NULL, NULL, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 15, 2),
(30, 3, NULL, 0.8367000000, NULL, NULL, NULL, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 15, 2),
(31, 5, NULL, 0.5369000000, NULL, NULL, NULL, '2024-04-25 11:28:23', '2024-04-25 11:28:23', 15, 2),
(32, 1, NULL, 0.9570000000, NULL, NULL, NULL, '2024-05-03 02:55:26', '2024-05-03 02:55:26', 16, 2),
(33, 3, NULL, 0.8367000000, NULL, NULL, NULL, '2024-05-03 02:55:26', '2024-05-03 02:55:26', 16, 2),
(34, 5, NULL, 0.5369000000, NULL, NULL, NULL, '2024-05-03 02:55:26', '2024-05-03 02:55:26', 16, 2),
(35, 7, NULL, 0.0000000000, NULL, NULL, NULL, '2024-05-03 02:55:26', '2024-05-03 02:55:26', 16, 2),
(36, 7, NULL, 0.0000000000, NULL, NULL, NULL, '2024-05-03 03:05:28', '2024-05-03 03:05:28', 13, 2),
(37, 7, NULL, 0.0000000000, NULL, NULL, NULL, '2024-05-03 03:05:28', '2024-05-03 03:05:28', 14, 2),
(38, 7, NULL, 0.0000000000, NULL, NULL, NULL, '2024-05-03 03:05:28', '2024-05-03 03:05:28', 15, 2),
(39, 1, NULL, 0.9870000000, NULL, NULL, NULL, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 17, 2),
(40, 3, NULL, 0.8556000000, NULL, NULL, NULL, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 17, 2),
(41, 5, NULL, 0.5369000000, NULL, NULL, NULL, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 17, 2),
(42, 7, NULL, 0.0000000000, NULL, NULL, NULL, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 17, 2),
(43, 9, NULL, 0.5939000000, NULL, NULL, NULL, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 17, 2),
(44, 1, NULL, 0.9870000000, NULL, NULL, NULL, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 18, 2),
(45, 3, NULL, 0.8556000000, NULL, NULL, NULL, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 18, 2),
(46, 5, NULL, 0.5369000000, NULL, NULL, NULL, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 18, 2),
(47, 7, NULL, 0.0000000000, NULL, NULL, NULL, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 18, 2),
(48, 9, NULL, 0.5939000000, NULL, NULL, NULL, '2024-05-20 06:47:23', '2024-05-20 06:47:23', 18, 2);

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
(9, '2024', 1, 9, '2024-02-25', '2024-03-02', 2),
(10, '2024', 1, 10, '2024-03-03', '2024-03-09', 2),
(11, '2024', 1, 11, '2024-03-10', '2024-03-16', 2),
(12, '2024', 1, 12, '2024-03-17', '2024-03-23', 2),
(13, '2024', 1, 13, '2024-03-24', '2024-03-30', 2),
(14, '2024', 2, 1, '2024-03-31', '2024-04-06', 2),
(15, '2024', 2, 2, '2024-04-07', '2024-04-13', 2),
(16, '2024', 2, 3, '2024-04-14', '2024-04-20', 2),
(17, '2024', 2, 4, '2024-04-21', '2024-04-27', 2),
(18, '2024', 2, 5, '2024-04-28', '2024-05-04', 2);

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
-- 資料表索引 `electricalbank_progress`
--
ALTER TABLE `electricalbank_progress`
  ADD PRIMARY KEY (`electrical_bank_id`),
  ADD KEY `electrical_id` (`electrical_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `electrical_week_id` (`electrical_week_id`);

--
-- 資料表索引 `electricalbank_progress_expected`
--
ALTER TABLE `electricalbank_progress_expected`
  ADD PRIMARY KEY (`electrical_bank_expected_id`),
  ADD KEY `electrical_id` (`electrical_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `electrical_week_id` (`electrical_week_id`);

--
-- 資料表索引 `electrical_bank_expected_history`
--
ALTER TABLE `electrical_bank_expected_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `electrical_bank_history`
--
ALTER TABLE `electrical_bank_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `electrical_expected_progress`
--
ALTER TABLE `electrical_expected_progress`
  ADD PRIMARY KEY (`expected_progress_id`),
  ADD KEY `electrical_id` (`electrical_id`),
  ADD KEY `electrical_week_id` (`electrical_week_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `electrical_progress`
--
ALTER TABLE `electrical_progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `electrical_id` (`electrical_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `electrical_week_id` (`electrical_week_id`),
  ADD KEY `stage_id` (`stage_id`);

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
  ADD KEY `fk_loops_progress_user_id` (`user_id`),
  ADD KEY `loop_week_id` (`loop_week_id`),
  ADD KEY `loops_progress_ibfk_2` (`series_id`);

--
-- 資料表索引 `loops_progress_expected`
--
ALTER TABLE `loops_progress_expected`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `loop_id` (`loop_id`),
  ADD KEY `fk_loops_progress_expected_user_id` (`user_id`),
  ADD KEY `loop_week_id` (`loop_week_id`);

--
-- 資料表索引 `loop_week`
--
ALTER TABLE `loop_week`
  ADD PRIMARY KEY (`week_id`),
  ADD KEY `fk_pv_week_user_id` (`user_id`);

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
  ADD KEY `fk_plans_user_id` (`user_id`),
  ADD KEY `block_id` (`block_id`),
  ADD KEY `master_plan_id` (`master_plan_id`);

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
  ADD KEY `fk_plans_progress_user_id` (`user_id`),
  ADD KEY `plan_week_id` (`plan_week_id`);

--
-- 資料表索引 `plans_progress_expected`
--
ALTER TABLE `plans_progress_expected`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `fk_plans_progress_user_id` (`user_id`),
  ADD KEY `plan_week_id` (`plan_week_id`),
  ADD KEY `plan_id` (`plan_id`);

--
-- 資料表索引 `plans_week`
--
ALTER TABLE `plans_week`
  ADD PRIMARY KEY (`week_id`),
  ADD KEY `fk_pv_week_user_id` (`user_id`);

--
-- 資料表索引 `plan_associations`
--
ALTER TABLE `plan_associations`
  ADD PRIMARY KEY (`association_id`),
  ADD KEY `master_plan_id` (`master_plan_id`),
  ADD KEY `weight_id` (`weight_id`),
  ADD KEY `fk_plan_associations_user_id` (`user_id`);

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
  ADD KEY `fk_projects_user_id` (`user_id`),
  ADD KEY `block_id` (`block_id`);

--
-- 資料表索引 `projects_progress`
--
ALTER TABLE `projects_progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `ratio_id` (`ratio_id`),
  ADD KEY `fk_projects_progress_user_id` (`user_id`),
  ADD KEY `project_week_id` (`project_week_id`);

--
-- 資料表索引 `projects_progress_expected`
--
ALTER TABLE `projects_progress_expected`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `fk_projects_progress_expected_user_id` (`user_id`),
  ADD KEY `project_week_id` (`project_week_id`);

--
-- 資料表索引 `projects_week`
--
ALTER TABLE `projects_week`
  ADD PRIMARY KEY (`week_id`),
  ADD KEY `fk_pv_week_user_id` (`user_id`);

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
-- 資料表索引 `project_electrical`
--
ALTER TABLE `project_electrical`
  ADD PRIMARY KEY (`electrical_id`),
  ADD KEY `fk_project_voltage161k_user_id` (`user_id`),
  ADD KEY `project_voltage161k_ibfk_1` (`project_id`),
  ADD KEY `series_id` (`series_id`);

--
-- 資料表索引 `project_loops`
--
ALTER TABLE `project_loops`
  ADD PRIMARY KEY (`loop_id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `fk_project_loops_user_id` (`user_id`),
  ADD KEY `block_id` (`block_id`);

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
  ADD KEY `series_id` (`series_id`),
  ADD KEY `project_voltage161k_ibfk_1` (`project_id`);

--
-- 資料表索引 `project_voltage228k`
--
ALTER TABLE `project_voltage228k`
  ADD PRIMARY KEY (`voltage228k_id`),
  ADD KEY `fk_project_voltage228k_user_id` (`user_id`),
  ADD KEY `loop_id` (`loop_id`);

--
-- 資料表索引 `proportionblocks`
--
ALTER TABLE `proportionblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `proportionhistory`
--
ALTER TABLE `proportionhistory`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `block_id` (`block_id`),
  ADD KEY `user_id` (`user_id`);

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
-- 資料表索引 `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`stage_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `series_id` (`series_id`);

--
-- 資料表索引 `stages_series`
--
ALTER TABLE `stages_series`
  ADD PRIMARY KEY (`series_id`),
  ADD KEY `fk_series_user_id` (`user_id`);

--
-- 資料表索引 `stage_changes`
--
ALTER TABLE `stage_changes`
  ADD PRIMARY KEY (`change_id`),
  ADD KEY `stage_id` (`stage_id`);

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
  MODIFY `breeding_bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=734;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `breedingbank_progress_expected`
--
ALTER TABLE `breedingbank_progress_expected`
  MODIFY `breeding_bank_expected_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1192;

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
  MODIFY `expected_progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1040;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `breeding_progress`
--
ALTER TABLE `breeding_progress`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=734;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `breeding_week`
--
ALTER TABLE `breeding_week`
  MODIFY `week_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
-- 使用資料表自動遞增(AUTO_INCREMENT) `electricalbank_progress`
--
ALTER TABLE `electricalbank_progress`
  MODIFY `electrical_bank_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `electricalbank_progress_expected`
--
ALTER TABLE `electricalbank_progress_expected`
  MODIFY `electrical_bank_expected_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `electrical_bank_expected_history`
--
ALTER TABLE `electrical_bank_expected_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `electrical_bank_history`
--
ALTER TABLE `electrical_bank_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `electrical_expected_progress`
--
ALTER TABLE `electrical_expected_progress`
  MODIFY `expected_progress_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `electrical_progress`
--
ALTER TABLE `electrical_progress`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `loops_progress_expected`
--
ALTER TABLE `loops_progress_expected`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `loop_week`
--
ALTER TABLE `loop_week`
  MODIFY `week_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
  MODIFY `master_plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `plans`
--
ALTER TABLE `plans`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `plans_history`
--
ALTER TABLE `plans_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `plans_progress`
--
ALTER TABLE `plans_progress`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `plans_progress_expected`
--
ALTER TABLE `plans_progress_expected`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `plans_week`
--
ALTER TABLE `plans_week`
  MODIFY `week_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `plan_associations`
--
ALTER TABLE `plan_associations`
  MODIFY `association_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `plan_weights`
--
ALTER TABLE `plan_weights`
  MODIFY `weight_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `projects_progress`
--
ALTER TABLE `projects_progress`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `projects_progress_expected`
--
ALTER TABLE `projects_progress_expected`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `projects_week`
--
ALTER TABLE `projects_week`
  MODIFY `week_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_breeding`
--
ALTER TABLE `project_breeding`
  MODIFY `breeding_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_breeding_history`
--
ALTER TABLE `project_breeding_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_cases`
--
ALTER TABLE `project_cases`
  MODIFY `case_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_electrical`
--
ALTER TABLE `project_electrical`
  MODIFY `electrical_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_loops`
--
ALTER TABLE `project_loops`
  MODIFY `loop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_pv`
--
ALTER TABLE `project_pv`
  MODIFY `pv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

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
  MODIFY `voltage161k_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `project_voltage228k`
--
ALTER TABLE `project_voltage228k`
  MODIFY `voltage228k_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `proportionblocks`
--
ALTER TABLE `proportionblocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `proportionhistory`
--
ALTER TABLE `proportionhistory`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pvbank_progress`
--
ALTER TABLE `pvbank_progress`
  MODIFY `pv_bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1154;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pvbank_progress_expected`
--
ALTER TABLE `pvbank_progress_expected`
  MODIFY `pv_bank_expected_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1136;

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
  MODIFY `expected_progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1154;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_progress`
--
ALTER TABLE `pv_progress`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1156;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_week`
--
ALTER TABLE `pv_week`
  MODIFY `week_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
-- 使用資料表自動遞增(AUTO_INCREMENT) `stages`
--
ALTER TABLE `stages`
  MODIFY `stage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `stages_series`
--
ALTER TABLE `stages_series`
  MODIFY `series_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `stage_changes`
--
ALTER TABLE `stage_changes`
  MODIFY `change_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `voltage161k_bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `voltage161kbank_progress_expected`
--
ALTER TABLE `voltage161kbank_progress_expected`
  MODIFY `voltage161k_bank_expected_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
  MODIFY `expected_progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `voltage161k_progress`
--
ALTER TABLE `voltage161k_progress`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `voltage161k_week`
--
ALTER TABLE `voltage161k_week`
  MODIFY `week_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `voltage228kbank_progress`
--
ALTER TABLE `voltage228kbank_progress`
  MODIFY `voltage228k_bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `voltage228kbank_progress_expected`
--
ALTER TABLE `voltage228kbank_progress_expected`
  MODIFY `voltage228k_bank_expected_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

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
  MODIFY `expected_progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `voltage228k_progress`
--
ALTER TABLE `voltage228k_progress`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `voltage228k_week`
--
ALTER TABLE `voltage228k_week`
  MODIFY `week_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
-- 資料表的限制式 `electricalbank_progress`
--
ALTER TABLE `electricalbank_progress`
  ADD CONSTRAINT `electricalbank_progress_ibfk_1` FOREIGN KEY (`electrical_id`) REFERENCES `project_electrical` (`electrical_id`),
  ADD CONSTRAINT `electricalbank_progress_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `electricalbank_progress_ibfk_3` FOREIGN KEY (`electrical_week_id`) REFERENCES `projects_week` (`week_id`);

--
-- 資料表的限制式 `electricalbank_progress_expected`
--
ALTER TABLE `electricalbank_progress_expected`
  ADD CONSTRAINT `electricalbank_progress_expected_ibfk_1` FOREIGN KEY (`electrical_id`) REFERENCES `project_electrical` (`electrical_id`),
  ADD CONSTRAINT `electricalbank_progress_expected_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `electricalbank_progress_expected_ibfk_3` FOREIGN KEY (`electrical_week_id`) REFERENCES `projects_week` (`week_id`);

--
-- 資料表的限制式 `electrical_bank_expected_history`
--
ALTER TABLE `electrical_bank_expected_history`
  ADD CONSTRAINT `electrical_bank_expected_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `electricalbank_progress_expected` (`electrical_bank_expected_id`),
  ADD CONSTRAINT `electrical_bank_expected_history_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `electrical_bank_history`
--
ALTER TABLE `electrical_bank_history`
  ADD CONSTRAINT `electrical_bank_history_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `electricalbank_progress` (`electrical_bank_id`),
  ADD CONSTRAINT `electrical_bank_history_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `electrical_expected_progress`
--
ALTER TABLE `electrical_expected_progress`
  ADD CONSTRAINT `electrical_expected_progress_ibfk_1` FOREIGN KEY (`electrical_id`) REFERENCES `project_electrical` (`electrical_id`),
  ADD CONSTRAINT `electrical_expected_progress_ibfk_2` FOREIGN KEY (`electrical_week_id`) REFERENCES `projects_week` (`week_id`),
  ADD CONSTRAINT `electrical_expected_progress_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `electrical_progress`
--
ALTER TABLE `electrical_progress`
  ADD CONSTRAINT `electrical_progress_ibfk_1` FOREIGN KEY (`electrical_id`) REFERENCES `project_electrical` (`electrical_id`),
  ADD CONSTRAINT `electrical_progress_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `electrical_progress_ibfk_3` FOREIGN KEY (`electrical_week_id`) REFERENCES `projects_week` (`week_id`),
  ADD CONSTRAINT `electrical_progress_ibfk_4` FOREIGN KEY (`stage_id`) REFERENCES `stages` (`stage_id`);

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
  ADD CONSTRAINT `loops_progress_ibfk_2` FOREIGN KEY (`series_id`) REFERENCES `series` (`series_id`),
  ADD CONSTRAINT `loops_progress_ibfk_3` FOREIGN KEY (`loop_week_id`) REFERENCES `loop_week` (`week_id`);

--
-- 資料表的限制式 `loops_progress_expected`
--
ALTER TABLE `loops_progress_expected`
  ADD CONSTRAINT `fk_loops_progress_expected_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `loops_progress_expected_ibfk_1` FOREIGN KEY (`loop_id`) REFERENCES `project_loops` (`loop_id`),
  ADD CONSTRAINT `loops_progress_expected_ibfk_2` FOREIGN KEY (`loop_week_id`) REFERENCES `loop_week` (`week_id`);

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
  ADD CONSTRAINT `fk_plans_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `plans_ibfk_1` FOREIGN KEY (`block_id`) REFERENCES `proportionblocks` (`id`),
  ADD CONSTRAINT `plans_ibfk_2` FOREIGN KEY (`master_plan_id`) REFERENCES `master_plans` (`master_plan_id`);

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
  ADD CONSTRAINT `plans_progress_ibfk_2` FOREIGN KEY (`ratio_id`) REFERENCES `project_value_ratios` (`ratio_id`),
  ADD CONSTRAINT `plans_progress_ibfk_3` FOREIGN KEY (`plan_week_id`) REFERENCES `plans_week` (`week_id`);

--
-- 資料表的限制式 `plans_progress_expected`
--
ALTER TABLE `plans_progress_expected`
  ADD CONSTRAINT `plans_progress_expected_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`plan_id`),
  ADD CONSTRAINT `plans_progress_expected_ibfk_2` FOREIGN KEY (`plan_week_id`) REFERENCES `plans_week` (`week_id`),
  ADD CONSTRAINT `plans_progress_expected_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `plan_associations`
--
ALTER TABLE `plan_associations`
  ADD CONSTRAINT `fk_plan_associations_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `plan_associations_ibfk_1` FOREIGN KEY (`master_plan_id`) REFERENCES `master_plans` (`master_plan_id`),
  ADD CONSTRAINT `plan_associations_ibfk_2` FOREIGN KEY (`weight_id`) REFERENCES `plan_weights` (`weight_id`);

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
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`plan_id`),
  ADD CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`block_id`) REFERENCES `proportionblocks` (`id`);

--
-- 資料表的限制式 `projects_progress`
--
ALTER TABLE `projects_progress`
  ADD CONSTRAINT `fk_projects_progress_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `projects_progress_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`),
  ADD CONSTRAINT `projects_progress_ibfk_2` FOREIGN KEY (`ratio_id`) REFERENCES `project_value_ratios` (`ratio_id`),
  ADD CONSTRAINT `projects_progress_ibfk_3` FOREIGN KEY (`project_week_id`) REFERENCES `projects_week` (`week_id`);

--
-- 資料表的限制式 `projects_progress_expected`
--
ALTER TABLE `projects_progress_expected`
  ADD CONSTRAINT `fk_projects_progress_expected_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `projects_progress_expected_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`),
  ADD CONSTRAINT `projects_progress_expected_ibfk_2` FOREIGN KEY (`project_week_id`) REFERENCES `projects_week` (`week_id`);

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
-- 資料表的限制式 `project_electrical`
--
ALTER TABLE `project_electrical`
  ADD CONSTRAINT `project_electrical_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`),
  ADD CONSTRAINT `project_electrical_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `project_electrical_ibfk_3` FOREIGN KEY (`series_id`) REFERENCES `stages_series` (`series_id`);

--
-- 資料表的限制式 `project_loops`
--
ALTER TABLE `project_loops`
  ADD CONSTRAINT `fk_project_loops_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `project_loops_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`),
  ADD CONSTRAINT `project_loops_ibfk_2` FOREIGN KEY (`block_id`) REFERENCES `proportionblocks` (`id`);

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
  ADD CONSTRAINT `project_voltage161k_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`),
  ADD CONSTRAINT `project_voltage161k_ibfk_2` FOREIGN KEY (`series_id`) REFERENCES `series` (`series_id`);

--
-- 資料表的限制式 `project_voltage228k`
--
ALTER TABLE `project_voltage228k`
  ADD CONSTRAINT `fk_project_voltage228k_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `project_voltage228k_ibfk_1` FOREIGN KEY (`loop_id`) REFERENCES `project_loops` (`loop_id`);

--
-- 資料表的限制式 `proportionblocks`
--
ALTER TABLE `proportionblocks`
  ADD CONSTRAINT `proportionblocks_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `proportionblocks` (`id`),
  ADD CONSTRAINT `proportionblocks_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `proportionhistory`
--
ALTER TABLE `proportionhistory`
  ADD CONSTRAINT `proportionhistory_ibfk_1` FOREIGN KEY (`block_id`) REFERENCES `proportionblocks` (`id`),
  ADD CONSTRAINT `proportionhistory_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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
-- 資料表的限制式 `stages`
--
ALTER TABLE `stages`
  ADD CONSTRAINT `stages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `stages_ibfk_2` FOREIGN KEY (`series_id`) REFERENCES `stages_series` (`series_id`);

--
-- 資料表的限制式 `stages_series`
--
ALTER TABLE `stages_series`
  ADD CONSTRAINT `stages_series_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `stage_changes`
--
ALTER TABLE `stage_changes`
  ADD CONSTRAINT `stage_changes_ibfk_1` FOREIGN KEY (`stage_id`) REFERENCES `stages` (`stage_id`);

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
