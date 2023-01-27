use musicstore;


-- convertir precio de dolares (como el precio de los discos) a pesos argentinos
-- uso ej: SELECT fn_precioPesos(2)
DROP FUNCTION IF EXISTS fn_precioPesos;
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
DROP FUNCTION IF EXISTS fn_pedidosPais;
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
DROP FUNCTION IF EXISTS fn_pedidosUsuario;
DELIMITER //
CREATE FUNCTION fn_pedidosUsuario (emailUsuario VARCHAR(100))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN (SELECT COUNT(pedidos.id_pedido) FROM pedidos WHERE pedidos.id_usuario IN (SELECT usuarios.id_usuario FROM usuarios WHERE usuarios.email=emailUsuario));
END 
// DELIMITER ;


-- buscar cantidad de items (discos) comprados por usuario
-- uso ej: SELECT fn_itemsUsuario("juanpf@fake.com") 

DROP FUNCTION IF EXISTS fn_itemsUsuario;
DELIMITER //
CREATE FUNCTION fn_itemsUsuario (emailUsuario VARCHAR(100))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN (SELECT SUM(cantidad) FROM ventas WHERE ventas.id_usuario IN (SELECT usuarios.id_usuario FROM usuarios WHERE usuarios.email=emailUsuario));
END 
// DELIMITER ;


-- buscar cantidad de items comprados por empleado, para stock
-- uso ej: SELECT fn_itemsEmpleadoStock("juangm123@fake.com") 
DROP FUNCTION IF EXISTS fn_itemsEmpleadoStock;
DELIMITER //
CREATE FUNCTION fn_itemsEmpleadoStock (emailEmpleado VARCHAR(100))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN (SELECT SUM(cantidad_compra) AS cantidad_itemsComprados FROM compras WHERE compras.comprado_por IN (SELECT empleados.id_empleado FROM empleados WHERE empleados.email=emailEmpleado));
END 
// DELIMITER ;


-- calcular la diferencia entre el total vendido y el total comprado para stock
-- uso ej: SELECT fn_totalBalance()
DROP FUNCTION IF EXISTS fn_totalBalance;
DELIMITER //
CREATE FUNCTION fn_totalBalance()
RETURNS DECIMAL
DETERMINISTIC

BEGIN
	RETURN (SELECT (SELECT total_vendido FROM view_totalVendido) - (SELECT total_comprado FROM view_totalComprado) AS balance_total);
END
// DELIMITER ;