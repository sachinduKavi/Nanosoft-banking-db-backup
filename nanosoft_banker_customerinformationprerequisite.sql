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
-- Table structure for table `customerinformationprerequisite`
--

DROP TABLE IF EXISTS `customerinformationprerequisite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerinformationprerequisite` (
  `MemberType` varchar(50) DEFAULT NULL,
  `MemberTypeId` varchar(2) DEFAULT NULL,
  `Religion` varchar(50) DEFAULT NULL,
  `AGDivision` varchar(50) DEFAULT NULL,
  `GSDivisionName` varchar(50) DEFAULT NULL,
  `GSDivisionNo` varchar(20) DEFAULT NULL,
  `District` varchar(50) DEFAULT NULL,
  `Country` varchar(40) DEFAULT NULL,
  `Committee_Id` varchar(2) DEFAULT NULL,
  `Committee_Name` varchar(200) DEFAULT NULL,
  `Position_Id` varchar(2) DEFAULT NULL,
  `Position_Name` varchar(50) DEFAULT NULL,
  `bank_id` varchar(2) DEFAULT NULL,
  `bank_name` varchar(25) DEFAULT NULL,
  `meetingID` varchar(2) DEFAULT NULL,
  `meetingName` varchar(50) DEFAULT NULL,
  `OtherSocietyID` varchar(2) DEFAULT NULL,
  `OtherSocietyName` varchar(50) DEFAULT NULL,
  `vehicleId` varchar(3) DEFAULT NULL,
  `vehicleName` varchar(50) DEFAULT NULL,
  `GurTypeId` varchar(3) DEFAULT NULL,
  `GurTypeName` varchar(50) DEFAULT NULL,
  `vehicleModelID` varchar(3) DEFAULT NULL,
  `vehicleModelName` varchar(50) DEFAULT NULL,
  `InsuranceCompanyID` varchar(2) DEFAULT NULL,
  `InsuranceCompanyName` varchar(100) DEFAULT NULL,
  UNIQUE KEY `Religion` (`Religion`),
  UNIQUE KEY `AGDivision` (`AGDivision`),
  UNIQUE KEY `GSDivisionName` (`GSDivisionName`),
  UNIQUE KEY `GSDivisionNo` (`GSDivisionNo`),
  UNIQUE KEY `District` (`District`),
  UNIQUE KEY `Country` (`Country`),
  UNIQUE KEY `MemberType` (`MemberType`)
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

-- Dump completed on 2025-05-01 15:44:49
