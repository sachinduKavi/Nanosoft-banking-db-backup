import { mysqlTable, serial, varchar, double } from 'drizzle-orm/mysql-core';

export const accountBalanceTransfer = mysqlTable('account_balance_transfer', {
  id: serial('id').primaryKey(),
  AccountNumber: varchar('AccountNumber', { length: 18 }).default(null),
  LedgerID: varchar('LedgerID', { length: 12 }).default(null),
  DebitAmount: double('DebitAmount').default(null),
  CreditAmount: double('CreditAmount').default(null),
  AccountBalance: double('AccountBalance').default(null),
}, {
  charset: 'latin1',
});
