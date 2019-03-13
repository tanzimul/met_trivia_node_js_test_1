-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: trivia_app
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (38);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correct_answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bn_question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bn_option_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bn_option_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bn_option_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bn_option_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bn_correct_answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_difficulty_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'Who is the current Prime minister of Bangladesh?','Rubel Hossain','Tamim Iqbal','Sheikh Hasina','Shakib Al Hasan','Sheikh Hasina','বাংলাদেশের বর্তমান প্রধানমন্ত্রী কে?','রুবেল হোসেন','তামিম ইকবাল','শেখ হাসিনা','সাকিব আল হাসান','শেখ হাসিনা','Bangladesh','Easy','2019-01-22 08:48:59','2019-01-22 08:48:59'),(3,'What is your hobby?','Photography','Gardening','Drawing','Traveling','Traveling','আপনার শখ কি?','ফটোগ্রাফি','বাগান করা','অঙ্কন','ভ্রমণ','ভ্রমণ','Global','Easy','2019-01-22 09:27:02','2019-01-22 09:27:02'),(4,'Who is your favorite singer?','Atif Aslam','Manna Dey','Lalon Sha','Aiyub Bacchu','Lalon Sha','আপনার প্রিয় গায়ক কে?','আতিফ আসলাম','মান্না দে','লালন শাহ','আইয়ুব বাচ্চু','লালন শাহ','Music','Medium','2019-01-22 09:54:22','2019-01-22 09:54:22'),(6,'Who is your favorite actor? ','Salman Shah','Shakib Khan','Ananta Jalil','Abdul Kaium','Salman Shah','আপনার প্রিয় অভিনেতা কে?','সালমান শাহ','সাকিব খান','অনন্ত জলিল','আব্দুল কাইয়ুম','সালমান শাহ','Music','Difficult','2019-01-22 14:07:37','2019-01-22 14:07:37'),(7,'Sultan Azlan Shah Cup is related to which among the following Sports?','Badminton','Hockey','Table Tennis','Football','Hockey','সুলতান আজলান শাহ কাপ নিম্নলিখিত কোন খেলার সাথে সম্পর্কিত?','ব্যাড্মিন্টন-খেলা','হকিখেলা','টেবিল টেনিস','ফুটবল','হকিখেলা','Sports','VeryDifficult','2019-01-23 07:46:27','2019-01-23 07:46:27'),(8,'Sachin Tendulkar hit his 100th international century against which among the following team?','Sri Lanka','Bangladesh','Pakistan','South Africa','Bangladesh','শচীন টেন্ডুলকার তার ১০০ তম আন্তর্জাতিক সেঞ্চুরি করেছেন কোন দলের বিরুদ্ধে?','শ্রীলংকা','বাংলাদেশ','পাকিস্তান','দক্ষিন আফ্রিকা','বাংলাদেশ','Sports','Difficult','2019-01-23 07:48:16','2019-01-23 07:48:16'),(9,'The word “Agricultural shot” is known to be used sometimes in which among the following sports?','Cricket','Hockey','Golf','Polo','Cricket','\"কৃষি শট\" শব্দটি কখনও কখনও নিম্নলিখিত খেলাগুলোর কোনটির জন্য ব্যবহার করা হয়?','ক্রিকেট খেলা','হকিখেলা','গলফ খেলা','পোলো খেলা','ক্রিকেট খেলা','Sports','VeryDifficult','2019-01-23 07:50:10','2019-01-23 07:50:10'),(10,'Which among the following country was the host of 2018 Commonwealth Games?','Canada','England','Australia','India','Australia','নিম্নলিখিত দেশগুলির মধ্যে কোনটি ২০১৮ সালের কমনওয়েলথ গেমসের হোস্ট ছিলো?','কানাডা','ইংল্যান্ড','অস্ট্রেলিয়া','ভারত','অস্ট্রেলিয়া','Sports','VeryDifficult','2019-01-23 07:51:27','2019-01-23 07:51:27'),(11,'Who among the following was the first Indian sportsman to boycott the Olympic torch relay in support of the Tibetan independence movement.?','Baichung Bhutia','Chandu Borde','Dhanraj Pillay','Dibyendu Barua','Baichung Bhutia','তিব্বতী স্বাধীনতা আন্দোলনের সমর্থনে অলিম্পিক মশাল রিলে বর্জনের প্রথম ভারতীয় ক্রীড়াবিদ কে?','বেইচং ভুটিয়া','চন্দু বর্ডার','ধনরাজ পিল্লা','দিব্যেন্দু বড়ুয়া','বেইচং ভুটিয়া','Sports','Medium','2019-01-23 07:52:54','2019-01-23 07:52:54'),(12,'Who is credited with creating the world famous Raaga Miya ki Malhar?','Amir Khusro','Tansen','Meera Bai','Bhimsen Joshi','Tansen','বিশ্ব বিখ্যাত রাগ মিয়া কি মালহার তৈরীতে কৃতিত্ব কার?','আমির খসরু','তানসেন','মীরা বাঈ','ভীমসেন জোশী','তানসেন','Music','Medium','2019-01-23 08:08:48','2019-01-23 08:08:48'),(13,'The oldest form of composition of Hindustani Vocal Music is:','Ghazal','Dhrupad','Thumri','Qawwali','Dhrupad','হিন্দুস্তানী ভোকাল মিউজিকের প্রাচীনতম রচনাটি হল:','গজল','ধ্রুপদী','ঠুমরী','কাওয়ালী','ধ্রুপদী','Music','Easy','2019-01-23 08:09:58','2019-01-23 08:09:58'),(39,'Why Cox\'s bazar is famous?','Coral Island','Mountain','Coconut','Longest Sea Beach','Longest Sea Beach','কক্সবাজার কেন বিখ্যাত?','প্রবাল দ্বীপ','পাহাড়','নারিকেল','দীর্ঘতম সমুদ্র সৈকত','দীর্ঘতম সমুদ্র সৈকত','Bangladesh','VeryDifficult','2019-02-25 07:27:56','2019-02-25 07:27:56'),(41,'Why Saint Martin is famous?','Coral','Transparent water','Hotel','Night beaches','Coral','সেন্টমার্টিন দ্বীপ কেন বিখ্যাত ?','প্রবাল','স্বচ্ছ পানি','হোটেল','রাতের সৈকত','প্রবাল','Bangladesh','VeryDifficult','2019-02-25 13:15:29','2019-02-25 13:15:29');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_list`
--

DROP TABLE IF EXISTS `question_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `question_list` (
  `question_list_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_list_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `question_list_creation_date` date DEFAULT NULL,
  `question_number` int(11) DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`question_list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_list`
--

LOCK TABLES `question_list` WRITE;
/*!40000 ALTER TABLE `question_list` DISABLE KEYS */;
INSERT INTO `question_list` VALUES (1,'Question List One',15,'2019-01-22',24,'2019-01-22 11:55:25','2019-01-22 11:55:25'),(2,'Question List two',24,'2019-01-24',24,'2019-01-23 06:52:41','2019-01-23 06:52:41'),(3,'Question list 3',15,'2019-02-25',12,'2019-02-25 13:18:20','2019-02-25 13:18:20'),(4,'question list 6',6,'2019-02-25',7,'2019-02-25 16:37:15','2019-02-25 16:37:15');
/*!40000 ALTER TABLE `question_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_list_pivot`
--

DROP TABLE IF EXISTS `question_list_pivot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `question_list_pivot` (
  `question_list_pivot_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_list_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`question_list_pivot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_list_pivot`
--

LOCK TABLES `question_list_pivot` WRITE;
/*!40000 ALTER TABLE `question_list_pivot` DISABLE KEYS */;
INSERT INTO `question_list_pivot` VALUES (1,4,1,1,1),(2,4,3,1,1),(3,4,4,0,0),(4,4,6,1,1),(5,4,7,0,0),(6,4,8,0,0),(7,4,9,0,0),(8,4,10,0,0);
/*!40000 ALTER TABLE `question_list_pivot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quiz_date` date DEFAULT NULL,
  `quiz_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quiz_money` int(11) DEFAULT NULL,
  `quiz_status` tinyint(1) DEFAULT NULL,
  `played_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES (1,'1','2019-03-04','Test quiz 1',5000,0,NULL,'2019-03-03 11:27:37','2019-03-03 11:27:37'),(2,'2','2019-03-27','Test quiz 2',8000,0,NULL,'2019-03-03 11:31:12','2019-03-03 11:31:12'),(3,'1','2019-03-27','Test quiz 3',1000,0,NULL,'2019-03-06 07:09:07','2019-03-06 07:09:07');
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'administrator','tanzimul.tanim@gmail.com',NULL,'$2y$10$JpHc25kBZuXEycoImQc9I.5DSPn8c5MM/Y8bLxUvHcgNF/LmoQrXm','GVc67J1nTh8cOHFVomlrvtPAnGOIWFbckDW2LO0AfFdb0dPEK5TFJKWBQdwg','2019-01-22 00:47:56','2019-01-22 00:47:56'),(2,'Tauseef','tauseefim@yahoo.com',NULL,'$2y$10$zL7aPT5Ex1vAy0N3V8Ym2.pjxSGFnwTn8LGwJMPAVLtGgmYG3iPqe',NULL,'2019-02-25 16:36:43','2019-02-25 16:36:43');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `video` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `youtube_live_url_or_id` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_length` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,'GFqGRjXGluY','youtube_recorded_video','5:06','2019-02-12 12:18:16','2019-03-12 08:46:16',0),(2,'SMLgNZYW3XE','youtube_recorded_video','5:09','2019-02-12 12:32:24','2019-03-12 08:50:28',0),(3,'FoMlSB6ftQg','youtube_recorded_video','2.56','2019-03-12 05:47:35','2019-03-12 08:57:09',0),(4,'ikO91fQBsTQ','youtube_recorded_video','5:06','2019-03-12 09:14:24','2019-03-12 09:14:24',0),(5,'-MkClg7XgRI','youtube_recorded_video','7:25','2019-03-12 09:14:52','2019-03-12 09:17:14',0);
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-13 16:23:18
