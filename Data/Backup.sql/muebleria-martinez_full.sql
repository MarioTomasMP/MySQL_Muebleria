CREATE DATABASE  IF NOT EXISTS `muebleria_martinez` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `muebleria_martinez`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: muebleria_martinez
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `cantidadproductos_x_categoria`
--

DROP TABLE IF EXISTS `cantidadproductos_x_categoria`;
/*!50001 DROP VIEW IF EXISTS `cantidadproductos_x_categoria`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cantidadproductos_x_categoria` AS SELECT 
 1 AS `Mesas`,
 1 AS `Mesas Ratona`,
 1 AS `Sillónes`,
 1 AS `Poltronas`,
 1 AS `Sillas`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(50) NOT NULL,
  `email_cliente` varchar(100) NOT NULL,
  `edad_cliente` int NOT NULL,
  `telefono_cliente` varchar(30) NOT NULL,
  `direccion_cliente` varchar(100) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `id_cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Susana Martinez','susanita_73@icloud.com',54,'2477-369887','Velez Sarsfield 2588'),(2,'Alejo Sanchez','gallina_029@gmail.com',31,'11-2548-2239','Av Colon 1540'),(3,'Mateo Gutierrez','mateito@gmail.com',25,'341-258-5569','Mitre 125'),(4,'Martina Van Hubbert','martu_ok@icloud.com',30,'11-4478-2655','Suipacha 806'),(5,'Elisa Molinetti','eli_molinetti@gmail.com',48,'2477-589111','Av Las Heras 1477'),(6,'Luisiana Pinero','li_pineroOk@icloud.com',23,'341-458-7759','Whellwright 547'),(7,'Liliana Vidal','liliana-vidal6842@gmail.com',57,'341-524-1157','Av Avellaneda Bis 182'),(8,'Mario Casanova','maritocasanova@gmail.com',44,'2477-669877','Paraguay 285');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribuidor`
--

DROP TABLE IF EXISTS `distribuidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distribuidor` (
  `id_distribuidor` int NOT NULL AUTO_INCREMENT,
  `nombre_distribuidor` varchar(50) NOT NULL,
  `salario_distribuidor` int NOT NULL,
  `telefono_distribuidor` varchar(50) NOT NULL,
  PRIMARY KEY (`id_distribuidor`),
  UNIQUE KEY `id_distribuidor` (`id_distribuidor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribuidor`
--

LOCK TABLES `distribuidor` WRITE;
/*!40000 ALTER TABLE `distribuidor` DISABLE KEYS */;
INSERT INTO `distribuidor` VALUES (1,'Juan Hernandez',100000,'11-4587-3364'),(2,'Marcelo Fernandez',100000,'11-7759,1125'),(3,'Mariano Muller',90000,'351-155-9882'),(4,'Santiago Ortega',90000,'351-642-2351');
/*!40000 ALTER TABLE `distribuidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre_empleado` varchar(50) NOT NULL,
  `salario_empleado` int NOT NULL,
  `telefono_empleado` varchar(30) NOT NULL,
  PRIMARY KEY (`id_empleado`),
  UNIQUE KEY `id_empleado` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Marcos Lopez',160000,'351-421-1576'),(2,'Maria Dominguez',175000,'11-1534-7786'),(3,'Eugenia Martinez',180000,'11-2357-1120'),(4,'Fernando Sanchez',170000,'11-4562-5580'),(5,'Marcelo Juarez',150000,'351-711-5312'),(6,'Tomas Pettinari',130000,'2477-633548'),(7,'Valentin Silveira',130000,'2475-458873'),(8,'Miriam Bruski',155000,'341-454-7785'),(9,'Lucila Maldonado',160000,'341-487-1158'),(10,'Lautaro Rodriguez',180000,'11-1458-4458');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envio`
--

DROP TABLE IF EXISTS `envio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `envio` (
  `id_envio` int NOT NULL AUTO_INCREMENT,
  `id_factura` int NOT NULL,
  `id_distribuidor` int NOT NULL,
  PRIMARY KEY (`id_envio`),
  UNIQUE KEY `id_envio` (`id_envio`),
  KEY `FK_Envio_Factura` (`id_factura`),
  KEY `FK_Envio_Distribuidor` (`id_distribuidor`),
  CONSTRAINT `FK_Envio_Distribuidor` FOREIGN KEY (`id_distribuidor`) REFERENCES `distribuidor` (`id_distribuidor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Envio_Factura` FOREIGN KEY (`id_factura`) REFERENCES `factura` (`id_factura`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envio`
--

LOCK TABLES `envio` WRITE;
/*!40000 ALTER TABLE `envio` DISABLE KEYS */;
/*!40000 ALTER TABLE `envio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `id_factura` int NOT NULL AUTO_INCREMENT,
  `precioFinal_factura` float NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_producto` int NOT NULL,
  `id_empleado` int NOT NULL,
  `id_cliente` int NOT NULL,
  PRIMARY KEY (`id_factura`),
  UNIQUE KEY `id_factura` (`id_factura`),
  KEY `FK_Factura_Producto` (`id_producto`),
  KEY `FK_Factura_Empleado` (`id_empleado`),
  KEY `FK_Factura_Cliente` (`id_cliente`),
  CONSTRAINT `FK_Factura_Cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `FK_Factura_Empleado` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`),
  CONSTRAINT `FK_Factura_Producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,87501,'2022-08-01 10:28:50',1,3,4);
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `factura_total_mensual`
--

DROP TABLE IF EXISTS `factura_total_mensual`;
/*!50001 DROP VIEW IF EXISTS `factura_total_mensual`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `factura_total_mensual` AS SELECT 
 1 AS `SUM(precioFinal_factura)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(50) NOT NULL,
  `precio_producto` float NOT NULL,
  `descuento_producto` int NOT NULL,
  `categoria_producto` varchar(100) NOT NULL,
  PRIMARY KEY (`id_producto`),
  UNIQUE KEY `id_producto` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Mesa Escandinava con Tapa de Vidrio',87501,0,'Mesa'),(2,'Mesa Escandinava con Tapa de Marmol',125000,0,'Mesa'),(3,'Mesa Encandinava con Tapa de Madera',110600,0,'Mesa'),(4,'Mesa Extensible Luxury',150000,0,'Mesa'),(5,'Mesa Redonda con Tapa de Marmol',128500,0,'Mesa'),(6,'Mesa Redonda con Tapa de Vidrio',115000,0,'Mesa'),(7,'Mesa Redonda con Tapa de Madera',106000,0,'Mesa'),(8,'Mesa Rectangular con Tapa de Marmol',175100,0,'Mesa'),(9,'Mesa Rectangular con Tapa de Vidrio',155000,0,'Mesa'),(10,'Mesa Rectangular con Tapa de Madera',128000,0,'Mesa'),(11,'Mesa Ratona Industrial Con Patas de Metal',65000,0,'Mesa Ratona'),(12,'Mesa Ratona Industrial con Patas de Madera',68999,0,'Mesa Ratona'),(13,'Mesa Ratona Escandinaba con Tapa de Marmol',47099.5,0,'Mesa Ratona'),(14,'Mesa Ratona Escandinava con Tapa de Vidrio',42000.5,0,'Mesa Ratona'),(15,'Mesa Ratona Escandinava con Tapa de Madera',38000,0,'Mesa Ratona'),(16,'Mesas Ratonas Nido de Madera',39000,0,'Mesa Ratona'),(17,'Mesas Ratonas Nido de Metal',37600,0,'Mesa Ratona'),(18,'Mesa Ratona de Madera con Cajon',23000,0,'Mesa Ratona'),(19,'Mesa Ratona de Metal con Cajon',22600,0,'Mesa Ratona'),(20,'Sillón Marquesi 2 Cuerpos',85600,0,'Sillón'),(21,'Sillón Marquesi 3 Cuerpos',105000,0,'Sillón'),(22,'Sillón Boston 2 Cuerpos',97555.5,0,'Sillón'),(23,'Sillón Boston 3 Cuerpos',113300,0,'Sillón'),(24,'Sillón Liberty 2 Cuerpos',111000,0,'Sillón'),(25,'Sillón Liberty 3 Cuerpos',135001,0,'Sillón'),(26,'Poltrona Curva Italy',79500.3,0,'Poltrona'),(27,'Poltrona Manhatan',49999.8,0,'Poltrona'),(28,'Poltrona Reclinable Hercules',158999,0,'Poltrona'),(29,'Poltrona Berlin',36790,0,'Poltrona'),(30,'Poltrona Frontera Dormund',78700,0,'Poltrona'),(31,'Silla Escandinava Con Capitone',39000,0,'Silla'),(32,'Silla Escandinava Con Esterilla',45750.2,0,'Silla'),(33,'Silla Escandinava Tapizada',38990.8,0,'Silla'),(34,'Silla Tapizada Braun',34730.2,0,'Silla'),(35,'Silla Tapizada Chess',38450.5,0,'Silla'),(36,'Silla Tapizada Freya',36921,0,'Silla'),(37,'Silla de Madera Ragnar',51590,0,'Silla'),(38,'Silla de Madera Vilma',42562,0,'Silla'),(39,'Silla de Madera Ana',23999,0,'Silla'),(40,'Silla de Madera Leo',15891,0,'Silla');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(50) NOT NULL,
  `telefono_proveedor` varchar(30) NOT NULL,
  `direccion_proveedor` varchar(100) NOT NULL,
  `email_proveedor` varchar(100) NOT NULL,
  `numero_cuenta_proveedor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`),
  UNIQUE KEY `id_proveedor` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Astilla Muebles','11-4163-2355','AV. Cabildo 2354','Astilla_Muebleria@gmail.com','BS0033251242001354497665'),(2,'Muebleria La Familia','2477-668452','AV. 25 de Mayo 2709','laFamilia_Muebles@gmail.com','BC0125446532022889451337'),(3,'Muebleria Cordoba','341-568-2254','Cordoba y Mitre','Muebles_Cordoba@gamil.com','BP2033100015220364889512'),(4,'La Elegida','11-4356-5581','AV. Libertador 1269','Muebleria_LaElegidaOk@gmail.com','BS0023115436899615423518'),(5,'Valencia Muebles','351-125-4459','Suipacha y Entre Rios','Muebleria_Valencia@gmail.com','BM0325468897001458332657');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `id_stock` int NOT NULL AUTO_INCREMENT,
  `id_proveedor` int NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `stock_total` int DEFAULT NULL,
  PRIMARY KEY (`id_stock`),
  UNIQUE KEY `id_stock` (`id_stock`),
  KEY `id_proveedor` (`id_proveedor`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,1,'Mesa Escandinava con Tapa de Vidrio',20),(2,1,'Mesa Escandinava con Tapa de Marmol',20),(3,1,'Mesa Encandinava con Tapa de Madera',20),(4,1,'Mesa Extensible Luxury',20),(5,1,'Mesa Redonda con Tapa de Marmol',20),(6,1,'Mesa Redonda con Tapa de Vidrio',20),(7,1,'Mesa Redonda con Tapa de Madera',20),(8,1,'Mesa Rectangular con Tapa de Marmol',20),(9,1,'Mesa Rectangular con Tapa de Vidrio',20),(10,1,'Mesa Rectangular con Tapa de Madera',20),(11,2,'Mesa Ratona Industrial Con Patas de Metal',20),(12,2,'Mesa Ratona Industrial con Patas de Madera',20),(13,2,'Mesa Ratona Escandinaba con Tapa de Marmol',20),(14,2,'Mesa Ratona Escandinava con Tapa de Vidrio',20),(15,2,'Mesa Ratona Escandinava con Tapa de Madera',20),(16,2,'Mesas Ratonas Nido de Madera',20),(17,2,'Mesas Ratonas Nido de Metal',20),(18,2,'Mesa Ratona de Madera con Cajon',20),(19,2,'Mesa Ratona de Metal con Cajon',20),(20,3,'Sillón Marquesi 2 Cuerpos',20),(21,3,'Sillón Marquesi 3 Cuerpos',20),(22,3,'Sillón Boston 2 Cuerpos',20),(23,3,'Sillón Boston 3 Cuerpos',20),(24,3,'Sillón Liberty 2 Cuerpos',20),(25,3,'Sillón Liberty 3 Cuerpos',20),(26,4,'Poltrona Curva Italy',20),(27,4,'Poltrona Manhatan',20),(28,4,'Poltrona Reclinable Hercules',20),(29,4,'Poltrona Berlin',20),(30,4,'Poltrona Frontera Dormund',20),(31,5,'Silla Escandinava Con Capitone',20),(32,5,'Silla Escandinava Con Esterilla',20),(33,5,'Silla Escandinava Tapizada',20),(34,5,'Silla Tapizada Braun',20),(35,5,'Silla Tapizada Chess',20),(36,5,'Silla Tapizada Freya',20),(37,5,'Silla de Madera Ragnar',20),(38,5,'Silla de Madera Vilma',20),(39,5,'Silla de Madera Ana',20),(40,5,'Silla de Madera Leo',20);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tienda`
--

DROP TABLE IF EXISTS `tienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tienda` (
  `id_empleado` int NOT NULL,
  `id_proveedor` int NOT NULL,
  `id_producto` int NOT NULL,
  `id_distribuidor` int NOT NULL,
  `id_factura` int NOT NULL,
  KEY `FK_Tienda_Empleado` (`id_empleado`),
  KEY `FK_Tienda_Proveedor` (`id_proveedor`),
  KEY `FK_Tienda_Producto` (`id_producto`),
  KEY `FK_Tienda_Distribuidor` (`id_distribuidor`),
  KEY `FK_Tienda_Factura` (`id_factura`),
  CONSTRAINT `FK_Tienda_Distribuidor` FOREIGN KEY (`id_distribuidor`) REFERENCES `distribuidor` (`id_distribuidor`),
  CONSTRAINT `FK_Tienda_Empleado` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`),
  CONSTRAINT `FK_Tienda_Factura` FOREIGN KEY (`id_factura`) REFERENCES `factura` (`id_factura`),
  CONSTRAINT `FK_Tienda_Producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  CONSTRAINT `FK_Tienda_Proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tienda`
--

LOCK TABLES `tienda` WRITE;
/*!40000 ALTER TABLE `tienda` DISABLE KEYS */;
/*!40000 ALTER TABLE `tienda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'muebleria_martinez'
--

--
-- Dumping routines for database 'muebleria_martinez'
--
/*!50003 DROP FUNCTION IF EXISTS `estado_stock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
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

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `f_crear_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `f_crear_cliente`() RETURNS varchar(50) CHARSET utf8mb4
    READS SQL DATA
BEGIN
	DECLARE cl_nombre VARCHAR(50);
    SET cl_nombre = (SELECT nombre_cliente FROM cliente ORDER BY RAND() LIMIT 1);
    RETURN cl_nombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `f_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `f_empleado`() RETURNS varchar(50) CHARSET utf8mb4
    READS SQL DATA
BEGIN
	DECLARE emp_nombre VARCHAR(50);
    SET emp_nombre = (SELECT nombre_empleado FROM empleado ORDER BY RAND() LIMIT 1);
    RETURN emp_nombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `f_pedir_productos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `f_pedir_productos`() RETURNS varchar(50) CHARSET utf8mb4
    READS SQL DATA
BEGIN
	DECLARE productos VARCHAR(50);
    SET productos = (SELECT nombre_producto FROM producto ORDER BY RAND() LIMIT 1);
    RETURN productos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Pedir_stock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Pedir_stock`(stock_total INT) RETURNS varchar(30) CHARSET utf8mb4
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

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `sumar_productos_x_categoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sumar_productos_x_categoria`(categoria VARCHAR(100)) RETURNS int
    READS SQL DATA
BEGIN
	DECLARE productos_totales INT;
    SELECT count(*)
		INTO productos_totales
    FROM producto
    WHERE categoria_producto = categoria;
    RETURN productos_totales;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ordenar_productos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_pedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_pedido`()
BEGIN
	DECLARE numero_venta INT;
    DECLARE cliente, producto, empleado TEXT;
    
    SET numero_venta = RAND(100 - 1) +1;
    SET cliente = f_crear_cliente;
    SET empleado = f_empleado;
    SET producto = f_pedir_producto;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `cantidadproductos_x_categoria`
--

/*!50001 DROP VIEW IF EXISTS `cantidadproductos_x_categoria`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cantidadproductos_x_categoria` AS select count((case when (`producto`.`categoria_producto` = 'Mesa') then 1 else 0 end)) AS `Mesas`,count((case when (`producto`.`categoria_producto` = 'Mesa Ratona') then 1 else 0 end)) AS `Mesas Ratona`,count((case when (`producto`.`categoria_producto` = 'Sillón') then 1 else 0 end)) AS `Sillónes`,count((case when (`producto`.`categoria_producto` = 'Poltrona') then 1 else 0 end)) AS `Poltronas`,count((case when (`producto`.`categoria_producto` = 'Silla') then 1 else 0 end)) AS `Sillas` from `producto` group by `producto`.`categoria_producto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `factura_total_mensual`
--

/*!50001 DROP VIEW IF EXISTS `factura_total_mensual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `factura_total_mensual` AS select sum(`factura`.`precioFinal_factura`) AS `SUM(precioFinal_factura)` from `factura` where (`factura`.`fecha_factura` between (now() - interval 30 day) and now()) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-12 17:58:31
