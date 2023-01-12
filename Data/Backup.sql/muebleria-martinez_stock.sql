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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-12 18:21:39
