USE muebleria_martinez;

SET @@autocommit = 0;

START TRANSACTION;
DELETE FROM empleado WHERE id_empleado = 2 AND nombre_empleado = 'Maria Dominguez';

ROLLBACK;

COMMIT;
SET @@autocommit = 1;

START TRANSACTION;
SELECT * FROM factura;
SELECT * FROM stock JOIN producto WHERE id_stock = id_producto;
INSERT INTO factura VALUES
(1, 87501, '2022-08-01 10:28:50', 1, 3, 4);

savepoint primera_factura;

RELEASE savepoint primera_factura;
ROLLBACK TO savepoint primera_factura;
COMMIT;