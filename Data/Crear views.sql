USE muebleria_martinez;

CREATE OR REPLACE VIEW Catalogo_productos AS
SELECT *
FROM Producto
WHERE id_producto IN (
WITH Cliente1 AS (
SELECT i.id_producto, COUNT(
),
)

CREATE OR REPLACE VIEW Factura_total_mensual
AS 
SELECT SUM(precioFinal_factura)
FROM Factura
WHERE fecha_factura BETWEEN (NOW() - INTERVAL 30 DAY) AND NOW();