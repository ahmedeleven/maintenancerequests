-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 28, 2018 at 07:59 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moemaintenance`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'group1');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 66);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add quotation', 7, 'add_quotation'),
(20, 'Can change quotation', 7, 'change_quotation'),
(21, 'Can delete quotation', 7, 'delete_quotation'),
(22, 'Can add company', 8, 'add_company'),
(23, 'Can change company', 8, 'change_company'),
(24, 'Can delete company', 8, 'delete_company'),
(25, 'Can add school', 9, 'add_school'),
(26, 'Can change school', 9, 'change_school'),
(27, 'Can delete school', 9, 'delete_school'),
(28, 'Can add status', 10, 'add_status'),
(29, 'Can change status', 10, 'change_status'),
(30, 'Can delete status', 10, 'delete_status'),
(31, 'Can add technician', 11, 'add_technician'),
(32, 'Can change technician', 11, 'change_technician'),
(33, 'Can delete technician', 11, 'delete_technician'),
(34, 'Can add itadmin', 12, 'add_itadmin'),
(35, 'Can change itadmin', 12, 'change_itadmin'),
(36, 'Can delete itadmin', 12, 'delete_itadmin'),
(37, 'Can add brand', 13, 'add_brand'),
(38, 'Can change brand', 13, 'change_brand'),
(39, 'Can delete brand', 13, 'delete_brand'),
(40, 'Can add department', 14, 'add_department'),
(41, 'Can change department', 14, 'change_department'),
(42, 'Can delete department', 14, 'delete_department'),
(43, 'Can add request', 15, 'add_request'),
(44, 'Can change request', 15, 'change_request'),
(45, 'Can delete request', 15, 'delete_request'),
(46, 'Can add device', 16, 'add_device'),
(47, 'Can change device', 16, 'change_device'),
(48, 'Can delete device', 16, 'delete_device'),
(49, 'Can View Toners', 15, 'view_toners'),
(50, 'Can View All Tabs', 15, 'view_general'),
(51, 'Can Edit Toners', 15, 'edit_toners'),
(52, 'Can View Companies', 8, 'view_companies'),
(53, 'Can View Statuses', 10, 'view_statuses'),
(54, 'Can View Technicians', 11, 'view_technicians'),
(55, 'Can View Brands', 13, 'view_brands'),
(56, 'Can View Departments', 14, 'view_departments'),
(57, 'Can View Devices', 16, 'view_devices'),
(58, 'Can View Requests', 15, 'view_requests'),
(59, 'Can add building', 17, 'add_building'),
(60, 'Can change building', 17, 'change_building'),
(61, 'Can delete building', 17, 'delete_building'),
(62, 'Can View Building', 17, 'view_buildings'),
(63, 'Can add printer', 18, 'add_printer'),
(64, 'Can change printer', 18, 'change_printer'),
(65, 'Can delete printer', 18, 'delete_printer'),
(66, 'Can View Printers', 18, 'view_printers');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET latin1 NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$4eo9SoZU9kiW$aYymUbZi8+69JV473AF/rVqQOLDKUC5CqDye4tS8HSA=', '2018-11-14 07:51:08.542953', 1, 'admin', '', '', 'admin@example.com', 1, 1, '2018-05-24 09:01:04.351896'),
(2, 'pbkdf2_sha256$100000$tlGRHVyVRNee$QCI1lgbLFDu/lP6UKb9mVgRZHsmZX3bCIrGlvyliU0Q=', '2018-06-10 09:21:32.655327', 0, 'm.peralakkandi', 'Muhammad', 'Peralakkandi', 'm.peralakkandi@edu.gov.qa', 0, 1, '2018-06-10 08:56:28.851293'),
(3, 'pbkdf2_sha256$100000$SLOSvRzdDS7r$t7Xzp+/ywZy7bSnLg6vXQx3SPBoH6sB04PYJFFEL1gk=', '2018-09-30 10:04:48.842799', 0, 'toner', 'toner', 'toner', 'toner@example.com', 0, 1, '2018-09-20 11:41:09.431592'),
(4, 'pbkdf2_sha256$100000$IdlzOewXnZOr$ZhZqywXnzmvdekGpTNRRM859gi2lo9+oP0DhDwLmoPE=', '2018-11-14 07:24:33.131198', 0, 'user', 'User', 'User', 'user@example.com', 0, 1, '2018-09-20 11:52:44.758529'),
(5, 'pbkdf2_sha256$100000$l4UJi9esSUrU$J59kbVwsE2YGYZwSEQUFKZgzafy0A/0Eh1LUNRFk/9M=', '2018-11-14 07:50:47.998468', 0, 'printers', 'Print', 'Print', 'print@print.com', 0, 1, '2018-10-28 06:09:23.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(3, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 3, 49),
(2, 4, 50),
(3, 3, 51),
(4, 5, 64),
(12, 5, 53),
(6, 5, 66),
(13, 5, 28),
(8, 5, 59),
(9, 5, 60),
(10, 5, 61),
(11, 5, 62),
(14, 5, 29),
(15, 5, 30);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-10-29 11:18:47.366218', '5', 'printers', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(2, '2018-10-29 11:20:06.757462', '5', 'printers', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(3, '2018-10-29 11:39:31.506323', '5', 'printers', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'requests', 'quotation'),
(8, 'requests', 'company'),
(9, 'requests', 'school'),
(10, 'requests', 'status'),
(11, 'requests', 'technician'),
(12, 'requests', 'itadmin'),
(13, 'requests', 'brand'),
(14, 'requests', 'department'),
(15, 'requests', 'request'),
(16, 'requests', 'device'),
(17, 'requests', 'building'),
(18, 'requests', 'printer');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-05-24 08:40:41.746849'),
(2, 'auth', '0001_initial', '2018-05-24 08:40:44.799134'),
(3, 'admin', '0001_initial', '2018-05-24 08:40:45.555852'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-05-24 08:40:45.587127'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-05-24 08:40:45.871976'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-05-24 08:40:46.003772'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-05-24 08:40:46.126543'),
(8, 'auth', '0004_alter_user_username_opts', '2018-05-24 08:40:46.157765'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-05-24 08:40:46.298419'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-05-24 08:40:46.298419'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-05-24 08:40:46.345296'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-05-24 08:40:46.548678'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-05-24 08:40:46.689306'),
(14, 'sessions', '0001_initial', '2018-05-24 08:40:46.954962'),
(15, 'requests', '0001_initial', '2018-05-24 08:46:31.183524'),
(16, 'requests', '0002_auto_20180530_1457', '2018-05-30 11:57:38.334548'),
(17, 'requests', '0003_auto_20180920_1448', '2018-09-20 11:48:54.251885'),
(18, 'requests', '0004_auto_20180924_0901', '2018-09-24 06:01:16.993600'),
(19, 'requests', '0005_auto_20181024_0811', '2018-10-24 05:12:10.410630'),
(20, 'requests', '0006_building_printer', '2018-10-24 10:59:28.033294'),
(21, 'requests', '0007_auto_20181030_1033', '2018-10-30 07:33:22.928295'),
(22, 'requests', '0008_status_details', '2018-10-30 08:00:19.718290');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('rcmnyv7c93prodmax5i1rl62whqo43fe', 'NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=', '2018-06-07 09:20:48.817556'),
('nbx5ywh1vblar8q6x05hf43eqlddnpzg', 'NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=', '2018-06-11 09:26:13.458818'),
('50n8kpgbnxqoszrd086amw1ptxpmabx6', 'NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=', '2018-06-12 09:51:49.299806'),
('urgr6bmzz7efffuxzy5101ufvep65cf4', 'NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=', '2018-06-14 10:31:53.441439'),
('ok7ugqnvccpnlk192xoo1lqjslxtz0p4', 'NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=', '2018-06-18 07:28:24.434732'),
('ss4ennjoipn6hsaabeul4cj71k86tvuu', 'NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=', '2018-06-18 09:52:34.372959'),
('0j4r561o99nq7s90ixn27ywnxoa1kc1e', 'NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=', '2018-06-19 10:18:03.315830'),
('nlsu7dhphpz415rgyupwx59brg97mcnt', 'Zjg1YTdiMzM4NDU3MDM3OTMyMDAxZjQ5YzllNTlkNjhkZmVmMTJjNzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOTVmNTlmYjNlZWFjYWE3NjljYTIyNTE5MGNkZTM0YWZkODYzZWU1In0=', '2018-06-24 09:19:14.433939'),
('wwn30yn8uk4jooskpnskpau18qusxd5t', 'YTU4M2ZhNjFiZTRjZDIxOWMyMDFkNTNmZjMxOWMyMDQ4NGRjODFlMzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxODI3MWE5MzJiY2E2Y2M0ZjE1YTc2OThhM2Y1NWY1NmZlYjc0YTdmIn0=', '2018-06-24 08:57:39.566260'),
('jgyop7i939ovm2ioievm4vj93e9139vw', 'NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=', '2018-07-08 04:47:26.359368'),
('4l86t7408lmk9zj9aqxkargl3w8avzo0', 'NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=', '2018-07-17 09:48:19.650467'),
('s7uymy1c7e4hu6u212jz1u1s1ujnlz0m', 'NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=', '2018-07-18 06:22:20.115267'),
('327pc4gv6vcbcgnwifoyx6f1i85mubzc', 'NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=', '2018-07-22 06:54:38.008362'),
('zax0zxangk695awqd3r5xjivos3udejj', 'NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=', '2018-07-30 07:14:22.052731'),
('u65x7c413omhcz3wf5lcoo07yx67f5gb', 'NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=', '2018-09-10 05:16:46.555737'),
('wycs5779ug5ux7uiw29709hjh7f91y3u', 'ZWZmNWZjYzUwY2E2ZjEyZDgzYTg0MzlhNWE1YThjNzI4NWRiOGEwNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Y2NlZTFiMjllMDU1MDM5MWQ3N2VhNzYxZThmNmQ1ZDdkOWMwNWEwIn0=', '2018-10-14 10:04:48.844798'),
('b6kqsdwu35c0drzmirtynsuitbe0bxm2', 'NDU1MDc1YjY2ZmQzMjVmNjk4YmEzMWE4NmM2YjFmOWU1YzdjNTQ1ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyOGI2MTQyNjI4MmZiMTRkZjQyNDQ4MjViZmVmOGU2OWNhMTY2YzE5In0=', '2018-11-13 05:41:05.917712'),
('r2ca9ztddjprss08x4j05nh5r8cp3za7', 'NDU1MDc1YjY2ZmQzMjVmNjk4YmEzMWE4NmM2YjFmOWU1YzdjNTQ1ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyOGI2MTQyNjI4MmZiMTRkZjQyNDQ4MjViZmVmOGU2OWNhMTY2YzE5In0=', '2018-11-28 07:51:08.543953');

-- --------------------------------------------------------

--
-- Table structure for table `requests_brand`
--

DROP TABLE IF EXISTS `requests_brand`;
CREATE TABLE IF NOT EXISTS `requests_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `requests_brand`
--

