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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-12 18:17:35