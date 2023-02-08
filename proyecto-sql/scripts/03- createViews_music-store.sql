USE musicstore;

-- buscar usuarios activos por pais
CREATE OR REPLACE VIEW vw_usuariosPais AS
    (SELECT 
        direcciones.pais,
        COUNT(direcciones.id_usuario) AS cantidad_usuarios_activos
    FROM usuarios JOIN direcciones ON usuarios.id_usuario = direcciones.id_usuario
	WHERE usuarios.active_status = 1
    GROUP BY direcciones.pais
    ORDER BY COUNT(direcciones.id_usuario) DESC);

-- buscar discos activos por genero
CREATE OR REPLACE VIEW vw_discosGeneros
AS (SELECT genero, COUNT(*) AS cantidad_discos_activos FROM discos WHERE discos.active_status = 1 GROUP BY genero ORDER BY cantidad_discos_activos);


-- buscar cantidad de mensajes por usuario
CREATE OR REPLACE VIEW vw_usuariosMensajes AS
    (SELECT 
        usuarios.id_usuario,
        CONCAT(nombre, " ", apellido) as nombre_completo,
        COUNT(mensajes.id_usuario) AS cantidad_mensajes
    FROM usuarios JOIN mensajes ON usuarios.id_usuario = mensajes.id_usuario
    GROUP BY usuarios.id_usuario
    ORDER BY cantidad_mensajes DESC);


-- buscar pedidos y discos comprados por usuarios
CREATE OR REPLACE VIEW vw_usuariosPedidos AS
    (SELECT usuariosPedidos_int.id_usuario, nombre_completo, cantidad_pedidos, SUM(ventas.cantidad) AS cantidad_discos, SUM(ventas.subtotal) as costo_total from (SELECT 
        usuarios.id_usuario,
        CONCAT(nombre, " ", apellido) as nombre_completo,
        COUNT(pedidos.id_usuario) AS cantidad_pedidos
    FROM usuarios JOIN pedidos ON usuarios.id_usuario = pedidos.id_usuario
    GROUP BY usuarios.id_usuario) as usuariosPedidos_int JOIN ventas on usuariosPedidos_int.id_usuario=ventas.id_usuario 
    GROUP BY usuariosPedidos_int.id_usuario ORDER BY cantidad_discos DESC);


-- buscar usuarios con sesiones activas. nota: en la realidad, las sesiones se irian anulando (NULL) a medida que expiran, y las activas deberian tener una fecha de expiracion actual (esto se realizaría dinámicamente desde un backend), pero para el ejemplo tomo los cryptId 'not null' como sesiones activas màs alla de la fecha.
CREATE OR REPLACE VIEW vw_sesionesActivas AS
    (SELECT 
        usuarios.id_usuario,
        CONCAT(nombre, " ", apellido) as nombre_completo,
        sesiones.fecha_creacion AS sesion_creacion,
        sesiones.fecha_expiracion AS sesion_expiracion,
        sesiones.sesionCryptId AS sesion_cryptId
    FROM usuarios JOIN sesiones ON usuarios.id_usuario = sesiones.id_usuario
    WHERE sesiones.sesionCryptId IS NOT NULL);
        
  -- buscar tabla ventas con detalle de precio y cantidad
  CREATE OR REPLACE VIEW vw_ventasDetalle AS
	(SELECT id_venta, id_pedido, id_usuario, discos.id_disco, discos.precio, cantidad, discos.precio*cantidad AS subtotal_venta 
    FROM ventas JOIN discos ON ventas.id_disco = discos.id_disco
    ORDER BY id_pedido
    );

-- total vendido
CREATE OR REPLACE VIEW vw_totalVendido AS
    (SELECT 
        COUNT(DISTINCT id_pedido) AS cantidad_pedidos,
        SUM(cantidad) AS items_vendidos,
        SUM(discos.precio * cantidad) AS total_vendido
    FROM ventas JOIN discos ON ventas.id_disco = discos.id_disco);
      
-- total comprado para stock
CREATE OR REPLACE VIEW vw_totalComprado AS
    (SELECT 
        COUNT(DISTINCT id_compra) AS cantidad_compras,
        SUM(cantidad_compra) AS items_comprados,
        SUM(discos.precio * cantidad_compra) AS total_comprado
    FROM compras JOIN discos ON compras.id_disco = discos.id_disco);
        
       
-- compras realizadas por empleados para stock
CREATE OR REPLACE VIEW vw_comprasEmpleados AS
(
	SELECT comprado_por AS id_empleado, CONCAT(empleados.nombre, " ", empleados.apellido) AS nombre_completo,COUNT(comprado_por) AS cantidad_compras, SUM(cantidad_compra) AS cantidad_discos, SUM(precio_compra_unit * cantidad_compra) AS costo_total FROM compras JOIN empleados ON compras.comprado_por = empleados.id_empleado GROUP BY comprado_por ORDER BY cantidad_compras DESC
)