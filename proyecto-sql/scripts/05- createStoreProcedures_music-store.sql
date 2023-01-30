use musicstore;

-- listar pedidos/ventas por usuario (ingresando email) 
-- uso ej: call sp_ventasUsuario("juanpf@fake.com")
DROP PROCEDURE IF EXISTS sp_ventasUsuario;
DELIMITER //
CREATE PROCEDURE sp_ventasUsuario (IN emailUsuario varchar(100))
BEGIN
	SELECT id_usuario, email, id_pedido, discos.id_disco, CONCAT(discos.banda, " - ", discos.nombre) AS nombre_disco, cantidad, discos.precio as precio_unit, discos.precio*cantidad as subtotal, fecha_venta FROM
	(SELECT usuarios.id_usuario, usuarios.email, id_pedido, id_disco, cantidad, fecha_venta FROM ventas
    JOIN usuarios ON ventas.id_usuario=usuarios.id_usuario
    WHERE ventas.id_usuario IN 
    (SELECT id_usuario FROM usuarios WHERE usuarios.email=emailUsuario)) AS ventas_int
    JOIN discos on ventas_int.id_disco=discos.id_disco;
END 
// DELIMITER ;


-- listar compras por empleado (ingresando id)
-- uso ej: call sp_comprasEmpleado(12)
DROP PROCEDURE IF EXISTS sp_comprasEmpleado;
DELIMITER //
CREATE PROCEDURE sp_comprasEmpleado (IN idEmpleado INT)
BEGIN
	SELECT id_compra, id_empleado, nombre_completo, compras_int.id_disco, CONCAT(discos.banda, " - ", discos.nombre) AS nombre_disco, cantidad_compra, precio_compra_unit, subtotal FROM
	(SELECT id_compra, id_empleado, CONCAT(nombre, " ", apellido) as nombre_completo, id_disco, cantidad_compra, precio_compra_unit, cantidad_compra*precio_compra_unit as subtotal FROM compras
    JOIN empleados ON compras.comprado_por=empleados.id_empleado
    WHERE compras.comprado_por IN 
    (SELECT id_empleado FROM empleados WHERE empleados.id_empleado=idEmpleado)) as compras_int
    JOIN discos on compras_int.id_disco=discos.id_disco;
END 
// DELIMITER ;

-- ordena tabla según campo y orden ingresados
-- uso ej: call sp_ordenTabla("usuarios", "apellido", "ASC")
DROP PROCEDURE IF EXISTS sp_ordenTabla;
DELIMITER //
CREATE PROCEDURE sp_ordenTabla(IN nombreTabla varchar(100), IN campoTabla varchar(100), IN ordenTabla varchar(4))
BEGIN
	IF (ordenTabla = "ASC" OR ordenTabla = "DESC") THEN
		SET @statement = concat("SELECT * FROM ", nombreTabla, " ORDER BY ", campoTabla, " ", ordenTabla);
        PREPARE query FROM @statement;
        EXECUTE query;
        DEALLOCATE PREPARE query;
	ELSE 
		SELECT "Ingrese Orden Correctamente: ASC/DESC" AS Error;
	END IF;
END
// DELIMITER ;

-- insertar disco en tabla discos
-- ej uso: call sp_insertarDisco("Test", "Test", "Descripcion Disco", "Metal", "Blackened", "1986-01-01", 90)
DROP PROCEDURE IF EXISTS sp_insertarDisco;
DELIMITER //
CREATE PROCEDURE sp_insertarDisco(IN nombre VARCHAR(100), IN banda VARCHAR(100), IN descripcion VARCHAR(500), IN genero VARCHAR(100), IN sello VARCHAR(100), IN fecha_album DATE, IN precio DECIMAL)
BEGIN
	INSERT INTO discos VALUES 
	(NULL, nombre, banda, descripcion, genero, sello, fecha_album, precio, curdate(), 1);
END
// DELIMITER ;

-- insertar usuario en tabla usuarios
-- ej uso: call sp_insertarUsuario("Richard", "Fortus", "richf@fake.com", "+544153143", "http://fake.com/avatarrichf01", "user")
DROP PROCEDURE IF EXISTS sp_insertarUsuario;
DELIMITER //
CREATE PROCEDURE sp_insertarUsuario(IN nombre VARCHAR(100), IN apellido VARCHAR(100), IN email VARCHAR(500), IN telefono VARCHAR(100), IN avatar_url VARCHAR(100), IN rol VARCHAR(20))
BEGIN
	INSERT INTO usuarios VALUES 
	(NULL, nombre, apellido, email, telefono, curdate(), avatar_url, rol, 1);
END
// DELIMITER ;

-- insertar empleado en tabla empleados
-- ej uso: call sp_insertarEmpleado(29512212, "Peter", "Griffin", "peterg@fake.com", "+545225917", "ventas")
DROP PROCEDURE IF EXISTS sp_insertarEmpleado;
DELIMITER //
CREATE PROCEDURE sp_insertarEmpleado(IN dni VARCHAR(100), IN nombre VARCHAR(100), IN apellido VARCHAR(500), IN email VARCHAR(100), IN telefono VARCHAR(100), IN sector VARCHAR(100))
BEGIN
	INSERT INTO empleados VALUES 
	(NULL, dni, nombre, apellido, email, telefono, curdate(), sector, 1);
END
// DELIMITER ;

-- desactivar disco de tabla discos, segun id
-- ej uso: call sp_desactivarDisco(1)
-- es recomendado desactivar los productos en vez de eliminarlos, en la mayoría de casos
DROP PROCEDURE IF EXISTS sp_desactivarDisco;
DELIMITER //
CREATE PROCEDURE sp_desactivarDisco (IN discoId INT)
BEGIN
	UPDATE discos SET active_status = 0 WHERE discos.id_disco=discoId;
