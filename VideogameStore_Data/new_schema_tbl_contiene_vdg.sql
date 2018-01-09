CREATE DATABASE  IF NOT EXISTS `new_schema` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `new_schema`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: new_schema
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_contiene_vdg`
--

DROP TABLE IF EXISTS `tbl_contiene_vdg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_contiene_vdg` (
  `cod_cvdg` int(11) NOT NULL AUTO_INCREMENT,
  `id_vdg` int(11) DEFAULT NULL,
  `id_tr` int(11) DEFAULT NULL,
  `qnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_cvdg`),
  KEY `id_vdg` (`id_vdg`),
  KEY `id_tr` (`id_tr`),
  CONSTRAINT `tbl_contiene_vdg_ibfk_1` FOREIGN KEY (`id_vdg`) REFERENCES `tbl_videogioco` (`cod_vdg`),
  CONSTRAINT `tbl_contiene_vdg_ibfk_2` FOREIGN KEY (`id_tr`) REFERENCES `tbl_transazione` (`cod_tr`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contiene_vdg`
--

LOCK TABLES `tbl_contiene_vdg` WRITE;
/*!40000 ALTER TABLE `tbl_contiene_vdg` DISABLE KEYS */;
INSERT INTO `tbl_contiene_vdg` VALUES (1,1,20,1),(2,1,21,1),(3,1,22,1),(4,1,22,1),(5,1,31,1),(6,1,32,1),(7,1,33,0),(8,2,34,1),(9,1,35,1),(10,1,36,1),(11,1,37,1),(12,1,40,2),(13,2,40,1),(14,1,43,3),(15,2,43,3),(17,1,45,1),(18,1,46,1),(19,2,47,1),(20,1,48,1),(21,1,50,1),(22,1,51,1),(23,1,51,1),(24,1,52,1),(25,1,52,1),(26,1,52,1),(27,1,53,1),(28,1,53,1),(29,1,54,1),(30,1,55,1),(31,1,56,1),(32,1,57,1),(33,1,58,1),(34,1,59,1),(35,1,60,1),(36,1,61,1),(37,1,62,1),(38,1,63,1);
/*!40000 ALTER TABLE `tbl_contiene_vdg` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-14 10:45:59
