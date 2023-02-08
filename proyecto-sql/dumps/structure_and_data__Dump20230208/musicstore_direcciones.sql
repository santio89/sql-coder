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
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones` (
  `id_direccion` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `pais` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `calle` varchar(100) NOT NULL,
  `altura` varchar(100) NOT NULL,
  `coordenadas` varchar(100) NOT NULL,
  PRIMARY KEY (`id_direccion`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `direcciones_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (1,1,'Argentina','Buenos Aires','Azul','Av San Martin','424','52° 31\' 28\'\' N; 13° 24\' 38\'\' E'),(2,2,'Argentina','Chubut','Trelew','Rivadavia','314','32° 31\' 28\'\' N; 13° 22\' 32\'\' E'),(3,3,'Argentina','Mendoza','San Rafael','Belgrano','41','24° 31\' 28\'\' N; 13° 24\' 38\'\' N'),(4,4,'Argentina','Tucuman','San Miguel','Marconi','123','52° 11\' 45\'\' N; 15° 26\' 48\'\' N'),(5,5,'Argentina','Rio Negro','Sierra Grande','Alem','715','43° 21\' 6\'\' N; 16° 14\' 58\'\' E'),(6,6,'Colombia','Estado Falso','Ciudad Falsa','Calle Falsa','123','12° 11\' 28\'\' N; 13° 24\' 38\'\' E'),(7,7,'Ecuador','Estado Falso','Ciudad Falsa','Calle Falsa','314','31° 31\' 26\'\' N; 13° 22\' 32\'\' E'),(8,8,'Peru','Estado Falso','Ciudad False','Calle falsa','412','24° 31\' 28\'\' N; 19° 24\' 38\'\' N'),(9,9,'Argentina','Tucuman','San Miguel','Belgrano','223','12° 11\' 45\'\' N; 15° 26\' 48\'\' N'),(10,10,'Chile','Estado Falso','Ciudad Falsa','Calle Falsa','115','43° 21\' 6\'\' N; 16° 14\' 58\'\' E'),(11,11,'Argentina','Buenos Aires','Bahia Blanca','Av Rivadavia','124','52° 31\' 28\'\' N; 13° 24\' 38\'\' E'),(12,12,'Brasil','Estado Falso','Ciudad Falsa','Calle Falsa','311','12° 31\' 28\'\' N; 13° 12\' 32\'\' E'),(13,13,'Uruguay','Estado Falso','Ciudad Falsa','Calle Falsa','11','24° 31\' 28\'\' N; 13° 24\' 38\'\' N'),(14,14,'Argentina','Tucuman','San Miguel','Av Peron','12','12° 11\' 45\'\' N; 15° 26\' 18\'\' N'),(15,15,'Argentina','Rio Negro','Cipolletti','Brown','190','23° 31\' 6\'\' N; 16° 14\' 58\'\' E');
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-08 19:38:41
