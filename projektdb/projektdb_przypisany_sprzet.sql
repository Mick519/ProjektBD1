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
-- Table structure for table `przypisany_sprzet`
--

DROP TABLE IF EXISTS `przypisany_sprzet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `przypisany_sprzet` (
  `identyfikator_wewnetrzny_sprzetu` varchar(255) NOT NULL,
  `data_przypisania` date NOT NULL,
  `identyfikator_wewntrzny_uzytkownika` int NOT NULL,
  PRIMARY KEY (`identyfikator_wewnetrzny_sprzetu`,`identyfikator_wewntrzny_uzytkownika`),
  UNIQUE KEY `identyfikator_wewnetrzny_sprzetu_UNIQUE` (`identyfikator_wewnetrzny_sprzetu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `przypisany_sprzet`
--

LOCK TABLES `przypisany_sprzet` WRITE;
/*!40000 ALTER TABLE `przypisany_sprzet` DISABLE KEYS */;
INSERT INTO `przypisany_sprzet` VALUES ('7800001','2022-05-16',123456),('7800035','2022-05-16',123456);
/*!40000 ALTER TABLE `przypisany_sprzet` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `przypisany_sprzet_AFTER_INSERT` AFTER INSERT ON `przypisany_sprzet` FOR EACH ROW BEGIN
	INSERT INTO historia_operacji (operacja, data_operacji, identyfikator_wewnetrzny, odbiorca, rodzaj)
    VALUES ('przypisanie', new.data_przypisania, new.identyfikator_wewnetrzny_sprzetu, new.identyfikator_wewntrzny_uzytkownika, 'sprzet');
    
    UPDATE sprzet
    SET stan = 'przypisany', cykl_zycia = 'uzywany'
    WHERE new.identyfikator_wewnetrzny_sprzetu = identyfikator_wewnetrzny_sprzetu;
    
    IF (SELECT adres_mac_ethernet FROM sprzet WHERE identyfikator_wewnetrzny_sprzetu = new.identyfikator_wewnetrzny_sprzetu) IS NOT NULL THEN
		INSERT INTO korelacja_uzytkownika_ze_sprzetem (nazwa_hosta, identyfikator_wewnetrzny_uzytkownika, uprawnienia, identyfikator_wewnetrzny_sprzetu)
		VALUES (LOWER(CONCAT((SELECT imie FROM uzytkownicy WHERE (identyfikator_wewnetrzny_uzytkownika = new.identyfikator_wewntrzny_uzytkownika)), (SELECT nazwisko FROM uzytkownicy WHERE (identyfikator_wewnetrzny_uzytkownika = new.identyfikator_wewntrzny_uzytkownika)), (SELECT CAST((SELECT FLOOR(RAND()*(10000-1000)+1000)) AS char)))), new.identyfikator_wewntrzny_uzytkownika, 'niskie', new.identyfikator_wewnetrzny_sprzetu);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `przypisany_sprzet_BEFORE_DELETE` BEFORE DELETE ON `przypisany_sprzet` FOR EACH ROW BEGIN
	UPDATE sprzet
    SET stan = 'w_magazynie', cykl_zycia = 'uzywany'
    WHERE OLD.identyfikator_wewnetrzny_sprzetu = identyfikator_wewnetrzny_sprzetu;
    
    INSERT INTO historia_operacji (operacja, data_operacji, identyfikator_wewnetrzny, rodzaj)
    VALUES ('zwrot', curdate(), old.identyfikator_wewnetrzny_sprzetu, 'sprzet');
    
	DELETE FROM korelacja_uzytkownika_ze_sprzetem 
    WHERE (OLD.identyfikator_wewnetrzny_sprzetu = identyfikator_wewnetrzny_sprzetu);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-16 16:23:18
