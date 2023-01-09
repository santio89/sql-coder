-- Tablas del schema music-store incluidas en backup de datos: bkp_discos, bkp_usuarios, carritos, direcciones, discos, log_discos_after, log_discos_before, log_usuarios_after, log_usuarios_before, mensajes, pedidos, sesiones, stock, usuarios.

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
-- Dumping data for table `bkp_discos`
--

LOCK TABLES `bkp_discos` WRITE;
/*!40000 ALTER TABLE `bkp_discos` DISABLE KEYS */;
INSERT INTO `bkp_discos` VALUES (1,1,'Fear of the Dark','Iron Maiden','Descripcion Disco','Rock','EMI','1992-01-01',140,'2022-10-11'),(2,2,'Use Your Illussion I','Guns N\' Roses','Descripcion Disco','Rock','Geffen Records','1991-01-01',120,'2021-10-11'),(3,3,'Use Your Illussion II','Guns N\' Roses','Descripcion Disco','Rock','Geffen Records','1991-01-01',120,'2021-10-11'),(4,4,'Physical Graffiti','Led Zeppelin','Descripcion Disco','Rock','Swan Song','1975-01-01',90,'2020-12-07'),(5,5,'Star People','Miles Davis','Descripcion Disco','Jazz','Columbia','1983-01-01',80,'2020-01-09'),(6,6,'Stones','Neil Diamond','Descripcion Disco','Rock','MCA','1980-01-01',140,'2022-10-02'),(7,7,'Pretty Monster','The Blue Stones','Descripcion Disco','Rock','MNRK','2022-01-01',85,'2022-11-11'),(8,8,'Aftermath','The Rolling Stones','Descripcion Disco','Rock','ABKCO','1966-01-01',70,'2019-11-11'),(9,9,'Revolver','The Beatles','Descripcion Disco','Rock','Apple Records','1966-01-01',95,'2019-12-07'),(10,10,'Master of Puppets','Metallica','Descripcion Disco','Metal','Blackened','1986-01-01',90,'2020-01-09'),(11,11,'Backless','Eric Clapton','Descripcion Disco','Rock','RSO','1978-01-01',110,'2022-10-11'),(12,12,'Return of the Dream Canteen','Red Hot Chili Peppers','Descripcion Disco','Rock','Warner Records','2022-01-01',120,'2022-11-11'),(13,13,'Strictly Elvis','Elvis Presley','Descripcion Disco','Rock','RCA','1965-01-01',120,'2018-07-11'),(14,14,'Burning Desire','Jimi Hendrix','Descripcion Disco','Rock','Dagger Records','2006-01-01',90,'2021-05-04'),(15,15,'Rastaman Vibration','Bob Marley & The Wailers','Descripcion Disco','Reggae','Analogue Productions','1976-01-01',80,'2020-08-09');
/*!40000 ALTER TABLE `bkp_discos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `bkp_usuarios`
--

LOCK TABLES `bkp_usuarios` WRITE;
/*!40000 ALTER TABLE `bkp_usuarios` DISABLE KEYS */;
INSERT INTO `bkp_usuarios` VALUES (1,1,'Juan Carlos','Perez Figueroa','juanpf@fake.com','+544247945','2022-03-25','http://fake.com/avatarjuanpf01','admin'),(2,2,'Maria Laura','Gutierrez','marial@fake.com','+544143245','2020-05-30','http://fake.com/avatarmarial01','user'),(3,3,'Santiago','Guzman','santiagog@fake.com','+156247945','2017-01-14','http://fake.com/avatarsantiagog01','user'),(4,4,'Esteban','Gomez','estebang@fake.com','+544247599','2018-11-12','http://fake.com/avatarestebang01','user'),(5,5,'Ricardo','Ruben','ricardor@fake.com','+577567945','2021-05-25','http://fake.com/avatarricordr01','user'),(6,6,'Juan Pedro','Rivarola','juanpr@fake.com','+544242145','2022-03-22','http://fake.com/avatarjuanpr01','admin'),(7,7,'Maria Cecilia','Marconi','mariac@fake.com','+544143645','2020-05-23','http://fake.com/avatarmariam01','user'),(8,8,'Santiago','Gutierrez','santiagogut@fake.com','+156247945','2018-01-16','http://fake.com/avatarsantiagogut01','user'),(9,9,'Federico','Gomez','federicog@fake.com','+544547599','2018-11-15','http://fake.com/avatarfedericog01','user'),(10,10,'Romina','Rivarola','rominar@fake.com','+577554945','2020-05-14','http://fake.com/avatarrominar01','user'),(11,11,'Juan Manuel','Figueroa','juanmf@fake.com','+544212945','2022-03-23','http://fake.com/avatarjuanmf01','admin'),(12,12,'Maria Laura','Santillan','marials@fake.com','+544143245','2021-11-12','http://fake.com/avatarmarials01','user'),(13,13,'Santiago','Estebanez','santiagog@fake.com','+156297945','2017-01-11','http://fake.com/avatarsantiagoe01','user'),(14,14,'Esteban','Bale','estebang@fake.com','+544244599','2018-11-11','http://fake.com/avatarestebanb01','user'),(15,15,'Ricardo','Rubik','ricardor@fake.com','+577550945','2021-05-21','http://fake.com/avatarricordrbk01','user');
/*!40000 ALTER TABLE `bkp_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `carritos`
--

LOCK TABLES `carritos` WRITE;
/*!40000 ALTER TABLE `carritos` DISABLE KEYS */;
INSERT INTO `carritos` VALUES (1,1,'[{id: 1, cant: 2}, {id: 2, cant: 1}, {id: 5, cant: 2}]'),(2,2,'[]'),(3,3,'[{id: 3, cant: 1}]'),(4,4,'[{id: 4, cant: 2}, {id: 3, cant: 3}, {id: 5, cant: 1}]'),(5,5,'[]'),(6,6,'[{id: 11, cant: 3}, {id: 12, cant: 2}, {id: 4, cant: 2}]'),(7,7,'[]'),(8,8,'[{id: 13, cant: 1}]'),(9,9,'[{id: 14, cant: 2}, {id: 3, cant: 3}, {id: 5, cant: 1}]'),(10,10,'[]'),(11,11,'[{id: 1, cant: 2}, {id: 2, cant: 1}, {id: 8, cant: 2}]'),(12,12,'[]'),(13,13,'[{id: 10, cant: 1}]'),(14,14,'[{id: 14, cant: 2}, {id: 3, cant: 1}, {id: 7, cant: 1}]'),(15,15,'[]');
/*!40000 ALTER TABLE `carritos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (1,1,'Argentina','Buenos Aires','Azul','Av San Martin','424','52° 31\' 28\'\' N; 13° 24\' 38\'\' E'),(2,2,'Argentina','Chubut','Trelew','Rivadavia','314','32° 31\' 28\'\' N; 13° 22\' 32\'\' E'),(3,3,'Argentina','Mendoza','San Rafael','Belgrano','41','24° 31\' 28\'\' N; 13° 24\' 38\'\' N'),(4,4,'Argentina','Tucuman','San Miguel','Marconi','123','52° 11\' 45\'\' N; 15° 26\' 48\'\' N'),(5,5,'Argentina','Rio Negro','Sierra Grande','Alem','715','43° 21\' 6\'\' N; 16° 14\' 58\'\' E'),(6,6,'Colombia','Estado Falso','Ciudad Falsa','Calle Falsa','123','12° 11\' 28\'\' N; 13° 24\' 38\'\' E'),(7,7,'Ecuador','Estado Falso','Ciudad Falsa','Calle Falsa','314','31° 31\' 26\'\' N; 13° 22\' 32\'\' E'),(8,8,'Peru','Estado Falso','Ciudad False','Calle falsa','412','24° 31\' 28\'\' N; 19° 24\' 38\'\' N'),(9,9,'Argentina','Tucuman','San Miguel','Belgrano','223','12° 11\' 45\'\' N; 15° 26\' 48\'\' N'),(10,10,'Chile','Estado Falso','Ciudad Falsa','Calle Falsa','115','43° 21\' 6\'\' N; 16° 14\' 58\'\' E'),(11,11,'Argentina','Buenos Aires','Bahia Blanca','Av Rivadavia','124','52° 31\' 28\'\' N; 13° 24\' 38\'\' E'),(12,12,'Brasil','Estado Falso','Ciudad Falsa','Calle Falsa','311','12° 31\' 28\'\' N; 13° 12\' 32\'\' E'),(13,13,'Uruguay','Estado Falso','Ciudad Falsa','Calle Falsa','11','24° 31\' 28\'\' N; 13° 24\' 38\'\' N'),(14,14,'Argentina','Tucuman','San Miguel','Av Peron','12','12° 11\' 45\'\' N; 15° 26\' 18\'\' N'),(15,15,'Argentina','Rio Negro','Cipolletti','Brown','190','23° 31\' 6\'\' N; 16° 14\' 58\'\' E');
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `discos`
--

LOCK TABLES `discos` WRITE;
/*!40000 ALTER TABLE `discos` DISABLE KEYS */;
INSERT INTO `discos` VALUES (1,'Fear of the Dark','Iron Maiden','Descripcion Disco','Rock','EMI','1992-01-01',140,'2022-10-11'),(2,'Use Your Illussion I','Guns N\' Roses','Descripcion Disco','Rock','Geffen Records','1991-01-01',120,'2021-10-11'),(3,'Use Your Illussion II','Guns N\' Roses','Descripcion Disco','Rock','Geffen Records','1991-01-01',120,'2021-10-11'),(4,'Physical Graffiti','Led Zeppelin','Descripcion Disco','Rock','Swan Song','1975-01-01',90,'2020-12-07'),(5,'Star People','Miles Davis','Descripcion Disco','Jazz','Columbia','1983-01-01',80,'2020-01-09'),(6,'Stones','Neil Diamond','Descripcion Disco','Rock','MCA','1980-01-01',140,'2022-10-02'),(7,'Pretty Monster','The Blue Stones','Descripcion Disco','Rock','MNRK','2022-01-01',85,'2022-11-11'),(8,'Aftermath','The Rolling Stones','Descripcion Disco','Rock','ABKCO','1966-01-01',70,'2019-11-11'),(9,'Revolver','The Beatles','Descripcion Disco','Rock','Apple Records','1966-01-01',95,'2019-12-07'),(10,'Master of Puppets','Metallica','Descripcion Disco','Metal','Blackened','1986-01-01',90,'2020-01-09'),(11,'Backless','Eric Clapton','Descripcion Disco','Rock','RSO','1978-01-01',110,'2022-10-11'),(12,'Return of the Dream Canteen','Red Hot Chili Peppers','Descripcion Disco','Rock','Warner Records','2022-01-01',120,'2022-11-11'),(13,'Strictly Elvis','Elvis Presley','Descripcion Disco','Rock','RCA','1965-01-01',120,'2018-07-11'),(14,'Burning Desire','Jimi Hendrix','Descripcion Disco','Rock','Dagger Records','2006-01-01',90,'2021-05-04'),(15,'Rastaman Vibration','Bob Marley & The Wailers','Descripcion Disco','Reggae','Analogue Productions','1976-01-01',80,'2020-08-09');
/*!40000 ALTER TABLE `discos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_discos_after`
--

LOCK TABLES `log_discos_after` WRITE;
/*!40000 ALTER TABLE `log_discos_after` DISABLE KEYS */;
INSERT INTO `log_discos_after` VALUES (1,1,'2023-01-09 13:50:39','root@localhost'),(2,2,'2023-01-09 13:50:39','root@localhost'),(3,3,'2023-01-09 13:50:39','root@localhost'),(4,4,'2023-01-09 13:50:39','root@localhost'),(5,5,'2023-01-09 13:50:39','root@localhost'),(6,6,'2023-01-09 13:50:39','root@localhost'),(7,7,'2023-01-09 13:50:39','root@localhost'),(8,8,'2023-01-09 13:50:39','root@localhost'),(9,9,'2023-01-09 13:50:39','root@localhost'),(10,10,'2023-01-09 13:50:39','root@localhost'),(11,11,'2023-01-09 13:50:39','root@localhost'),(12,12,'2023-01-09 13:50:39','root@localhost'),(13,13,'2023-01-09 13:50:39','root@localhost'),(14,14,'2023-01-09 13:50:39','root@localhost'),(15,15,'2023-01-09 13:50:39','root@localhost');
/*!40000 ALTER TABLE `log_discos_after` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_discos_before`
--

LOCK TABLES `log_discos_before` WRITE;
/*!40000 ALTER TABLE `log_discos_before` DISABLE KEYS */;
INSERT INTO `log_discos_before` VALUES (1,'2023-01-09 13:50:39','INSERT','root@localhost'),(2,'2023-01-09 13:50:39','INSERT','root@localhost'),(3,'2023-01-09 13:50:39','INSERT','root@localhost'),(4,'2023-01-09 13:50:39','INSERT','root@localhost'),(5,'2023-01-09 13:50:39','INSERT','root@localhost'),(6,'2023-01-09 13:50:39','INSERT','root@localhost'),(7,'2023-01-09 13:50:39','INSERT','root@localhost'),(8,'2023-01-09 13:50:39','INSERT','root@localhost'),(9,'2023-01-09 13:50:39','INSERT','root@localhost'),(10,'2023-01-09 13:50:39','INSERT','root@localhost'),(11,'2023-01-09 13:50:39','INSERT','root@localhost'),(12,'2023-01-09 13:50:39','INSERT','root@localhost'),(13,'2023-01-09 13:50:39','INSERT','root@localhost'),(14,'2023-01-09 13:50:39','INSERT','root@localhost'),(15,'2023-01-09 13:50:39','INSERT','root@localhost');
/*!40000 ALTER TABLE `log_discos_before` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_usuarios_after`
--

LOCK TABLES `log_usuarios_after` WRITE;
/*!40000 ALTER TABLE `log_usuarios_after` DISABLE KEYS */;
INSERT INTO `log_usuarios_after` VALUES (1,1,'2023-01-09 13:50:39','root@localhost'),(2,2,'2023-01-09 13:50:39','root@localhost'),(3,3,'2023-01-09 13:50:39','root@localhost'),(4,4,'2023-01-09 13:50:39','root@localhost'),(5,5,'2023-01-09 13:50:39','root@localhost'),(6,6,'2023-01-09 13:50:39','root@localhost'),(7,7,'2023-01-09 13:50:39','root@localhost'),(8,8,'2023-01-09 13:50:39','root@localhost'),(9,9,'2023-01-09 13:50:39','root@localhost'),(10,10,'2023-01-09 13:50:39','root@localhost'),(11,11,'2023-01-09 13:50:39','root@localhost'),(12,12,'2023-01-09 13:50:39','root@localhost'),(13,13,'2023-01-09 13:50:39','root@localhost'),(14,14,'2023-01-09 13:50:39','root@localhost'),(15,15,'2023-01-09 13:50:39','root@localhost');
/*!40000 ALTER TABLE `log_usuarios_after` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_usuarios_before`
--

LOCK TABLES `log_usuarios_before` WRITE;
/*!40000 ALTER TABLE `log_usuarios_before` DISABLE KEYS */;
INSERT INTO `log_usuarios_before` VALUES (1,'2023-01-09 13:50:39','INSERT','root@localhost'),(2,'2023-01-09 13:50:39','INSERT','root@localhost'),(3,'2023-01-09 13:50:39','INSERT','root@localhost'),(4,'2023-01-09 13:50:39','INSERT','root@localhost'),(5,'2023-01-09 13:50:39','INSERT','root@localhost'),(6,'2023-01-09 13:50:39','INSERT','root@localhost'),(7,'2023-01-09 13:50:39','INSERT','root@localhost'),(8,'2023-01-09 13:50:39','INSERT','root@localhost'),(9,'2023-01-09 13:50:39','INSERT','root@localhost'),(10,'2023-01-09 13:50:39','INSERT','root@localhost'),(11,'2023-01-09 13:50:39','INSERT','root@localhost'),(12,'2023-01-09 13:50:39','INSERT','root@localhost'),(13,'2023-01-09 13:50:39','INSERT','root@localhost'),(14,'2023-01-09 13:50:39','INSERT','root@localhost'),(15,'2023-01-09 13:50:39','INSERT','root@localhost');
/*!40000 ALTER TABLE `log_usuarios_before` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mensajes`
--

LOCK TABLES `mensajes` WRITE;
/*!40000 ALTER TABLE `mensajes` DISABLE KEYS */;
INSERT INTO `mensajes` VALUES (1,1,'Hola tengo una consulta','2022-12-01 10:01:20'),(2,2,'Buen día quisiera preguntar por discos','2020-07-20 20:11:10'),(3,1,'Hola reitero consulta','2022-12-02 15:21:07'),(4,4,'Buenas quisiera saber el precio de un producto','2020-11-14 13:17:05'),(5,5,'Buenas tardes, necesito asistencia','2022-11-11 22:19:23'),(6,1,'Hola que tal','2022-12-01 20:01:20'),(7,2,'Mensaje de prueba','2021-07-20 10:11:10'),(8,1,'A a e','2022-12-02 13:21:07'),(9,4,'Mensaje de prueba','2021-11-15 13:17:05'),(10,5,'Buenas tardes, necesito asistencia','2022-12-11 21:19:23'),(11,1,'Hola tengo una consulta','2022-12-01 10:11:20'),(12,2,'Tienen disco x?','2020-07-20 20:11:10'),(13,1,'Hola buen día','2022-12-02 15:21:07'),(14,4,'Consulta...','2020-11-14 13:17:05'),(15,5,'Quisiera saber acerca del disco y','2022-11-11 22:19:23');
/*!40000 ALTER TABLE `mensajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,1,'[{id: 1, cant: 1}, {id: 2, cant: 1}, {id: 5, cant: 1}]','2022-11-02'),(2,1,'[{id: 1, cant: 2}, {id: 4, cant: 2}, {id: 3, cant: 4}]','2022-12-02'),(3,3,'[{id: 1, cant: 2}]','2022-11-02'),(4,3,'[{id: 2, cant: 1}, {id: 1, cant: 2}, {id: 5, cant: 1}]','2022-11-14'),(5,2,'[{id: 5, cant: 1}]','2022-11-02'),(6,11,'[{id: 1, cant: 1}, {id: 2, cant: 1}, {id: 5, cant: 1}]','2022-09-03'),(7,1,'[{id: 1, cant: 2}, {id: 4, cant: 2}, {id: 3, cant: 4}]','2022-12-02'),(8,13,'[{id: 1, cant: 2}]','2022-11-02'),(9,12,'[{id: 2, cant: 1}, {id: 8, cant: 2}, {id: 15, cant: 1}]','2022-12-12'),(10,2,'[{id: 15, cant: 1}]','2022-11-02'),(11,9,'[{id: 11, cant: 2}, {id: 2, cant: 1}, {id: 5, cant: 1}]','2022-08-22'),(12,5,'[{id: 11, cant: 1}, {id: 4, cant: 2}, {id: 3, cant: 4}]','2022-11-22'),(13,4,'[{id: 11, cant: 2}]','2022-11-02'),(14,2,'[{id: 12, cant: 1}, {id: 7, cant: 2}, {id: 5, cant: 1}]','2022-11-21'),(15,15,'[{id: 14, cant: 1}]','2022-11-17');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sesiones`
--

LOCK TABLES `sesiones` WRITE;
/*!40000 ALTER TABLE `sesiones` DISABLE KEYS */;
INSERT INTO `sesiones` VALUES (1,1,'2022-12-01 22:19:23','2022-12-02 22:19:23','asd134ad'),(2,2,'2022-12-02 15:15:04','2022-12-03 15:15:04','azxc34fe'),(3,3,'2022-12-02 06:19:14','2022-12-03 06:19:14','jklj23js'),(4,4,'2022-12-01 04:23:12','2022-12-02 04:23:12','nkn984kn'),(5,5,'2022-12-01 23:11:21','2022-12-02 23:11:21','njsl93lq'),(6,6,'2022-12-01 22:19:23','2022-12-02 22:19:23','asd134ad'),(7,7,'2022-12-02 15:15:04','2022-12-03 15:15:04','azxc34fe'),(8,8,NULL,NULL,NULL),(9,9,'2022-12-01 04:23:12','2022-12-02 04:23:12','nkn984kn'),(10,10,NULL,NULL,NULL),(11,11,NULL,NULL,NULL),(12,12,'2022-11-02 15:15:04','2022-11-03 15:15:04','azxc34fe'),(13,13,'2022-11-02 06:19:14','2022-11-03 06:19:14','jklj23js'),(14,14,NULL,NULL,NULL),(15,15,'2022-11-01 23:11:21','2022-11-02 23:11:21','njsl93lq');
/*!40000 ALTER TABLE `sesiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,1,123,0),(2,2,93,10),(3,3,150,10),(4,4,80,0),(5,5,15,0),(6,6,133,10),(7,7,53,10),(8,8,200,20),(9,9,100,0),(10,10,150,0),(11,11,133,10),(12,12,53,0),(13,13,150,10),(14,14,80,0),(15,15,22,0);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Juan Carlos','Perez Figueroa','juanpf@fake.com','+544247945','2022-03-25','http://fake.com/avatarjuanpf01','admin'),(2,'Maria Laura','Gutierrez','marial@fake.com','+544143245','2020-05-30','http://fake.com/avatarmarial01','user'),(3,'Santiago','Guzman','santiagog@fake.com','+156247945','2017-01-14','http://fake.com/avatarsantiagog01','user'),(4,'Esteban','Gomez','estebang@fake.com','+544247599','2018-11-12','http://fake.com/avatarestebang01','user'),(5,'Ricardo','Ruben','ricardor@fake.com','+577567945','2021-05-25','http://fake.com/avatarricordr01','user'),(6,'Juan Pedro','Rivarola','juanpr@fake.com','+544242145','2022-03-22','http://fake.com/avatarjuanpr01','admin'),(7,'Maria Cecilia','Marconi','mariac@fake.com','+544143645','2020-05-23','http://fake.com/avatarmariam01','user'),(8,'Santiago','Gutierrez','santiagogut@fake.com','+156247945','2018-01-16','http://fake.com/avatarsantiagogut01','user'),(9,'Federico','Gomez','federicog@fake.com','+544547599','2018-11-15','http://fake.com/avatarfedericog01','user'),(10,'Romina','Rivarola','rominar@fake.com','+577554945','2020-05-14','http://fake.com/avatarrominar01','user'),(11,'Juan Manuel','Figueroa','juanmf@fake.com','+544212945','2022-03-23','http://fake.com/avatarjuanmf01','admin'),(12,'Maria Laura','Santillan','marials@fake.com','+544143245','2021-11-12','http://fake.com/avatarmarials01','user'),(13,'Santiago','Estebanez','santiagog@fake.com','+156297945','2017-01-11','http://fake.com/avatarsantiagoe01','user'),(14,'Esteban','Bale','estebang@fake.com','+544244599','2018-11-11','http://fake.com/avatarestebanb01','user'),(15,'Ricardo','Rubik','ricardor@fake.com','+577550945','2021-05-21','http://fake.com/avatarricordrbk01','user');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-09 10:59:11
