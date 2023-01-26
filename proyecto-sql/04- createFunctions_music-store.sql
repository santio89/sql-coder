use musicstore


-- convertir precio de dolares (como el precio de los discos) a pesos argentinos
-- uso ej: SELECT fn_precioPesos(2)
DROP FUNCTION IF EXISTS fn_precioPesos
DELIMITER //
CREATE FUNCTION fn_precioPesos (precioDol DECIMAL(20,2))
RETURNS DECIMAL(20,2)
DETERMINISTIC
BEGIN
	SET @precioPesos = (SELECT precioDol * 171.76);
	RETURN @precioPesos;
END 
// DELIMITER ;


-- buscar cantidad de pedidos por pais
-- uso ej: SELECT fn_pedidosPais("ARGENTINA")
DROP FUNCTION IF EXISTS fn_pedidosPais
DELIMITER //
CREATE FUNCTION fn_pedidosPais (pais VARCHAR(100))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN (SELECT COUNT(pedidos.id_pedido) FROM pedidos where pedidos.id_usuario IN (SELECT usuarios.id_usuario FROM usuarios JOIN direcciones on usuarios.id_usuario=direcciones.id_usuario WHERE direcciones.pais=pais));
END 
// DELIMITER ;


-- buscar cantidad de pedidos por usuario
-- uso ej: SELECT fn_pedidosUsuario("juanpf@fake.com")
DROP FUNCTION IF EXISTS fn_pedidosUsuario
DELIMITER //
CREATE FUNCTION fn_pedidosUsuario (emailUsuario VARCHAR(100))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN (SELECT COUNT(pedidos.id_pedido) FROM pedidos WHERE pedidos.id_usuario IN (SELECT usuarios.id_usuario FROM usuarios WHERE usuarios.email=emailUsuario));
END 
// DELIMITER ;


