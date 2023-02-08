USE mysql;

-- elimino los usuarios si existen
DROP USER IF EXISTS "juanp@localhost";
DROP USER IF EXISTS "marian@localhost";

-- creo usuarios
CREATE USER "juanp@localhost" IDENTIFIED BY "pasS13!";
CREATE USER "marian@localhost" IDENTIFIED BY "paSs27$";

-- doy permisos a todas las tablas en la bd
GRANT SELECT ON musicstore.* TO "juanp@localhost";
GRANT SELECT, INSERT, UPDATE ON musicstore.* TO "marian@localhost";

