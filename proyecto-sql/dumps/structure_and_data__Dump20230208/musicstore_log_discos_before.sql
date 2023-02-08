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
-- Table structure for table `log_discos_before`
--

DROP TABLE IF EXISTS `log_discos_before`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_discos_before` (
  `id_logDiscoBefore` int NOT NULL AUTO_INCREMENT,
  `timestamp_operation` timestamp NOT NULL,
  `operation` varchar(10) DEFAULT NULL,
  `hecho_por` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_logDiscoBefore`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_discos_before`
--

LOCK TABLES `log_discos_before` WRITE;
/*!40000 ALTER TABLE `log_discos_before` DISABLE KEYS */;
INSERT INTO `log_discos_before` VALUES (1,'2023-02-08 22:23:39','INSERT','root@localhost'),(2,'2023-02-08 22:23:39','INSERT','root@localhost'),(3,'2023-02-08 22:23:39','INSERT','root@localhost'),(4,'2023-02-08 22:23:39','INSERT','root@localhost'),(5,'2023-02-08 22:23:39','INSERT','root@localhost'),(6,'2023-02-08 22:23:39','INSERT','root@localhost'),(7,'2023-02-08 22:23:39','INSERT','root@localhost'),(8,'2023-02-08 22:23:39','INSERT','root@localhost'),(9,'2023-02-08 22:23:39','INSERT','root@localhost'),(10,'2023-02-08 22:23:39','INSERT','root@localhost'),(11,'2023-02-08 22:23:39','INSERT','root@localhost'),(12,'2023-02-08 22:23:39','INSERT','root@localhost'),(13,'2023-02-08 22:23:39','INSERT','root@localhost'),(14,'2023-02-08 22:23:39','INSERT','root@localhost'),(15,'2023-02-08 22:23:39','INSERT','root@localhost');
/*!40000 ALTER TABLE `log_discos_before` ENABLE KEYS */;
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
