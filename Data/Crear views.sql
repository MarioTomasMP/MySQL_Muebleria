USE muebleria_martinez;


CREATE OR REPLACE VIEW Factura_total_mensual
AS 
SELECT SUM(precioFinal_factura)
FROM Factura
WHERE fecha_factura BETWEEN (NOW() - INTERVAL 30 DAY) AND NOW();


/*Esta view te da la cantidad de productos que hay cargador por su categoria*/
CREATE OR REPLACE
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `cantidadproductos_x_categoria` AS
    SELECT 
        COUNT((CASE
            WHEN (`producto`.`categoria_producto` = 'Mesa') THEN 1
            ELSE 0
        END)) AS `Mesas`,
        COUNT((CASE
            WHEN (`producto`.`categoria_producto` = 'Mesa Ratona') THEN 1
            ELSE 0
        END)) AS `Mesas Ratona`,
        COUNT((CASE
            WHEN (`producto`.`categoria_producto` = 'Sillón') THEN 1
            ELSE 0
        END)) AS Sillónes,
        COUNT((CASE
            WHEN (producto.categoria_producto = 'Poltrona') THEN 1
            ELSE 0
        END)) AS Poltronas,
        COUNT((CASE
            WHEN (producto.categoria_producto = 'Silla') THEN 1
            ELSE 0
        END)) AS Sillas
    FROM
        producto
    GROUP BY producto.categoria_producto;



/*En esta view se organiza por fechas las ventas realizas*/
CREATE OR REPLACE
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `factura_por_fechas` AS
    SELECT 
        `factura`.`id_factura` AS `id_factura`,
        `factura`.`precioFinal_factura` AS `precioFinal_factura`,
        `factura`.`fecha_factura` AS `fecha_factura`
    FROM
        `factura`
    ORDER BY `factura`.`fecha_factura` DESC;


/*Esta view organiza todos los productos por su respectivo precio*/
CREATE OR REPLACE
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `productos_x_orden_de_precio` AS
    SELECT 
        `producto`.`id_producto` AS `id_producto`,
        `producto`.`nombre_producto` AS `nombre_producto`,
        `producto`.`precio_producto` AS `precio_producto`
    FROM
        `producto`
    ORDER BY `producto`.`precio_producto` DESC;


/*Esta view muestra ordenados todos los productos segun su proveedor*/
CREATE OR REPLACE
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `productos_x_orden_de_proveedor` AS
    SELECT 
        `producto`.`id_producto` AS `id_producto`,
        `producto`.`nombre_producto` AS `nombre_producto`,
        `proveedor`.`id_proveedor` AS `id_proveedor`,
        `proveedor`.`nombre_proveedor` AS `nombre_proveedor`
    FROM
        (`producto`
        JOIN `proveedor`)
    ORDER BY `proveedor`.`id_proveedor`