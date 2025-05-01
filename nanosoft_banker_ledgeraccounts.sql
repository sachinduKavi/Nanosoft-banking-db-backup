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
-- Table structure for table `ledgeraccounts`
--

DROP TABLE IF EXISTS `ledgeraccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ledgeraccounts` (
  `LedgerID` varchar(12) NOT NULL,
  `LedgerName` varchar(100) DEFAULT NULL,
  `sLedgerName` varchar(100) DEFAULT NULL COMMENT 'In Secondary Language',
  `MinimumAccountBalance` double DEFAULT NULL COMMENT 'Minimum Hold amount',
  `LowestAccountBalance` double DEFAULT NULL COMMENT 'Lowest balance for interest',
  `InterestPolicy` varchar(2) DEFAULT '0',
  `PenaltyPolicy` varchar(2) DEFAULT '0',
  `InterestAccount` varchar(22) DEFAULT NULL COMMENT 'Income AC for Cash Basis, Receibable Account for Acc. Basis',
  `LoanInterestAccount` varchar(22) DEFAULT NULL COMMENT 'Loan Interest Account for Acc. Basis',
  `PenaltyOrReservationAccount` varchar(22) DEFAULT NULL,
  `InterestRate` varchar(6) DEFAULT '0.000',
  `PenaltyRate` varchar(6) DEFAULT '0.000',
  `DepriciationRate` varchar(6) DEFAULT '0.000',
  `DepriciationPolicy` varchar(2) DEFAULT '0',
  `DepriciationReservationAccount` varchar(22) DEFAULT NULL,
  `Period` varchar(4) DEFAULT '0',
  `LoanFreeTime` varchar(4) DEFAULT '0',
  `FundAccount` varchar(22) DEFAULT NULL,
  `FundReservePolicy` varchar(2) DEFAULT '0',
  `LoanPassduePolicy` varchar(2) DEFAULT '0',
  `InstituteID` varchar(4) DEFAULT NULL,
  `CategoryID` varchar(7) DEFAULT NULL,
  `YearOpeningDebit` decimal(23,13) DEFAULT '0.0000000000000',
  `YearOpeningCredit` decimal(23,13) DEFAULT '0.0000000000000',
  `temp_ClosingDebit` decimal(23,13) DEFAULT '0.0000000000000',
  `temp_ClosingCredit` decimal(23,13) DEFAULT '0.0000000000000',
  `EstimateOrBudget` decimal(23,13) DEFAULT '0.0000000000000',
  `RelatedLedgerID` varchar(12) DEFAULT NULL,
  `InactiveAccountLedgerID` varchar(12) DEFAULT NULL,
  `IsInactiveAccount` varchar(1) DEFAULT 'N',
  `AccountStatus` varchar(1) DEFAULT 'G' COMMENT 'G-GL Accounts, P-Personal Accounts',
  `AccountType` varchar(3) DEFAULT 'GL' COMMENT 'GL-For GL Accounts,SV-For Savings Accounts,FD-For Fixed Deposits,GNL-For General Customer Loans,FDL-For FD Advance Loans, POS - For agency type loan',
  `LoanAccountType` enum('M','W','D') DEFAULT NULL COMMENT 'M-Mothly, W-Weekly, D-Daily',
  `IsTBAccount` varchar(1) DEFAULT 'Y' COMMENT 'Y - Yes No - No',
  `LedgerNameAliesEN` varchar(100) DEFAULT NULL,
  `LedgerNameAliesSI` varchar(100) DEFAULT NULL,
  `Account_Logo` mediumblob,
  `EN_Name` varchar(100) DEFAULT NULL,
  `SI_Name` varchar(100) DEFAULT NULL,
  `sLedgerShortName` varchar(100) DEFAULT '-',
  `IsDailyLoan` varchar(1) DEFAULT 'N' COMMENT 'Y - Yes No - No',
  `cTotalBalance` decimal(23,13) DEFAULT '0.0000000000000',
  `cTotalCount` decimal(23,13) DEFAULT '0.0000000000000',
  `pTotalBalance` decimal(23,13) DEFAULT '0.0000000000000',
  `pTotalCount` decimal(23,13) DEFAULT '0.0000000000000',
  `dTotalBalance` decimal(23,13) DEFAULT '0.0000000000000',
  `dTotalCount` decimal(23,13) DEFAULT '0.0000000000000',
  `InactiveLedgerID` varchar(12) DEFAULT NULL,
  `UnclaimedLedgerID` varchar(12) DEFAULT NULL,
  `CashFlorPDebit` decimal(23,13) DEFAULT '0.0000000000000',
  `CashFlorPCredit` decimal(23,13) DEFAULT '0.0000000000000',
  `FundReservationPercentage` decimal(23,13) DEFAULT '0.0000000000000',
  `ClosingStockActive` decimal(23,13) DEFAULT '0.0000000000000',
  `OpeningStockActive` decimal(23,13) DEFAULT '0.0000000000000',
  `IsWHTAllowed` enum('Y','N') DEFAULT 'Y',
  `PastdueLetterType` enum('1','2') DEFAULT '2' COMMENT '1 - By Pastdue Installment, 2 - By Pastdue Days',
  `LET_1ST_PASTDUE_REMINDER_DAYS` double DEFAULT '30',
  `LET_2ND_PASTDUE_REMINDER_DAYS` double DEFAULT '60',
  `LET_3RD_PASTDUE_REMINDER_DAYS` double DEFAULT '90',
  `LET_4TH_PASTDUE_REMINDER_DAYS` double DEFAULT '0',
  `LET_5TH_PASTDUE_REMINDER_DAYS` double DEFAULT '0',
  `LET_LETTER_OF_DEMAND_DAYS` double DEFAULT '120',
  `LET_1ST_PASTDUE_REMINDER_INS` double DEFAULT '1',
  `LET_2ND_PASTDUE_REMINDER_INS` double DEFAULT '2',
  `LET_3RD_PASTDUE_REMINDER_INS` double DEFAULT '3',
  `LET_4TH_PASTDUE_REMINDER_INS` double DEFAULT '0',
  `LET_5TH_PASTDUE_REMINDER_INS` double DEFAULT '0',
  `LET_LETTER_OF_DEMAND_INS` double DEFAULT '4',
  PRIMARY KEY (`LedgerID`),
  KEY `FK_ledgeraccounts_LedgerID` (`RelatedLedgerID`),
  KEY `FK_ledgeraccounts_CategoryID` (`CategoryID`),
  KEY `FK_ledgeraccounts_InstituteID` (`InstituteID`),
  KEY `FK_ledgeraccounts_DepriciationReservationAccount` (`DepriciationReservationAccount`),
  KEY `FK_ledgeraccounts_InterestAccount` (`InterestAccount`),
  KEY `FK_ledgeraccounts_PenaltyOrReservationAccount` (`PenaltyOrReservationAccount`),
  KEY `FK_ledgeraccounts_FundAccount` (`FundAccount`),
  CONSTRAINT `FK_ledgeraccounts_CategoryID` FOREIGN KEY (`CategoryID`) REFERENCES `ledgercategory` (`CategoryID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ledgeraccounts_DepriciationReservationAccount` FOREIGN KEY (`DepriciationReservationAccount`) REFERENCES `ledgeraccounts` (`LedgerID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ledgeraccounts_FundAccount` FOREIGN KEY (`FundAccount`) REFERENCES `ledgeraccounts` (`LedgerID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ledgeraccounts_InterestAccount` FOREIGN KEY (`InterestAccount`) REFERENCES `ledgeraccounts` (`LedgerID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ledgeraccounts_PenaltyOrReservationAccount` FOREIGN KEY (`PenaltyOrReservationAccount`) REFERENCES `ledgeraccounts` (`LedgerID`) ON UPDATE CASCADE
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

-- Dump completed on 2025-05-01 15:44:46
