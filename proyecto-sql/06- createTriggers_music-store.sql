use musicstore;

-- tabla de ventas con los productos vendidos (a partir de los pedidos que se reciben en formato json desde el front-end, se genera la tabla de ventas)
create table if not exists ventas (
    id_venta INT NOT NULL AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_usuario INT NOT NULL,
    id_disco int not null,
    cantidad int not null,
    fecha_venta DATE NOT NULL,
    PRIMARY KEY (id_venta),
    FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario),
    FOREIGN KEY (id_disco) references discos (id_disco),
    FOREIGN KEY (id_pedido) references pedidos (id_pedido)
);

--  trigger after insert de pedidos, generando la tabla de ventas
DROP TRIGGER IF EXISTS tr_after_insertPedido_venta;
DELIMITER //
CREATE TRIGGER tr_after_insertPedido_venta
AFTER INSERT  ON pedidos
FOR EACH ROW
BEGIN
	DECLARE iddisco int;
    DECLARE cantidad int;

	DECLARE i INT DEFAULT 0;
    WHILE i < JSON_LENGTH(new.productos) DO
        SELECT JSON_EXTRACT(new.productos, CONCAT('$[',i,'].id')) INTO iddisco;
        SELECT JSON_EXTRACT(new.productos, CONCAT('$[',i,'].cant')) INTO cantidad;
        
		INSERT INTO ventas VALUES(
		NULL, new.id_pedido, new.id_usuario, CAST(iddisco AS UNSIGNED), CAST(cantidad AS UNSIGNED), new.fecha_pedido
		);

        SET i = i + 1;
    END WHILE;
END
// DELIMITER ;


-- tabla: log usuarios - before
create table if not exists log_usuarios_before(
id_logUsuarioBefore int not null auto_increment,
timestamp_operation timestamp not null,
operation varchar(10),
hecho_por varchar(255),
primary key (id_logUsuarioBefore)
);


-- trigger before insert (tabla log_usuarios_before)
DROP TRIGGER IF EXISTS tr_before_insertUsuario_log;
CREATE TRIGGER tr_before_insertUsuario_log
BEFORE INSERT ON usuarios
FOR EACH ROW
INSERT INTO log_usuarios_before (timestamp_operation, operation, hecho_por) VALUES (now(), "INSERT", user());


-- tabla: log discos - before
create table if not exists log_discos_before(
id_logDiscoBefore int not null auto_increment,
timestamp_operation timestamp not null,
operation varchar(10),
hecho_por varchar(255),
primary key (id_logDiscoBefore)
);

-- trigger before insert (tabla log_discos_before)
DROP TRIGGER IF EXISTS tr_before_insertDisco_log;
CREATE TRIGGER tr_before_insertDisco_log
BEFORE INSERT ON usuarios
FOR EACH ROW
INSERT INTO log_discos_before (timestamp_operation, operation, hecho_por) VALUES (now(), "INSERT", user());


-- tabla: logs de la tabla de usuarios al insertar (trigger en after)
create table if not exists log_usuarios_after(
id_logUsuario int not null auto_increment,
id_usuario int not null,
timestamp_alta timestamp not null,
hecho_por varchar(255),
primary key (id_logUsuario)
);

-- trigger after insert usuarios (tabla log_usuarios_after)
DROP TRIGGER IF EXISTS tr_after_insertUsuario_log;
CREATE TRIGGER tr_after_insertUsuario_log
AFTER INSERT ON usuarios
FOR EACH ROW
INSERT INTO log_usuarios_after (id_usuario, timestamp_alta, hecho_por) VALUES (new.id_usuario, now(), user());


-- tabla: backup de la tabla usuarios al insertar (trigger en after)
create table if not exists bkp_usuarios (
id_usuarioBkp int not null auto_increment,
id_usuario int not null,
nombre varchar (100) not null,
apellido varchar (100) not null,
email varchar (100) not null,
telefono varchar (100) not null,
fecha_alta date not null,
avatar_url varchar (100) not null,
rol varchar (20) not null,
primary key (id_usuarioBkp)
);

-- trigger after insert usuarios (tabla bkp_usuarios)
DROP TRIGGER IF EXISTS tr_after_insertUsuario_bkp;
CREATE TRIGGER tr_after_insertUsuario_bkp
AFTER INSERT ON usuarios
FOR EACH ROW
INSERT INTO bkp_usuarios VALUES (null, new.id_usuario, new.nombre, new.apellido, new.email, new.telefono, new.fecha_alta, new.avatar_url, new.rol);


-- tabla: logs de la tabla de discos al insertar (trigger en after)
create table if not exists log_discos_after(
id_logDisco int not null auto_increment,
id_disco int not null,
timestamp_alta timestamp not null,
hecho_por varchar(255),
primary key (id_logDisco)
);

-- trigger after insert discos (tabla log_discos_after)
DROP TRIGGER IF EXISTS tr_after_insertDisco_log;
CREATE TRIGGER tr_after_insertDisco_log
AFTER INSERT ON discos
FOR EACH ROW
INSERT INTO log_discos_after (id_disco, timestamp_alta, hecho_por) VALUES (new.id_disco, now(), user());


-- tabla: backup de la tabla discos al insertar (trigger en after)
create table if not exists bkp_discos (
id_discoBkp int not null auto_increment,
id_disco int not null,
nombre varchar (100) not null,
banda varchar (100) not null,
descripcion varchar (500) not null,
genero varchar (100) not null,
sello varchar (100) not null,
fecha_album date not null,
precio decimal not null,
fecha_carga date not null,
primary key (id_discoBkp)
);

-- trigger after insert discos (tabla bkp_discos)
DROP TRIGGER IF EXISTS tr_after_insertDisco_bkp;
CREATE TRIGGER tr_after_insertDisco_bkp
AFTER INSERT ON discos
FOR EACH ROW
INSERT INTO bkp_discos VALUES (null, new.id_disco, new.nombre, new.banda, new.descripcion, new.genero, new.sello, new.fecha_album, new.precio, new.fecha_carga);
