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
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int NOT NULL,
  `id_usuario` int NOT NULL,
  `id_disco` int NOT NULL,
  `precio_unit` decimal(10,0) NOT NULL,
  `cantidad` int NOT NULL,
  `subtotal` decimal(10,0) NOT NULL,
  `fecha_venta` date NOT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_disco` (`id_disco`),
  KEY `id_pedido` (`id_pedido`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_disco`) REFERENCES `discos` (`id_disco`),
  CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,1,1,1,140,1,140,'2022-11-02'),(2,1,1,2,120,1,120,'2022-11-02'),(3,1,1,5,80,1,80,'2022-11-02'),(4,2,1,1,140,2,280,'2022-12-02'),(5,2,1,4,90,2,180,'2022-12-02'),(6,2,1,3,120,4,480,'2022-12-02'),(7,3,3,1,140,2,280,'2022-11-02'),(8,4,3,2,120,1,120,'2022-11-14'),(9,4,3,1,140,2,280,'2022-11-14'),(10,4,3,5,80,1,80,'2022-11-14'),(11,5,2,5,80,1,80,'2022-11-02'),(12,6,11,1,140,1,140,'2022-09-03'),(13,6,11,2,120,1,120,'2022-09-03'),(14,6,11,5,80,1,80,'2022-09-03'),(15,7,1,1,140,2,280,'2022-12-02'),(16,7,1,4,90,2,180,'2022-12-02'),(17,7,1,3,120,4,480,'2022-12-02'),(18,8,13,1,140,2,280,'2022-11-02'),(19,9,12,2,120,1,120,'2022-12-12'),(20,9,12,8,70,2,140,'2022-12-12'),(21,9,12,15,80,1,80,'2022-12-12'),(22,10,2,15,80,1,80,'2022-11-02'),(23,11,9,11,110,2,220,'2022-08-22'),(24,11,9,2,120,1,120,'2022-08-22'),(25,11,9,5,80,1,80,'2022-08-22'),(26,12,5,11,110,1,110,'2022-11-22'),(27,12,5,4,90,2,180,'2022-11-22'),(28,12,5,3,120,4,480,'2022-11-22'),(29,13,4,11,110,2,220,'2022-11-02'),(30,14,2,12,120,1,120,'2022-11-21'),(31,14,2,7,85,2,170,'2022-11-21'),(32,14,2,5,80,1,80,'2022-11-21'),(33,15,15,14,90,1,90,'2022-11-17');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-08  0:21:22
