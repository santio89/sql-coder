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
-- Table structure for table `bkp_usuarios`
--

DROP TABLE IF EXISTS `bkp_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bkp_usuarios` (
  `id_usuarioBkp` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `fecha_alta` date NOT NULL,
  `avatar_url` varchar(100) NOT NULL,
  `rol` varchar(20) NOT NULL,
  `active_status` tinyint NOT NULL,
  PRIMARY KEY (`id_usuarioBkp`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `bkp_usuarios_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bkp_usuarios`
--

LOCK TABLES `bkp_usuarios` WRITE;
/*!40000 ALTER TABLE `bkp_usuarios` DISABLE KEYS */;
INSERT INTO `bkp_usuarios` VALUES (1,1,'Juan Carlos','Perez Figueroa','juanpf@fake.com','+544247945','2022-03-25','http://fake.com/avatarjuanpf01','admin',1),(2,2,'Maria Laura','Gutierrez','marial@fake.com','+544143245','2020-05-30','http://fake.com/avatarmarial01','user',1),(3,3,'Santiago','Guzman','santiagog@fake.com','+156247945','2017-01-14','http://fake.com/avatarsantiagog01','user',1),(4,4,'Esteban','Gomez','estebang@fake.com','+544247599','2018-11-12','http://fake.com/avatarestebang01','user',1),(5,5,'Ricardo','Ruben','ricardor@fake.com','+577567945','2021-05-25','http://fake.com/avatarricordr01','user',1),(6,6,'Juan Pedro','Rivarola','juanpr@fake.com','+544242145','2022-03-22','http://fake.com/avatarjuanpr01','admin',1),(7,7,'Maria Cecilia','Marconi','mariac@fake.com','+544143645','2020-05-23','http://fake.com/avatarmariam01','user',1),(8,8,'Santiago','Gutierrez','santiagogut@fake.com','+156247945','2018-01-16','http://fake.com/avatarsantiagogut01','user',1),(9,9,'Federico','Gomez','federicog@fake.com','+544547599','2018-11-15','http://fake.com/avatarfedericog01','user',1),(10,10,'Romina','Rivarola','rominar@fake.com','+577554945','2020-05-14','http://fake.com/avatarrominar01','user',1),(11,11,'Juan Manuel','Figueroa','juanmf@fake.com','+544212945','2022-03-23','http://fake.com/avatarjuanmf01','admin',1),(12,12,'Maria Laura','Santillan','marials@fake.com','+544143245','2021-11-12','http://fake.com/avatarmarials01','user',1),(13,13,'Santiago','Estebanez','santiagog@fake.com','+156297945','2017-01-11','http://fake.com/avatarsantiagoe01','user',1),(14,14,'Esteban','Bale','estebang@fake.com','+544244599','2018-11-11','http://fake.com/avatarestebanb01','user',1),(15,15,'Ricardo','Rubik','ricardor@fake.com','+577550945','2021-05-21','http://fake.com/avatarricordrbk01','user',1);
/*!40000 ALTER TABLE `bkp_usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-08  0:21:23
