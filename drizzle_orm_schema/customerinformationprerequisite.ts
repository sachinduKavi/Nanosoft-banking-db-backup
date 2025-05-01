import { mysqlTable, varchar } from 'drizzle-orm/mysql-core';

export const customerinformationprerequisite = mysqlTable('customerinformationprerequisite', {
  MemberType: varchar('MemberType', { length: 50 }),
  MemberTypeId: varchar('MemberTypeId', { length: 2 }),
  Religion: varchar('Religion', { length: 50 }),
  AGDivision: varchar('AGDivision', { length: 50 }),
  GSDivisionName: varchar('GSDivisionName', { length: 50 }),
  GSDivisionNo: varchar('GSDivisionNo', { length: 20 }),
  District: varchar('District', { length: 50 }),
  Country: varchar('Country', { length: 40 }),
  Committee_Id: varchar('Committee_Id', { length: 2 }),
  Committee_Name: varchar('Committee_Name', { length: 200 }),
  Position_Id: varchar('Position_Id', { length: 2 }),
  Position_Name: varchar('Position_Name', { length: 50 }),
  bank_id: varchar('bank_id', { length: 2 }),
  bank_name: varchar('bank_name', { length: 25 }),
  meetingID: varchar('meetingID', { length: 2 }),
  meetingName: varchar('meetingName', { length: 50 }),
  OtherSocietyID: varchar('OtherSocietyID', { length: 2 }),
  OtherSocietyName: varchar('OtherSocietyName', { length: 50 }),
  vehicleId: varchar('vehicleId', { length: 3 }),
  vehicleName: varchar('vehicleName', { length: 50 }),
  GurTypeId: varchar('GurTypeId', { length: 3 }),
  GurTypeName: varchar('GurTypeName', { length: 50 }),
  vehicleModelID: varchar('vehicleModelID', { length: 3 }),
  vehicleModelName: varchar('vehicleModelName', { length: 50 }),
  InsuranceCompanyID: varchar('InsuranceCompanyID', { length: 2 }),
  InsuranceCompanyName: varchar('InsuranceCompanyName', { length: 100 }),
}, {
  charset: 'latin1',
  uniqueKeys: [
    'Religion',
    'AGDivision',
    'GSDivisionName',
    'GSDivisionNo',
    'District',
    'Country',
    'MemberType'
  ]
});
