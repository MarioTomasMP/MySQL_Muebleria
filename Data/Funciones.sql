USE muebleria_martinez;

USE `muebleria_martinez`;
DROP function IF EXISTS `sumar_productos_x_categoria`;

USE `muebleria_martinez`;
DROP function IF EXISTS `muebleria_martinez`.`sumar_productos_x_categoria`;
;

DELIMITER $$
USE `muebleria_martinez`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `sumar_productos_x_categoria`(categoria VARCHAR(100)) RETURNS int
    READS SQL DATA
BEGIN
	DECLARE productos_totales INT;
    SELECT count(*)
		INTO productos_totales
    FROM producto
    WHERE categoria_producto = categoria;
    RETURN productos_totales;

END$$

DELIMITER ;
;

DROP function IF EXISTS `muebleria_martinez`.`estado_stock`;
;

DELIMITER $$
USE `muebleria_martinez`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `estado_stock`(stock_total INT) RETURNS varchar(30) CHARSET utf8mb4
    NO SQL
BEGIN
	DECLARE estado_stock VARCHAR(30);
    SET estado_stock = 'UNDEFINED';
    IF stock_total > 20 THEN			SET estado_stock = 'SUFICIENTE';
    ELSEIF stock_total >= 15 THEN 		SET estado_stock = 'BUENO';
    ELSEIF stock_total >= 10 THEN		SET estado_stock = 'REGULAR';
    ELSEIF stock_total >= 5 THEN		SET estado_stock = 'BAJO';
    ELSEIF stock_total >= 1 THEN		SET estado_stock = 'INSUFICIENTE';
    END IF;
		RETURN estado_stock;

END$$

DELIMITER ;
;

SELECT stado_stock(20);
SELECT sumar_productos_x_categoria('poltrona');
 