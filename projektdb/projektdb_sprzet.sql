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
-- Table structure for table `sprzet`
--

DROP TABLE IF EXISTS `sprzet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sprzet` (
  `model_sprzetu` varchar(255) NOT NULL,
  `identyfikator_wewnetrzny_sprzetu` varchar(255) NOT NULL,
  `adres_mac_ethernet` varchar(255) DEFAULT NULL,
  `adres_mac_wifi` varchar(255) DEFAULT NULL,
  `numer_seryjny` varchar(255) DEFAULT NULL,
  `producent` varchar(255) DEFAULT NULL,
  `cykl_zycia` enum('nowy','uzywany') NOT NULL DEFAULT 'nowy',
  `stan` enum('przypisany','w_magazynie') NOT NULL,
  PRIMARY KEY (`identyfikator_wewnetrzny_sprzetu`),
  UNIQUE KEY `identyfikator_wewnetrzny_modelu_UNIQUE` (`identyfikator_wewnetrzny_sprzetu`),
  UNIQUE KEY `adres_mac_UNIQUE` (`adres_mac_ethernet`),
  UNIQUE KEY `adres_mac_wifi_UNIQUE` (`adres_mac_wifi`),
  UNIQUE KEY `numer_seryjny_UNIQUE` (`numer_seryjny`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sprzet`
--

LOCK TABLES `sprzet` WRITE;
/*!40000 ALTER TABLE `sprzet` DISABLE KEYS */;
INSERT INTO `sprzet` VALUES ('Laptop','7800001','00:1B:44:11:3A:D7','08:1B:44:12:3A:B7','QWE31324DE32','Asus','uzywany','przypisany'),('Laptop','7800002','00:1B:45:11:3A:B7','10:1B:44:12:3A:B7','D232DQWD3DD','Asus','nowy','w_magazynie'),('Laptop','7800003','00:1B:44:11:2A:B7','30:1B:44:12:3A:B7','23D23D423DQD','Asus','nowy','w_magazynie'),('Laptop','7800004','00:3B:44:11:3A:B7','40:1B:44:12:3A:B7','FD43FWERF355','Asus','nowy','w_magazynie'),('Laptop','7800005','00:1B:48:11:3A:B7','05:1B:44:12:3A:B7','344F43FDSF5F5','Asus','nowy','w_magazynie'),('Laptop','7800006','00:1B:44:11:3A:87','06:1B:44:12:3A:B7','G54G6567H7556','Asus','nowy','w_magazynie'),('Laptop','7800007','00:1B:44:01:3A:B7','07:1B:44:12:3A:B7','4G4G4G465GT48','Asus','nowy','w_magazynie'),('Laptop','7800008','00:1B:34:11:3A:B7','22:1B:44:12:3A:B7','BRT4B46654654','Asus','nowy','w_magazynie'),('Laptop','7800009','00:1B:44:11:DA:B7','11:1B:44:12:3A:B7','QWE313245E32','Asus','nowy','w_magazynie'),('Laptop','7800010','10:1B:44:11:3A:B7','13:1B:44:12:3A:B7','QWE61324DE32','Asus','nowy','w_magazynie'),('Laptop','7800011','02:1B:44:11:3A:B7','14:1B:44:12:3A:B7','QWE31334DE32','Asus','nowy','w_magazynie'),('Macbook','7800013','02:01:44:11:3A:B7','02:02:44:11:3A:B7','2D3D232DAWFF','Apple','uzywany','w_magazynie'),('Macbook','7800014','02:03:44:11:3A:B7','02:04:44:11:3A:B7','2DQWDWDSFGD','Apple','uzywany','w_magazynie'),('Macbook','7800015','02:05:44:11:3A:B7','02:06:44:11:3A:B7','453454FRFRF44','Apple','nowy','w_magazynie'),('Macbook','7800016','02:07:44:11:3A:B7','02:08:44:11:3A:B7','SDF3F4344FFFF','Apple','nowy','w_magazynie'),('Macbook','7800017','02:09:44:11:3A:B7','02:10:44:11:3A:B7','3FRWFR34RF4F','Apple','nowy','w_magazynie'),('Macbook','7800018','02:01:11:11:3A:B7','02:02:12:11:3A:B7','556788798HHHF','Apple','nowy','w_magazynie'),('Macbook','7800019','02:01:13:11:3A:B7','02:02:14:11:3A:B7','43569YHFGG444','Apple','nowy','w_magazynie'),('Macbook','7800020','02:01:15:11:3A:B7','02:02:16:11:3A:B7','4T5GFFSGR5555R','Apple','nowy','w_magazynie'),('Monitor','7800021','',NULL,'3FFEWF536G665','LG','uzywany','w_magazynie'),('Monitor','7800022',NULL,NULL,'3F5EWF536G665','LG','uzywany','w_magazynie'),('Monitor','7800023',NULL,NULL,'3FFEWG536G665','LG','nowy','w_magazynie'),('Monitor','7800024',NULL,NULL,'3F4EWF536G665','LG','nowy','w_magazynie'),('Monitor','7800025',NULL,NULL,'3FF7WF536G665','LG','nowy','w_magazynie'),('Monitor','7800026',NULL,NULL,'3FFEWF5369665','LG','nowy','w_magazynie'),('Monitor','7800027',NULL,NULL,'3FFEWF536G865','LG','nowy','w_magazynie'),('Monitor','7800028',NULL,NULL,'3FFEWF436G665','LG','nowy','w_magazynie'),('Monitor','7800029',NULL,NULL,'3FFDWF536G665','LG','nowy','w_magazynie'),('Monitor','7800030',NULL,NULL,'3FFEWR536G665','LG','nowy','w_magazynie'),('Monitor','7800031',NULL,NULL,'3FFEWF336G665','LG','nowy','w_magazynie'),('Monitor','7800032',NULL,NULL,'3FFEWF53RG665','LG','nowy','w_magazynie'),('Monitor','7800033',NULL,NULL,'3FFEWF5S6G665','LG','nowy','w_magazynie'),('Monitor','7800034',NULL,NULL,'3FFEWF526G665','LG','nowy','w_magazynie'),('Monitor','7800035',NULL,NULL,'3FFEWF936G665','LG','uzywany','przypisany');
/*!40000 ALTER TABLE `sprzet` ENABLE KEYS */;
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
