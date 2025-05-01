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
-- Table structure for table `systemusers`
--

DROP TABLE IF EXISTS `systemusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `systemusers` (
  `UserID` varchar(5) NOT NULL,
  `UserFullName` varchar(100) DEFAULT NULL,
  `UserFullNameSI` varchar(100) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `UserPassword` varchar(30) DEFAULT NULL,
  `MobilePassword` varchar(100) DEFAULT NULL,
  `Device_id` varchar(50) DEFAULT NULL,
  `device_status` enum('Active','Suspend','Pending') DEFAULT NULL,
  `bank_code` varchar(10) DEFAULT NULL,
  `UserRole` varchar(20) DEFAULT NULL,
  `PermissionLevel` varchar(2) DEFAULT NULL,
  `LastLoginDate` datetime DEFAULT NULL,
  `UserStatus` varchar(1) DEFAULT 'A' COMMENT 'A-Active, I-Inactive',
  `LogStatus` varchar(1) DEFAULT 'N' COMMENT 'Y-Logged In, N-Logged Out',
  `LoginFrom` varchar(15) DEFAULT '0.0.0.0',
  `Photo` mediumblob,
  `UserType` varchar(1) DEFAULT 'B' COMMENT 'M-Mobile User, B-Bank user',
  `FeildOfficerTargetAccounts` double DEFAULT '0',
  `FieldOfficerTargetAmount` double DEFAULT '0',
  `MaxWithdrawalAmount` double DEFAULT '0',
  `tellerReceivedCash` decimal(23,13) DEFAULT '0.0000000000000',
  `tellerIssuedCash` decimal(23,13) DEFAULT '0.0000000000000',
  `last_ReceiptNo` varchar(20) DEFAULT '-',
  `last_VoucherNo` varchar(20) DEFAULT '-',
  `last_JournalNo` varchar(20) DEFAULT '-',
  `last_ReverseEntryNo` varchar(20) DEFAULT '-',
  `last_PettyCashNo` varchar(20) DEFAULT '-',
  `Legacy` enum('Yes','No') DEFAULT 'Yes',
  `PasswordExpire` enum('True','False') DEFAULT 'True',
  `PasswordUpdatedDate` date DEFAULT NULL,
  `CurrentPasswordUnchangedDays` int DEFAULT '30',
  `web_password` varchar(50) DEFAULT NULL,
  `web_portal_status` enum('active','inactive') DEFAULT 'inactive',
  `fo_cashbook_id` varchar(10) DEFAULT NULL,
  `mobile_no` varchar(15) DEFAULT NULL,
  `mobile_otp` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UniqueUserName` (`UserName`)
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
