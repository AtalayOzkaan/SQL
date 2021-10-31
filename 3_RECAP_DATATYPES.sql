/****** Script for SelectTopNRows command from SSMS  ******/

-- Exact numeric: bit, tinyint, smallint, int, bigint, decimal, numeric, money and smallmoney
-- Approximate numeric: Read and float
-- Date and time: date, DateTime, datetime2, datetimeoffset, smalldatetime, time
-- Character strings:char, varchar, text
-- Unicode character strings: Nchar, Nvarchar, Ntext
-- Binary strings: Binary, image and varbinary
-- Other data types: Cursor, hierarchyid, sql_variant, table, rowversion, uniqueidentifier, XML, Spatial and geography
-- Check it out: https://www.sqlshack.com/an-overview-of-sql-server-data-types/
SELECT TOP (1000) [ID]
      ,[NAME1]
      ,[NAME2]
      ,[CREDIT]
      ,[LAST_DATE]
  FROM [ETRADE].[dbo].[RECAP_DATATYPES]