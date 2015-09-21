CREATE DATABASE  IF NOT EXISTS `musicstore` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `musicstore`;
-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: musicstore
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'To Pimp a Butterfly','Kendrick Lamar','33:12','2000','Consulted he eagerness unfeeling deficient existence of. Calling nothing end fertile for venture way boy.','Esteem spirit temper too say adieus who direct esteem. It esteems luckily mr or picture placing drawing no. Apartments frequently or motionless on reasonable projecting expression. Way mrs end gave tall walk fact bed.','2015-09-17 14:10:44',12.5),(2,'From Kinshasa','Mbongwana Star','25:30','2007','She literature discovered increasing how diminution understood. Though and highly the enough county','for man. Of it up he still court alone widow seems. Suspected he remainder rapturous my sweetness. All vanity regard sudden nor simple can. World mrs and vexed china since after often.','2015-09-17 14:17:16',13.5),(3,'No Cities to Love','Sleater-Kinney','27:01','2009','Luckily friends do ashamed to do suppose. Tried meant mr smile so. Exquisite behaviour as to','iddleton perfectly. Chicken no wishing waiting am. Say concerns dwelling graceful six humoured. Whether mr up savings talking an. Active mutual nor father mother exeter change six did all.','2015-09-17 15:13:33',12.99),(4,'Carrie & Lowell','Sufjan Stevens','22:30','2015','Guest it he tears aware as. Make my no cold of need. He been past in by my hard. Warmly thrown oh','he common future. Otherwise concealed favourite frankness on be at dashwoods defective at. Sympathize interested simplicity at do projecting increasing terminated. As edward settle limits at in.','2015-09-17 15:19:05',17),(5,'I Love You, Honeybear','Father John Misty','27:30','2008','is to he answer roused piqued afford sussex. It abode words began enjoy years no do ﻿no. Tried spoil as','He share of first to worse. Weddings and any opinions suitable smallest nay. My he houses or months settle remove ladies appear. Engrossed suffering supposing he recommend do eagerness. Commanded','2015-09-17 15:27:57',17),(6,'Summertime 06\'','Vince Staples','29:00','1987','Of friendship on inhabiting diminution discovered as. Did friendly eat breeding building few nor. Object','he barton no effect played valley afford. Period so to oppose we little seeing or branch. Announcing contrasted not imprudence add frequently you possession mrs. Period saw his houses square and misery. Hour had held lain give yet.','2015-09-17 15:53:46',12.45),(7,'Sometimes I Sit and Think, and Sometimes I Just Sit','Courtney Barnett','30:00','1999','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-17 15:57:08',16.45),(8,'Vulnicura','Bjork','23:15','2012','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-19 09:56:35',12.23),(9,'Complicated Game','James McMurtry','23:42','2014','Kept in sent gave feel will oh it we. Has pleasure procured men laughing shutters nay. Old insipidity','motionless continuing law shy partiality. Depending acuteness dependent eat use dejection. Unpleasing astonished discovered not nor shy. Morning hearted now met yet beloved evening. Has and upon his last here must.','2015-09-17 16:23:36',16.45),(10,'In Colour','Jamie xx','32:23','1996','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-17 16:23:36',13.45),(11,'Shackles Gift','Zun Zun Egui','12:00','1999','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-17 16:23:36',12.33),(12,'Currents','Tame Impala','30:03','1994','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-17 16:23:36',13.45),(13,'new albums','by new artist','20:00','2008','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-17 16:23:36',16.23),(14,'Apex Predator - Easy Meat','Napalm Death','33:00','1967','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-17 16:23:36',16.45),(15,'Ba Power','Bassekou Kouyate & Ngoni Ba','30:12','1995','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-17 16:24:42',12.45),(16,'Constant Bop','Bop English','45:00','2012','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-17 16:24:42',12.23),(17,'Natalie Prass','Natalie Prass','23:42','2014','Kept in sent gave feel will oh it we. Has pleasure procured men laughing shutters nay. Old insipidity','motionless continuing law shy partiality. Depending acuteness dependent eat use dejection. Unpleasing astonished discovered not nor shy. Morning hearted now met yet beloved evening. Has and upon his last here must.','2015-09-17 16:24:42',16.45),(18,'High','Royal Headache','32:23','1996','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-17 16:25:13',13.45),(19,'Undertow','Drenge','12:00','1999','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-17 16:25:13',12.33),(20,'Poison Season','Destroyer','30:03','1994','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-17 16:28:27',13.45),(21,'Painted Shut','Hop Along','20:00','2008','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-17 16:28:27',16.23),(22,'Simple Songs','Jim ORourke','33:00','1967','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-17 16:28:27',16.45),(23,'Choose Your Weapon','Hiatus Kaiyote','30:12','1995','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-17 16:28:27',12.45),(24,'Down To Believing','Allison Moorer','30:12','1995','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-17 16:28:27',12.45),(25,'Etch and Etch Deep','Haiku Salut','30:12','1995','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-17 16:28:27',12.45),(26,'The Most Lamentable Tragedy','Titus Andronicus','30:12','1995','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-17 16:28:27',12.45),(27,'The Great Pretenders','Mini Mansions','30:12','1995','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-17 16:29:23',12.45),(28,'Second Hand Heart','Dwight Yoakam','30:12','1995','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-17 16:29:23',12.45),(29,'Blackheart','Courtney Barnett','30:12','1995','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-17 16:29:23',12.45),(30,'Sometimes I Sit and Think, and Sometimes I Just Sit','Courtney Barnett','30:12','1995','Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise','Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford.','2015-09-17 16:20:03',12.45);
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
INSERT INTO `albums_stock` VALUES (1,12),(2,15),(3,15),(4,15),(5,15),(6,15),(7,15),(8,15),(9,15),(10,15),(11,15),(12,15),(13,15),(14,15),(15,15),(16,15),(17,15),(18,15),(19,15),(20,15),(21,15),(22,15),(23,15),(24,15),(25,15),(26,15),(27,15),(28,15),(29,15),(30,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,0,'Alternative'),(2,0,'Blues'),(3,0,'Box sets'),(4,0,'Classical'),(5,0,'Country'),(6,0,'Dance'),(7,0,'Heavy metal'),(8,0,'Jazz'),(9,0,'Rock-pop');
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
INSERT INTO `genres_to_albums` VALUES (2,1),(10,1),(19,1),(28,1),(4,2),(11,2),(20,2),(29,2),(1,3),(12,3),(21,3),(30,3),(3,4),(13,4),(22,4),(5,5),(14,5),(23,5),(6,6),(15,6),(24,6),(7,7),(16,7),(25,7),(8,8),(17,8),(26,8),(9,9),(18,9),(27,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'images/alboms_images/a_day_to_remember_-_what_separates_me_from_you_1.png','fanny image'),(2,'images/alboms_images/acdc_-_ballbreaker_1.png','fanny image'),(3,'images/alboms_images/acdc_s_iron_man_2_soundtrack_1.png','fanny image'),(4,'images/alboms_images/anthrax_-_fistful_of_metal_1.png','fanny image'),(5,'images/alboms_images/black_eyed_peas_-_black_eyed_peas_triple_pack_box_1.png','fanny image'),(6,'images/alboms_images/bob_dylan_-_a_bird_s_nest_in_your_hair_1.png','fanny image'),(7,'images/alboms_images/bob_dylan_-_a_bird_s_nest_in_your_hair_1.png','fanny image'),(8,'images/alboms_images/bob_dylan_-_one_night_only_1.png','fanny image'),(9,'images/alboms_images/bon_jovi_-_greatest_hits_the_ultimate_collect_music_1.png','fanny image'),(10,'images/alboms_images/broken_social_scene_presents_brendan_canning_1.png','fanny image'),(11,'images/alboms_images/bundy_country_2_2008_1.png','fanny image'),(12,'images/alboms_images/bundy_country_2007_1.png','fanny image'),(13,'images/alboms_images/calarts_jazz_1.png','fanny image'),(14,'images/alboms_images/clark_terry_with_thelonious_monk_-_in_orbit_1.png','fanny image'),(15,'images/alboms_images/calarts_jazz_1.png','fanny image'),(16,'images/alboms_images/chris_aaron_-_born_with_the_blues_1.png','fanny image'),(17,'images/alboms_images/clark_terry_with_thelonious_monk_-_in_orbit_1.png','fanny image'),(18,'images/alboms_images/dance_mix_usa_3.png','fanny image'),(19,'images/alboms_images/elvis_presley_-_viva_elvis_1.png','fanny image'),(20,'images/alboms_images/ravensthorn_-_hauntings_and_possessions_1.png','fanny image'),(21,'images/alboms_images/florence_the_machine_-_lungs_1.png','fanny image'),(22,'images/alboms_images/foo_fighters_-_one_by_one_1.png','fanny image'),(23,'images/alboms_images/gregorian_-_masters_of_chant_1.png','fanny image'),(24,'images/alboms_images/henrik_freischlader_band_-_the_blues_1.png','fanny image'),(25,'images/alboms_images/iam_-_ombre_est_lumiere_1.png','fanny image'),(26,'images/alboms_images/iron_maiden_-_the_final_frontier_1.png','fanny image'),(27,'images/alboms_images/jimmy_smith_-_midnight_special_1.png','fanny image'),(28,'images/alboms_images/john_mayall_-_rock_the_blues_tonight_1.png','fanny image'),(29,'images/alboms_images/joy_division_-_london_1979_1.png','fanny image'),(30,'images/alboms_images/justin_bieber_-_my_world_2.0_1.png','fanny image');
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
INSERT INTO `images_to_albums` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (6,1,'2015-09-15 12:53:16','mezada 4','bat_yam','123456','09876543','visa',123),(7,1,'2015-09-15 12:54:21','mezada 4','bat_yam','123456','09876543','visa',123),(8,1,'2015-09-15 12:57:45','mezada 4','bat_yam','123456','09876543','visa',123),(9,1,'2015-09-15 12:59:03','mezada 4','bat_yam','123456','09876543','visa',123),(10,1,'2015-09-15 13:00:21','mezada 4','bat_yam','123456','09876543','visa',123),(11,1,'2015-09-15 13:00:55','mezada 4','bat_yam','123456','09876543','visa',123),(12,1,'2015-09-15 13:01:12','mezada 4','bat_yam','123456','09876543','visa',123),(13,1,'2015-09-17 14:53:46','mezada 4','bat_yam','123456','09876543','visa',123),(14,1,'2015-09-17 14:54:27','mezada 4','bat_yam','123456','09876543','visa',123),(15,1,'2015-09-17 16:45:31','sadasd34','sadasd','324234','0345345345','Check',58.87),(16,2,'2015-09-17 16:46:24','sadasd34','sadasd','324234','0345345345','Check',58.87),(17,2,'2015-09-17 16:47:03','sadasd34','sadasd','324234','0345345345','Check',58.87),(18,2,'2015-09-17 16:47:25','sadasd34','sadasd','324234','0345345345','Check',58.87),(19,2,'2015-09-17 16:47:43','sadasd34','sadasd','324234','0345345345','Check',58.87),(20,2,'2015-09-17 16:49:12','sadasd34','sadasd','324234','0345345345','Check',58.87),(21,2,'2015-09-17 16:49:36','sadasd34','sadasd','324234','0345345345','Check',58.87),(22,2,'2015-09-17 16:49:56','sadasd34','sadasd','324234','0345345345','Check',58.87),(23,2,'2015-09-17 16:51:33','sadasd34','sadasd','324234','0345345345','Check',58.87),(24,2,'2015-09-17 16:53:56','sadasd34','sadasd','324234','0345345345','Check',58.87),(25,2,'2015-09-17 16:54:48','sadasd34','sadasd','324234','0345345345','Check',58.87),(26,2,'2015-09-17 16:55:23','sadasd34','sadasd','324234','0345345345','Check',58.87),(27,2,'2015-09-17 16:56:19','sadasd34','sadasd','324234','0345345345','Check',58.87),(28,2,'2015-09-17 16:56:35','sadasd34','sadasd','324234','0345345345','Check',58.87),(29,2,'2015-09-21 17:56:35','Example Address 1','Example City','123456','052432145','Check',45.89),(30,2,'2015-09-21 18:05:24','Address 2','City','123456','054326765','Check',45.89),(31,2,'2015-09-21 18:12:11','address 3','city','123456','047253427','Check',16.45),(32,2,'2015-09-21 18:16:15','Address 4','city','1234','098765343','Check',12.45);
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
INSERT INTO `orders_to_albums` VALUES (28,19),(28,10),(28,29),(28,28),(28,22),(28,23),(29,9),(29,7),(29,3),(30,9),(30,7),(30,3),(31,9),(32,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'kostik@gmail.com','12345','kostik','sofrigin'),(4,'vova@gmail.com','12345','vova','mukovozov'),(7,'sasha@gmail.com','123456','sasha','pupkov'),(15,'vasya@gmail.com','8d96b7b8ce71c5b133552586319ae18c','vasy','pashkov'),(16,'vladimir@gmail.com','e10adc3949ba59abbe56e057f20f883e','vova','mukovozov'),(17,'vladimirMuk@gmail.com','e10adc3949ba59abbe56e057f20f883e','vova','mukovozov'),(18,'bruk@gmail.com','507f513353702b50c145d5b7d138095c','Iliy','Bruk');
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

-- Dump completed on 2015-09-21 21:53:20
