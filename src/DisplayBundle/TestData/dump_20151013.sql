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
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File`
--

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
INSERT INTO `File` VALUES (42,NULL,'error.log.1','/home/romanbvd/logs//error.log.1','2015-10-13 08:41:52'),(41,NULL,'error.log','/home/romanbvd/logs//error.log','2015-10-13 08:41:52'),(40,NULL,'error.log.13','/home/romanbvd/logs//error.log.13','2015-10-13 08:41:52'),(39,NULL,'error.log.12','/home/romanbvd/logs//error.log.12','2015-10-13 08:41:52'),(37,NULL,'error.log.1','/home/romanbvd/logs//error.log.1','2015-10-13 08:41:52'),(38,NULL,'error.log.11','/home/romanbvd/logs//error.log.11','2015-10-13 08:41:52'),(36,NULL,'error.log','/home/romanbvd/logs//error.log','2015-10-13 08:41:52'),(34,NULL,'error.log.12','/home/romanbvd/logs//error.log.12','2015-10-13 08:41:52'),(35,NULL,'error.log.13','/home/romanbvd/logs//error.log.13','2015-10-13 08:41:52'),(33,NULL,'error.log.11','/home/romanbvd/logs//error.log.11','2015-10-13 08:41:52'),(32,NULL,'error.log.1','/home/romanbvd/logs//error.log.1','2015-10-13 08:41:52'),(31,NULL,'error.log','/home/romanbvd/logs//error.log','2015-10-13 08:41:52'),(43,NULL,'error.log.11','/home/romanbvd/logs//error.log.11','2015-10-13 08:41:52'),(44,NULL,'error.log.12','/home/romanbvd/logs//error.log.12','2015-10-13 08:41:52'),(45,NULL,'error.log.13','/home/romanbvd/logs//error.log.13','2015-10-13 08:41:52');
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
  `file_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `log_info` text,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=242 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Line`
--

LOCK TABLES `Line` WRITE;
/*!40000 ALTER TABLE `Line` DISABLE KEYS */;
INSERT INTO `Line` VALUES (128,31,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-04 09:57:23'),(129,31,'notice','caught SIGTERM, shutting down','2015-10-04 19:17:19'),(130,31,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-04 20:55:00'),(131,31,'notice','caught SIGTERM, shutting down','2015-10-04 23:02:19'),(132,31,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-05 09:02:31'),(133,31,'notice','caught SIGTERM, shutting down','2015-10-05 10:12:08'),(134,31,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-05 14:02:49'),(135,31,'notice','caught SIGTERM, shutting down','2015-10-05 23:28:04'),(136,31,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-06 07:52:20'),(137,31,'notice','caught SIGTERM, shutting down','2015-10-06 08:29:21'),(138,31,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-06 10:02:46'),(139,31,'notice','caught SIGTERM, shutting down','2015-10-06 10:16:06'),(140,31,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-06 13:07:06'),(141,31,'notice','caught SIGTERM, shutting down','2015-10-06 19:17:39'),(142,31,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-06 20:20:34'),(143,31,'notice','caught SIGTERM, shutting down','2015-10-06 23:09:41'),(144,31,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-07 07:58:10'),(145,31,'notice','caught SIGTERM, shutting down','2015-10-07 10:21:19'),(146,31,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-07 11:20:38'),(147,31,'notice','caught SIGTERM, shutting down','2015-10-07 15:30:05'),(148,31,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-07 18:18:03'),(149,31,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-07 21:04:11'),(150,31,'notice','caught SIGTERM, shutting down','2015-10-08 00:01:11'),(151,31,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-08 09:08:11'),(152,32,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-09-27 09:01:57'),(153,32,'notice','caught SIGTERM, shutting down','2015-09-27 09:27:55'),(154,32,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-09-27 11:13:59'),(155,32,'notice','caught SIGTERM, shutting down','2015-09-27 23:45:02'),(156,32,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-09-28 08:54:45'),(157,32,'notice','caught SIGTERM, shutting down','2015-09-28 10:29:17'),(158,32,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-09-28 13:48:09'),(159,32,'notice','Graceful restart requested, doing restart','2015-09-28 22:46:23'),(160,32,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-09-28 22:46:23'),(161,32,'notice','caught SIGTERM, shutting down','2015-09-28 22:46:30'),(162,32,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-09-28 22:46:31'),(163,32,'notice','Graceful restart requested, doing restart','2015-09-28 22:46:38'),(164,32,'error','(9)Bad file descriptor: apr_socket_accept: (client socket)','2015-09-28 22:46:38'),(165,32,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-09-28 22:46:38'),(166,36,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-04 09:57:23'),(167,36,'notice','caught SIGTERM, shutting down','2015-10-04 19:17:19'),(168,36,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-04 20:55:00'),(169,36,'notice','caught SIGTERM, shutting down','2015-10-04 23:02:19'),(170,36,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-05 09:02:31'),(171,36,'notice','caught SIGTERM, shutting down','2015-10-05 10:12:08'),(172,36,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-05 14:02:49'),(173,36,'notice','caught SIGTERM, shutting down','2015-10-05 23:28:04'),(174,36,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-06 07:52:20'),(175,36,'notice','caught SIGTERM, shutting down','2015-10-06 08:29:21'),(176,36,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-06 10:02:46'),(177,36,'notice','caught SIGTERM, shutting down','2015-10-06 10:16:06'),(178,36,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-06 13:07:06'),(179,36,'notice','caught SIGTERM, shutting down','2015-10-06 19:17:39'),(180,36,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-06 20:20:34'),(181,36,'notice','caught SIGTERM, shutting down','2015-10-06 23:09:41'),(182,36,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-07 07:58:10'),(183,36,'notice','caught SIGTERM, shutting down','2015-10-07 10:21:19'),(184,36,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-07 11:20:38'),(185,36,'notice','caught SIGTERM, shutting down','2015-10-07 15:30:05'),(186,36,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-07 18:18:03'),(187,36,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-07 21:04:11'),(188,36,'notice','caught SIGTERM, shutting down','2015-10-08 00:01:11'),(189,36,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-08 09:08:11'),(190,37,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-09-27 09:01:57'),(191,37,'notice','caught SIGTERM, shutting down','2015-09-27 09:27:55'),(192,37,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-09-27 11:13:59'),(193,37,'notice','caught SIGTERM, shutting down','2015-09-27 23:45:02'),(194,37,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-09-28 08:54:45'),(195,37,'notice','caught SIGTERM, shutting down','2015-09-28 10:29:17'),(196,37,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-09-28 13:48:09'),(197,37,'notice','Graceful restart requested, doing restart','2015-09-28 22:46:23'),(198,37,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-09-28 22:46:23'),(199,37,'notice','caught SIGTERM, shutting down','2015-09-28 22:46:30'),(200,37,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-09-28 22:46:31'),(201,37,'notice','Graceful restart requested, doing restart','2015-09-28 22:46:38'),(202,37,'error','(9)Bad file descriptor: apr_socket_accept: (client socket)','2015-09-28 22:46:38'),(203,37,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-09-28 22:46:38'),(204,41,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-04 09:57:23'),(205,41,'notice','caught SIGTERM, shutting down','2015-10-04 19:17:19'),(206,41,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-04 20:55:00'),(207,41,'notice','caught SIGTERM, shutting down','2015-10-04 23:02:19'),(208,41,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-05 09:02:31'),(209,41,'notice','caught SIGTERM, shutting down','2015-10-05 10:12:08'),(210,41,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-05 14:02:49'),(211,41,'notice','caught SIGTERM, shutting down','2015-10-05 23:28:04'),(212,41,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-06 07:52:20'),(213,41,'notice','caught SIGTERM, shutting down','2015-10-06 08:29:21'),(214,41,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-06 10:02:46'),(215,41,'notice','caught SIGTERM, shutting down','2015-10-06 10:16:06'),(216,41,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-06 13:07:06'),(217,41,'notice','caught SIGTERM, shutting down','2015-10-06 19:17:39'),(218,41,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-06 20:20:34'),(219,41,'notice','caught SIGTERM, shutting down','2015-10-06 23:09:41'),(220,41,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-07 07:58:10'),(221,41,'notice','caught SIGTERM, shutting down','2015-10-07 10:21:19'),(222,41,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-07 11:20:38'),(223,41,'notice','caught SIGTERM, shutting down','2015-10-07 15:30:05'),(224,41,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-07 18:18:03'),(225,41,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-07 21:04:11'),(226,41,'notice','caught SIGTERM, shutting down','2015-10-08 00:01:11'),(227,41,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-08 09:08:11'),(228,42,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-09-27 09:01:57'),(229,42,'notice','caught SIGTERM, shutting down','2015-09-27 09:27:55'),(230,42,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-09-27 11:13:59'),(231,42,'notice','caught SIGTERM, shutting down','2015-09-27 23:45:02'),(232,42,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-09-28 08:54:45'),(233,42,'notice','caught SIGTERM, shutting down','2015-09-28 10:29:17'),(234,42,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-09-28 13:48:09'),(235,42,'notice','Graceful restart requested, doing restart','2015-09-28 22:46:23'),(236,42,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-09-28 22:46:23'),(237,42,'notice','caught SIGTERM, shutting down','2015-09-28 22:46:30'),(238,42,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-09-28 22:46:31'),(239,42,'notice','Graceful restart requested, doing restart','2015-09-28 22:46:38'),(240,42,'error','(9)Bad file descriptor: apr_socket_accept: (client socket)','2015-09-28 22:46:38'),(241,42,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-09-28 22:46:38');
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

-- Dump completed on 2015-10-13 18:17:43
