CREATE DATABASE  IF NOT EXISTS `locadora` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `locadora`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: locadora
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `aluga`
--

DROP TABLE IF EXISTS `aluga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluga` (
  `id_aluga` int NOT NULL AUTO_INCREMENT,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `id_cliente` int NOT NULL,
  `id_carro` int DEFAULT NULL,
  `id_moto` int DEFAULT NULL,
  PRIMARY KEY (`id_aluga`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_carro` (`id_carro`),
  KEY `id_moto` (`id_moto`),
  CONSTRAINT `aluga_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `aluga_ibfk_2` FOREIGN KEY (`id_carro`) REFERENCES `carro` (`id_carro`),
  CONSTRAINT `aluga_ibfk_3` FOREIGN KEY (`id_moto`) REFERENCES `moto` (`id_moto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluga`
--

LOCK TABLES `aluga` WRITE;
/*!40000 ALTER TABLE `aluga` DISABLE KEYS */;
INSERT INTO `aluga` VALUES (1,'2022-04-10','2022-04-16',1,1,NULL),(2,'2022-04-10','2022-04-20',2,2,NULL),(3,'2022-04-10','2022-05-01',3,3,NULL),(4,'2022-04-10','2022-04-16',4,4,NULL),(5,'2022-04-10','2022-05-10',5,5,NULL),(6,'2022-04-10','2022-04-16',1,NULL,1),(7,'2022-04-10','2022-04-16',2,NULL,2),(8,'2022-04-10','2022-04-16',3,NULL,3),(9,'2022-04-10','2022-04-16',4,NULL,4),(10,'2022-04-10','2022-04-16',5,NULL,5);
/*!40000 ALTER TABLE `aluga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carro`
--

DROP TABLE IF EXISTS `carro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carro` (
  `id_carro` int NOT NULL AUTO_INCREMENT,
  `placa` char(7) NOT NULL,
  `ano` year NOT NULL,
  `modelo` varchar(45) NOT NULL,
  PRIMARY KEY (`id_carro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carro`
--

LOCK TABLES `carro` WRITE;
/*!40000 ALTER TABLE `carro` DISABLE KEYS */;
INSERT INTO `carro` VALUES (1,'123abcd',2010,'Honda'),(2,'456efgh',2010,'Gol'),(3,'789ijkl',2010,'Citroen'),(4,'987mnop',2020,'BMW'),(5,'654qrst',2005,'Toyota');
/*!40000 ALTER TABLE `carro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `cnh` bigint NOT NULL,
  `cpf` bigint NOT NULL,
  `cnpj` bigint NOT NULL,
  `nascimento` date NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Breno',11111111111,11111111111,1111111111111,'1111-01-01'),(2,'Eduarda',22222222222,11111111112,1111111111112,'1111-01-02'),(3,'Hariel',33333333333,11111111113,1111111111113,'1111-01-03'),(4,'Luis',44444444444,11111111114,1111111111114,'1111-01-04'),(5,'Ana',55555555555,11111111115,1111111111115,'1111-01-05');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moto`
--

DROP TABLE IF EXISTS `moto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moto` (
  `id_moto` int NOT NULL AUTO_INCREMENT,
  `placa` char(7) NOT NULL,
  `ano` year NOT NULL,
  `modelo` varchar(45) NOT NULL,
  PRIMARY KEY (`id_moto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moto`
--

LOCK TABLES `moto` WRITE;
/*!40000 ALTER TABLE `moto` DISABLE KEYS */;
INSERT INTO `moto` VALUES (1,'143abcd',2010,'Honda'),(2,'667efgh',2010,'Yamaha'),(3,'555ijkl',2010,'Harley'),(4,'215mnop',2020,'Kawasaki'),(5,'156krst',2005,'Suzuki');
/*!40000 ALTER TABLE `moto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `id_fone` int NOT NULL AUTO_INCREMENT,
  `celular` bigint NOT NULL,
  `fixo` bigint NOT NULL,
  PRIMARY KEY (`id_fone`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (1,4711111111111,4711111111119),(2,4722222222222,4711121111111);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-12  8:40:57
