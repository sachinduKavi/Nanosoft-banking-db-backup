import { mysqlTable, varchar } from 'drizzle-orm/mysql-core';
import { customerinformation } from './customerinformation';
import { smsType } from './sms_type';

export const customerRegisterdsms = mysqlTable('customer_registerdsms', {
  CustomerID: varchar('CustomerID', { length: 9 }).references(() => customerinformation.CustomerID),
  SMSTypeID: varchar('SMSTypeID', { length: 2 }).references(() => smsType.SMSTypeID),
}, {
  charset: 'latin1',
});
