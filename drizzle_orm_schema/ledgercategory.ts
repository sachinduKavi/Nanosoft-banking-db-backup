import { mysqlTable, varchar } from 'drizzle-orm/mysql-core';

export const ledgercategory = mysqlTable('ledgercategory', {
  CategoryID: varchar('CategoryID', { length: 7 }).primaryKey(),
  CategoryName: varchar('CategoryName', { length: 100 }).default(null),
  sCategoryName: varchar('sCategoryName', { length: 100 }).default(null),
  TypeID: varchar('TypeID', { length: 5 }).default(null),
}, {
  charset: 'latin1',
});
