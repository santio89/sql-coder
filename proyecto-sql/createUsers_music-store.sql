use mysql;

-- creo usuarios
create user "juanp@localhost" identified by "pasS13!";
create user "marian@localhost" identified by "paSs27$";

-- doy permisos a todas las tablas en la bd
grant select on musicstore.* to "juanp@localhost";
grant select, insert, update on musicstore.* to "marian@localhost";

