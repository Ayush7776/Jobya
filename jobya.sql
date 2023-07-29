-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2023 at 12:38 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobya`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_applylist`
--

CREATE TABLE `app_applylist` (
  `id` bigint(20) NOT NULL,
  `education` varchar(200) NOT NULL,
  `website` varchar(200) NOT NULL,
  `min_salary` varchar(200) NOT NULL,
  `max_salary` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `resume` varchar(100) NOT NULL,
  `candidate_id` bigint(20) NOT NULL,
  `job_id` bigint(20) NOT NULL,
  `expiriance` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_candidate`
--

CREATE TABLE `app_candidate` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `min_salary` varchar(50) NOT NULL,
  `max_salary` varchar(50) NOT NULL,
  `jobtype` varchar(50) NOT NULL,
  `jobcategory` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `highestedu` varchar(50) NOT NULL,
  `experiance` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `shift` varchar(50) NOT NULL,
  `jobdesc` varchar(50) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `user_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_candidate`
--

INSERT INTO `app_candidate` (`id`, `firstname`, `lastname`, `contact`, `state`, `city`, `address`, `dob`, `gender`, `min_salary`, `max_salary`, `jobtype`, `jobcategory`, `country`, `highestedu`, `experiance`, `website`, `shift`, `jobdesc`, `profile_pic`, `user_id_id`) VALUES
(5, 'Yash', 'Pathak', '7776087318', '', 'Chalisgaon', '', '', 'Male', '45000', '45000', 'Full Time', 'Web Designer', 'India', 'MCA', '1 Year', 'yash/portpolio.com', 'Morning', 'Looking For Only Job', 'app/Img/Candidate/IMG_0016-01.jpeg', 7),
(6, 'Rohan', 'Das', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 9);

-- --------------------------------------------------------

--
-- Table structure for table `app_company`
--

CREATE TABLE `app_company` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `website` varchar(150) NOT NULL,
  `desc` varchar(150) NOT NULL,
  `logo_pic` varchar(100) NOT NULL,
  `user_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_company`
--

INSERT INTO `app_company` (`id`, `firstname`, `lastname`, `company_name`, `state`, `city`, `contact`, `address`, `website`, `desc`, `logo_pic`, `user_id_id`) VALUES
(3, 'Sneha', 'Pathak', '', '', '', '', '', '', '', '', 8);

-- --------------------------------------------------------

--
-- Table structure for table `app_postjobs`
--

CREATE TABLE `app_postjobs` (
  `id` bigint(20) NOT NULL,
  `jobname` varchar(250) NOT NULL,
  `componyname` varchar(250) NOT NULL,
  `componyaddress` varchar(250) NOT NULL,
  `qualification` varchar(250) NOT NULL,
  `jobdesc` longtext NOT NULL,
  `componydesc` longtext NOT NULL,
  `responsibilties` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `componywebsite` varchar(250) NOT NULL,
  `componyemail` varchar(250) NOT NULL,
  `componycontact` varchar(250) NOT NULL,
  `salarypackage` varchar(250) NOT NULL,
  `experiace` int(11) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `compony_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_postjobs`
--

INSERT INTO `app_postjobs` (`id`, `jobname`, `componyname`, `componyaddress`, `qualification`, `jobdesc`, `componydesc`, `responsibilties`, `location`, `componywebsite`, `componyemail`, `componycontact`, `salarypackage`, `experiace`, `logo`, `compony_id_id`) VALUES
(2, 'Back Office Executive', 'Sneha PVT LTD', 'Pune', 'MBA', '', 'Best In India', 'Kuch Karo', 'Haidrabad', 'www.hg.com', 'Hi@gmail.com', '7776087318', '45000', 1, 'app/img/jobpost/IMG_20180718_121410-01.jpeg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `app_usermaster`
--

CREATE TABLE `app_usermaster` (
  `id` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `otp` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `is_active` datetime(6) NOT NULL,
  `is_varified` tinyint(1) NOT NULL,
  `is_updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_usermaster`
--

INSERT INTO `app_usermaster` (`id`, `email`, `password`, `otp`, `role`, `is_active`, `is_varified`, `is_updated`) VALUES
(7, 'yashpathak7776@gmail.com', '7776', 643582, 'Candidate', '2023-05-03 08:01:15.361708', 0, '2023-05-03 08:01:15.361708'),
(8, 'sneha@gmail.com', '7776', 126602, 'Company', '2023-05-03 08:04:54.971861', 0, '2023-05-03 08:04:54.972864'),
(9, 'rohandas123@gmail.com', '4545', 336684, 'Candidate', '2023-07-16 16:11:59.909773', 0, '2023-07-16 16:11:59.909773');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add company', 7, 'add_company'),
(26, 'Can change company', 7, 'change_company'),
(27, 'Can delete company', 7, 'delete_company'),
(28, 'Can view company', 7, 'view_company'),
(29, 'Can add user master', 8, 'add_usermaster'),
(30, 'Can change user master', 8, 'change_usermaster'),
(31, 'Can delete user master', 8, 'delete_usermaster'),
(32, 'Can view user master', 8, 'view_usermaster'),
(33, 'Can add post jobs', 9, 'add_postjobs'),
(34, 'Can change post jobs', 9, 'change_postjobs'),
(35, 'Can delete post jobs', 9, 'delete_postjobs'),
(36, 'Can view post jobs', 9, 'view_postjobs'),
(37, 'Can add candidate', 10, 'add_candidate'),
(38, 'Can change candidate', 10, 'change_candidate'),
(39, 'Can delete candidate', 10, 'delete_candidate'),
(40, 'Can view candidate', 10, 'view_candidate'),
(41, 'Can add apply list', 11, 'add_applylist'),
(42, 'Can change apply list', 11, 'change_applylist'),
(43, 'Can delete apply list', 11, 'delete_applylist'),
(44, 'Can view apply list', 11, 'view_applylist');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
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

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
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

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(11, 'app', 'applylist'),
(10, 'app', 'candidate'),
(7, 'app', 'company'),
(9, 'app', 'postjobs'),
(8, 'app', 'usermaster'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-04-24 10:16:04.215788'),
(2, 'auth', '0001_initial', '2023-04-24 10:16:43.715700'),
(3, 'admin', '0001_initial', '2023-04-24 10:16:55.622702'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-04-24 10:16:56.401901'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-24 10:16:57.805741'),
(6, 'app', '0001_initial', '2023-04-24 10:17:14.861992'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-04-24 10:17:16.568260'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-04-24 10:17:18.562076'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-04-24 10:17:18.829943'),
(10, 'auth', '0004_alter_user_username_opts', '2023-04-24 10:17:18.883966'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-04-24 10:17:20.882945'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-04-24 10:17:20.967535'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-04-24 10:17:21.033730'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-04-24 10:17:21.312799'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-04-24 10:17:22.027655'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-04-24 10:17:22.544090'),
(17, 'auth', '0011_update_proxy_permissions', '2023-04-24 10:17:22.665870'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-04-24 10:17:22.913583'),
(19, 'sessions', '0001_initial', '2023-04-24 10:17:25.666095'),
(20, 'app', '0002_applylist', '2023-04-26 07:07:01.844260'),
(21, 'app', '0003_applylist_expiriance', '2023-04-26 07:12:17.853647'),
(22, 'app', '0004_alter_usermaster_is_active_and_more', '2023-05-03 06:19:56.380224');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0rjdvp29k5y01gktofdohvoq16ujnu2k', '.eJw9y0sKg0AQhOG79FqyzICrQC7g1mVhT2LjPGR6RCR497QiLuuj_h8JU-saKjl4aumNxMKonhr6SNGaEA_voaNRwC0d6ojJbFFfLgNHSUY-QoLtzar5_Dnnnq_vwY8hR7vMUF1z4bva_1m7Lfc:1pu8cv:jYADhx4cB3VeQDj6GLVpA1AULBS5v7Lg3yfh4gwxfls', '2023-05-17 09:18:21.575829'),
('88a3oumwtz25a4ewl0rp9ww6li3kiex5', '.eJyrVspMUbIy11Eqys9JVbJSck7MS8lMSSxJVdJRSsssKi7JS8wFiUcmFmcAhXIS4SIBiSUZidlKtQC99BWA:1qPJuQ:UjCK5pHbs4qHrMoFfU-ThyHwxW0zj-YAlPu6HIfejSg', '2023-08-11 09:37:18.470826'),
('ljk6okpzkgfpllhvbkd7xeeoterbr1uo', '.eJyrVspMUbIy0lEqys9JVbJScs7PLUjMq1TSUUrLLCouyUvMBYkG56VmJALFchLhQgGJJRmJ2UCx1NzEzBygQDFIjUM6iKeXnJ-rVAsAPe8d6w:1prFfi:pkcuY9R_KOXcYK-g10LszdIH8Bfg9Y9LXIngM04TEKg', '2023-05-09 10:13:18.172815'),
('ub615n0zqipatxsf72jh7izifgn18xxv', '.eJw9zbEKgCAYxPF3uTkaE5qCXqC18UgrSTNUiIjevc-G1t_94W5YjVZViMEZtOi5a6uZDSrMNqa80xcfmVYhx18G5pWbmPG0TuCS5PhQKdV0S-F6Cl6SgymdIcoTyobnBQLbJnI:1qPKDF:beiRpghhgSmPfcXW3VRIkvDN_Q5zLMXHoG7T1Wi_ENE', '2023-08-11 09:56:45.767199');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_applylist`
--
ALTER TABLE `app_applylist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_applylist_candidate_id_31e813d7_fk_app_candidate_id` (`candidate_id`),
  ADD KEY `app_applylist_job_id_3277dd41_fk_app_postjobs_id` (`job_id`);

--
-- Indexes for table `app_candidate`
--
ALTER TABLE `app_candidate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_candidate_user_id_id_587d9de9_fk_app_usermaster_id` (`user_id_id`);

--
-- Indexes for table `app_company`
--
ALTER TABLE `app_company`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_company_user_id_id_e462576f_fk_app_usermaster_id` (`user_id_id`);

--
-- Indexes for table `app_postjobs`
--
ALTER TABLE `app_postjobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_postjobs_compony_id_id_c62d40f3_fk_app_company_id` (`compony_id_id`);

--
-- Indexes for table `app_usermaster`
--
ALTER TABLE `app_usermaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_applylist`
--
ALTER TABLE `app_applylist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_candidate`
--
ALTER TABLE `app_candidate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `app_company`
--
ALTER TABLE `app_company`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app_postjobs`
--
ALTER TABLE `app_postjobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app_usermaster`
--
ALTER TABLE `app_usermaster`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_applylist`
--
ALTER TABLE `app_applylist`
  ADD CONSTRAINT `app_applylist_candidate_id_31e813d7_fk_app_candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `app_candidate` (`id`),
  ADD CONSTRAINT `app_applylist_job_id_3277dd41_fk_app_postjobs_id` FOREIGN KEY (`job_id`) REFERENCES `app_postjobs` (`id`);

--
-- Constraints for table `app_candidate`
--
ALTER TABLE `app_candidate`
  ADD CONSTRAINT `app_candidate_user_id_id_587d9de9_fk_app_usermaster_id` FOREIGN KEY (`user_id_id`) REFERENCES `app_usermaster` (`id`);

--
-- Constraints for table `app_company`
--
ALTER TABLE `app_company`
  ADD CONSTRAINT `app_company_user_id_id_e462576f_fk_app_usermaster_id` FOREIGN KEY (`user_id_id`) REFERENCES `app_usermaster` (`id`);

--
-- Constraints for table `app_postjobs`
--
ALTER TABLE `app_postjobs`
  ADD CONSTRAINT `app_postjobs_compony_id_id_c62d40f3_fk_app_company_id` FOREIGN KEY (`compony_id_id`) REFERENCES `app_company` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
