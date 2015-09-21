-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: musicstore
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

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
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albums` (
  `album_id` int(9) NOT NULL AUTO_INCREMENT,
  `album_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `album_artist` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `album_duration` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `album_release_year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `album_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `album_long_description` text COLLATE utf8_unicode_ci,
  `album_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `album_price` double DEFAULT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'Cool name','Best Artist','120','2005','How to write about your album','Your album description is essentially a sales pitch, but that doesnâ€™t mean it needs to read that way. Itâ€™s important to avoid tired phrases that mean nothing, and use specific language that really gets at the heart of what your album is about. After all, if you want people to click that â€œbuyâ€ button (that resides right next to your album description) youâ€™ve got to provide some good reasons for people to do just that. But what seals the deal? What can you say that might take that teetering customer over the edge and into purchase territory','0000-00-00 00:00:00',123);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albums_stock`
--

DROP TABLE IF EXISTS `albums_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albums_stock` (
  `album_id` int(9) NOT NULL,
  `album_stock` smallint(3) DEFAULT '0',
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums_stock`
--

LOCK TABLES `albums_stock` WRITE;
/*!40000 ALTER TABLE `albums_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `albums_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fb_users`
--

DROP TABLE IF EXISTS `fb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_users` (
  `user_id` int(9) NOT NULL,
  `user_fb_uid` bigint(13) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_fb_uid` (`user_fb_uid`),
  KEY `user_fb_uid_2` (`user_fb_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fb_users`
--

LOCK TABLES `fb_users` WRITE;
/*!40000 ALTER TABLE `fb_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fb_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `genre_id` int(7) NOT NULL AUTO_INCREMENT,
  `genre_parent_id` int(7) NOT NULL DEFAULT '0',
  `genre_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`genre_id`),
  KEY `genre_parent_id` (`genre_parent_id`),
  KEY `genre_name` (`genre_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres_to_albums`
--

DROP TABLE IF EXISTS `genres_to_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres_to_albums` (
  `album_id` int(9) NOT NULL,
  `genre_id` int(7) NOT NULL,
  PRIMARY KEY (`album_id`),
  KEY `genre_id` (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres_to_albums`
--

LOCK TABLES `genres_to_albums` WRITE;
/*!40000 ALTER TABLE `genres_to_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `genres_to_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `image_id` bigint(12) NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images_to_albums`
--

DROP TABLE IF EXISTS `images_to_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images_to_albums` (
  `image_id` bigint(12) NOT NULL,
  `album_id` int(9) NOT NULL,
  PRIMARY KEY (`image_id`),
  KEY `album_id` (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images_to_albums`
--

LOCK TABLES `images_to_albums` WRITE;
/*!40000 ALTER TABLE `images_to_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `images_to_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` bigint(12) NOT NULL AUTO_INCREMENT,
  `user_id` int(9) NOT NULL,
  `order_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_shipping_address` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `order_shipping_city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `order_shipping_zipcode` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `order_shipping_phone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `order_payment_method` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `order_total` double NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_to_albums`
--

DROP TABLE IF EXISTS `orders_to_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_to_albums` (
  `order_id` bigint(12) NOT NULL,
  `album_id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_to_albums`
--

LOCK TABLES `orders_to_albums` WRITE;
/*!40000 ALTER TABLE `orders_to_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_to_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `songs` (
  `song_id` bigint(12) NOT NULL AUTO_INCREMENT,
  `song_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `song_duration` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `song_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs_to_albums`
--

DROP TABLE IF EXISTS `songs_to_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `songs_to_albums` (
  `song_id` bigint(12) NOT NULL,
  `album_id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs_to_albums`
--

LOCK TABLES `songs_to_albums` WRITE;
/*!40000 ALTER TABLE `songs_to_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `songs_to_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `special_albums`
--

DROP TABLE IF EXISTS `special_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `special_albums` (
  `album_id` int(9) NOT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `special_albums`
--

LOCK TABLES `special_albums` WRITE;
/*!40000 ALTER TABLE `special_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `special_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(9) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_firstname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_lastname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`),
  KEY `user_email_2` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'kostik@gmail.com','12345','kostik','sofrigin'),(4,'vova@gmail.com','12345','vova','mukovozov');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-29 11:07:05
