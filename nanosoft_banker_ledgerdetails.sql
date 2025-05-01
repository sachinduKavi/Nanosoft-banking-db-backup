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
-- Table structure for table `ledgerdetails`
--

DROP TABLE IF EXISTS `ledgerdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ledgerdetails` (
  `LedgerID` varchar(12) DEFAULT NULL COMMENT 'fk',
  `AccountNumber` varchar(18) NOT NULL,
  `LoanApplicationNo` varchar(20) DEFAULT '-',
  `CustomerID` varchar(15) DEFAULT NULL COMMENT 'fk',
  `InterestAccount` varchar(22) DEFAULT NULL COMMENT 'Income AC for Cash Basis, Receibable Account for Acc. Basis',
  `LoanInterestAccount` varchar(22) DEFAULT NULL COMMENT 'Loan Interest Account for Acc. Basis',
  `PenaltyOrReservationAccount` varchar(22) DEFAULT NULL,
  `FundReservationPolicy` varchar(2) DEFAULT '0',
  `FundAccount` varchar(22) DEFAULT NULL,
  `FundReservationPercentage` decimal(23,13) DEFAULT '0.0000000000000',
  `FundAmount` decimal(23,13) DEFAULT '0.0000000000000',
  `StationaryCharge` decimal(23,13) DEFAULT '0.0000000000000',
  `DepriciationAccount` varchar(22) DEFAULT NULL,
  `DebitAmount` decimal(23,13) DEFAULT '0.0000000000000',
  `CreditAmount` decimal(23,13) DEFAULT '0.0000000000000',
  `AccountBalance` decimal(23,13) DEFAULT '0.0000000000000',
  `AccountBalanceWithInterest` decimal(23,13) DEFAULT '0.0000000000000',
  `DailyInterestMinimumBalance` decimal(23,13) DEFAULT '0.0000000000000',
  `IssuedLoanAmount` decimal(23,13) DEFAULT '0.0000000000000',
  `MinimumAccountBalance` decimal(23,13) DEFAULT '0.0000000000000' COMMENT 'Minimum Hold amount',
  `LowestAccountBalance` decimal(23,13) DEFAULT '0.0000000000000' COMMENT 'Lowest balance for interest',
  `LoanInstallment` decimal(23,13) DEFAULT '0.0000000000000',
  `HoldFDAccount` varchar(18) DEFAULT NULL COMMENT 'Holded Fd Account number for FD advance loans',
  `HoldAmount` decimal(23,13) DEFAULT '0.0000000000000',
  `HoldDescription` varchar(200) DEFAULT '-',
  `Period` double DEFAULT '0',
  `OpenDate` date DEFAULT NULL,
  `DueDate` date DEFAULT NULL COMMENT 'FD or Loan Due Date',
  `AccountLastTransactionDate` date DEFAULT NULL COMMENT 'Last transaction date of the account',
  `AccountBeforeLastTransactionDate` date DEFAULT NULL,
  `LoanStartDate` date DEFAULT NULL COMMENT 'Loan repayment start date',
  `LoanFreeTime` double DEFAULT '0' COMMENT 'Loan Free time (in Mobths)',
  `InterestPolicy` varchar(2) DEFAULT '00',
  `InterestRate` double DEFAULT '0',
  `InterestAmount` decimal(23,13) DEFAULT '0.0000000000000',
  `DueInterestAmount` decimal(23,13) DEFAULT '0.0000000000000' COMMENT 'For Loans',
  `ReservedInterest` decimal(23,13) DEFAULT '0.0000000000000' COMMENT 'For Fixed Deposits, For Loan - Acc.Basic Total Receivable Inte',
  `ExtraPayment` decimal(23,13) DEFAULT '0.0000000000000',
  `PenaltyInterestPolicy` varchar(2) DEFAULT '00' COMMENT 'See the table',
  `PaidFDInterestAmount` decimal(23,13) DEFAULT '0.0000000000000' COMMENT 'Paid Total Monthly Interest Amount',
  `PayableFDInterestAmount` decimal(23,13) DEFAULT '0.0000000000000' COMMENT 'Payable Total Monthly Interest Amount',
  `PenaltyRate` double DEFAULT '0',
  `PenaltyInterestAmount` decimal(23,13) DEFAULT '0.0000000000000',
  `DepriciationPolicy` varchar(2) DEFAULT '00',
  `DepriciationRate` varchar(6) DEFAULT '0.000',
  `RequestedLoanAmount` decimal(23,13) DEFAULT '0.0000000000000',
  `ApprovedLoanAmount` decimal(23,13) DEFAULT '0.0000000000000',
  `DailyCapitalAmount` decimal(23,13) DEFAULT '0.0000000000000',
  `DailyInterestAmount` decimal(23,13) DEFAULT '0.0000000000000',
  `DailyCollectionTotal` decimal(23,13) DEFAULT '0.0000000000000',
  `JointAccountHolder1` varchar(9) DEFAULT NULL,
  `JointAccountHolder2` varchar(9) DEFAULT NULL,
  `JointAccountHolder3` varchar(9) DEFAULT NULL,
  `LoanGuarantee1` varchar(15) DEFAULT NULL,
  `LoanGuarantee2` varchar(15) DEFAULT NULL,
  `LoanGuarantee3` varchar(15) DEFAULT NULL,
  `LoanGuarantee4` varchar(15) DEFAULT NULL,
  `AccountType` varchar(2) DEFAULT NULL COMMENT 'S-Savings,L-Loans,F-Fixed Deposites,O-Other, EH-Invested Shares, ES-Invested Savings, EF-Invested FD, LS-Short Term External Loan, LL-Long Term External Loan',
  `IsDailyLoan` varchar(1) DEFAULT 'N' COMMENT 'Y-Yes, N-No',
  `LoanAccountType` varchar(7) DEFAULT NULL COMMENT 'GNL-General Loan,FDL-FD Advance Loan, PWN-Pawning Loan',
  `PassdueType` varchar(2) DEFAULT NULL,
  `PassdueInstallments` decimal(23,13) DEFAULT '0.0000000000000' COMMENT 'Number of passdue installments',
  `PassdueAmount` decimal(23,13) DEFAULT '0.0000000000000',
  `OverdueInstallment` decimal(23,13) DEFAULT '0.0000000000000',
  `OverdueAmount` decimal(23,13) DEFAULT '0.0000000000000' COMMENT 'Overdue Loan amount',
  `PastDuedays` double DEFAULT '0',
  `FDUpdateOptionID` varchar(2) DEFAULT '00' COMMENT 'See the table',
  `Active` varchar(2) DEFAULT 'Y' COMMENT 'Y/N - Active Account ',
  `LoanApprovalStatus` varchar(50) DEFAULT '-' COMMENT 'Loan Approval Status',
  `LoanApprovedDate` date DEFAULT NULL,
  `LoanApprovedBy` varchar(7) DEFAULT NULL,
  `LoanRecoverACNumber` varchar(18) DEFAULT NULL COMMENT 'Loan Recovery Savings A/C Number',
  `SelectedDayAccountBalance` decimal(23,13) DEFAULT '0.0000000000000',
  `AccountOpeningBalance` decimal(23,13) DEFAULT '0.0000000000000',
  `PassBookType` varchar(2) DEFAULT 'PB' COMMENT 'PB - Pass Book, PC - Pass card',
  `PrintedRecordNo` int DEFAULT '0',
  `PageNo` int DEFAULT '0',
  `IssuedFDAdvanceLoanNo` varchar(18) DEFAULT NULL COMMENT 'Issued fd advance loan account number',
  `pawn_MarketValue` decimal(23,13) DEFAULT '0.0000000000000',
  `pawn_EstimatedAmount` decimal(23,13) DEFAULT '0.0000000000000',
  `pawn_PaymentAmount` decimal(23,13) DEFAULT '0.0000000000000',
  `pawn_Reason` varchar(200) DEFAULT NULL,
  `pawn_ItemTotalWeight` decimal(23,13) DEFAULT '0.0000000000000',
  `pawn_ItemGoldWeight` decimal(23,13) DEFAULT '0.0000000000000',
  `PrintingLanguage` varchar(2) DEFAULT 'EN' COMMENT 'EN - English SI - Sinhala',
  `IsMortgageLoan` varchar(1) DEFAULT 'N' COMMENT 'Y - Yes  N - No',
  `DeedNo` varchar(30) DEFAULT '-',
  `DeedRegisteredDate` date DEFAULT NULL,
  `DeedClosedDate` date DEFAULT NULL,
  `ContractNumber` varchar(100) DEFAULT '-',
  `MortgageAmount` decimal(23,13) DEFAULT '0.0000000000000',
  `LoanReasonID` varchar(2) DEFAULT '0',
  `AccID` varchar(10) DEFAULT NULL,
  `RJ_Old_Acc_No` varchar(25) DEFAULT '-',
  `NoteFirst` varchar(100) DEFAULT NULL,
  `NoteSecond` varchar(100) DEFAULT NULL,
  `AccountOpendOrLoanIssuedBy` varchar(7) DEFAULT NULL COMMENT 'Loan issued or savings/fd account opend by',
  `AccountStatus` enum('ACTIVE','CLOSED','SUSPENDED','INACTIVE','UNCLAIMED','COURT DECISION','COURTED','DORMANT') DEFAULT 'ACTIVE' COMMENT 'Account status',
  `Balance_int` varchar(25) DEFAULT '0.00',
  `issue_cap_int` varchar(25) DEFAULT '0.00',
  `Ins_int` varchar(25) DEFAULT '0.00',
  `issued_field_officer` varchar(2) DEFAULT '01',
  `CollectingInstallment` decimal(23,13) DEFAULT '0.0000000000000',
  `CollectedInstallments` decimal(23,13) DEFAULT '0.0000000000000',
  `InstituteId` varchar(4) DEFAULT NULL,
  `ReferenceNumber` varchar(20) DEFAULT NULL,
  `MonthlyDeductionOnInterest` decimal(23,13) DEFAULT '0.0000000000000',
  `MaxDeductionLimit` decimal(23,13) DEFAULT '0.0000000000000',
  `MonthlyDeduction` decimal(23,13) DEFAULT '0.0000000000000',
  `ReceivedDeduction` decimal(23,13) DEFAULT '0.0000000000000',
  `LastMonthLoanInterest` decimal(23,13) DEFAULT '0.0000000000000',
  `GurTypeId` varchar(3) DEFAULT '-',
  `ReceivableCeasingCharge` decimal(23,13) DEFAULT NULL,
  `GroupCode` varchar(5) DEFAULT '-',
  `InactiveAccountNumber` varchar(18) DEFAULT NULL,
  `LoanReliefAllowed` varchar(1) DEFAULT 'N',
  `ReliefExtendedFreeTime` int DEFAULT '0',
  `ReActiveDate` date DEFAULT NULL,
  `InactiveDate` date DEFAULT NULL,
  `UnclaimedDate` date DEFAULT NULL,
  `SentFDRenewalLetter` enum('Y','N') DEFAULT 'N',
  `FDRenewalLetterSentDate` date DEFAULT NULL,
  `DescripyionOfProprty` varchar(100) DEFAULT NULL,
  `VehicalModel` varchar(100) DEFAULT NULL,
  `ChasisNumber` varchar(100) DEFAULT NULL,
  `EngineNumber` varchar(100) DEFAULT NULL,
  `VehicleNumber` varchar(100) DEFAULT NULL,
  `vMarketValue` decimal(23,13) DEFAULT '0.0000000000000',
  `vForcedSaleValue` decimal(23,13) DEFAULT '0.0000000000000',
  `vPayableMaxLeaseAmount` decimal(23,13) DEFAULT '0.0000000000000',
  `ReliefAllowedDateBefore` date DEFAULT NULL,
  `InsuranceCompanyID` varchar(2) DEFAULT '0',
  `InsuranceStartDate` date DEFAULT NULL,
  `InsuranceRenewalDate` date DEFAULT NULL,
  `PreviousOrNewAccountNumber` varchar(18) DEFAULT '-',
  `ReservedInterestCopy` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`AccountNumber`),
  KEY `FK_ledgerdetails_LedgerID` (`LedgerID`),
  KEY `FK_ledgerdetails_CustomerID` (`CustomerID`),
  KEY `FK_ledgerdetails_JointAccountHolder1` (`JointAccountHolder1`),
  KEY `FK_ledgerdetails_JointAccountHolder2` (`JointAccountHolder2`),
  KEY `FK_ledgerdetails_JointAccountHolder3` (`JointAccountHolder3`),
  KEY `FK_ledgerdetails_LoanGuarantee1` (`LoanGuarantee1`),
  KEY `FK_ledgerdetails_LoanGuarantee2` (`LoanGuarantee2`),
  KEY `FK_ledgerdetails_LoanGuarantee3` (`LoanGuarantee3`),
  KEY `FK_ledgerdetails_LoanGuarantee4` (`LoanGuarantee4`),
  KEY `FK_ledgerdetails_FundAccount` (`FundAccount`),
  KEY `FK_ledgerdetails_InterestAccount` (`InterestAccount`),
  KEY `FK_ledgerdetails_PenaltyOrReservationAccount` (`PenaltyOrReservationAccount`),
  KEY `FK_ledgerdetails_DepriciationAccount` (`DepriciationAccount`),
  KEY `FK_ledgerdetails_HoldFDAccount` (`HoldFDAccount`),
  KEY `FK_ledgerdetails_LoanRecoverACNumber` (`LoanRecoverACNumber`),
  KEY `FK_ledgerdetails_IssuedFDAdvanceLoanNo` (`IssuedFDAdvanceLoanNo`),
  KEY `FK_ledgerdetails_issued_field_officer` (`issued_field_officer`),
  CONSTRAINT `FK_LedgerDetails_CustomerID` FOREIGN KEY (`CustomerID`) REFERENCES `customerinformation` (`CustomerID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ledgerdetails_issued_field_officer` FOREIGN KEY (`issued_field_officer`) REFERENCES `systemusers` (`UserID`) ON UPDATE CASCADE,
  CONSTRAINT `Ledgerdetails_LedgerID` FOREIGN KEY (`LedgerID`) REFERENCES `ledgeraccounts` (`LedgerID`) ON UPDATE CASCADE
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