INSERT INTO `requests_brand` (`id`, `name`) VALUES
(1, 'Dell');

-- --------------------------------------------------------

--
-- Table structure for table `requests_building`
--

DROP TABLE IF EXISTS `requests_building`;
CREATE TABLE IF NOT EXISTS `requests_building` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests_building`
--

INSERT INTO `requests_building` (`id`, `name`) VALUES
(1, 'Tower');

-- --------------------------------------------------------

--
-- Table structure for table `requests_company`
--

DROP TABLE IF EXISTS `requests_company`;
CREATE TABLE IF NOT EXISTS `requests_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `requests_company`
--

INSERT INTO `requests_company` (`id`, `name`, `email`, `phone`) VALUES
(1, 'Mannai', 'mannai@mannai.com', '44444444');

-- --------------------------------------------------------

--
-- Table structure for table `requests_department`
--

DROP TABLE IF EXISTS `requests_department`;
CREATE TABLE IF NOT EXISTS `requests_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `requests_department`
--

INSERT INTO `requests_department` (`id`, `name`) VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'إدارة نظم المعلومات');

-- --------------------------------------------------------

--
-- Table structure for table `requests_device`
--

DROP TABLE IF EXISTS `requests_device`;
CREATE TABLE IF NOT EXISTS `requests_device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `requests_device`
--

