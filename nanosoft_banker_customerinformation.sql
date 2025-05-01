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
-- Table structure for table `customerinformation`
--

DROP TABLE IF EXISTS `customerinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerinformation` (
  `CustomerType` varchar(50) DEFAULT NULL,
  `CustomerTitle` varchar(10) DEFAULT NULL,
  `sCustomerTitle` varchar(20) DEFAULT NULL,
  `CustomerID` varchar(12) NOT NULL,
  `loan_center_id` int DEFAULT NULL,
  `GroupCode` varchar(5) DEFAULT NULL,
  `SubGroupCode` varchar(100) DEFAULT NULL,
  `NameInInitials` varchar(100) DEFAULT NULL,
  `CustomerName` varchar(100) DEFAULT NULL,
  `sCustomerName` varchar(100) DEFAULT NULL,
  `CustomerFullName` varchar(300) DEFAULT NULL,
  `sCustomerFullName` varchar(300) DEFAULT NULL,
  `HomeNo` varchar(100) DEFAULT NULL COMMENT 'Home Address',
  `sHomeNo` varchar(100) DEFAULT NULL,
  `HomeStreet` varchar(100) DEFAULT NULL COMMENT 'Home Address',
  `sHomeStreet` varchar(100) DEFAULT NULL,
  `HomeTown` varchar(100) DEFAULT NULL COMMENT 'Home Address',
  `sHomeTown` varchar(100) DEFAULT NULL,
  `CustomerAddress` varchar(300) DEFAULT '-',
  `sCustomerAddress` varchar(300) DEFAULT NULL,
  `HomeCountry` varchar(40) DEFAULT NULL,
  `BussinessName` varchar(100) DEFAULT NULL,
  `BussinessLocationNo` varchar(40) DEFAULT NULL,
  `BusinessStreet` varchar(40) DEFAULT NULL,
  `BussinessTown` varchar(40) DEFAULT NULL,
  `BussinessAddress` varchar(200) DEFAULT '-',
  `BirthDay` date DEFAULT NULL,
  `NIC` varchar(20) DEFAULT '-',
  `BeneficiaryNIC` varchar(100) DEFAULT NULL,
  `Sex` varchar(10) DEFAULT NULL,
  `Occupation` varchar(50) DEFAULT '-',
  `PersonnalTelephoneNo` varchar(15) DEFAULT NULL,
  `PersonnalMobileNo` varchar(25) DEFAULT '-',
  `PersonnalEMail` varchar(100) DEFAULT '-',
  `HomeTelephoneNo` varchar(15) DEFAULT '-',
  `BusinessTelephoneNo` varchar(15) DEFAULT '-',
  `BusinessMobileNo` varchar(15) DEFAULT '-',
  `WebSite` varchar(100) DEFAULT '-',
  `District` varchar(50) DEFAULT '-',
  `AGDivision` varchar(50) DEFAULT '-',
  `GSDivisionName` varchar(50) DEFAULT '-',
  `GSDivisionNo` varchar(20) DEFAULT '-',
  `Religion` varchar(50) DEFAULT '-',
  `MaritalStatus` varchar(20) DEFAULT NULL,
  `JoinedDate` date DEFAULT NULL,
  `AccountTransfereeName` varchar(250) DEFAULT '-',
  `TransfereesRelationship` varchar(100) DEFAULT '-',
  `MemberStatus` varchar(10) DEFAULT '-',
  `ImportantNote` varchar(200) DEFAULT '-',
  `smsRegistered` tinyint(1) DEFAULT '0',
  `smsLang` varchar(6) DEFAULT 'EN',
  `smsPhone` varchar(15) DEFAULT NULL,
  `smsPin` varchar(6) DEFAULT NULL,
  `fg_pr` mediumblob,
  `fg_pr1` mediumblob,
  `currentCreditLimit` double DEFAULT NULL,
  `previousCreditLimit` double DEFAULT NULL,
  `creditStartDate` date DEFAULT NULL,
  `creditEndDate` date DEFAULT NULL,
  `ussdRegCode` varchar(6) DEFAULT NULL,
  `ussdPassword` varchar(4) DEFAULT NULL,
  `ussdMobileHash` varchar(200) DEFAULT NULL,
  `ussdRegisteredOn` datetime DEFAULT NULL,
  `InstituteId` varchar(2) DEFAULT NULL,
  `ReferenceNumber` varchar(20) DEFAULT '-',
  `Landmark` text,
  `Location` varchar(150) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `locale` varchar(10) DEFAULT 'EN',
  `ReceivableWelfareRegistrationFee` decimal(23,13) DEFAULT '0.0000000000000',
  `ReceivableRegistrationFee` decimal(23,13) DEFAULT '0.0000000000000',
  `IsWHTAllowed` enum('Y','N') DEFAULT 'N',
  `device_user_name` varchar(15) DEFAULT NULL,
  `FPEnrollID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  KEY `FK_customerinformation_GroupCode` (`GroupCode`),
  KEY `CustomerInformations_LoanCenterID` (`loan_center_id`),
  CONSTRAINT `CustomerInformations_LoanCenterID` FOREIGN KEY (`loan_center_id`) REFERENCES `loan_centers` (`id`) ON UPDATE CASCADE
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
