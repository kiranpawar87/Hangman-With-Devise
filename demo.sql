CREATE DATABASE  IF NOT EXISTS `demo_development` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `demo_development`;
-- MySQL dump 10.13  Distrib 5.6.13, for linux-glibc2.5 (x86_64)
--
-- Host: 127.0.0.1    Database: demo_development
-- ------------------------------------------------------
-- Server version	5.6.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Sports','2015-02-04 09:19:25','2015-02-04 09:19:25'),(2,'Animals','2015-02-04 09:19:59','2015-02-04 09:19:59'),(3,'Trees','2015-02-04 09:20:08','2015-02-04 09:20:08'),(4,'Birds','2015-02-04 09:20:18','2015-02-04 09:20:18'),(5,'Car Brands','2015-02-04 09:20:28','2015-02-04 09:20:28'),(6,'Countries','2015-02-04 09:20:38','2015-02-04 09:20:38'),(7,'States','2015-02-04 09:20:48','2015-02-04 09:20:48'),(8,'Colors','2015-02-04 09:21:00','2015-02-04 09:21:00');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nouns`
--

DROP TABLE IF EXISTS `nouns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nouns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_nouns_on_category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nouns`
--

LOCK TABLES `nouns` WRITE;
/*!40000 ALTER TABLE `nouns` DISABLE KEYS */;
INSERT INTO `nouns` VALUES (1,'Cricket','2015-01-30 07:50:26','2015-01-30 07:50:26',1),(2,'Hockey','2015-01-30 07:51:17','2015-01-30 07:51:17',1),(3,'Badminton','2015-01-30 07:51:32','2015-01-30 07:51:32',1),(4,'Baseball','2015-01-30 07:51:45','2015-01-30 07:51:45',1),(5,'Basketball','2015-01-30 07:51:57','2015-01-30 07:51:57',1),(6,'Chess','2015-01-30 07:52:08','2015-01-30 07:52:08',1),(7,'Darts','2015-01-30 07:52:19','2015-01-30 07:52:19',1),(8,'Soccer','2015-01-30 07:52:40','2015-01-30 07:52:40',1),(9,'Squash','2015-01-30 07:52:53','2015-01-30 07:52:53',1),(10,'Wrestling','2015-01-30 07:53:06','2015-01-30 07:53:06',1),(11,'Bear','2015-02-04 10:00:41','2015-02-04 10:00:41',2),(12,'Monkey','2015-02-04 10:01:04','2015-02-04 10:01:04',2),(13,'Tiger','2015-02-04 10:01:13','2015-02-04 10:01:13',2),(14,'Lion','2015-02-04 10:01:19','2015-02-04 10:01:19',2),(15,'Horse','2015-02-04 10:01:29','2015-02-04 10:01:29',2),(16,'Cat','2015-02-04 10:01:37','2015-02-04 10:01:37',2),(17,'Dog','2015-02-04 10:01:45','2015-02-04 10:01:45',2),(18,'Deer','2015-02-04 10:01:55','2015-02-04 10:01:55',2),(19,'Fox','2015-02-04 10:02:03','2015-02-04 10:02:03',2),(20,'Rabbit','2015-02-04 10:04:43','2015-02-04 10:04:43',2),(21,'Neem','2015-02-05 10:39:47','2015-02-05 10:39:47',3),(22,'Oak','2015-02-05 10:39:59','2015-02-05 10:39:59',3),(23,'Mango','2015-02-05 10:40:07','2015-02-05 10:40:07',3),(24,'Deodar','2015-02-05 10:40:16','2015-02-05 10:40:16',3),(25,'Sal','2015-02-05 10:40:24','2015-02-05 10:40:24',3),(26,'Sandalwood','2015-02-05 10:40:31','2015-02-05 10:40:31',3),(27,'Coconut','2015-02-05 10:40:44','2015-02-05 10:40:44',3),(28,'Banyan','2015-02-05 10:40:54','2015-02-05 10:40:54',3),(29,'Khejri','2015-02-05 10:41:04','2015-02-05 10:41:04',3),(30,'Almond','2015-02-05 10:41:13','2015-02-05 10:41:13',3),(31,'Flamingo','2015-02-05 10:41:44','2015-02-05 10:41:44',4),(32,'Seagull','2015-02-05 10:41:52','2015-02-05 10:41:52',4),(33,'Peacock','2015-02-05 10:42:02','2015-02-05 10:42:02',4),(34,'Hen','2015-02-05 10:42:14','2015-02-05 10:42:14',4),(35,'Koel','2015-02-05 10:42:23','2015-02-05 10:42:23',4),(36,'Pigeon','2015-02-05 10:42:33','2015-02-05 10:42:33',4),(37,'Dove','2015-02-05 10:42:42','2015-02-05 10:42:42',4),(38,'Crane','2015-02-05 10:42:55','2015-02-05 10:42:55',4),(39,'Kingfisher','2015-02-05 10:43:10','2015-02-05 10:43:10',4),(40,'Sparrow','2015-02-05 10:43:18','2015-02-05 10:43:18',4),(41,'Maruti','2015-02-09 07:40:46','2015-02-09 07:40:46',5),(42,'Hyundai','2015-02-09 07:40:56','2015-02-09 07:40:56',5),(43,'Tata','2015-02-09 07:41:05','2015-02-09 07:41:05',5),(44,'Mahindra','2015-02-09 07:41:13','2015-02-09 07:41:13',5),(45,'Toyota','2015-02-09 07:41:25','2015-02-09 07:41:25',5),(46,'GM','2015-02-09 07:41:34','2015-02-09 07:41:34',5),(47,'Ford','2015-02-09 07:41:42','2015-02-09 07:41:42',5),(48,'Honda','2015-02-09 07:41:51','2015-02-09 07:41:51',5),(49,'Volkswagen','2015-02-09 07:42:01','2015-02-09 07:42:01',5),(50,'Nissan','2015-02-09 07:42:10','2015-02-09 07:42:10',5),(51,'India','2015-02-09 07:42:37','2015-02-09 07:42:37',6),(52,'Pakistan','2015-02-09 07:42:44','2015-02-09 07:42:44',6),(53,'China','2015-02-09 07:42:52','2015-02-09 07:42:52',6),(54,'Nepal','2015-02-09 07:42:59','2015-02-09 07:42:59',6),(55,'Bhutan','2015-02-09 07:43:07','2015-02-09 07:43:07',6),(56,'Shrilanka','2015-02-09 07:43:15','2015-02-09 07:43:15',6),(57,'Belgium','2015-02-09 07:43:24','2015-02-09 07:43:24',6),(58,'Algeria','2015-02-09 07:43:31','2015-02-09 07:43:31',6),(59,'Austria','2015-02-09 07:43:40','2015-02-09 07:43:40',6),(60,'Australia','2015-02-09 07:43:47','2015-02-09 07:43:47',6),(61,'Maharashtra','2015-02-09 07:44:11','2015-02-09 07:44:11',7),(62,'Karnataka','2015-02-09 07:44:21','2015-02-09 07:44:21',7),(63,'Kerala','2015-02-09 07:44:27','2015-02-09 07:44:27',7),(64,'Assam','2015-02-09 07:44:39','2015-02-09 07:44:39',7),(65,'Sikkim','2015-02-09 07:44:47','2015-02-09 07:44:47',7),(66,'Punjab','2015-02-09 07:44:56','2015-02-09 07:44:56',7),(67,'Delhi','2015-02-09 07:45:03','2015-02-09 07:45:03',7),(68,'Rajasthan','2015-02-09 07:45:11','2015-02-09 07:45:11',7),(69,'Gujrat','2015-02-09 07:45:21','2015-02-09 07:45:21',7),(70,'Manipur','2015-02-09 07:46:14','2015-02-09 07:46:14',7),(71,'Yellow','2015-02-09 07:46:25','2015-02-09 07:46:25',8),(72,'Red','2015-02-09 07:46:32','2015-02-09 07:46:32',8),(73,'Green','2015-02-09 07:46:38','2015-02-09 07:46:38',8),(74,'Blue','2015-02-09 07:46:52','2015-02-09 07:46:52',8),(75,'Black','2015-02-09 07:46:59','2015-02-09 07:46:59',8),(76,'White','2015-02-09 07:47:09','2015-02-09 07:47:09',8),(77,'Purple','2015-02-09 07:47:17','2015-02-09 07:47:17',8),(78,'Silver','2015-02-09 07:47:24','2015-02-09 07:47:24',8),(79,'Khaki','2015-02-09 07:47:44','2015-02-09 07:47:44',8),(80,'Orange','2015-02-09 07:47:52','2015-02-09 07:47:52',8);
/*!40000 ALTER TABLE `nouns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20150130044131'),('20150130051734'),('20150130071152'),('20150130071230'),('20150130074840'),('20150204064353'),('20150204064431'),('20150204091726'),('20150206051300'),('20150209073358'),('20150209073535');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_infos`
--

DROP TABLE IF EXISTS `user_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `lose` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_infos`
--

LOCK TABLES `user_infos` WRITE;
/*!40000 ALTER TABLE `user_infos` DISABLE KEYS */;
INSERT INTO `user_infos` VALUES (41,'Kiran','Pawar','kiranpawar@gmail.com','kiranpawar','2015-01-30 08:46:10','2015-02-05 10:44:29',17,15),(42,'Nikhil','Ghadge','nikhil@iternia.com','nikhil','2015-01-30 10:34:31','2015-02-05 11:22:08',1,NULL),(43,'kaushik','dalvi','kaushikdalvi@gmail.com','kaushik','2015-02-02 07:44:55','2015-02-02 07:44:55',NULL,NULL),(44,'Supriya','Jadhav','supriyajadhav@gmail.com','supriya','2015-02-04 05:39:31','2015-02-04 05:39:31',NULL,NULL),(45,'Amarja','Patil','amarja@gmail.com','amarja','2015-02-04 06:46:20','2015-02-04 11:13:34',60,12),(46,'Amarja','Patil','amarja@gmail.com','amarja','2015-02-04 06:50:01','2015-02-04 06:50:01',0,0),(47,'ajay','patil','ajay@patil.com','ajaypatil','2015-02-05 06:25:20','2015-02-05 06:25:20',0,0),(48,'Nikhil','Ghadge','nikhil.gh3@gmail.com','nikhil123','2015-02-05 06:41:16','2015-02-05 06:41:16',0,0),(49,'Nikhil','Patil','nikhil@gmail.com','nikhilpatil','2015-02-05 06:43:07','2015-02-05 06:43:07',0,0),(50,'Ajay','Devgan','ajay@gmail.com','ajaydev','2015-02-05 06:44:01','2015-02-05 06:44:01',0,0),(51,'kiran','123','kiranpawar8792@gmail.com','kiranpawar','2015-02-05 07:12:43','2015-02-05 11:29:12',3,2),(52,'rav','iternia','r@sdsd.com','iternia','2015-02-05 11:42:00','2015-02-05 11:44:10',0,3);
/*!40000 ALTER TABLE `user_infos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-09 13:23:45
