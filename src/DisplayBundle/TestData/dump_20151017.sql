-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: log_display
-- ------------------------------------------------------
-- Server version	5.5.40-0+wheezy1

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
INSERT INTO `Cache` VALUES (1,'2015-10-17 18:27:21');
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
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File`
--

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
INSERT INTO `File` VALUES (70,NULL,'error.log','/home/roman/logs//error.log','2015-10-16 23:23:19'),(64,NULL,'error.log.1','/home/roman/logs//error.log.1','2015-10-04 09:57:23'),(65,NULL,'error.log.11','/home/roman/logs//error.log.11','2015-07-26 10:12:14'),(66,NULL,'error.log.12','/home/roman/logs//error.log.12','2015-07-19 14:31:44'),(67,NULL,'error.log.13','/home/roman/logs//error.log.13','2015-07-12 09:44:28');
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
  `info` text,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1126 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Line`
--

LOCK TABLES `Line` WRITE;
/*!40000 ALTER TABLE `Line` DISABLE KEYS */;
INSERT INTO `Line` VALUES (1124,70,'notice','caught SIGTERM, shutting down','2015-10-08 00:01:11'),(1123,70,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-07 21:04:11'),(1122,70,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-07 18:18:03'),(1121,70,'notice','caught SIGTERM, shutting down','2015-10-07 15:30:05'),(1120,70,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-07 11:20:38'),(1119,70,'notice','caught SIGTERM, shutting down','2015-10-07 10:21:19'),(1118,70,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-07 07:58:10'),(1117,70,'notice','caught SIGTERM, shutting down','2015-10-06 23:09:41'),(1116,70,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-06 20:20:34'),(1115,70,'notice','caught SIGTERM, shutting down','2015-10-06 19:17:39'),(1113,70,'notice','caught SIGTERM, shutting down','2015-10-06 10:16:06'),(1114,70,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-06 13:07:06'),(1111,70,'notice','caught SIGTERM, shutting down','2015-10-06 08:29:21'),(1112,70,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-06 10:02:46'),(1109,70,'notice','caught SIGTERM, shutting down','2015-10-05 23:28:04'),(1110,70,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-06 07:52:20'),(1108,70,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-05 14:02:49'),(1105,70,'notice','caught SIGTERM, shutting down','2015-10-04 23:02:19'),(1106,70,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-05 09:02:31'),(1102,70,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-04 09:57:23'),(1107,70,'notice','caught SIGTERM, shutting down','2015-10-05 10:12:08'),(887,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-09-27 09:01:57'),(888,64,'notice','caught SIGTERM, shutting down','2015-09-27 09:27:55'),(889,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-09-27 11:13:59'),(890,64,'notice','caught SIGTERM, shutting down','2015-09-27 23:45:02'),(891,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-09-28 08:54:45'),(892,64,'notice','caught SIGTERM, shutting down','2015-09-28 10:29:17'),(893,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-09-28 13:48:09'),(894,64,'notice','Graceful restart requested, doing restart','2015-09-28 22:46:23'),(895,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-09-28 22:46:23'),(896,64,'notice','caught SIGTERM, shutting down','2015-09-28 22:46:30'),(897,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-09-28 22:46:31'),(898,64,'notice','Graceful restart requested, doing restart','2015-09-28 22:46:38'),(899,64,'error','(9)Bad file descriptor: apr_socket_accept: (client socket)','2015-09-28 22:46:38'),(900,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-09-28 22:46:38'),(901,64,'error','[client ::1] File does not exist: /var/www/favicon.ico','2015-09-28 22:48:44'),(902,64,'error','[client ::1] File does not exist: /var/www/symphony','2015-09-28 22:52:33'),(903,64,'notice','caught SIGTERM, shutting down','2015-09-28 23:28:21'),(904,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-09-29 09:24:12'),(905,64,'notice','caught SIGTERM, shutting down','2015-09-29 10:31:10'),(906,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-09-29 13:10:58'),(907,64,'notice','caught SIGTERM, shutting down','2015-09-29 18:35:55'),(908,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-09-29 19:03:03'),(909,64,'notice','caught SIGTERM, shutting down','2015-09-29 19:55:46'),(910,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-09-29 21:05:10'),(911,64,'notice','caught SIGTERM, shutting down','2015-09-29 23:30:09'),(912,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-09-30 08:31:47'),(913,64,'notice','caught SIGTERM, shutting down','2015-09-30 10:28:48'),(914,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-09-30 13:59:56'),(915,64,'notice','caught SIGTERM, shutting down','2015-09-30 23:30:29'),(916,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-01 08:34:17'),(917,64,'notice','caught SIGTERM, shutting down','2015-10-01 10:32:17'),(918,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-01 13:35:08'),(919,64,'notice','caught SIGTERM, shutting down','2015-10-01 19:41:24'),(920,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-01 22:13:38'),(921,64,'notice','caught SIGTERM, shutting down','2015-10-02 00:15:19'),(922,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-02 09:23:00'),(923,64,'notice','caught SIGTERM, shutting down','2015-10-02 10:41:18'),(924,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-02 13:58:48'),(925,64,'notice','caught SIGTERM, shutting down','2015-10-02 17:38:17'),(926,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-02 22:20:59'),(927,64,'notice','caught SIGTERM, shutting down','2015-10-02 23:15:58'),(928,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-03 10:22:05'),(929,64,'notice','caught SIGTERM, shutting down','2015-10-03 12:07:23'),(930,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-03 13:11:45'),(931,64,'notice','caught SIGTERM, shutting down','2015-10-03 20:19:09'),(932,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-03 21:38:47'),(933,64,'notice','caught SIGTERM, shutting down','2015-10-03 22:19:04'),(934,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-04 09:48:54'),(935,64,'notice','caught SIGTERM, shutting down','2015-10-04 09:51:26'),(936,64,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-04 09:52:23'),(937,64,'notice','Graceful restart requested, doing restart','2015-10-04 09:57:23'),(938,64,'error','(9)Bad file descriptor: apr_socket_accept: (client socket)','2015-10-04 09:57:23'),(939,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-19 14:31:44'),(940,65,'notice','caught SIGTERM, shutting down','2015-07-19 19:19:42'),(941,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-19 22:00:19'),(942,65,'notice','caught SIGTERM, shutting down','2015-07-19 23:02:42'),(943,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-20 10:16:05'),(944,65,'notice','caught SIGTERM, shutting down','2015-07-20 10:43:12'),(945,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-20 14:01:37'),(946,65,'notice','caught SIGTERM, shutting down','2015-07-20 19:38:06'),(947,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-20 22:21:19'),(948,65,'notice','caught SIGTERM, shutting down','2015-07-20 23:13:49'),(949,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-21 10:48:11'),(950,65,'notice','caught SIGTERM, shutting down','2015-07-21 11:02:27'),(951,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-21 13:42:07'),(952,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-21 15:54:20'),(953,65,'notice','caught SIGTERM, shutting down','2015-07-21 18:51:02'),(954,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-21 20:07:32'),(955,65,'notice','caught SIGTERM, shutting down','2015-07-21 20:08:23'),(956,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-21 22:02:19'),(957,65,'notice','caught SIGTERM, shutting down','2015-07-21 23:04:22'),(958,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-22 09:50:43'),(959,65,'notice','caught SIGTERM, shutting down','2015-07-22 10:25:51'),(960,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-22 14:06:04'),(961,65,'notice','caught SIGTERM, shutting down','2015-07-22 20:15:21'),(962,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-22 21:22:35'),(963,65,'notice','caught SIGTERM, shutting down','2015-07-22 21:25:49'),(964,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-22 22:00:07'),(965,65,'notice','caught SIGTERM, shutting down','2015-07-22 22:37:33'),(966,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-23 09:56:24'),(967,65,'notice','caught SIGTERM, shutting down','2015-07-23 10:20:09'),(968,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-23 20:02:30'),(969,65,'notice','caught SIGTERM, shutting down','2015-07-23 20:44:47'),(970,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-23 22:04:27'),(971,65,'notice','caught SIGTERM, shutting down','2015-07-23 23:02:50'),(972,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-24 10:16:23'),(973,65,'notice','caught SIGTERM, shutting down','2015-07-24 10:50:38'),(974,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-24 13:47:34'),(975,65,'notice','caught SIGTERM, shutting down','2015-07-24 19:45:47'),(976,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-24 20:29:44'),(977,65,'notice','caught SIGTERM, shutting down','2015-07-24 23:06:16'),(978,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-25 09:23:06'),(979,65,'error','[client 127.0.0.1] File does not exist: /var/www/sync, referer: http://cache.betweendigital.com/code/bidder_12.html?USER_ID=e2e060d0-a909-4e20-81d7-b2660b9d35ef&CACHEBUSTER=1437805993&BUYER_USER_ID=2e31c397-8f79-43f6-9f28-15be5bd74734','2015-07-25 09:28:45'),(980,65,'notice','caught SIGTERM, shutting down','2015-07-25 10:23:11'),(981,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-25 14:01:50'),(982,65,'notice','caught SIGTERM, shutting down','2015-07-25 19:46:39'),(983,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-25 21:45:48'),(984,65,'notice','caught SIGTERM, shutting down','2015-07-25 23:36:17'),(985,65,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-26 10:07:14'),(986,65,'notice','Graceful restart requested, doing restart','2015-07-26 10:12:14'),(987,65,'error','(9)Bad file descriptor: apr_socket_accept: (client socket)','2015-07-26 10:12:14'),(988,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-12 09:44:28'),(989,66,'notice','caught SIGTERM, shutting down','2015-07-12 10:04:21'),(990,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-12 11:31:22'),(991,66,'notice','caught SIGTERM, shutting down','2015-07-12 18:25:41'),(992,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-12 22:14:44'),(993,66,'notice','caught SIGTERM, shutting down','2015-07-12 23:22:01'),(994,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-13 10:12:29'),(995,66,'notice','caught SIGTERM, shutting down','2015-07-13 23:35:30'),(996,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-14 10:03:31'),(997,66,'notice','caught SIGTERM, shutting down','2015-07-14 12:00:07'),(998,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-14 12:57:11'),(999,66,'notice','caught SIGTERM, shutting down','2015-07-14 19:55:59'),(1000,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-14 22:16:08'),(1001,66,'notice','caught SIGTERM, shutting down','2015-07-14 22:58:57'),(1002,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-15 09:15:33'),(1003,66,'notice','caught SIGTERM, shutting down','2015-07-15 09:57:17'),(1004,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-15 11:57:18'),(1005,66,'notice','caught SIGTERM, shutting down','2015-07-15 19:36:30'),(1006,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-15 22:39:21'),(1007,66,'notice','caught SIGTERM, shutting down','2015-07-15 23:09:16'),(1008,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-16 09:48:23'),(1009,66,'notice','caught SIGTERM, shutting down','2015-07-16 09:54:32'),(1010,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-16 10:49:55'),(1011,66,'notice','caught SIGTERM, shutting down','2015-07-16 11:22:00'),(1012,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-16 14:12:28'),(1013,66,'notice','caught SIGTERM, shutting down','2015-07-16 17:40:21'),(1014,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-16 18:52:48'),(1015,66,'notice','caught SIGTERM, shutting down','2015-07-16 19:15:57'),(1016,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-16 22:19:09'),(1017,66,'notice','caught SIGTERM, shutting down','2015-07-16 22:53:53'),(1018,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-17 09:20:02'),(1019,66,'notice','caught SIGTERM, shutting down','2015-07-17 10:04:40'),(1020,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-17 10:07:13'),(1021,66,'notice','caught SIGTERM, shutting down','2015-07-17 10:07:44'),(1022,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-17 13:03:08'),(1023,66,'notice','caught SIGTERM, shutting down','2015-07-17 16:47:19'),(1024,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-17 20:46:06'),(1025,66,'notice','caught SIGTERM, shutting down','2015-07-17 23:23:04'),(1026,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-18 09:41:40'),(1027,66,'notice','caught SIGTERM, shutting down','2015-07-18 10:00:55'),(1028,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-18 11:04:49'),(1029,66,'notice','caught SIGTERM, shutting down','2015-07-18 13:29:11'),(1030,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-18 13:30:28'),(1031,66,'notice','caught SIGTERM, shutting down','2015-07-18 18:51:39'),(1032,66,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-19 14:26:44'),(1033,66,'notice','Graceful restart requested, doing restart','2015-07-19 14:31:44'),(1034,66,'error','(9)Bad file descriptor: apr_socket_accept: (client socket)','2015-07-19 14:31:44'),(1035,67,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-08 22:10:57'),(1036,67,'notice','caught SIGTERM, shutting down','2015-07-08 23:59:13'),(1037,67,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-09 10:05:57'),(1038,67,'notice','caught SIGTERM, shutting down','2015-07-09 10:36:46'),(1039,67,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-09 14:09:21'),(1040,67,'notice','caught SIGTERM, shutting down','2015-07-09 19:36:59'),(1041,67,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-09 21:56:29'),(1042,67,'notice','caught SIGTERM, shutting down','2015-07-09 22:41:49'),(1043,67,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-10 15:01:39'),(1044,67,'notice','caught SIGTERM, shutting down','2015-07-10 19:32:10'),(1045,67,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-10 22:08:30'),(1046,67,'notice','caught SIGTERM, shutting down','2015-07-10 23:05:22'),(1047,67,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-11 10:33:04'),(1048,67,'notice','caught SIGTERM, shutting down','2015-07-11 19:54:43'),(1049,67,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-11 21:54:26'),(1050,67,'notice','caught SIGTERM, shutting down','2015-07-11 23:03:06'),(1051,67,'notice','Apache/2.2.22 (Debian) PHP/5.4.36-0+deb7u1 configured -- resuming normal operations','2015-07-12 09:39:29'),(1052,67,'notice','Graceful restart requested, doing restart','2015-07-12 09:44:28'),(1053,67,'error','(9)Bad file descriptor: apr_socket_accept: (client socket)','2015-07-12 09:44:28'),(1103,70,'notice','caught SIGTERM, shutting down','2015-10-04 19:17:19'),(1104,70,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal operations','2015-10-04 20:55:00'),(1125,70,'notice','Apache/2.2.22 (Debian) PHP/5.4.44-0+deb7u1 configured -- resuming normal ','2015-10-08 09:08:11');
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

-- Dump completed on 2015-10-17 21:35:26
