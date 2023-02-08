-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: musicstore
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,1,'[{\"id\": 1, \"cant\": 1}, {\"id\": 2, \"cant\": 1}, {\"id\": 5, \"cant\": 1}]','2022-11-02 11:01:20'),(2,1,'[{\"id\": 1, \"cant\": 2}, {\"id\": 4, \"cant\": 2}, {\"id\": 3, \"cant\": 4}]','2022-12-02 05:04:22'),(3,3,'[{\"id\": 1, \"cant\": 2}]','2022-11-02 00:00:00'),(4,3,'[{\"id\": 2, \"cant\": 1}, {\"id\": 1, \"cant\": 2}, {\"id\": 5, \"cant\": 1}]','2022-11-14 07:04:21'),(5,2,'[{\"id\": 5, \"cant\": 1}]','2022-11-02 00:00:00'),(6,11,'[{\"id\": 1, \"cant\": 1}, {\"id\": 2, \"cant\": 1}, {\"id\": 5, \"cant\": 1}]','2022-09-03 04:01:20'),(7,1,'[{\"id\": 1, \"cant\": 2}, {\"id\": 4, \"cant\": 2}, {\"id\": 3, \"cant\": 4}]','2022-12-02 10:01:20'),(8,13,'[{\"id\": 1, \"cant\": 2}]','2022-11-02 00:00:00'),(9,12,'[{\"id\": 2, \"cant\": 1}, {\"id\": 8, \"cant\": 2}, {\"id\": 15, \"cant\": 1}]','2022-12-12 11:11:20'),(10,2,'[{\"id\": 15, \"cant\": 1}]','2022-11-02 00:00:00'),(11,9,'[{\"id\": 11, \"cant\": 2}, {\"id\": 2, \"cant\": 1}, {\"id\": 5, \"cant\": 1}]','2022-08-22 11:01:21'),(12,5,'[{\"id\": 11, \"cant\": 1}, {\"id\": 4, \"cant\": 2}, {\"id\": 3, \"cant\": 4}]','2022-11-22 11:01:23'),(13,4,'[{\"id\": 11, \"cant\": 2}]','2022-11-02 00:00:00'),(14,2,'[{\"id\": 12, \"cant\": 1}, {\"id\": 7, \"cant\": 2}, {\"id\": 5, \"cant\": 1}]','2022-11-21 10:14:20'),(15,15,'[{\"id\": 14, \"cant\": 1}]','2022-11-17 00:00:00');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_before_insertPedido_log` BEFORE INSERT ON `pedidos` FOR EACH ROW INSERT INTO log_pedidos_before(timestamp_operation, operation, hecho_por) VALUES (now(), "INSERT", user()) */;;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_after_insertPedido_venta` AFTER INSERT ON `pedidos` FOR EACH ROW BEGIN
	DECLARE iddisco INT;
    DECLARE cantidad INT;
    DECLARE precio DECIMAL;

	DECLARE i INT DEFAULT 0;
    WHILE i < JSON_LENGTH(new.productos) DO
        SELECT JSON_EXTRACT(new.productos, CONCAT('$[',i,'].id')) INTO iddisco;
        SELECT JSON_EXTRACT(new.productos, CONCAT('$[',i,'].cant')) INTO cantidad;
        SELECT discos.precio from discos where discos.id_disco = iddisco INTO precio;
        
		INSERT INTO ventas VALUES(
		NULL, NEW.id_pedido, NEW.id_usuario, CAST(iddisco AS UNSIGNED), precio, CAST(cantidad AS UNSIGNED), cantidad*precio, NEW.fecha_pedido
		);

        SET i = i + 1;
    END WHILE;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_after_insertPedido_bkp` AFTER INSERT ON `pedidos` FOR EACH ROW INSERT INTO bkp_pedidos VALUES (NULL, NEW.id_usuario, NEW.id_pedido, NEW.productos, NEW.fecha_pedido) */;;
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

-- Dump completed on 2023-02-08  0:22:17
