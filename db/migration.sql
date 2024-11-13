-- MySQL dump 10.13  Distrib 9.0.1, for Linux (x86_64)
--
-- Host: localhost    Database: snippetbox
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `token` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` blob NOT NULL,
  `expiry` timestamp(6) NOT NULL,
  PRIMARY KEY (`token`),
  KEY `sessions_expiry_idx` (`expiry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snippets`
--

DROP TABLE IF EXISTS `snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `snippets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_snippets_created` (`created`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snippets`
--

LOCK TABLES `snippets` WRITE;
/*!40000 ALTER TABLE `snippets` DISABLE KEYS */;
INSERT INTO `snippets` VALUES (1,'An old silent pond','An old silent pond...\nA frog jumps into the pond,\nsplash! Silence again.\n\n Matsuo Bash','2024-08-21 08:23:25','2025-08-21 08:23:25'),(2,'Over the wintry forest','Over the wintry\nforest, winds howl in rage\nwith no leaves to blow.\n\n Natsume Soseki','2024-08-21 08:23:34','2025-08-21 08:23:34'),(3,'First autumn morning','First autumn morning\nthe mirror I stare into\nshows my father\'s face.\n\n Murakami Kijo','2024-08-21 08:23:40','2024-08-28 08:23:40'),(4,'O snail','O snail\nClimb Mount Fuji,\nBut slowly, slowly!\n\n- Kobayashi Issa','2024-08-21 13:32:55','2024-08-28 13:32:55'),(5,'From time to time','From time to time\r\nThe clouds give rest.\r\nTo the moon-beholders.\r\n\r\n- Matsuo Basho','2024-08-25 16:42:15','2024-09-01 16:42:15'),(7,'Test','I am writing code at night.\r\nI am getting better, faster, and stronger.\r\n\r\n- Sandro Skhirtladze','2024-08-25 20:13:15','2025-08-25 20:13:15'),(8,'The Wren','The wren\r\nEarns his living\r\nNoiselessly.\r\n\r\n- Kobayashi Tasa','2024-08-26 11:44:51','2025-08-26 11:44:51'),(9,'The Old Pond','An old silent pond\r\n\r\nA frog jumps into the pond—\r\n\r\nSplash! Silence again.\r\n\r\n- Matsuo Bashō','2024-08-26 11:48:55','2025-08-26 11:48:55');
/*!40000 ALTER TABLE `snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_password` char(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_uc_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Bob Jones','bob@example.com','$2a$12$u7hQrHoKKByU5N5yMGuRgeoufSQ.a4wo2sv3wI0LCXXRBFoYqNyhC','2024-08-28 17:17:43');
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

-- Dump completed on 2024-11-13 13:04:15
