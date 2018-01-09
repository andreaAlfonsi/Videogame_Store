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
-- Table structure for table `tbl_contiene_ac`
--

DROP TABLE IF EXISTS `tbl_contiene_ac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_contiene_ac` (
  `cod_cac` int(11) NOT NULL AUTO_INCREMENT,
  `id_ac` int(11) DEFAULT NULL,
  `id_tr` int(11) DEFAULT NULL,
  `qnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_cac`),
  KEY `id_ac` (`id_ac`),
  KEY `id_tr` (`id_tr`),
  CONSTRAINT `tbl_contiene_ac_ibfk_1` FOREIGN KEY (`id_ac`) REFERENCES `tbl_accessorio` (`cod_ac`),
  CONSTRAINT `tbl_contiene_ac_ibfk_2` FOREIGN KEY (`id_tr`) REFERENCES `tbl_transazione` (`cod_tr`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contiene_ac`
--

LOCK TABLES `tbl_contiene_ac` WRITE;
/*!40000 ALTER TABLE `tbl_contiene_ac` DISABLE KEYS */;
INSERT INTO `tbl_contiene_ac` VALUES (1,1,41,1),(2,1,42,1),(3,1,48,1),(4,1,49,1);
/*!40000 ALTER TABLE `tbl_contiene_ac` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-14 10:45:58
