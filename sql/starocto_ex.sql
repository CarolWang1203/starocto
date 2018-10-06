-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: starocto
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blog_count`
--

DROP TABLE IF EXISTS `blog_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_count` (
  `blog_id` bigint(20) unsigned NOT NULL,
  `blog_see_num` int(11) DEFAULT '0',
  `blog_like_num` int(11) DEFAULT '0',
  `blog_forward_num` int(11) DEFAULT '0',
  `blog_comment_num` int(11) DEFAULT '0',
  KEY `blog_id` (`blog_id`),
  CONSTRAINT `blog_count_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog_info` (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_count`
--

LOCK TABLES `blog_count` WRITE;
/*!40000 ALTER TABLE `blog_count` DISABLE KEYS */;
INSERT INTO `blog_count` VALUES (1,11,6,2,3);
/*!40000 ALTER TABLE `blog_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_info`
--

DROP TABLE IF EXISTS `blog_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_info` (
  `user_id` int(10) unsigned NOT NULL,
  `blog_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog_type` int(11) DEFAULT '1',
  `blog_content_text` varchar(500) DEFAULT NULL,
  `blog_image_url` varchar(500) DEFAULT NULL,
  `blog_video_url` varchar(500) DEFAULT NULL,
  `blog_is_original` tinyint(1) DEFAULT '1',
  `blog_original_id` bigint(20) unsigned DEFAULT NULL,
  `blog_plus_time` datetime NOT NULL,
  PRIMARY KEY (`blog_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `blog_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_register_info` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_info`
--

LOCK TABLES `blog_info` WRITE;
/*!40000 ALTER TABLE `blog_info` DISABLE KEYS */;
INSERT INTO `blog_info` VALUES (1,1,1,'bangbangbang',NULL,NULL,1,0,'2018-10-04 01:28:19');
/*!40000 ALTER TABLE `blog_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_to_blog`
--

DROP TABLE IF EXISTS `comment_to_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comment_to_blog` (
  `comment_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` bigint(20) unsigned NOT NULL,
  `front_comment_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `front_user_id` int(10) unsigned DEFAULT NULL,
  `comment_content` varchar(500) DEFAULT NULL,
  `comment_time` datetime DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `blog_id` (`blog_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `comment_to_blog_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog_info` (`blog_id`),
  CONSTRAINT `comment_to_blog_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_register_info` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_to_blog`
--

LOCK TABLES `comment_to_blog` WRITE;
/*!40000 ALTER TABLE `comment_to_blog` DISABLE KEYS */;
INSERT INTO `comment_to_blog` VALUES (1,1,0,1,0,'bangbangbang','2018-10-04 01:28:36');
/*!40000 ALTER TABLE `comment_to_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_follow`
--

DROP TABLE IF EXISTS `user_follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_follow` (
  `follow_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `follow_user_id` int(10) unsigned NOT NULL,
  `follow_is_friend` tinyint(1) DEFAULT '0',
  `follow_time` datetime NOT NULL,
  PRIMARY KEY (`follow_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_follow_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_register_info` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_follow`
--

LOCK TABLES `user_follow` WRITE;
/*!40000 ALTER TABLE `user_follow` DISABLE KEYS */;
INSERT INTO `user_follow` VALUES (1,1,2,0,'2018-10-04 01:28:10');
/*!40000 ALTER TABLE `user_follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_info` (
  `user_id` int(10) unsigned NOT NULL,
  `user_sex` tinyint(1) DEFAULT '0',
  `user_birthday` varchar(100) DEFAULT NULL,
  `user_emotion` varchar(100) DEFAULT NULL,
  `user_position` varchar(100) DEFAULT NULL,
  `user_hometown` varchar(100) DEFAULT NULL,
  `user_university` varchar(100) DEFAULT NULL,
  `user_company` varchar(100) DEFAULT NULL,
  `user_signature` varchar(100) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_register_info` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_others`
--

DROP TABLE IF EXISTS `user_others`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_others` (
  `user_id` int(10) unsigned NOT NULL,
  `blog_produce_rate` int(11) DEFAULT '0',
  `blog_consume_time` datetime DEFAULT NULL,
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_others_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_register_info` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_others`
--

LOCK TABLES `user_others` WRITE;
/*!40000 ALTER TABLE `user_others` DISABLE KEYS */;
INSERT INTO `user_others` VALUES (1,10,'2018-10-04 01:27:53');
/*!40000 ALTER TABLE `user_others` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_register_info`
--

DROP TABLE IF EXISTS `user_register_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_register_info` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `user_psw` varchar(100) NOT NULL,
  `user_phone` varchar(11) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_register_time` datetime NOT NULL,
  `user_change_time` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_register_info`
--

LOCK TABLES `user_register_info` WRITE;
/*!40000 ALTER TABLE `user_register_info` DISABLE KEYS */;
INSERT INTO `user_register_info` VALUES (1,'fuermoxun','fuermoxun','15010520013','fuermoxun@gmail.com','2018-10-04 01:27:15','2018-10-04 01:27:15');
/*!40000 ALTER TABLE `user_register_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-05 19:02:18
