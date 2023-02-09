USE mysql;

-- elimino los usuarios de prueba si existen
DROP USER IF EXISTS "juanp@localhost";
DROP USER IF EXISTS "marian@localhost";

-- creo los usuarios de prueba
CREATE USER "juanp@localhost" IDENTIFIED BY "pasS13!";
CREATE USER "marian@localhost" IDENTIFIED BY "paSs27$";

-- doy permisos a todas las tablas de la bd. juanp@localhost: lectura (select); marian@localhost: lectura, escritura, actualización (select, insert, update)
GRANT SELECT ON musicstore.* TO "juanp@localhost";
GRANT SELECT, INSERT, UPDATE ON musicstore.* TO "marian@localhost";

