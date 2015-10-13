-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: log_display
-- ------------------------------------------------------
-- Server version	5.5.43-0+deb7u1

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
-- Table structure for table `Cache`
--

DROP TABLE IF EXISTS `Cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cache`
--

LOCK TABLES `Cache` WRITE;
/*!40000 ALTER TABLE `Cache` DISABLE KEYS */;
INSERT INTO `Cache` VALUES (1,'2015-10-13 07:43:19');
/*!40000 ALTER TABLE `Cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File`
--

DROP TABLE IF EXISTS `File`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `File` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `path` varchar(256) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File`
--

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
INSERT INTO `File` VALUES (1,NULL,'error.log','/home/romanbvd/logs//error.log','2015-10-13 08:41:52'),(2,NULL,'error.log.1','/home/romanbvd/logs//error.log.1','2015-10-13 08:41:52'),(3,NULL,'error.log.11','/home/romanbvd/logs//error.log.11','2015-10-13 08:41:52'),(4,NULL,'error.log.12','/home/romanbvd/logs//error.log.12','2015-10-13 08:41:52'),(5,NULL,'error.log.13','/home/romanbvd/logs//error.log.13','2015-10-13 08:41:52');
/*!40000 ALTER TABLE `File` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Line`
--

DROP TABLE IF EXISTS `Line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Line` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_file` int(11) unsigned DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `log_info` text,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Line`
--

LOCK TABLES `Line` WRITE;
/*!40000 ALTER TABLE `Line` DISABLE KEYS */;
INSERT INTO `Line` VALUES (1,NULL,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-04 09:57:23'),(2,NULL,'notice','caught SIGTERM, shutting down','2015-10-04 19:17:19'),(3,NULL,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-04 20:55:00'),(4,NULL,'notice','caught SIGTERM, shutting down','2015-10-04 23:02:19'),(5,NULL,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-05 09:02:31'),(6,NULL,'notice','caught SIGTERM, shutting down','2015-10-05 10:12:08'),(7,NULL,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-05 14:02:49'),(8,NULL,'notice','caught SIGTERM, shutting down','2015-10-05 23:28:04'),(9,NULL,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-06 07:52:20'),(10,NULL,'notice','caught SIGTERM, shutting down','2015-10-06 08:29:21'),(11,NULL,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-06 10:02:46'),(12,NULL,'notice','caught SIGTERM, shutting down','2015-10-06 10:16:06'),(13,NULL,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-06 13:07:06'),(14,NULL,'notice','caught SIGTERM, shutting down','2015-10-06 19:17:39'),(15,NULL,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-06 20:20:34'),(16,NULL,'notice','caught SIGTERM, shutting down','2015-10-06 23:09:41'),(17,NULL,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-07 07:58:10'),(18,NULL,'notice','caught SIGTERM, shutting down','2015-10-07 10:21:19'),(19,NULL,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-07 11:20:38'),(20,NULL,'notice','caught SIGTERM, shutting down','2015-10-07 15:30:05'),(21,NULL,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-07 18:18:03'),(22,NULL,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-07 21:04:11'),(23,NULL,'notice','caught SIGTERM, shutting down','2015-10-08 00:01:11'),(24,NULL,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-08 09:08:11');
/*!40000 ALTER TABLE `Line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `hash` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-13 13:35:09
