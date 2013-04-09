-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: pbr_development
-- ------------------------------------------------------
-- Server version	5.5.29-0ubuntu0.12.04.2

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
-- Table structure for table `ideas`
--

DROP TABLE IF EXISTS `ideas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ideas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_ideas_on_problem_id` (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ideas`
--

LOCK TABLES `ideas` WRITE;
/*!40000 ALTER TABLE `ideas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ideas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leveleightcauses`
--

DROP TABLE IF EXISTS `leveleightcauses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leveleightcauses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_leveleightcauses_on_problem_id` (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leveleightcauses`
--

LOCK TABLES `leveleightcauses` WRITE;
/*!40000 ALTER TABLE `leveleightcauses` DISABLE KEYS */;
/*!40000 ALTER TABLE `leveleightcauses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leveleighteffects`
--

DROP TABLE IF EXISTS `leveleighteffects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leveleighteffects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `levelseveneffect_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_leveleighteffects_on_problem_id` (`problem_id`),
  KEY `index_leveleighteffects_on_levelseveneffect_id` (`levelseveneffect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leveleighteffects`
--

LOCK TABLES `leveleighteffects` WRITE;
/*!40000 ALTER TABLE `leveleighteffects` DISABLE KEYS */;
/*!40000 ALTER TABLE `leveleighteffects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levelfivecauses`
--

DROP TABLE IF EXISTS `levelfivecauses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `levelfivecauses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_levelfivecauses_on_problem_id` (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levelfivecauses`
--

LOCK TABLES `levelfivecauses` WRITE;
/*!40000 ALTER TABLE `levelfivecauses` DISABLE KEYS */;
/*!40000 ALTER TABLE `levelfivecauses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levelfiveeffects`
--

DROP TABLE IF EXISTS `levelfiveeffects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `levelfiveeffects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `levelfoureffect_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_levelfiveeffects_on_problem_id` (`problem_id`),
  KEY `index_levelfiveeffects_on_levelfoureffect_id` (`levelfoureffect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levelfiveeffects`
--

LOCK TABLES `levelfiveeffects` WRITE;
/*!40000 ALTER TABLE `levelfiveeffects` DISABLE KEYS */;
/*!40000 ALTER TABLE `levelfiveeffects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levelfourcauses`
--

DROP TABLE IF EXISTS `levelfourcauses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `levelfourcauses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_levelfourcauses_on_problem_id` (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levelfourcauses`
--

LOCK TABLES `levelfourcauses` WRITE;
/*!40000 ALTER TABLE `levelfourcauses` DISABLE KEYS */;
/*!40000 ALTER TABLE `levelfourcauses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levelfoureffects`
--

DROP TABLE IF EXISTS `levelfoureffects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `levelfoureffects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `levelthreeeffect_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_levelfoureffects_on_problem_id` (`problem_id`),
  KEY `index_levelfoureffects_on_levelthreeeffect_id` (`levelthreeeffect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levelfoureffects`
--

LOCK TABLES `levelfoureffects` WRITE;
/*!40000 ALTER TABLE `levelfoureffects` DISABLE KEYS */;
/*!40000 ALTER TABLE `levelfoureffects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levelonecauses`
--

DROP TABLE IF EXISTS `levelonecauses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `levelonecauses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_levelonecauses_on_problem_id` (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levelonecauses`
--

LOCK TABLES `levelonecauses` WRITE;
/*!40000 ALTER TABLE `levelonecauses` DISABLE KEYS */;
/*!40000 ALTER TABLE `levelonecauses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leveloneeffects`
--

DROP TABLE IF EXISTS `leveloneeffects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leveloneeffects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_leveloneeffects_on_problem_id` (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leveloneeffects`
--

LOCK TABLES `leveloneeffects` WRITE;
/*!40000 ALTER TABLE `leveloneeffects` DISABLE KEYS */;
/*!40000 ALTER TABLE `leveloneeffects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levelsevencauses`
--

DROP TABLE IF EXISTS `levelsevencauses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `levelsevencauses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_levelsevencauses_on_problem_id` (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levelsevencauses`
--

LOCK TABLES `levelsevencauses` WRITE;
/*!40000 ALTER TABLE `levelsevencauses` DISABLE KEYS */;
/*!40000 ALTER TABLE `levelsevencauses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levelseveneffects`
--

DROP TABLE IF EXISTS `levelseveneffects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `levelseveneffects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `levelsixeffect_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_levelseveneffects_on_problem_id` (`problem_id`),
  KEY `index_levelseveneffects_on_levelsixeffect_id` (`levelsixeffect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levelseveneffects`
--

LOCK TABLES `levelseveneffects` WRITE;
/*!40000 ALTER TABLE `levelseveneffects` DISABLE KEYS */;
/*!40000 ALTER TABLE `levelseveneffects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levelsixcauses`
--

DROP TABLE IF EXISTS `levelsixcauses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `levelsixcauses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_levelsixcauses_on_problem_id` (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levelsixcauses`
--

LOCK TABLES `levelsixcauses` WRITE;
/*!40000 ALTER TABLE `levelsixcauses` DISABLE KEYS */;
/*!40000 ALTER TABLE `levelsixcauses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levelsixeffects`
--

DROP TABLE IF EXISTS `levelsixeffects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `levelsixeffects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `levelfiveeffect_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_levelsixeffects_on_problem_id` (`problem_id`),
  KEY `index_levelsixeffects_on_levelfiveeffect_id` (`levelfiveeffect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levelsixeffects`
--

LOCK TABLES `levelsixeffects` WRITE;
/*!40000 ALTER TABLE `levelsixeffects` DISABLE KEYS */;
/*!40000 ALTER TABLE `levelsixeffects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levelthreecauses`
--

DROP TABLE IF EXISTS `levelthreecauses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `levelthreecauses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_levelthreecauses_on_problem_id` (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levelthreecauses`
--

LOCK TABLES `levelthreecauses` WRITE;
/*!40000 ALTER TABLE `levelthreecauses` DISABLE KEYS */;
/*!40000 ALTER TABLE `levelthreecauses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levelthreeeffects`
--

DROP TABLE IF EXISTS `levelthreeeffects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `levelthreeeffects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `leveltwoeffect_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_levelthreeeffects_on_problem_id` (`problem_id`),
  KEY `index_levelthreeeffects_on_leveltwoeffect_id` (`leveltwoeffect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levelthreeeffects`
--

LOCK TABLES `levelthreeeffects` WRITE;
/*!40000 ALTER TABLE `levelthreeeffects` DISABLE KEYS */;
/*!40000 ALTER TABLE `levelthreeeffects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leveltwocauses`
--

DROP TABLE IF EXISTS `leveltwocauses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leveltwocauses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_leveltwocauses_on_problem_id` (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leveltwocauses`
--

LOCK TABLES `leveltwocauses` WRITE;
/*!40000 ALTER TABLE `leveltwocauses` DISABLE KEYS */;
/*!40000 ALTER TABLE `leveltwocauses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leveltwoeffects`
--

DROP TABLE IF EXISTS `leveltwoeffects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leveltwoeffects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `leveloneeffect_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_leveltwoeffects_on_problem_id` (`problem_id`),
  KEY `index_leveltwoeffects_on_leveloneeffect_id` (`leveloneeffect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leveltwoeffects`
--

LOCK TABLES `leveltwoeffects` WRITE;
/*!40000 ALTER TABLE `leveltwoeffects` DISABLE KEYS */;
/*!40000 ALTER TABLE `leveltwoeffects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problems`
--

DROP TABLE IF EXISTS `problems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `responsable_unit` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `budget_program` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problems`
--

LOCK TABLES `problems` WRITE;
/*!40000 ALTER TABLE `problems` DISABLE KEYS */;
INSERT INTO `problems` VALUES (1,'asd',NULL,NULL,NULL,NULL,NULL,'2013-04-08 19:58:39','2013-04-08 19:58:39'),(2,'probando',NULL,NULL,NULL,NULL,NULL,'2013-04-08 20:03:36','2013-04-08 20:03:36'),(3,'asdsd','dsff','dfsdfsdf','sdfsdf@mail.com','7280','chihuahua','2013-04-09 00:12:17','2013-04-09 00:12:17');
/*!40000 ALTER TABLE `problems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130326025614'),('20130403190122'),('20130403205248'),('20130403205329'),('20130405203831'),('20130405204351'),('20130405204652'),('20130405204841'),('20130405204942'),('20130405205008'),('20130405205021'),('20130405205034'),('20130405205047'),('20130405205102'),('20130405205149'),('20130405205246'),('20130405205339'),('20130405205436'),('20130405205502'),('20130405205549'),('20130405205640'),('20130405205712');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'rsantelices@outlook.com','$2a$10$PmnuQrC7iMLBGunAI7yYt.Pxj3.Hfmfs1tVY8zamBhEfw0nQff55e','cCY751JDHHStib19AaYP','2013-03-26 19:07:22',NULL,29,'2013-04-08 23:55:42','2013-04-08 18:13:02','127.0.0.1','127.0.0.1','2013-03-26 02:58:41','2013-04-08 23:55:42',1,'Roberto','Santelices'),(2,'robertosante@gmail.com','$2a$10$BqrO5dWlH0k1c9qrqS6f1O4PHZtV4oxfKBFWJ07UjZKAEivXhBRPu',NULL,NULL,NULL,1,'2013-04-04 17:32:31','2013-04-04 17:32:31','127.0.0.1','127.0.0.1','2013-04-04 17:32:31','2013-04-04 17:32:43',0,'Jose','Delgado');
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

-- Dump completed on 2013-04-09 10:47:18
