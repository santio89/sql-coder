use musicstore

-- listar pedidos por usuario (ingresando email)
-- uso ej: call sp_pedidosUsuario("juanpf@fake.com")
DROP PROCEDURE IF EXISTS sp_pedidosUsuario
DELIMITER //
CREATE PROCEDURE sp_pedidosUsuario (IN emailUsuario varchar(100))
BEGIN
	SELECT id_pedido, usuarios.email, productos, fecha_compra FROM pedidos
    JOIN usuarios ON pedidos.id_usuario=usuarios.id_usuario
    WHERE pedidos.id_usuario IN 
    (SELECT id_usuario FROM usuarios WHERE usuarios.email=emailUsuario);
END 
// DELIMITER ;


-- ordena tabla según campo y orden ingresados
-- uso ej: call sp_ordenTabla("usuarios", "apellido", "ASC")
DROP PROCEDURE IF EXISTS sp_ordenTabla
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
-- ej uso: call sp_insertarDisco("Test", "Test", "Descripcion Disco", "Metal", "Blackened", "1986-01-01", 90, CURDATE())
DROP PROCEDURE IF EXISTS sp_insertarDisco
DELIMITER //
CREATE PROCEDURE sp_insertarDisco(IN nombre VARCHAR(100), IN banda VARCHAR(100), IN descripcion VARCHAR(500), IN genero VARCHAR(100), IN sello VARCHAR(100), IN fecha_album DATE, IN precio DECIMAL, IN fecha_carga DATE)
BEGIN
	INSERT INTO discos VALUES 
	(NULL, nombre, banda, descripcion, genero, sello, fecha_album, precio, fecha_carga);
END
// DELIMITER ;

-- eliminar disco de tabla discos, segun id
-- ej uso: call sp_eliminarDisco(17)
DROP PROCEDURE IF EXISTS sp_eliminarDisco
DELIMITER //
CREATE PROCEDURE sp_eliminarDisco (IN discoId INT)
BEGIN
	DELETE FROM discos WHERE id_disco = discoId;
END
// DELIMITER ;