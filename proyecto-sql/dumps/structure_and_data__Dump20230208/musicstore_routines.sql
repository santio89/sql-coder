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
-- Temporary view structure for view `vw_sesionesactivas`
--

DROP TABLE IF EXISTS `vw_sesionesactivas`;
/*!50001 DROP VIEW IF EXISTS `vw_sesionesactivas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_sesionesactivas` AS SELECT 
 1 AS `id_usuario`,
 1 AS `nombre_completo`,
 1 AS `sesion_creacion`,
 1 AS `sesion_expiracion`,
 1 AS `sesion_cryptId`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_discosgeneros`
--

DROP TABLE IF EXISTS `vw_discosgeneros`;
/*!50001 DROP VIEW IF EXISTS `vw_discosgeneros`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_discosgeneros` AS SELECT 
 1 AS `genero`,
 1 AS `cantidad_discos_activos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_totalvendido`
--

DROP TABLE IF EXISTS `vw_totalvendido`;
/*!50001 DROP VIEW IF EXISTS `vw_totalvendido`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_totalvendido` AS SELECT 
 1 AS `cantidad_pedidos`,
 1 AS `items_vendidos`,
 1 AS `total_vendido`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_usuariospedidos`
--

DROP TABLE IF EXISTS `vw_usuariospedidos`;
/*!50001 DROP VIEW IF EXISTS `vw_usuariospedidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_usuariospedidos` AS SELECT 
 1 AS `id_usuario`,
 1 AS `nombre_completo`,
 1 AS `cantidad_pedidos`,
 1 AS `cantidad_discos`,
 1 AS `costo_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_ventasdetalle`
--

DROP TABLE IF EXISTS `vw_ventasdetalle`;
/*!50001 DROP VIEW IF EXISTS `vw_ventasdetalle`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_ventasdetalle` AS SELECT 
 1 AS `id_venta`,
 1 AS `id_pedido`,
 1 AS `id_usuario`,
 1 AS `id_disco`,
 1 AS `precio`,
 1 AS `cantidad`,
 1 AS `subtotal_venta`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_usuariospais`
--

DROP TABLE IF EXISTS `vw_usuariospais`;
/*!50001 DROP VIEW IF EXISTS `vw_usuariospais`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_usuariospais` AS SELECT 
 1 AS `pais`,
 1 AS `cantidad_usuarios_activos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_totalcomprado`
--

DROP TABLE IF EXISTS `vw_totalcomprado`;
/*!50001 DROP VIEW IF EXISTS `vw_totalcomprado`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_totalcomprado` AS SELECT 
 1 AS `cantidad_compras`,
 1 AS `items_comprados`,
 1 AS `total_comprado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_usuariosmensajes`
--

DROP TABLE IF EXISTS `vw_usuariosmensajes`;
/*!50001 DROP VIEW IF EXISTS `vw_usuariosmensajes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_usuariosmensajes` AS SELECT 
 1 AS `id_usuario`,
 1 AS `nombre_completo`,
 1 AS `cantidad_mensajes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_discosvendidos`
--

DROP TABLE IF EXISTS `vw_discosvendidos`;
/*!50001 DROP VIEW IF EXISTS `vw_discosvendidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_discosvendidos` AS SELECT 
 1 AS `id_disco`,
 1 AS `disco`,
 1 AS `discos_vendidos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_comprasempleados`
--

DROP TABLE IF EXISTS `vw_comprasempleados`;
/*!50001 DROP VIEW IF EXISTS `vw_comprasempleados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_comprasempleados` AS SELECT 
 1 AS `id_empleado`,
 1 AS `nombre_completo`,
 1 AS `cantidad_compras`,
 1 AS `cantidad_discos`,
 1 AS `costo_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_sesionesactivas`
--

/*!50001 DROP VIEW IF EXISTS `vw_sesionesactivas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_sesionesactivas` AS select `usuarios`.`id_usuario` AS `id_usuario`,concat(`usuarios`.`nombre`,' ',`usuarios`.`apellido`) AS `nombre_completo`,`sesiones`.`fecha_creacion` AS `sesion_creacion`,`sesiones`.`fecha_expiracion` AS `sesion_expiracion`,`sesiones`.`sesionCryptId` AS `sesion_cryptId` from (`usuarios` join `sesiones` on((`usuarios`.`id_usuario` = `sesiones`.`id_usuario`))) where (`sesiones`.`sesionCryptId` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_discosgeneros`
--

/*!50001 DROP VIEW IF EXISTS `vw_discosgeneros`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_discosgeneros` AS select `discos`.`genero` AS `genero`,count(0) AS `cantidad_discos_activos` from `discos` where (`discos`.`active_status` = 1) group by `discos`.`genero` order by `cantidad_discos_activos` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_totalvendido`
--

/*!50001 DROP VIEW IF EXISTS `vw_totalvendido`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_totalvendido` AS select count(distinct `ventas`.`id_pedido`) AS `cantidad_pedidos`,sum(`ventas`.`cantidad`) AS `items_vendidos`,sum((`discos`.`precio` * `ventas`.`cantidad`)) AS `total_vendido` from (`ventas` join `discos` on((`ventas`.`id_disco` = `discos`.`id_disco`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_usuariospedidos`
--

/*!50001 DROP VIEW IF EXISTS `vw_usuariospedidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_usuariospedidos` AS select `usuariospedidos_int`.`id_usuario` AS `id_usuario`,`usuariospedidos_int`.`nombre_completo` AS `nombre_completo`,`usuariospedidos_int`.`cantidad_pedidos` AS `cantidad_pedidos`,sum(`ventas`.`cantidad`) AS `cantidad_discos`,sum(`ventas`.`subtotal`) AS `costo_total` from ((select `usuarios`.`id_usuario` AS `id_usuario`,concat(`usuarios`.`nombre`,' ',`usuarios`.`apellido`) AS `nombre_completo`,count(`pedidos`.`id_usuario`) AS `cantidad_pedidos` from (`usuarios` join `pedidos` on((`usuarios`.`id_usuario` = `pedidos`.`id_usuario`))) group by `usuarios`.`id_usuario`) `usuariospedidos_int` join `ventas` on((`usuariospedidos_int`.`id_usuario` = `ventas`.`id_usuario`))) group by `usuariospedidos_int`.`id_usuario` order by `cantidad_discos` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_ventasdetalle`
--

/*!50001 DROP VIEW IF EXISTS `vw_ventasdetalle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_ventasdetalle` AS select `ventas`.`id_venta` AS `id_venta`,`ventas`.`id_pedido` AS `id_pedido`,`ventas`.`id_usuario` AS `id_usuario`,`discos`.`id_disco` AS `id_disco`,`discos`.`precio` AS `precio`,`ventas`.`cantidad` AS `cantidad`,(`discos`.`precio` * `ventas`.`cantidad`) AS `subtotal_venta` from (`ventas` join `discos` on((`ventas`.`id_disco` = `discos`.`id_disco`))) order by `ventas`.`id_pedido` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_usuariospais`
--

/*!50001 DROP VIEW IF EXISTS `vw_usuariospais`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_usuariospais` AS select `direcciones`.`pais` AS `pais`,count(`direcciones`.`id_usuario`) AS `cantidad_usuarios_activos` from (`usuarios` join `direcciones` on((`usuarios`.`id_usuario` = `direcciones`.`id_usuario`))) where (`usuarios`.`active_status` = 1) group by `direcciones`.`pais` order by count(`direcciones`.`id_usuario`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_totalcomprado`
--

/*!50001 DROP VIEW IF EXISTS `vw_totalcomprado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_totalcomprado` AS select count(distinct `compras`.`id_compra`) AS `cantidad_compras`,sum(`compras`.`cantidad_compra`) AS `items_comprados`,sum((`discos`.`precio` * `compras`.`cantidad_compra`)) AS `total_comprado` from (`compras` join `discos` on((`compras`.`id_disco` = `discos`.`id_disco`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_usuariosmensajes`
--

/*!50001 DROP VIEW IF EXISTS `vw_usuariosmensajes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_usuariosmensajes` AS select `usuarios`.`id_usuario` AS `id_usuario`,concat(`usuarios`.`nombre`,' ',`usuarios`.`apellido`) AS `nombre_completo`,count(`mensajes`.`id_usuario`) AS `cantidad_mensajes` from (`usuarios` join `mensajes` on((`usuarios`.`id_usuario` = `mensajes`.`id_usuario`))) group by `usuarios`.`id_usuario` order by `cantidad_mensajes` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_discosvendidos`
--

/*!50001 DROP VIEW IF EXISTS `vw_discosvendidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_discosvendidos` AS select `ventas`.`id_disco` AS `id_disco`,concat(`discos`.`banda`,' - ',`discos`.`nombre`) AS `disco`,sum(`ventas`.`cantidad`) AS `discos_vendidos` from (`ventas` join `discos` on((`ventas`.`id_disco` = `discos`.`id_disco`))) group by `ventas`.`id_disco` order by `discos_vendidos` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_comprasempleados`
--

/*!50001 DROP VIEW IF EXISTS `vw_comprasempleados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_comprasempleados` AS select `compras`.`comprado_por` AS `id_empleado`,concat(`empleados`.`nombre`,' ',`empleados`.`apellido`) AS `nombre_completo`,count(`compras`.`comprado_por`) AS `cantidad_compras`,sum(`compras`.`cantidad_compra`) AS `cantidad_discos`,sum((`compras`.`precio_compra_unit` * `compras`.`cantidad_compra`)) AS `costo_total` from (`compras` join `empleados` on((`compras`.`comprado_por` = `empleados`.`id_empleado`))) group by `compras`.`comprado_por` order by `cantidad_compras` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-08 19:38:43
