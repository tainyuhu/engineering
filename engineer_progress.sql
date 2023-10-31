-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-10-24 19:59:54
-- 伺服器版本： 10.4.24-MariaDB
-- PHP 版本： 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `engineer_progress`
--

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(72, 'Can view breeding_ expected progress model', 18, 'view_breeding_expectedprogressmodel');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `expected_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `breeding_project`
--

CREATE TABLE `breeding_project` (
  `id` bigint(20) NOT NULL,
  `project_code` varchar(255) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `project_location` varchar(255) NOT NULL,
  `project_area` varchar(255) NOT NULL,
  `project_status` int(11) NOT NULL,
  `estimated_start_date` date DEFAULT NULL,
  `estimated_completion_date` date DEFAULT NULL,
  `actual_start_date` date DEFAULT NULL,
  `actual_completion_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tasks_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `tasks_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `breeding_tasks`
--

CREATE TABLE `breeding_tasks` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(23, 'project_app_breeding', '0003_alter_breeding_detaileditemweightmodel_id_and_more', '2023-10-24 17:54:12.977657');

-- --------------------------------------------------------

--
-- 資料表結構 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `detailed_id` bigint(20) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `subitem_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `pv_progress`
--

CREATE TABLE `pv_progress` (
  `id` bigint(20) NOT NULL,
  `start_date` date DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `progress` double DEFAULT NULL,
  `personnel` varchar(50) DEFAULT NULL,
  `cause` longtext DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `expected_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `pv_project`
--

CREATE TABLE `pv_project` (
  `id` bigint(20) NOT NULL,
  `project_code` varchar(255) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `project_location` varchar(255) NOT NULL,
  `project_area` varchar(255) NOT NULL,
  `project_status` int(11) NOT NULL,
  `estimated_start_date` date DEFAULT NULL,
  `estimated_completion_date` date DEFAULT NULL,
  `actual_start_date` date DEFAULT NULL,
  `actual_completion_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tasks_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `tasks_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `pv_tasks`
--

CREATE TABLE `pv_tasks` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD KEY `breeding_project_tasks_id_5e5987ed_fk` (`tasks_id`);

--
-- 資料表索引 `breeding_subitem_weight`
--
ALTER TABLE `breeding_subitem_weight`
  ADD PRIMARY KEY (`id`),
  ADD KEY `breeding_subitem_weight_tasks_id_a40003aa_fk` (`tasks_id`);

--
-- 資料表索引 `breeding_tasks`
--
ALTER TABLE `breeding_tasks`
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
-- 資料表索引 `pv_detaileditem_weight`
--
ALTER TABLE `pv_detaileditem_weight`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pv_detaileditem_weight_subitem_id_2c74f263_fk` (`subitem_id`);

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
  ADD KEY `pv_project_tasks_id_7c88ebc6_fk` (`tasks_id`);

--
-- 資料表索引 `pv_subitem_weight`
--
ALTER TABLE `pv_subitem_weight`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pv_subitem_weight_tasks_id_ccfae5cd_fk` (`tasks_id`);

--
-- 資料表索引 `pv_tasks`
--
ALTER TABLE `pv_tasks`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `breeding_subitem_weight`
--
ALTER TABLE `breeding_subitem_weight`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `breeding_tasks`
--
ALTER TABLE `breeding_tasks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_detaileditem_weight`
--
ALTER TABLE `pv_detaileditem_weight`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_expected_progress`
--
ALTER TABLE `pv_expected_progress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_progress`
--
ALTER TABLE `pv_progress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_project`
--
ALTER TABLE `pv_project`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_subitem_weight`
--
ALTER TABLE `pv_subitem_weight`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv_tasks`
--
ALTER TABLE `pv_tasks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `breeding_detaileditem_weight_subitem_id_7f7b6e75_fk` FOREIGN KEY (`subitem_id`) REFERENCES `breeding_tasks` (`id`);

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
  ADD CONSTRAINT `breeding_project_tasks_id_5e5987ed_fk` FOREIGN KEY (`tasks_id`) REFERENCES `breeding_tasks` (`id`);

--
-- 資料表的限制式 `breeding_subitem_weight`
--
ALTER TABLE `breeding_subitem_weight`
  ADD CONSTRAINT `breeding_subitem_weight_tasks_id_a40003aa_fk` FOREIGN KEY (`tasks_id`) REFERENCES `breeding_tasks` (`id`);

--
-- 資料表的限制式 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `pv_detaileditem_weight`
--
ALTER TABLE `pv_detaileditem_weight`
  ADD CONSTRAINT `pv_detaileditem_weight_subitem_id_2c74f263_fk` FOREIGN KEY (`subitem_id`) REFERENCES `pv_tasks` (`id`);

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
  ADD CONSTRAINT `pv_project_tasks_id_7c88ebc6_fk` FOREIGN KEY (`tasks_id`) REFERENCES `pv_tasks` (`id`);

--
-- 資料表的限制式 `pv_subitem_weight`
--
ALTER TABLE `pv_subitem_weight`
  ADD CONSTRAINT `pv_subitem_weight_tasks_id_ccfae5cd_fk` FOREIGN KEY (`tasks_id`) REFERENCES `pv_tasks` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
