-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: projektdb
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `korelacja_uzytkownika_ze_sprzetem`
--

DROP TABLE IF EXISTS `korelacja_uzytkownika_ze_sprzetem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `korelacja_uzytkownika_ze_sprzetem` (
  `nazwa_hosta` varchar(255) NOT NULL,
  `identyfikator_wewnetrzny_uzytkownika` int NOT NULL,
  `uprawnienia` enum('niskie','średnie','wysokie') DEFAULT 'niskie',
  `identyfikator_wewnetrzny_sprzetu` varchar(255) NOT NULL,
  UNIQUE KEY `nazwa_hosta_UNIQUE` (`nazwa_hosta`),
  UNIQUE KEY `identyfikator_wewnetrzny_sprzetu_UNIQUE` (`identyfikator_wewnetrzny_sprzetu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `korelacja_uzytkownika_ze_sprzetem`
--

LOCK TABLES `korelacja_uzytkownika_ze_sprzetem` WRITE;
/*!40000 ALTER TABLE `korelacja_uzytkownika_ze_sprzetem` DISABLE KEYS */;
INSERT INTO `korelacja_uzytkownika_ze_sprzetem` VALUES ('michalwrobel5094',123456,'niskie','7800001');
/*!40000 ALTER TABLE `korelacja_uzytkownika_ze_sprzetem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-16 16:23:18
