drop schema if exists MusicStore;
create schema if not exists MusicStore;
use MusicStore;

-- tabla usuarios con información básica
create table if not exists usuarios (
id_usuario int not null auto_increment,
nombre varchar (100) not null,
apellido varchar (100) not null,
email varchar (100) not null,
telefono varchar (100) not null,
fecha_alta date not null,
avatar_url varchar (100) not null,
rol varchar (20) not null,
primary key (id_usuario)
);

-- tabla direcciones con informacion detallada de las direcciones
create table if not exists direcciones (
id_direccion int not null auto_increment,
id_usuario int not null,
pais varchar (100) not null,
estado varchar (100) not null,
ciudad varchar (100) not null,
calle varchar (100) not null,
altura varchar (100) not null,
coordenadas varchar (100) not null,
primary key (id_direccion),
foreign key (id_usuario) references usuarios (id_usuario) on delete cascade
);

-- tabla discos con datos de cada disco
create table if not exists discos (
id_disco int not null auto_increment,
nombre varchar (100) not null,
banda varchar (100) not null,
descripcion varchar (500) not null,
genero varchar (100) not null,
sello varchar (100) not null,
fecha_album date not null,
precio decimal not null,
fecha_carga date not null,
primary key (id_disco)
);

-- tabla stock con cantidad de productos y descuento
create table if not exists stock (
id_stock int not null auto_increment,
id_disco int not null,
cantidad_stock int not null,
descuento decimal not null,
primary key (id_stock),
foreign key (id_disco) references discos (id_disco) on delete cascade
);

-- tabla de carritos con los productos que el usuario selecciona dentro de la pagina y antes de finalizar la compra.
create table if not exists carritos (
	id_carrito int not null auto_increment,
    id_usuario int not null,
    productos text,
    primary key (id_carrito),
    foreign key (id_usuario) references usuarios (id_usuario) on delete cascade
);

-- tabla de pedidos. al confirmar una orden, la informacion del carrito pasa al pedido (y el carrito se vacia)
CREATE TABLE IF NOT EXISTS pedidos (
    id_pedido INT NOT NULL AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    productos TEXT,
    fecha_compra DATE NOT NULL,
    PRIMARY KEY (id_pedido),
    FOREIGN KEY (id_usuario)
        REFERENCES usuarios (id_usuario) on delete cascade
);

-- tabla de mensajes que son enviados desde los usuarios hacia el administrador
create table if not exists mensajes (
	id_mensaje int not null auto_increment,
    id_usuario int not null,
    mensaje varchar (500) not null,
    fecha_mensaje datetime not null,
    primary key (id_mensaje),
    foreign key (id_usuario) references usuarios (id_usuario) on delete cascade
);

-- tabla de sesiones de usuario en navegador (las sesiones se validan por el backend en cada login y pueden durar una cantidad de tiempo)
create table if not exists sesiones (
	id_sesion int not null auto_increment,
    id_usuario int not null,
    fecha_creacion datetime,
    fecha_expiracion datetime,
    sesionCryptId varchar(100),
    primary key (id_sesion),
    foreign key (id_usuario) references usuarios (id_usuario) on delete cascade
)
