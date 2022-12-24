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

-- buscar discos con descuentos
CREATE OR REPLACE VIEW view_discosDescuentos AS
    (SELECT 
        discos.id_disco,
        nombre,
        banda,
        stock.descuento AS porcentaje_descuento
    FROM
        DISCOS
            JOIN
        STOCK ON discos.id_disco = stock.id_disco
    WHERE
        stock.descuento != 0);

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
        
  

