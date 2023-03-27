-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: moemaintenance
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'group1');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,66);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add quotation',7,'add_quotation'),(20,'Can change quotation',7,'change_quotation'),(21,'Can delete quotation',7,'delete_quotation'),(22,'Can add company',8,'add_company'),(23,'Can change company',8,'change_company'),(24,'Can delete company',8,'delete_company'),(25,'Can add school',9,'add_school'),(26,'Can change school',9,'change_school'),(27,'Can delete school',9,'delete_school'),(28,'Can add status',10,'add_status'),(29,'Can change status',10,'change_status'),(30,'Can delete status',10,'delete_status'),(31,'Can add technician',11,'add_technician'),(32,'Can change technician',11,'change_technician'),(33,'Can delete technician',11,'delete_technician'),(34,'Can add itadmin',12,'add_itadmin'),(35,'Can change itadmin',12,'change_itadmin'),(36,'Can delete itadmin',12,'delete_itadmin'),(37,'Can add brand',13,'add_brand'),(38,'Can change brand',13,'change_brand'),(39,'Can delete brand',13,'delete_brand'),(40,'Can add department',14,'add_department'),(41,'Can change department',14,'change_department'),(42,'Can delete department',14,'delete_department'),(43,'Can add request',15,'add_request'),(44,'Can change request',15,'change_request'),(45,'Can delete request',15,'delete_request'),(46,'Can add device',16,'add_device'),(47,'Can change device',16,'change_device'),(48,'Can delete device',16,'delete_device'),(49,'Can View Toners',15,'view_toners'),(50,'Can View All Tabs',15,'view_general'),(51,'Can Edit Toners',15,'edit_toners'),(52,'Can View Companies',8,'view_companies'),(53,'Can View Statuses',10,'view_statuses'),(54,'Can View Technicians',11,'view_technicians'),(55,'Can View Brands',13,'view_brands'),(56,'Can View Departments',14,'view_departments'),(57,'Can View Devices',16,'view_devices'),(58,'Can View Requests',15,'view_requests'),(59,'Can add building',17,'add_building'),(60,'Can change building',17,'change_building'),(61,'Can delete building',17,'delete_building'),(62,'Can View Building',17,'view_buildings'),(63,'Can add printer',18,'add_printer'),(64,'Can change printer',18,'change_printer'),(65,'Can delete printer',18,'delete_printer'),(66,'Can View Printers',18,'view_printers'),(67,'Can view log entry',1,'view_logentry'),(68,'Can view permission',2,'view_permission'),(69,'Can view group',3,'view_group'),(70,'Can view user',4,'view_user'),(71,'Can view content type',5,'view_contenttype'),(72,'Can view session',6,'view_session'),(73,'Can view company',8,'view_company'),(74,'Can view status',10,'view_status'),(75,'Can view technician',11,'view_technician'),(76,'Can view brand',13,'view_brand'),(77,'Can view department',14,'view_department'),(78,'Can view device',16,'view_device'),(79,'Can view request',15,'view_request'),(80,'Can view building',17,'view_building'),(81,'Can view printer',18,'view_printer');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$ppN1vmBl2PRBs7CCPIcN9e$+fvvKvELdjLKtKcC4AZ/MQOG7Kc4/xOMK1hyU4W72bs=','2023-03-27 11:19:42.788265',1,'admin','','','admin@example.com',1,1,'2018-05-24 09:01:04.351896'),(3,'pbkdf2_sha256$720000$gmfjWPMtvGXAASQXdmcXEB$5VLaRxgnRf0Wrm2062UO9FwcrSygdPT/anNCQcJbi+I=','2023-03-27 11:12:08.568317',0,'printer','Printers','Manager','toner@example.com',0,1,'2018-09-20 11:41:09.431592'),(4,'pbkdf2_sha256$720000$LjUXFmyNSJzqOMcgqnfQP7$08xo2p7HwOZKsoRAgk41DNW/+TFTes7An3Oi+Q2qaFY=','2023-03-27 11:17:30.177361',0,'user','Viewer','Viewer','user@example.com',0,1,'2018-09-20 11:52:44.758529'),(5,'pbkdf2_sha256$720000$jFM5LyI3PoFoSsykqjIcmy$k1QGme0GoLGseVDfxn1QrT/inK8NfUwUHwXYAKHra7I=','2023-03-27 11:19:08.846265',0,'printers','Printers','Editor','print@print.com',0,1,'2018-10-28 06:09:23.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (3,5,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (20,3,66),(2,4,50),(19,3,65),(4,5,64),(12,5,53),(6,5,66),(13,5,28),(8,5,59),(9,5,60),(10,5,61),(11,5,62),(14,5,29),(15,5,30),(18,3,64),(21,3,81),(22,3,63),(23,4,66),(24,4,73),(25,4,74),(26,4,75),(27,4,76),(28,4,77),(29,4,78),(30,4,79),(31,4,80),(32,4,81),(33,4,52),(34,4,53),(35,4,54),(36,4,55),(37,4,56),(38,4,57),(39,4,58),(40,4,62);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-10-29 11:18:47.366218','5','printers',2,'[{\"changed\": {\"fields\": [\"groups\"]}}]',4,1),(2,'2018-10-29 11:20:06.757462','5','printers',2,'[{\"changed\": {\"fields\": [\"groups\"]}}]',4,1),(3,'2018-10-29 11:39:31.506323','5','printers',2,'[{\"changed\": {\"fields\": [\"groups\"]}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'requests','quotation'),(8,'requests','company'),(9,'requests','school'),(10,'requests','status'),(11,'requests','technician'),(12,'requests','itadmin'),(13,'requests','brand'),(14,'requests','department'),(15,'requests','request'),(16,'requests','device'),(17,'requests','building'),(18,'requests','printer');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-05-24 08:40:41.746849'),(2,'auth','0001_initial','2018-05-24 08:40:44.799134'),(3,'admin','0001_initial','2018-05-24 08:40:45.555852'),(4,'admin','0002_logentry_remove_auto_add','2018-05-24 08:40:45.587127'),(5,'contenttypes','0002_remove_content_type_name','2018-05-24 08:40:45.871976'),(6,'auth','0002_alter_permission_name_max_length','2018-05-24 08:40:46.003772'),(7,'auth','0003_alter_user_email_max_length','2018-05-24 08:40:46.126543'),(8,'auth','0004_alter_user_username_opts','2018-05-24 08:40:46.157765'),(9,'auth','0005_alter_user_last_login_null','2018-05-24 08:40:46.298419'),(10,'auth','0006_require_contenttypes_0002','2018-05-24 08:40:46.298419'),(11,'auth','0007_alter_validators_add_error_messages','2018-05-24 08:40:46.345296'),(12,'auth','0008_alter_user_username_max_length','2018-05-24 08:40:46.548678'),(13,'auth','0009_alter_user_last_name_max_length','2018-05-24 08:40:46.689306'),(14,'sessions','0001_initial','2018-05-24 08:40:46.954962'),(15,'requests','0001_initial','2018-05-24 08:46:31.183524'),(16,'requests','0002_auto_20180530_1457','2018-05-30 11:57:38.334548'),(17,'requests','0003_auto_20180920_1448','2018-09-20 11:48:54.251885'),(18,'requests','0004_auto_20180924_0901','2018-09-24 06:01:16.993600'),(19,'requests','0005_auto_20181024_0811','2018-10-24 05:12:10.410630'),(20,'requests','0006_building_printer','2018-10-24 10:59:28.033294'),(21,'requests','0007_auto_20181030_1033','2018-10-30 07:33:22.928295'),(22,'requests','0008_status_details','2018-10-30 08:00:19.718290'),(23,'admin','0003_logentry_add_action_flag_choices','2023-03-26 14:23:30.481167'),(24,'auth','0010_alter_group_name_max_length','2023-03-26 14:23:30.496166'),(25,'auth','0011_update_proxy_permissions','2023-03-26 14:23:30.506731'),(26,'auth','0012_alter_user_first_name_max_length','2023-03-26 14:23:30.521306');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('rcmnyv7c93prodmax5i1rl62whqo43fe','NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=','2018-06-07 09:20:48.817556'),('nbx5ywh1vblar8q6x05hf43eqlddnpzg','NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=','2018-06-11 09:26:13.458818'),('50n8kpgbnxqoszrd086amw1ptxpmabx6','NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=','2018-06-12 09:51:49.299806'),('urgr6bmzz7efffuxzy5101ufvep65cf4','NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=','2018-06-14 10:31:53.441439'),('ok7ugqnvccpnlk192xoo1lqjslxtz0p4','NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=','2018-06-18 07:28:24.434732'),('ss4ennjoipn6hsaabeul4cj71k86tvuu','NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=','2018-06-18 09:52:34.372959'),('0j4r561o99nq7s90ixn27ywnxoa1kc1e','NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=','2018-06-19 10:18:03.315830'),('nlsu7dhphpz415rgyupwx59brg97mcnt','Zjg1YTdiMzM4NDU3MDM3OTMyMDAxZjQ5YzllNTlkNjhkZmVmMTJjNzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOTVmNTlmYjNlZWFjYWE3NjljYTIyNTE5MGNkZTM0YWZkODYzZWU1In0=','2018-06-24 09:19:14.433939'),('wwn30yn8uk4jooskpnskpau18qusxd5t','YTU4M2ZhNjFiZTRjZDIxOWMyMDFkNTNmZjMxOWMyMDQ4NGRjODFlMzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxODI3MWE5MzJiY2E2Y2M0ZjE1YTc2OThhM2Y1NWY1NmZlYjc0YTdmIn0=','2018-06-24 08:57:39.566260'),('jgyop7i939ovm2ioievm4vj93e9139vw','NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=','2018-07-08 04:47:26.359368'),('4l86t7408lmk9zj9aqxkargl3w8avzo0','NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=','2018-07-17 09:48:19.650467'),('s7uymy1c7e4hu6u212jz1u1s1ujnlz0m','NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=','2018-07-18 06:22:20.115267'),('327pc4gv6vcbcgnwifoyx6f1i85mubzc','NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=','2018-07-22 06:54:38.008362'),('zax0zxangk695awqd3r5xjivos3udejj','NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=','2018-07-30 07:14:22.052731'),('u65x7c413omhcz3wf5lcoo07yx67f5gb','NzUyYmNhYmI5Y2VhMWM4NTJhNGRmY2JmNzgxMzI0ZmM2Yjg2YjlmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWQyNmI5M2YzMDFlM2UyNDNhMjA4OTYxOGY1YWE4OTRkMTQwNzQwIn0=','2018-09-10 05:16:46.555737'),('wycs5779ug5ux7uiw29709hjh7f91y3u','ZWZmNWZjYzUwY2E2ZjEyZDgzYTg0MzlhNWE1YThjNzI4NWRiOGEwNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Y2NlZTFiMjllMDU1MDM5MWQ3N2VhNzYxZThmNmQ1ZDdkOWMwNWEwIn0=','2018-10-14 10:04:48.844798'),('b6kqsdwu35c0drzmirtynsuitbe0bxm2','NDU1MDc1YjY2ZmQzMjVmNjk4YmEzMWE4NmM2YjFmOWU1YzdjNTQ1ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyOGI2MTQyNjI4MmZiMTRkZjQyNDQ4MjViZmVmOGU2OWNhMTY2YzE5In0=','2018-11-13 05:41:05.917712'),('r2ca9ztddjprss08x4j05nh5r8cp3za7','NDU1MDc1YjY2ZmQzMjVmNjk4YmEzMWE4NmM2YjFmOWU1YzdjNTQ1ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyOGI2MTQyNjI4MmZiMTRkZjQyNDQ4MjViZmVmOGU2OWNhMTY2YzE5In0=','2018-11-28 07:51:08.543953'),('rtev8skqwt9g4sq2kzu0ypd3rvistvu0','.eJxVjEEOwiAQRe_C2hA6FCgu3XsGMjCDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwkziLQZx-t4jpwXUHdMd6azK1ui5zlLsiD9rltRE_L4f7d1Cwl2-dQTmbRlIWjBudRa29sUxI6L2miU1MBNkDKTaahpg0o0E7QY5IBsT7A96qOGE:1pgkt4:p-OfCXzg3ekn3duwnS0zbxI9S99wFAAB-o1nrfOdLL4','2023-04-10 11:19:42.791810');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_brand`
--

DROP TABLE IF EXISTS `requests_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests_brand` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_brand`
--

