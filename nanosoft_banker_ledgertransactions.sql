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
-- Table structure for table `ledgertransactions`
--

DROP TABLE IF EXISTS `ledgertransactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ledgertransactions` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TransactionID` varchar(14) DEFAULT NULL,
  `LedgerID` varchar(12) DEFAULT NULL,
  `CashOrBankLedgerID` varchar(12) DEFAULT '(NULL)',
  `AccountNumber` varchar(20) DEFAULT NULL COMMENT 'fk',
  `CustomerID` varchar(9) DEFAULT NULL,
  `CustomerName` varchar(350) DEFAULT '-',
  `sCustomerName` varchar(300) DEFAULT '-',
  `CustomerAddress` varchar(200) DEFAULT '-',
  `sCustomerAddress` varchar(200) DEFAULT '-',
  `TransactionDate` date DEFAULT NULL,
  `TransactionTime` varchar(20) DEFAULT NULL,
  `ScheduledDate` date DEFAULT NULL,
  `DebitAmount` decimal(23,13) DEFAULT '0.0000000000000',
  `CreditAmount` decimal(23,13) DEFAULT '0.0000000000000',
  `AccountBalance` decimal(23,13) DEFAULT '0.0000000000000',
  `AccountBalanceWithInterest` decimal(23,13) DEFAULT NULL,
  `InterestRate` decimal(23,13) DEFAULT '0.0000000000000',
  `InterestAmount` decimal(23,13) DEFAULT '0.0000000000000',
  `DueInterestAmount` decimal(23,13) DEFAULT '0.0000000000000' COMMENT 'Reserved for loan due interest',
  `PenaltyInterestAmount` decimal(23,13) DEFAULT '0.0000000000000',
  `FundAmount` decimal(23,13) DEFAULT '0.0000000000000',
  `ExtraPayment` decimal(23,13) DEFAULT '0.0000000000000',
  `ChequeNo` varchar(20) DEFAULT '-',
  `ChequeDate` date DEFAULT NULL,
  `Description` varchar(250) DEFAULT '-',
  `sDescription` varchar(250) DEFAULT '-',
  `prntDescription` varchar(250) DEFAULT '-',
  `TransactionType` varchar(2) DEFAULT NULL COMMENT 'R-Recipt,V-Voucher,J-Journals',
  `TransactionLog` varchar(20) DEFAULT '-' COMMENT 'Cash Dep, Chq Dep, Debit, Credit, Interest, Withdraw',
  `TransactionNo` int DEFAULT '0',
  `PageNo` int DEFAULT '0',
  `UserID` varchar(2) DEFAULT NULL COMMENT 'fk',
  `TransactionValidate` varchar(1) DEFAULT 'Y' COMMENT 'Y - For valid transaction , N - Tansaction for display purpose only',
  `TransactionValidatePrv` varchar(1) DEFAULT 'Y',
  `PrintStatus` varchar(1) DEFAULT 'N',
  `TransactionRelatedBranch` varchar(2) DEFAULT NULL,
  `OLd_transactionLog` varchar(100) DEFAULT NULL,
  `CashOrCurrentAccount` enum('CA','CU','JR','-') DEFAULT '-',
  `CashTenderd` decimal(23,13) DEFAULT '0.0000000000000',
  `CashBalance` decimal(23,13) DEFAULT '0.0000000000000',
  `DebitReverse` decimal(23,13) DEFAULT '0.0000000000000',
  `CreditReverse` decimal(23,13) DEFAULT '0.0000000000000',
  `IsTransactionUndone` varchar(1) DEFAULT '0',
  `TaxAmount` double DEFAULT NULL,
  `IssuedTime` time DEFAULT NULL,
  `TransactionEntryType` varchar(1) DEFAULT 'A' COMMENT 'A - Auto, M - Manual',
  `TransactionForm` varchar(50) DEFAULT '-',
  PRIMARY KEY (`ID`),
  KEY `FK_ledgertransactions_UserID` (`UserID`),
  KEY `FK_ledgertransactions_AccountNumber` (`AccountNumber`),
  KEY `FK_ledgertransactions_LedgerID` (`LedgerID`),
  KEY `FK_ledgertransactions_CustomerID` (`CustomerID`),
  CONSTRAINT `FK_ledgerdetails_AccountNumber` FOREIGN KEY (`AccountNumber`) REFERENCES `ledgerdetails` (`AccountNumber`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ledgertransactions_LedgerID` FOREIGN KEY (`LedgerID`) REFERENCES `ledgeraccounts` (`LedgerID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=985971 DEFAULT CHARSET=latin1;
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
