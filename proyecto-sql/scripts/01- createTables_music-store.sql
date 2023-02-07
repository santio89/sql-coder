DROP SCHEMA IF EXISTS MusicStore;
CREATE SCHEMA IF NOT EXISTS MusicStore;
USE MusicStore;


-- tabla empleados, quienes gestionan compras y cargan productos a la plataforma online
CREATE TABLE IF NOT EXISTS empleados (
id_empleado INT NOT NULL AUTO_INCREMENT,
dni_empleado INT NOT NULL,
nombre VARCHAR (100) NOT NULL,
apellido VARCHAR (100) NOT NULL,
email VARCHAR (100) NOT NULL,
telefono VARCHAR (100) NOT NULL,
fecha_alta DATE NOT NULL,
sector VARCHAR (100),
active_status TINYINT (1) NOT NULL,
PRIMARY KEY (id_empleado)
);

-- tabla usuarios de la plataforma online con información básica
CREATE TABLE IF NOT EXISTS usuarios (
id_usuario INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR (100) NOT NULL,
apellido VARCHAR (100) NOT NULL,
email VARCHAR (100) NOT NULL,
telefono VARCHAR (100) NOT NULL,
fecha_alta DATE NOT NULL,
avatar_url VARCHAR (100) NOT NULL,
rol VARCHAR (20) NOT NULL,
active_status TINYINT (1) NOT NULL,
PRIMARY KEY (id_usuario)
);

-- tabla direcciones con informacion detallada de las direcciones de usuarios de la plataforma online
CREATE TABLE IF NOT EXISTS direcciones (
id_direccion INT NOT NULL AUTO_INCREMENT,
id_usuario INT NOT NULL,
pais VARCHAR (100) NOT NULL,
estado VARCHAR (100) NOT NULL,
ciudad VARCHAR (100) NOT NULL,
calle VARCHAR (100) NOT NULL,
altura VARCHAR (100) NOT NULL,
coordenadas VARCHAR (100) NOT NULL,
PRIMARY KEY (id_direccion),
FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario) ON DELETE CASCADE
);

-- tabla discos con datos de cada disco
CREATE TABLE IF NOT EXISTS discos (
id_disco INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR (100) NOT NULL,
banda VARCHAR (100) NOT NULL,
descripcion VARCHAR (500) NOT NULL,
genero VARCHAR (100) NOT NULL,
sello VARCHAR (100) NOT NULL,
fecha_album DATE NOT NULL,
precio DECIMAL NOT NULL,
fecha_carga DATE NOT NULL,
active_status TINYINT (1) NOT NULL,
PRIMARY KEY (id_disco)
);

-- tabla compras con detalle de las compras de discos que realiza la empresa para stockear
CREATE TABLE IF NOT EXISTS compras (
id_compra INT NOT NULL AUTO_INCREMENT,
id_disco INT NOT NULL,
comprado_por INT NOT NULL,
cantidad_compra INT NOT NULL,
precio_compra_unit DECIMAL NOT NULL,
PRIMARY KEY (id_compra),
FOREIGN KEY (id_disco) REFERENCES discos (id_disco),
FOREIGN KEY (comprado_por) REFERENCES empleados (id_empleado)
);

-- tabla stock con cantidad de productos (stock es lo disponible para venta, a diferencia de compras que es una gestion más bien comercial).
CREATE TABLE IF NOT EXISTS stock (
id_stock INT NOT NULL AUTO_INCREMENT,
id_disco INT NOT NULL,
cantidad_stock INT NOT NULL,
PRIMARY KEY (id_stock),
FOREIGN KEY (id_disco) REFERENCES discos (id_disco) ON DELETE CASCADE
);

-- tabla de carritos de la plataforma online con los productos que el usuario selecciona dentro de la pagina y antes de finalizar la compra.
CREATE TABLE IF NOT EXISTS carritos (
	id_carrito INT NOT NULL AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    productos JSON,
    PRIMARY KEY (id_carrito),
    FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario) ON DELETE CASCADE
);

-- tabla de pedidos que recibe el sistema desde la plataforma online. al confirmar una orden, la informacion del carrito pasa al pedido,el carrito se vacia y el pedido pasa al sector de ventas quienes gestionaran el mismo.
CREATE TABLE IF NOT EXISTS pedidos (
    id_pedido INT NOT NULL AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    productos JSON,
    fecha_pedido DATETIME NOT NULL,
    PRIMARY KEY (id_pedido),
    FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario)
);

-- tabla de mensajes que son enviados desde los usuarios hacia el administrador
CREATE TABLE IF NOT EXISTS mensajes (
	id_mensaje INT NOT NULL AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    mensaje VARCHAR (500) NOT NULL,
    fecha_mensaje DATETIME NOT NULL,
    PRIMARY KEY (id_mensaje),
    FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario) ON DELETE CASCADE
);

-- tabla de sesiones de usuario en navegador (las sesiones se validan por el backend en cada login y pueden durar una cantidad de tiempo)
CREATE TABLE IF NOT EXISTS sesiones (
	id_sesion INT NOT NULL AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    fecha_creacion DATETIME,
    fecha_expiracion DATETIME,
    sesionCryptId VARCHAR(100),
    PRIMARY KEY (id_sesion),
    FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario) ON DELETE CASCADE
)
