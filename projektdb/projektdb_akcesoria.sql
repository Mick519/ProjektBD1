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
-- Table structure for table `akcesoria`
--

DROP TABLE IF EXISTS `akcesoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `akcesoria` (
  `model_akcesorium` varchar(255) NOT NULL,
  `producent` varchar(255) DEFAULT NULL,
  `identyfikator_wewnetrzny_modelu` varchar(255) NOT NULL,
  `ilosc` int DEFAULT NULL,
  PRIMARY KEY (`identyfikator_wewnetrzny_modelu`),
  UNIQUE KEY `model_akcesorium_UNIQUE` (`model_akcesorium`),
  UNIQUE KEY `identyfikator_wewnetrzny_modelu_UNIQUE` (`identyfikator_wewnetrzny_modelu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akcesoria`
--

LOCK TABLES `akcesoria` WRITE;
/*!40000 ALTER TABLE `akcesoria` DISABLE KEYS */;
INSERT INTO `akcesoria` VALUES ('Słuchawki nauszne','Sony','23454',28),('Słuchawki douszne','Samsung','23455',20),('Myszka przewodowa','Logitech','23456',70),('Klawiatura przewodowa','Logitech','23457',65),('Podkłądka pod myszkę','Steelseries','23458',20),('Adapter 1 USB A do 4 USB A','Logitech','23459',10),('Adapter USB C do USB A','Logitech','23460',100),('Klucz 2FA','Yubico','23461',47),('Ładowarka do laptopa','Dell','23462',23),('Ładowarka do telefonu USB C','Samsung','23463',NULL);
/*!40000 ALTER TABLE `akcesoria` ENABLE KEYS */;
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
