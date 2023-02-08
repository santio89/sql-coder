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
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,24512812,'Juan','Gomez','juangm123@fake.com','+545244912','2010-01-02','gerencia',1),(2,34515822,'Carlos','Gomez','juangm123@fake.com','+545243915','2010-01-01','gerencia',1),(3,44512312,'Laura','Perez','juangm123@fake.com','+545243415','2010-01-01','rrhh',1),(4,22712812,'Maria','Guzman','juangm123@fake.com','+545143915','2010-03-01','rrhh',1),(5,20572812,'Veronica','Piñeiro','juangm123@fake.com','+545343915','2010-03-01','tesoreria',1),(6,14512312,'Martin','Reyes','juangm123@fake.com','+545243315','2010-03-01','tesoreria',1),(7,13412812,'Ricardo','Gonzalez','juangm123@fake.com','+545263915','2010-04-01','sistemas',1),(8,14515312,'Mateo','Oliva','juangm123@fake.com','+545247915','2010-04-01','sistemas',1),(9,22312202,'Matias','Ruiz','juangm123@fake.com','+545233915','2010-04-01','ventas',1),(10,34612211,'Pedro','Payeres','juangm123@fake.com','+545213915','2010-07-01','ventas',1),(11,21512112,'Lautaro','Sanchez','juangm123@fake.com','+545243912','2010-07-01','ventas',1),(12,16312811,'Victoria','Gonzalez','juangm123@fake.com','+545243913','2010-07-01','ventas',1),(13,15512812,'Mercedes','Fernandez','juangm123@fake.com','+545243911','2010-08-01','ventas',1),(14,17312812,'Julieta','Gomez','juangm123@fake.com','+545243917','2010-08-01','ventas',1),(15,19412812,'Juana','Fernandez','juangm123@fake.com','+544243015','2010-09-01','ventas',1);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-08 19:39:34
