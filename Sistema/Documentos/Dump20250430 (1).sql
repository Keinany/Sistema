CREATE DATABASE  IF NOT EXISTS `dbsistema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbsistema`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: dbsistema
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idClientes` int NOT NULL AUTO_INCREMENT,
  `Cliente` varchar(50) NOT NULL,
  `DataCadastro` datetime NOT NULL,
  `CPF` varchar(15) NOT NULL,
  `RG` varchar(10) NOT NULL,
  `EstadoCivil` varchar(45) NOT NULL,
  `DataDeNascimento` date NOT NULL,
  `Endereco` varchar(45) NOT NULL,
  `Numero` varchar(45) NOT NULL,
  `Bairro` varchar(45) NOT NULL,
  `Cidade` varchar(45) NOT NULL,
  `Estado` varchar(2) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `CEP` varchar(15) NOT NULL,
  `Telefone1` varchar(15) NOT NULL,
  `Telefone2` varchar(15) NOT NULL,
  `Referencias` varchar(45) NOT NULL,
  `Observacao` longtext,
  PRIMARY KEY (`idClientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `idEmpresa` int NOT NULL AUTO_INCREMENT,
  `DataCadastro` datetime NOT NULL,
  `RazaoSocial` varchar(45) NOT NULL,
  `NomeFantasia` varchar(45) NOT NULL,
  `CNPJ` varchar(18) NOT NULL,
  `InscricaoEstadual` varchar(45) NOT NULL,
  `TelefoneEmpresa` varchar(15) NOT NULL,
  `CelularEmpresa` varchar(15) NOT NULL,
  `EnderecoEmpresa` varchar(50) NOT NULL,
  `Numero` int NOT NULL,
  `Bairro` varchar(45) NOT NULL,
  `Cidade` varchar(45) NOT NULL,
  `Estado` varchar(2) NOT NULL,
  `CEP` varchar(10) NOT NULL,
  `Segmento` varchar(45) NOT NULL,
  `RegimeTributario` varchar(45) NOT NULL,
  `DadosBancarios` varchar(45) NOT NULL,
  `Observacao` longtext,
  `NomeContato` varchar(45) NOT NULL,
  `CPFContato` varchar(15) NOT NULL,
  `TelefoneContato` varchar(9) NOT NULL,
  `EmailContato` varchar(50) NOT NULL,
  PRIMARY KEY (`idEmpresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idprodutos` int NOT NULL AUTO_INCREMENT,
  `DataCadastro` datetime NOT NULL,
  `Produto` varchar(45) NOT NULL,
  `NumeroSerie` int NOT NULL,
  `ValorCompra` decimal(10,2) NOT NULL,
  `ValorVenda` decimal(10,2) NOT NULL,
  `Quantidade` int NOT NULL,
  `MargemLucro` decimal(10,2) NOT NULL,
  `Observacao` longtext,
  PRIMARY KEY (`idprodutos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dbsistema'
--

--
-- Dumping routines for database 'dbsistema'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-30 18:28:15
