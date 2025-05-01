-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: nanosoft_banker
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `auditor_info`
--

DROP TABLE IF EXISTS `auditor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditor_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `AuditorID` varchar(5) DEFAULT NULL,
  `AuditorName` varchar(100) DEFAULT '-',
  `sAuditorName` varchar(150) DEFAULT '-',
  `AddressLine1` varchar(100) DEFAULT '-',
  `AddressLine2` varchar(100) DEFAULT '-',
  `AddressLine3` varchar(100) DEFAULT '-',
  `sAddressLine1` varchar(100) DEFAULT '-',
  `sAddressLine2` varchar(100) DEFAULT '-',
  `sAddressLine3` varchar(100) DEFAULT '-',
  `AuditorAddress` varchar(100) DEFAULT '-',
  `sAuditorAddress` varchar(150) DEFAULT '-',
  `AuditorTelephone` varchar(15) DEFAULT '-',
  `AuditorMobile` varchar(15) DEFAULT '-',
  `sAuditorHomeAddressLine1` varchar(100) DEFAULT '-',
  `sAuditorHomeAddressLine2` varchar(100) DEFAULT '-',
  `sAuditorAddressLine1` varchar(100) DEFAULT '-',
  `sAuditorAddressLine2` varchar(100) DEFAULT '-',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-01 15:44:47
