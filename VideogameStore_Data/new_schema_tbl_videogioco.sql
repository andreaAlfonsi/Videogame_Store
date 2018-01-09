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
-- Table structure for table `tbl_videogioco`
--

DROP TABLE IF EXISTS `tbl_videogioco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_videogioco` (
  `cod_vdg` int(11) NOT NULL AUTO_INCREMENT,
  `price` float DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `console` varchar(20) DEFAULT NULL,
  `descr` varchar(50) DEFAULT NULL,
  `id_pbl` int(11) DEFAULT NULL,
  `id_svil` int(11) DEFAULT NULL,
  `qnt` int(11) DEFAULT NULL,
  `qntReserved` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_vdg`),
  KEY `id_pbl` (`id_pbl`),
  KEY `id_svil` (`id_svil`),
  CONSTRAINT `tbl_videogioco_ibfk_1` FOREIGN KEY (`id_pbl`) REFERENCES `tbl_publisher` (`cod_pbl`),
  CONSTRAINT `tbl_videogioco_ibfk_2` FOREIGN KEY (`id_svil`) REFERENCES `tbl_sviluppatore` (`cod_svil`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_videogioco`
--

LOCK TABLES `tbl_videogioco` WRITE;
/*!40000 ALTER TABLE `tbl_videogioco` DISABLE KEYS */;
INSERT INTO `tbl_videogioco` VALUES (1,69.99,'2016-03-01',16,'PS4','Uncharted 4',1,2,6,2),(2,49.99,'2014-01-01',18,'XBOX 360','Halo 3',2,3,1,4);
/*!40000 ALTER TABLE `tbl_videogioco` ENABLE KEYS */;
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
