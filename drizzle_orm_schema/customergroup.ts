import { mysqlTable, varchar } from "drizzle-orm/mysql-core";

export const customergroup = mysqlTable("customergroup", {
  GroupCode: varchar("GroupCode", { length: 5 }).primaryKey(),
  GroupName: varchar("GroupName", { length: 100 }),
  sGroupName: varchar("sGroupName", { length: 100 }),
  RelatedGroupCode: varchar("RelatedGroupCode", { length: 5 }),
  OldGroupCode: varchar("OldGroupCode", { length: 5 }),
  UserID: varchar("UserID", { length: 5 }).default("-"),
});
