USE musicstore;

-- tabla de ventas con los productos vendidos (a partir de los pedidos que se reciben en formato json desde el front-end, se genera la tabla de ventas).
CREATE TABLE IF NOT EXISTS ventas (
    id_venta INT NOT NULL AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_usuario INT NOT NULL,
    id_disco INT NOT NULL,
    precio_unit DECIMAL NOT NULL,
    cantidad INT NOT NULL,
    subtotal DECIMAL NOT NULL,
    fecha_venta DATE NOT NULL,
    PRIMARY KEY (id_venta),
    FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario),
    FOREIGN KEY (id_disco) REFERENCES discos (id_disco),
    FOREIGN KEY (id_pedido) REFERENCES pedidos (id_pedido)
);
-- trigger after insert de pedidos, generando la tabla de ventas. Se usa la función JSON_EXTRACT junto con el tipo de dato JSON, disponibles a parti de la versión 5.7.8 de MySql
DROP TRIGGER IF EXISTS tr_after_insertPedido_venta;
DELIMITER //
CREATE TRIGGER tr_after_insertPedido_venta
AFTER INSERT  ON pedidos
FOR EACH ROW
BEGIN
	DECLARE iddisco INT;
    DECLARE cantidad INT;
    DECLARE precio DECIMAL;

	DECLARE i INT DEFAULT 0;
    WHILE i < JSON_LENGTH(new.productos) DO
        SELECT JSON_EXTRACT(new.productos, CONCAT('$[',i,'].id')) INTO iddisco;
        SELECT JSON_EXTRACT(new.productos, CONCAT('$[',i,'].cant')) INTO cantidad;
        SELECT discos.precio from discos where discos.id_disco = iddisco INTO precio;
        
		INSERT INTO ventas VALUES(
		NULL, NEW.id_pedido, NEW.id_usuario, CAST(iddisco AS UNSIGNED), precio, CAST(cantidad AS UNSIGNED), cantidad*precio, NEW.fecha_pedido
		);

        SET i = i + 1;
    END WHILE;
END
// DELIMITER ;

-- tabla: log pedidos - trigger en before
CREATE TABLE IF NOT EXISTS log_pedidos_before(
id_logPedidoBefore INT NOT NULL AUTO_INCREMENT,
timestamp_operation TIMESTAMP NOT NULL,
operation VARCHAR (10),
hecho_por VARCHAR(255),
PRIMARY KEY (id_logPedidoBefore)
);
--  tigger before insert en pedidos, generando logs
DROP TRIGGER IF EXISTS tr_before_insertPedido_log;
CREATE TRIGGER tr_before_insertPedido_log
BEFORE INSERT ON pedidos
FOR EACH ROW
INSERT INTO log_pedidos_before(timestamp_operation, operation, hecho_por) VALUES (now(), "INSERT", user());


-- tabla: backup de la tabla pedidos al insertar (trigger en after)
CREATE TABLE IF NOT EXISTS bkp_pedidos (
	id_pedidoBkp INT NOT NULL AUTO_INCREMENT,
    id_usuario INT NOT NULL,
	id_pedido INT NOT NULL,
    productos JSON,
    fecha_pedido DATE NOT NULL,
    PRIMARY KEY (id_pedidoBkp),
    FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario),
    FOREIGN KEY (id_pedido) REFERENCES pedidos (id_pedido)
);
-- trigger after insert discos (tabla bkp_pedidos)
DROP TRIGGER IF EXISTS tr_after_insertPedido_bkp;
CREATE TRIGGER tr_after_insertPedido_bkp
AFTER INSERT ON pedidos
FOR EACH ROW
INSERT INTO bkp_pedidos VALUES (NULL, NEW.id_usuario, NEW.id_pedido, NEW.productos, NEW.fecha_pedido);


