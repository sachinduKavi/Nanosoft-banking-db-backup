import { mysqlTable, serial, varchar } from 'drizzle-orm/mysql-core';

export const auditorInfo = mysqlTable('auditor_info', {
  id: serial('id').primaryKey(),
  AuditorID: varchar('AuditorID', { length: 5 }).default(null),
  AuditorName: varchar('AuditorName', { length: 100 }).default('-'),
  sAuditorName: varchar('sAuditorName', { length: 150 }).default('-'),
  AddressLine1: varchar('AddressLine1', { length: 100 }).default('-'),
  AddressLine2: varchar('AddressLine2', { length: 100 }).default('-'),
  AddressLine3: varchar('AddressLine3', { length: 100 }).default('-'),
  sAddressLine1: varchar('sAddressLine1', { length: 100 }).default('-'),
  sAddressLine2: varchar('sAddressLine2', { length: 100 }).default('-'),
  sAddressLine3: varchar('sAddressLine3', { length: 100 }).default('-'),
  AuditorAddress: varchar('AuditorAddress', { length: 100 }).default('-'),
  sAuditorAddress: varchar('sAuditorAddress', { length: 150 }).default('-'),
  AuditorTelephone: varchar('AuditorTelephone', { length: 15 }).default('-'),
  AuditorMobile: varchar('AuditorMobile', { length: 15 }).default('-'),
  sAuditorHomeAddressLine1: varchar('sAuditorHomeAddressLine1', { length: 100 }).default('-'),
  sAuditorHomeAddressLine2: varchar('sAuditorHomeAddressLine2', { length: 100 }).default('-'),
  sAuditorAddressLine1: varchar('sAuditorAddressLine1', { length: 100 }).default('-'),
  sAuditorAddressLine2: varchar('sAuditorAddressLine2', { length: 100 }).default('-'),
}, {
  charset: 'latin1',
});
