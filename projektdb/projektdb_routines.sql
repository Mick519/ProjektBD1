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
-- Temporary view structure for view `lista_akcesoriow_w_magazynie`
--

DROP TABLE IF EXISTS `lista_akcesoriow_w_magazynie`;
/*!50001 DROP VIEW IF EXISTS `lista_akcesoriow_w_magazynie`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lista_akcesoriow_w_magazynie` AS SELECT 
 1 AS `model_akcesorium`,
 1 AS `producent`,
 1 AS `identyfikator_wewnetrzny_modelu`,
 1 AS `ilosc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lista_sprzetu_w_magazynie`
--

DROP TABLE IF EXISTS `lista_sprzetu_w_magazynie`;
/*!50001 DROP VIEW IF EXISTS `lista_sprzetu_w_magazynie`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lista_sprzetu_w_magazynie` AS SELECT 
 1 AS `model_sprzetu`,
 1 AS `identyfikator_wewnetrzny_sprzetu`,
 1 AS `adres_mac_ethernet`,
 1 AS `adres_mac_wifi`,
 1 AS `numer_seryjny`,
 1 AS `producent`,
 1 AS `cykl_zycia`,
 1 AS `stan`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `calkowita_lista_sprzetu`
--

DROP TABLE IF EXISTS `calkowita_lista_sprzetu`;
/*!50001 DROP VIEW IF EXISTS `calkowita_lista_sprzetu`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `calkowita_lista_sprzetu` AS SELECT 
 1 AS `model_sprzetu`,
 1 AS `identyfikator_wewnetrzny_sprzetu`,
 1 AS `adres_mac_ethernet`,
 1 AS `adres_mac_wifi`,
 1 AS `numer_seryjny`,
 1 AS `producent`,
 1 AS `cykl_zycia`,
 1 AS `stan`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lista_uzytkownikow`
--

DROP TABLE IF EXISTS `lista_uzytkownikow`;
/*!50001 DROP VIEW IF EXISTS `lista_uzytkownikow`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lista_uzytkownikow` AS SELECT 
 1 AS `imie`,
 1 AS `nazwisko`,
 1 AS `stanowisko`,
 1 AS `identyfikator_wewnetrzny_uzytkownika`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `lista_akcesoriow_w_magazynie`
--

/*!50001 DROP VIEW IF EXISTS `lista_akcesoriow_w_magazynie`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lista_akcesoriow_w_magazynie` AS select `akcesoria`.`model_akcesorium` AS `model_akcesorium`,`akcesoria`.`producent` AS `producent`,`akcesoria`.`identyfikator_wewnetrzny_modelu` AS `identyfikator_wewnetrzny_modelu`,`akcesoria`.`ilosc` AS `ilosc` from `akcesoria` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lista_sprzetu_w_magazynie`
--

/*!50001 DROP VIEW IF EXISTS `lista_sprzetu_w_magazynie`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lista_sprzetu_w_magazynie` AS select `sprzet`.`model_sprzetu` AS `model_sprzetu`,`sprzet`.`identyfikator_wewnetrzny_sprzetu` AS `identyfikator_wewnetrzny_sprzetu`,`sprzet`.`adres_mac_ethernet` AS `adres_mac_ethernet`,`sprzet`.`adres_mac_wifi` AS `adres_mac_wifi`,`sprzet`.`numer_seryjny` AS `numer_seryjny`,`sprzet`.`producent` AS `producent`,`sprzet`.`cykl_zycia` AS `cykl_zycia`,`sprzet`.`stan` AS `stan` from `sprzet` where (`sprzet`.`stan` = 'w_magazynie') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `calkowita_lista_sprzetu`
--

/*!50001 DROP VIEW IF EXISTS `calkowita_lista_sprzetu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `calkowita_lista_sprzetu` AS select `sprzet`.`model_sprzetu` AS `model_sprzetu`,`sprzet`.`identyfikator_wewnetrzny_sprzetu` AS `identyfikator_wewnetrzny_sprzetu`,`sprzet`.`adres_mac_ethernet` AS `adres_mac_ethernet`,`sprzet`.`adres_mac_wifi` AS `adres_mac_wifi`,`sprzet`.`numer_seryjny` AS `numer_seryjny`,`sprzet`.`producent` AS `producent`,`sprzet`.`cykl_zycia` AS `cykl_zycia`,`sprzet`.`stan` AS `stan` from `sprzet` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lista_uzytkownikow`
--

/*!50001 DROP VIEW IF EXISTS `lista_uzytkownikow`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lista_uzytkownikow` AS select `uzytkownicy`.`imie` AS `imie`,`uzytkownicy`.`nazwisko` AS `nazwisko`,`uzytkownicy`.`stanowisko` AS `stanowisko`,`uzytkownicy`.`identyfikator_wewnetrzny_uzytkownika` AS `identyfikator_wewnetrzny_uzytkownika` from `uzytkownicy` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'projektdb'
--

--
-- Dumping routines for database 'projektdb'
--
/*!50003 DROP PROCEDURE IF EXISTS `wyswietl_sprzet_przypisany_do_danego_uzytkownika` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `wyswietl_sprzet_przypisany_do_danego_uzytkownika`(indetyfikator INT)
BEGIN
	SELECT *FROM przypisany_sprzet WHERE (identyfikator_wewntrzny_uzytkownika = indetyfikator);
END ;;
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
