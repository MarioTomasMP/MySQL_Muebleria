DROP DATABASE IF EXISTS muebleria_martinez;
CREATE DATABASE IF NOT EXISTS muebleria_martinez;

USE muebleria_martinez;

DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Empleado;
DROP TABLE IF EXISTS Stock;
DROP TABLE IF EXISTS Producto;
DROP TABLE IF EXISTS Factura;
DROP TABLE IF EXISTS Proveedor;
DROP TABLE IF EXISTS Distribuidor;
DROP TABLE IF EXISTS Tienda;

CREATE TABLE IF NOT EXISTS Cliente(
id_cliente INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
nombre_cliente VARCHAR(50) NOT NULL,
email_cliente VARCHAR (100) NOT NULL,
edad_cliente INT NOT NULL,
telefono_cliente VARCHAR(30) NOT NULL,
direccion_cliente VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Empleado(
id_empleado INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
nombre_empleado VARCHAR(50) NOT NULL,
salario_empleado FLOAT NOT NULL,
telefono_empleado VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Proveedor(
id_proveedor INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
nombre_proveedor VARCHAR(50) NOT NULL,
telefono_proveedor VARCHAR (30) NOT NULL,
direccion_proveedor VARCHAR (100) NOT NULL,
email_proveedor VARCHAR(100) NOT NULL,
numero_cuenta_proveedor VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Producto(
id_producto INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
nombre_producto VARCHAR(50) NOT NULL,
precio_producto FLOAT NOT NULL,
descuento_producto INT NOT NULL,
categoria_producto VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Factura(
id_factura INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
precioFinal_factura FLOAT NOT NULL,
fecha_factura DATETIME NOT NULL,
id_producto INT NOT NULL,
id_empleado INT NOT NULL,
id_cliente INT NOT NULL,
CONSTRAINT FK_Factura_Producto FOREIGN KEY (id_producto) REFERENCES Producto(id_producto),
CONSTRAINT FK_Factura_Empleado FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado),
CONSTRAINT FK_Factura_Cliente FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE IF NOT EXISTS Distribuidor(
id_distribuidor INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
nombre_distribuidor VARCHAR(50) NOT NULL,
salario_distribuidor INT NOT NULL,
telefono_distribuidor VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Stock(
id_stock INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
id_proveedor INT NOT NULL,
nombre_producto VARCHAR(50) NOT NULL,
stock_total INT,
FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor)
ON DELETE CASCADE
ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Tienda(
id_empleado INT NOT NULL,
id_proveedor INT NOT NULL,
id_producto INT NOT NULL,
id_distribuidor INT NOT NULL,
id_factura INT NOT NULL,
CONSTRAINT FK_Tienda_Empleado FOREIGN KEY (id_empleado) REFERENCES Empleado (id_empleado),
CONSTRAINT FK_Tienda_Proveedor FOREIGN KEY (id_proveedor) REFERENCES proveedor (id_proveedor),
CONSTRAINT FK_Tienda_Producto FOREIGN KEY (id_producto) REFERENCES Producto (id_producto),
CONSTRAINT FK_Tienda_Distribuidor FOREIGN KEY (id_distribuidor) REFERENCES Distribuidor (id_distribuidor),
CONSTRAINT FK_Tienda_Factura FOREIGN KEY (id_factura) REFERENCES Factura (id_factura)
);

CREATE TABLE IF NOT EXISTS Envio(
id_envio INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
id_factura INT NOT NULL,
id_distribuidor INT NOT NULL,
CONSTRAINT FK_Envio_Factura FOREIGN KEY (id_factura) REFERENCES Factura(id_factura)
ON DELETE CASCADE
ON UPDATE CASCADE,
CONSTRAINT FK_Envio_Distribuidor FOREIGN KEY (id_distribuidor) REFERENCES Distribuidor(id_distribuidor)
ON DELETE CASCADE
ON UPDATE CASCADE
)
;