INSERT INTO `requests_device` (`id`, `name`) VALUES
(1, 'Laptop'),
(2, 'Desktop'),
(3, 'Printer'),
(4, 'Toner');

-- --------------------------------------------------------

--
-- Table structure for table `requests_printer`
--

DROP TABLE IF EXISTS `requests_printer`;
CREATE TABLE IF NOT EXISTS `requests_printer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(100) DEFAULT NULL,
  `floor` varchar(100) DEFAULT NULL,
  `room` varchar(100) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `barcode` varchar(50) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `notes` longtext,
  `brand_id` int(11) DEFAULT NULL,
  `building_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `requests_printer_barcode_10eba98b_uniq` (`barcode`),
  UNIQUE KEY `requests_printer_reference_e88d5e3e_uniq` (`reference`),
  KEY `requests_printer_brand_id_f869f5a8` (`brand_id`),
  KEY `requests_printer_building_id_ee8ab9be` (`building_id`),
  KEY `requests_printer_department_id_c0fa14a9` (`department_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests_printer`
--

INSERT INTO `requests_printer` (`id`, `model`, `floor`, `room`, `ip`, `barcode`, `reference`, `notes`, `brand_id`, `building_id`, `department_id`) VALUES
(1, 'adddfff', '4', NULL, '10.0.0.2', '234553', '#3456456', 'asdsaf sdf sdf \r\nsfdfs df\r\n\r\nsdf sdf \r\n\r\nsdf sdf', 1, 1, 1),
(2, 'adddfffsdf', '14', NULL, '10.0.0.5', '35565423', '#45646777', '', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `requests_request`
--

DROP TABLE IF EXISTS `requests_request`;
CREATE TABLE IF NOT EXISTS `requests_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `request_date` date DEFAULT NULL,
  `resolution_date` date DEFAULT NULL,
  `employee` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `notes` longtext,
  `created` date NOT NULL,
  `added_by_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `device_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `technician_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `requests_request_added_by_id_545828be` (`added_by_id`),
  KEY `requests_request_brand_id_e2909f6d` (`brand_id`),
  KEY `requests_request_company_id_cac4d0f6` (`company_id`),
  KEY `requests_request_department_id_5fcefab0` (`department_id`),
  KEY `requests_request_device_id_200f9064` (`device_id`),
  KEY `requests_request_status_id_5d0178e6` (`status_id`),
  KEY `requests_request_technician_id_352fad54` (`technician_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `requests_request`
--

INSERT INTO `requests_request` (`id`, `reference`, `model`, `request_date`, `resolution_date`, `employee`, `username`, `location`, `notes`, `created`, `added_by_id`, `brand_id`, `company_id`, `department_id`, `device_id`, `status_id`, `technician_id`) VALUES
(1, '23334545', NULL, '2018-05-31', '2018-05-31', NULL, NULL, NULL, NULL, '2018-05-31', NULL, 1, 1, 1, 1, 1, 1),
(2, '3423423', 'E3434', '2018-06-11', '2018-06-12', 'Ahmed', 'a.ahmed', '', '', '2018-06-10', NULL, 1, 1, 2, 1, 2, 1),
(3, '34234233', 'E3434', '2018-06-19', '2018-06-25', 'Ahmed', 'a.ahmed', '', '', '2018-06-10', NULL, 1, 1, 1, 1, 2, 1),
(4, '2342344', 'adddfff', '2018-09-20', NULL, 'Ahmed Ahmed', 'a.ahmad', '', '', '2018-09-20', NULL, 1, 1, 1, 4, 2, 1),
(5, '566543', 'adddfff', '2018-09-25', '2018-09-25', 'Ahmed Ahmed', 'm.peralakkandi', '', '', '2018-09-24', NULL, 1, 1, 2, 4, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `requests_status`
--

DROP TABLE IF EXISTS `requests_status`;
CREATE TABLE IF NOT EXISTS `requests_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `color` varchar(7) DEFAULT NULL,
  `details` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `requests_status`
--

INSERT INTO `requests_status` (`id`, `name`, `color`, `details`) VALUES
(1, 'active', '#f40006', 'The request is open\r\ntesting linebreaks'),
(2, 'Pending', '#aea420', NULL),
(3, 'Complete', '#1f701d', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `requests_technician`
--

DROP TABLE IF EXISTS `requests_technician`;
CREATE TABLE IF NOT EXISTS `requests_technician` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `requests_technician`
--

INSERT INTO `requests_technician` (`id`, `name`, `email`, `phone`, `department`) VALUES
(1, 'Ahmed Darwish', '', '', ''),
(2, 'Ahmed Muhammad', '', '33221144', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
