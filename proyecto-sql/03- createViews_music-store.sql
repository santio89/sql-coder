use musicstore;

-- buscar cantidad de usuarios por pais
CREATE OR REPLACE VIEW view_usuariosPais AS
    (SELECT 
        direcciones.pais,
        COUNT(direcciones.id_usuario) AS cantidad_usuarios
    FROM
        usuarios
            JOIN
        direcciones ON usuarios.id_usuario = direcciones.id_usuario
    GROUP BY direcciones.pais
    ORDER BY COUNT(direcciones.id_usuario) DESC);


-- buscar cantidad de mensajes por usuario
CREATE OR REPLACE VIEW view_usuariosMensajes AS
    (SELECT 
        usuarios.id_usuario,
        nombre,
        apellido,
        COUNT(mensajes.id_usuario) AS cantidad_mensajes
    FROM
        usuarios
            JOIN
        mensajes ON usuarios.id_usuario = mensajes.id_usuario
    GROUP BY usuarios.id_usuario
    ORDER BY cantidad_mensajes DESC);


-- buscar cantidad de pedidos por usuarios
CREATE OR REPLACE VIEW view_usuariosPedidos AS
    (SELECT 
        usuarios.id_usuario,
        nombre,
        apellido,
        COUNT(pedidos.id_usuario) AS cantidad_pedidos
    FROM
        usuarios
            JOIN
        pedidos ON usuarios.id_usuario = pedidos.id_usuario
    GROUP BY usuarios.id_usuario
    ORDER BY COUNT(pedidos.id_usuario) DESC);


-- buscar usuarios con sesiones activas. nota: en la realidad, las sesiones se irian anulando (NULL) a medida que expiran, y las activas deberian tener una fecha de expiracion actual (esto se realizaría dinámicamente desde un backend), pero para el ejemplo tomo los cryptId 'not null' como sesiones activas màs alla de la fecha.
CREATE OR REPLACE VIEW view_sesionesActivas AS
    (SELECT 
        usuarios.id_usuario,
        nombre,
        apellido,
        sesiones.fecha_creacion AS sesionCreacion,
        sesiones.fecha_expiracion AS sesionExpiracion,
        sesiones.sesionCryptId AS sesionCryptId
    FROM
        usuarios
            JOIN
        sesiones ON usuarios.id_usuario = sesiones.id_usuario
    WHERE
        sesiones.sesionCryptId IS NOT NULL);
        
  -- buscar tabla ventas con detalle de precio y cantidad
  CREATE OR REPLACE VIEW view_ventasDetalle AS
	(SELECT id_venta, id_pedido, id_usuario, discos.id_disco, discos.precio, cantidad, discos.precio*cantidad AS subtotal_venta 
    FROM ventas JOIN discos ON ventas.id_disco = discos.id_disco
    ORDER BY id_pedido
    );

-- total vendido
CREATE OR REPLACE VIEW view_totalVendido AS
    (SELECT 
        COUNT(DISTINCT id_pedido) AS cantidad_pedidos,
        SUM(cantidad) AS items_vendidos,
        SUM(discos.precio * cantidad) AS total_vendido
    FROM
        ventas
            JOIN
        discos ON ventas.id_disco = discos.id_disco);
        
        
-- compras realizadas por empleados para stock
CREATE OR REPLACE VIEW view_comprasEmpleados AS
(
	SELECT comprado_por AS id_empleado, CONCAT(empleados.nombre, " ", empleados.apellido) AS nombre_completo,COUNT(comprado_por) AS cantidad_compras, SUM(cantidad_compra) AS items_comprados, SUM(precio_compra_unit * cantidad_compra) AS costo_total FROM compras JOIN empleados ON compras.comprado_por = empleados.id_empleado GROUP BY comprado_por ORDER BY cantidad_compras DESC
)