END
// DELIMITER ;

-- desactivar usuario de tabla usuarios, segun id
-- ej uso: call sp_desactivarUsuario(1)
-- es recomendado desactivar los usuarios en vez de eliminarlos, en la mayoría de casos
DROP PROCEDURE IF EXISTS sp_desactivarUsuario;
DELIMITER //
CREATE PROCEDURE sp_desactivarUsuario (IN usuarioId INT)
BEGIN
	UPDATE usuarios SET active_status = 0 WHERE usuarios.id_usuario=usuarioId;
END
// DELIMITER ;

-- desactivar empleado de tabla empleados, segun id
-- ej uso: call sp_desactivarEmpleado(1)
-- es recomendado desactivar los empleados en vez de eliminarlos, en la mayoría de casos
DROP PROCEDURE IF EXISTS sp_desactivarEmpleado;
DELIMITER //
CREATE PROCEDURE sp_desactivarEmpleado (IN empleadoId INT)
BEGIN
	UPDATE empleados SET active_status = 0 WHERE empleados.id_empleado=empleadoId;
END
// DELIMITER ;

-- activar disco de tabla discos, segun id
-- ej uso: call sp_activarDisco(1)
-- en caso que haya desactivado un disco y quisiera volver a activarlo
DROP PROCEDURE IF EXISTS sp_activarDisco;
DELIMITER //
CREATE PROCEDURE sp_activarDisco (IN discoId INT)
BEGIN
	UPDATE discos SET active_status = 1 WHERE discos.id_disco=discoId;
END
// DELIMITER ;

-- activar usuario de tabla usuarios, segun id
-- ej uso: call sp_activarDisco(1)
-- en caso que haya desactivado un usuario y quisiera volver a activarlo
DROP PROCEDURE IF EXISTS sp_activarUsuario;
DELIMITER //
CREATE PROCEDURE sp_activarUsuario (IN usuarioId INT)
BEGIN
	UPDATE usuarios SET active_status = 1 WHERE usuarios.id_usuario=usuarioId;
END
// DELIMITER ;

-- activar empleado de tabla empleados, segun id
-- ej uso: call sp_activarEmpleado(1)
-- en caso que haya desactivado un empleado y quisiera volver a activarlo
DROP PROCEDURE IF EXISTS sp_activarEmpleado;
DELIMITER //
CREATE PROCEDURE sp_activarEmpleado (IN empleadoId INT)
BEGIN
	UPDATE empleados SET active_status = 1 WHERE empleados.id_empleado=empleadoId;
END
// DELIMITER ;


-- eliminar disco de tabla discos, segun id
-- ej uso: call sp_eliminarDisco(17)
-- nota: eliminar disco sería en casos muy específicos. Lo normal sería 'desactivar' el producto así no hay conflictos con tablas históricas que dependan de estos valores
DROP PROCEDURE IF EXISTS sp_eliminarDisco;
DELIMITER //
CREATE PROCEDURE sp_eliminarDisco (IN discoId INT)
BEGIN
	-- seteo foreign_key_checks para poder eliminar discos al margen de que otras tablas, por ej compras, dependan de esta. No pongo 'on delete cascade' en tablas como compras, porque al margen que yo borre un disco, me interesa que el historial de compras igual muestre el id original de quien realizo la operacion. Este id no deberia volver a re-utilizarse igualmente a pesar de ingresar nuevos datos debido al auto increment.
	SET foreign_key_checks = 0;
	DELETE FROM discos WHERE id_disco = discoId;
    SET foreign_key_checks = 1;
END
// DELIMITER ;

-- eliminar usuario de tabla usuarios, segun id
-- ej uso: call sp_eliminarUsuario(14)
-- nota: eliminar usuario sería en casos muy específicos. Lo normal sería 'desactivar' el usuario así no hay conflictos con tablas históricas que dependan de estos valores
DROP PROCEDURE IF EXISTS sp_eliminarUsuario;
DELIMITER //
CREATE PROCEDURE sp_eliminarUsuario (IN usuarioId INT)
BEGIN
	-- seteo foreign_key_checks para poder eliminar usuarios al margen de que otras tablas, por ej pedidos, dependan de esta. No pongo 'on delete cascade' en tablas como pedidos, porque al margen que yo borre un usuario, me interesa que el historial de pedidos igual muestre el id original de quien realizo la operacion. Este id no deberia volver a re-utilizarse igualmente a pesar de ingresar nuevos datos debido al auto increment.
	SET foreign_key_checks = 0;
	DELETE FROM usuarios WHERE id_usuario = usuarioId;
    SET foreign_key_checks = 1;
END
// DELIMITER ;


-- eliminar empleado de tabla empleados, segun id
-- ej uso: call sp_eliminarEmpleado(14)
-- nota: eliminar empleado sería en casos muy específicos. Lo normal sería 'desactivar' el empleado así no hay conflictos con tablas históricas que dependan de estos valores
DROP PROCEDURE IF EXISTS sp_eliminarEmpleado;
DELIMITER //
CREATE PROCEDURE sp_eliminarEmpleado (IN empleadoId INT)
BEGIN
	-- seteo foreign_key_checks para poder eliminar empleados al margen de que otras tablas, por ej compras, dependan de esta. No pongo 'on delete cascade' en tablas como compras, porque al margen que yo borre un empleado, me interesa que el historial de pedidos igual muestre el id original de quien realizo la operacion. Este id no deberia volver a re-utilizarse igualmente a pesar de ingresar nuevos datos debido al auto increment.
	SET foreign_key_checks = 0;
	DELETE FROM empleados WHERE id_empleado = empleadoId;
    SET foreign_key_checks = 1;
END
// DELIMITER ;

