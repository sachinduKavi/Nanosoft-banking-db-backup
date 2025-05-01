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
-- Table structure for table `instituteinformation`
--

DROP TABLE IF EXISTS `instituteinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instituteinformation` (
  `InstituteID` varchar(4) NOT NULL,
  `InstituteName` varchar(100) DEFAULT NULL,
  `sInstituteName` varchar(100) DEFAULT NULL COMMENT 'In Secondary Language',
  `InstituteAddress` varchar(150) DEFAULT NULL,
  `sInstituteAddress` varchar(150) DEFAULT NULL,
  `InstituteLocationNo` varchar(40) DEFAULT NULL,
  `sInstituteLocationNo` varchar(40) DEFAULT NULL,
  `InstituteStreet` varchar(40) DEFAULT NULL COMMENT 'Address',
  `sInstituteStreet` varchar(40) DEFAULT NULL COMMENT 'In Secondary Language',
  `InstituteTown` varchar(40) DEFAULT NULL COMMENT 'Address',
  `sInstituteTown` varchar(40) DEFAULT NULL COMMENT 'In Secondary Language',
  `InstituteCountry` varchar(40) DEFAULT NULL COMMENT 'Address',
  `InstituteTelephone1` varchar(15) DEFAULT NULL COMMENT 'In Secondary Language',
  `InstituteTelephone2` varchar(15) DEFAULT NULL,
  `InstituteTelephone3` varchar(15) DEFAULT NULL,
  `InstituteFax` varchar(15) DEFAULT NULL,
  `InstituteEmail` varchar(50) DEFAULT NULL,
  `InstituteWeb` varchar(50) DEFAULT NULL,
  `InstituteRegistrationNo` varchar(20) DEFAULT NULL,
  `InstituteRegisteredDate` date DEFAULT NULL,
  `InstituteAccountsYearBeginDate` date DEFAULT NULL,
  `InstituteAccountsYearEndDate` date DEFAULT NULL,
  `ShareValue` double DEFAULT NULL,
  `RelatedInstituteID` varchar(4) DEFAULT NULL,
  `sInstituteAlies` varchar(200) DEFAULT NULL,
  `eInstituteAlies` varchar(200) DEFAULT NULL,
  `SectionType` enum('BANK','WAREHOUSE','POS') DEFAULT 'BANK',
  `ShotCode` varchar(2) DEFAULT '-',
  `Logo` mediumblob,
  `SendSMSForEveryCustomer` int DEFAULT '0',
  `PrintReceiptForEveryCustomer` int DEFAULT '0',
  `SendOTPForEveryLogin` int DEFAULT '0',
  PRIMARY KEY (`InstituteID`),
  UNIQUE KEY `UniqueBranchName` (`InstituteName`),
  KEY `FK_instituteinformation_InstituteID` (`RelatedInstituteID`),
  CONSTRAINT `FK_instituteinformation_InstituteID` FOREIGN KEY (`RelatedInstituteID`) REFERENCES `instituteinformation` (`InstituteID`) ON DELETE CASCADE ON UPDATE CASCADE
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

-- Dump completed on 2025-05-01 15:44:48