-- tabla: log usuarios - before
CREATE TABLE IF NOT EXISTS log_usuarios_before(
id_logUsuarioBefore INT NOT NULL AUTO_INCREMENT,
timestamp_operation TIMESTAMP NOT NULL,
operation VARCHAR (10),
hecho_por VARCHAR (255),
PRIMARY KEY (id_logUsuarioBefore)
);
-- trigger before insert (tabla log_usuarios_before)
DROP TRIGGER IF EXISTS tr_before_insertUsuario_log;
CREATE TRIGGER tr_before_insertUsuario_log
BEFORE INSERT ON usuarios
FOR EACH ROW
INSERT INTO log_usuarios_before (timestamp_operation, operation, hecho_por) VALUES (now(), "INSERT", USER());


-- tabla: backup de la tabla usuarios al insertar (trigger en after)
CREATE TABLE IF NOT EXISTS bkp_usuarios (
id_usuarioBkp INT NOT NULL AUTO_INCREMENT,
id_usuario INT NOT NULL,
nombre VARCHAR (100) NOT NULL,
apellido VARCHAR (100) NOT NULL,
email VARCHAR (100) NOT NULL,
telefono VARCHAR (100) NOT NULL,
fecha_alta DATE NOT NULL,
avatar_url VARCHAR (100) NOT NULL,
rol VARCHAR (20) NOT NULL,
active_status TINYINT NOT NULL,
PRIMARY KEY (id_usuarioBkp),
FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario)
);
-- trigger after insert usuarios (tabla bkp_usuarios)
DROP TRIGGER IF EXISTS tr_after_insertUsuario_bkp;
CREATE TRIGGER tr_after_insertUsuario_bkp
AFTER INSERT ON usuarios
FOR EACH ROW
INSERT INTO bkp_usuarios VALUES (NULL, NEW.id_usuario, NEW.nombre, NEW.apellido, NEW.email, NEW.telefono, NEW.fecha_alta, NEW.avatar_url, NEW.rol, NEW.active_status);


-- tabla: log discos - before
CREATE TABLE IF NOT EXISTS log_discos_before(
id_logDiscoBefore INT NOT NULL AUTO_INCREMENT,
timestamp_operation TIMESTAMP NOT NULL,
operation VARCHAR (10),
hecho_por VARCHAR (255),
PRIMARY KEY (id_logDiscoBefore)
);
-- trigger before insert (tabla log_discos_before)
DROP TRIGGER IF EXISTS tr_before_insertDisco_log;
CREATE TRIGGER tr_before_insertDisco_log
BEFORE INSERT ON usuarios
FOR EACH ROW
INSERT INTO log_discos_before (timestamp_operation, operation, hecho_por) VALUES (now(), "INSERT", user());


-- tabla: backup de la tabla discos al insertar (trigger en after)
CREATE TABLE IF NOT EXISTS bkp_discos (
id_discoBkp INT NOT NULL AUTO_INCREMENT,
id_disco INT NOT NULL,
nombre VARCHAR (100) NOT NULL,
banda VARCHAR (100) NOT NULL,
descripcion VARCHAR (500) NOT NULL,
genero VARCHAR (100) NOT NULL,
sello VARCHAR (100) NOT NULL,
fecha_album DATE NOT NULL,
precio DECIMAL NOT NULL,
fecha_carga DATE NOT NULL,
active_status TINYINT NOT NULL,
PRIMARY KEY (id_discoBkp),
FOREIGN KEY (id_disco) REFERENCES discos (id_disco)
);
-- trigger after insert discos (tabla bkp_discos)
DROP TRIGGER IF EXISTS tr_after_insertDisco_bkp;
CREATE TRIGGER tr_after_insertDisco_bkp
AFTER INSERT ON discos
FOR EACH ROW
INSERT INTO bkp_discos VALUES (NULL, NEW.id_disco, NEW.nombre, NEW.banda, NEW.descripcion, NEW.genero, NEW.sello, NEW.fecha_album, NEW.precio, NEW.fecha_carga, NEW.active_status);