LOCK TABLES `requests_brand` WRITE;
/*!40000 ALTER TABLE `requests_brand` DISABLE KEYS */;
INSERT INTO `requests_brand` VALUES (1,'Dell');
/*!40000 ALTER TABLE `requests_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_building`
--

DROP TABLE IF EXISTS `requests_building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests_building` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_building`
--

LOCK TABLES `requests_building` WRITE;
/*!40000 ALTER TABLE `requests_building` DISABLE KEYS */;
INSERT INTO `requests_building` VALUES (1,'Building1');
/*!40000 ALTER TABLE `requests_building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_company`
--

DROP TABLE IF EXISTS `requests_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests_company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_company`
--

LOCK TABLES `requests_company` WRITE;
/*!40000 ALTER TABLE `requests_company` DISABLE KEYS */;
INSERT INTO `requests_company` VALUES (1,'Company1','company@company.com','44444444');
/*!40000 ALTER TABLE `requests_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_department`
--

DROP TABLE IF EXISTS `requests_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests_department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_department`
--

LOCK TABLES `requests_department` WRITE;
/*!40000 ALTER TABLE `requests_department` DISABLE KEYS */;
INSERT INTO `requests_department` VALUES (1,'HR'),(2,'IT');
/*!40000 ALTER TABLE `requests_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_device`
--

DROP TABLE IF EXISTS `requests_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests_device` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_device`
--

LOCK TABLES `requests_device` WRITE;
/*!40000 ALTER TABLE `requests_device` DISABLE KEYS */;
INSERT INTO `requests_device` VALUES (1,'Laptop'),(2,'Desktop'),(3,'Printer'),(4,'Toner');
/*!40000 ALTER TABLE `requests_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_printer`
--

DROP TABLE IF EXISTS `requests_printer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests_printer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(100) DEFAULT NULL,
  `floor` varchar(100) DEFAULT NULL,
  `room` varchar(100) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `barcode` varchar(50) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `notes` longtext,
  `brand_id` int DEFAULT NULL,
  `building_id` int DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `requests_printer_barcode_10eba98b_uniq` (`barcode`),
  UNIQUE KEY `requests_printer_reference_e88d5e3e_uniq` (`reference`),
  KEY `requests_printer_brand_id_f869f5a8` (`brand_id`),
  KEY `requests_printer_building_id_ee8ab9be` (`building_id`),
  KEY `requests_printer_department_id_c0fa14a9` (`department_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_printer`
--

LOCK TABLES `requests_printer` WRITE;
/*!40000 ALTER TABLE `requests_printer` DISABLE KEYS */;
INSERT INTO `requests_printer` VALUES (1,'adddfff','4',NULL,'10.0.0.2','234553','#3456456','asdsaf sdf sdf \r\nsfdfs df\r\n\r\nsdf sdf \r\n\r\nsdf sdf',1,1,1),(2,'adddfffsdf','14',NULL,'10.0.0.5','35565423','#45646777','',1,1,2);
/*!40000 ALTER TABLE `requests_printer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_request`
--

DROP TABLE IF EXISTS `requests_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `request_date` date DEFAULT NULL,
  `resolution_date` date DEFAULT NULL,
  `employee` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `notes` longtext,
  `created` date NOT NULL,
  `added_by_id` int DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `device_id` int DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `technician_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `requests_request_added_by_id_545828be` (`added_by_id`),
  KEY `requests_request_brand_id_e2909f6d` (`brand_id`),
  KEY `requests_request_company_id_cac4d0f6` (`company_id`),
  KEY `requests_request_department_id_5fcefab0` (`department_id`),
  KEY `requests_request_device_id_200f9064` (`device_id`),
  KEY `requests_request_status_id_5d0178e6` (`status_id`),
  KEY `requests_request_technician_id_352fad54` (`technician_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_request`
--

LOCK TABLES `requests_request` WRITE;
/*!40000 ALTER TABLE `requests_request` DISABLE KEYS */;
INSERT INTO `requests_request` VALUES (1,'23334545',NULL,'2018-05-31','2018-05-31',NULL,NULL,NULL,NULL,'2018-05-31',NULL,1,1,1,1,1,1),(2,'3423423','E3434','2018-06-11','2018-06-12','Ahmed','a.ahmed','','','2018-06-10',NULL,1,1,2,1,2,1),(3,'34234233','E3434','2018-06-19','2018-06-25','Ahmed','a.ahmed','','','2018-06-10',NULL,1,1,1,1,2,1),(4,'2342344','adddfff','2018-09-20',NULL,'Ahmed Ahmed','a.ahmad','','','2018-09-20',NULL,1,1,1,4,2,1),(5,'566543','adddfff','2018-09-25','2018-09-25','Ahmed Ahmed','m.muhammad','','','2018-09-24',NULL,1,1,2,4,3,1);
/*!40000 ALTER TABLE `requests_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_status`
--

DROP TABLE IF EXISTS `requests_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `color` varchar(7) DEFAULT NULL,
  `details` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_status`
--

LOCK TABLES `requests_status` WRITE;
/*!40000 ALTER TABLE `requests_status` DISABLE KEYS */;
INSERT INTO `requests_status` VALUES (1,'active','#1d00f5','The request is open'),(2,'Pending','#aea420',NULL),(3,'Complete','#1f701d',NULL);
/*!40000 ALTER TABLE `requests_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_technician`
--

DROP TABLE IF EXISTS `requests_technician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests_technician` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_technician`
--

LOCK TABLES `requests_technician` WRITE;
/*!40000 ALTER TABLE `requests_technician` DISABLE KEYS */;
INSERT INTO `requests_technician` VALUES (1,'Technician 1','','',''),(2,'Technician 2','','33221144','');
/*!40000 ALTER TABLE `requests_technician` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-27 14:35:58
