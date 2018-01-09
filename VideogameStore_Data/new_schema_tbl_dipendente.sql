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
-- Table structure for table `tbl_dipendente`
--

DROP TABLE IF EXISTS `tbl_dipendente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_dipendente` (
  `cod_dp` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `surname` varchar(30) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `work_since` date DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `id_pv` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_dp`),
  KEY `id_pv` (`id_pv`),
  CONSTRAINT `id_pv` FOREIGN KEY (`id_pv`) REFERENCES `tbl_punto_vendita` (`cod_pv`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_dipendente`
--

LOCK TABLES `tbl_dipendente` WRITE;
/*!40000 ALTER TABLE `tbl_dipendente` DISABLE KEYS */;
INSERT INTO `tbl_dipendente` VALUES (1,'andrea','alfonsi','1996-01-01','via gialli 12','1234567','2012-12-12','ancona','ciao96!!!!',1),(2,'matteo','esposto','1997-01-01','via rose 24','1234567','2014-12-12','fano','ciao96!!!!',1),(3,'carlo','cracco','1964-12-12','via carro 23','123456','2015-12-12','senigallia','ciao96!!!!',1);
/*!40000 ALTER TABLE `tbl_dipendente` ENABLE KEYS */;
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
