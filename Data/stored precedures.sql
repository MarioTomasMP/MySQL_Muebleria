USE `muebleria_martinez`;
DROP procedure IF EXISTS `sp_ordenar_productos`;

USE `muebleria_martinez`;
DROP procedure IF EXISTS `muebleria_martinez`.`sp_ordenar_productos`;
;

DELIMITER $$
USE `muebleria_martinez`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ordenar_productos`(IN valor VARCHAR(50))
BEGIN
IF valor <> '' THEN
	SET @orden = CONCAT('ORDER BY', ' ', valor);
ELSE SET @orden = '';
END IF;

SET @productos_ordenados = CONCAT('SELECT * FROM producto', ' ', @orden);

PREPARE productos_en_orden FROM @productos_ordenados;
EXECUTE productos_en_orden;
DEALLOCATE PREPARE productos_en_orden;
END$$

DELIMITER ;
;

USE `muebleria_martinez`;
DROP procedure IF EXISTS `sp_pedido`;

USE `muebleria_martinez`;
DROP procedure IF EXISTS `muebleria_martinez`.`sp_pedido`;
;

DELIMITER $$
USE `muebleria_martinez`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_pedido`()
BEGIN
	DECLARE numero_venta INT;
    DECLARE cliente, producto, empleado TEXT;
    
    SET numero_venta = RAND(100 - 1) +1;
    SET cliente = f_crear_cliente;
    SET empleado = f_empleado;
    SET producto = f_pedir_producto;
    
END$$

DELIMITER ;
;



