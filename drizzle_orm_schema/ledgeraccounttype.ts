import { mysqlTable, varchar, int } from "drizzle-orm/mysql-core";

export const ledgeraccounttype = mysqlTable("ledgeraccounttype", {
  MainTypeID: varchar("MainTypeID", { length: 1 }).default(null),
  MainTypeName: varchar("MainTypeName", { length: 100 }).default(null),
  sMainTypeName: varchar("sMainTypeName", { length: 100 }).default(null),
  CashFlowID: varchar("CashFlowID", { length: 6 }).default("-"),
  SubTypeID: varchar("SubTypeID", { length: 3 }).default(null),
  SubTypeName: varchar("SubTypeName", { length: 100 }).default(null),
  sSubTypeName: varchar("sSubTypeName", { length: 100 }).default(null),
  TypeID: varchar("TypeID", { length: 5 }).primaryKey(),
  TypeName: varchar("TypeName", { length: 100 }).default(null),
  sTypeName: varchar("sTypeName", { length: 100 }).default(null),
  AccountNoteId: varchar("AccountNoteId", { length: 4 }).default(null),
  GeneralLedgerOrder: int("GeneralLedgerOrder").default("0"),
  AccountNoteMainId: varchar("AccountNoteMainId", { length: 4 }).default(null),
  sAccountNoteIdDesc: varchar("sAccountNoteIdDesc", { length: 100 }).default("-"),
  TbSortOrder: int("TbSortOrder").default(null),
});
