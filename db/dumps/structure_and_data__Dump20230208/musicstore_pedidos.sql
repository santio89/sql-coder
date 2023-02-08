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
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `productos` json DEFAULT NULL,
  `fecha_pedido` datetime NOT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,1,'[{\"id\": 1, \"cant\": 1}, {\"id\": 2, \"cant\": 1}, {\"id\": 5, \"cant\": 1}]','2022-11-02 11:01:20'),(2,1,'[{\"id\": 1, \"cant\": 2}, {\"id\": 4, \"cant\": 2}, {\"id\": 3, \"cant\": 4}]','2022-12-02 05:04:22'),(3,3,'[{\"id\": 1, \"cant\": 2}]','2022-11-02 00:00:00'),(4,3,'[{\"id\": 2, \"cant\": 1}, {\"id\": 1, \"cant\": 2}, {\"id\": 5, \"cant\": 1}]','2022-11-14 07:04:21'),(5,2,'[{\"id\": 5, \"cant\": 1}]','2022-11-02 00:00:00'),(6,11,'[{\"id\": 1, \"cant\": 1}, {\"id\": 2, \"cant\": 1}, {\"id\": 5, \"cant\": 1}]','2022-09-03 04:01:20'),(7,1,'[{\"id\": 1, \"cant\": 2}, {\"id\": 4, \"cant\": 2}, {\"id\": 3, \"cant\": 4}]','2022-12-02 10:01:20'),(8,13,'[{\"id\": 1, \"cant\": 2}]','2022-11-02 00:00:00'),(9,12,'[{\"id\": 2, \"cant\": 1}, {\"id\": 8, \"cant\": 2}, {\"id\": 15, \"cant\": 1}]','2022-12-12 11:11:20'),(10,2,'[{\"id\": 15, \"cant\": 1}]','2022-11-02 00:00:00'),(11,9,'[{\"id\": 11, \"cant\": 2}, {\"id\": 2, \"cant\": 1}, {\"id\": 5, \"cant\": 1}]','2022-08-22 11:01:21'),(12,5,'[{\"id\": 11, \"cant\": 1}, {\"id\": 4, \"cant\": 2}, {\"id\": 3, \"cant\": 4}]','2022-11-22 11:01:23'),(13,4,'[{\"id\": 11, \"cant\": 2}]','2022-11-02 00:00:00'),(14,2,'[{\"id\": 12, \"cant\": 1}, {\"id\": 7, \"cant\": 2}, {\"id\": 5, \"cant\": 1}]','2022-11-21 10:14:20'),(15,15,'[{\"id\": 14, \"cant\": 1}]','2022-11-17 00:00:00');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-08 19:38:42
