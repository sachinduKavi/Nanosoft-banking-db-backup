import { mysqlTable, varchar, int } from "drizzle-orm/mysql-core";

export const ledgeraccountprerequisite = mysqlTable("ledgeraccountprerequisite", {
  SavingsInterstTypeId: varchar("SavingsInterstTypeId", { length: 2 }).default(null),
  SavingsInterstTypeName: varchar("SavingsInterstTypeName", { length: 100 }).default(null),
  LoanInterestTypeId: varchar("LoanInterestTypeId", { length: 2 }).default(null),
  LoanInterestTypeName: varchar("LoanInterestTypeName", { length: 100 }).default(null),
  LoanPenaltyTypeId: varchar("LoanPenaltyTypeId", { length: 2 }).default(null),
  LoanPenaltyTypeName: varchar("LoanPenaltyTypeName", { length: 100 }).default(null),
  LoanFundReserveId: varchar("LoanFundReserveId", { length: 2 }).default(null),
  LoanFundReservePolicy: varchar("LoanFundReservePolicy", { length: 100 }).default(null),
  LoanPastDueTypeId: varchar("LoanPastDueTypeId", { length: 2 }).default(null),
  LoanPastDueTypeName: varchar("LoanPastDueTypeName", { length: 100 }).default(null),
  FDUpdateOptionID: varchar("FDUpdateOptionID", { length: 2 }).default(null),
  FDUpdateOptionType: varchar("FDUpdateOptionType", { length: 150 }).default(null),
  LoanReasonID: varchar("LoanReasonID", { length: 2 }).default(null),
  LoanReason: varchar("LoanReason", { length: 150 }).default(null),
  sLoanReason: varchar("sLoanReason", { length: 150 }).default(null),
  MonthID: int("MonthID").default(null),
  MonthNameEN: varchar("MonthNameEN", { length: 25 }).default(null),
});
