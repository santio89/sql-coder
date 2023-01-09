use musicstore;
SELECT @@autocommit;
SET @@autocommit = 0;


START TRANSACTION;
delete from usuarios where id_usuario=3;
delete from usuarios where id_usuario=4;
delete from usuarios where id_usuario=5;
-- rollback; 
-- commit;
select * from usuarios;


START TRANSACTION;
insert into pedidos values
(NULL, 2, "[{id: 1, cant: 1}, {id: 2, cant: 1}, {id: 5, cant: 1}]", "2021-11-02"),
(NULL, 7, "[{id: 1, cant: 2}, {id: 4, cant: 2}, {id: 3, cant: 4}]", "2020-12-02"),
(NULL, 4, "[{id: 1, cant: 2}]", "2022-11-02"),
(NULL, 5, "[{id: 2, cant: 1}, {id: 1, cant: 2}, {id: 5, cant: 1}]", "2020-11-14");
savepoint sp_lote1;
insert into pedidos values
(NULL, 8, "[{id: 1, cant: 2}, {id: 2, cant: 1}, {id: 5, cant: 1}]", "2020-11-02"),
(NULL, 3, "[{id: 1, cant: 3}, {id: 4, cant: 2}, {id: 3, cant: 4}]", "2021-11-02"),
(NULL, 2, "[{id: 1, cant: 1}]", "2022-11-02"),
(NULL, 1, "[{id: 2, cant: 3}, {id: 1, cant: 2}, {id: 5, cant: 1}]", "2021-12-14");
savepoint sp_lote2;
-- release sp_lote1;
-- rollback to sp_lote2;
-- commit;
select * from pedidos;