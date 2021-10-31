/** @Author : Atalay Özkan
** Purpose : SQL basic commands
** Data manipulation commands     : Select, Update, Delete, Insert Into, Truncate Table 
** Database Manipulation Commands : Create Database, Alter Database, Create Table, Alter Table, Drop Table, Create Index, Drop Index  
**
**
** ENVIROMENT => Oracle VirtualBox 6.1, Windows Server 2016, SSMS v18.10
**/


--  Column name may able to fill out as a way of 'drop and drag'  (Columns)
-- ID is an identity and increment is 1. It's also Primary Key. 
select
[ID], [CUSTOMERNAME], [CITY], [DISTRICT], [BIRTHDAY], [GENDER]
FROM [ETRADE].[dbo].[CUSTOMER]

select * FROM [ETRADE].[dbo].[CUSTOMER]

-- INSERT statement 
INSERT INTO CUSTOMER([CUSTOMERNAME], [CITY], [DISTRICT], [BIRTHDAY], [GENDER]) 
VALUES ('ARDA ÖZ','ISTANBUL','MALTEPE','19900101','E')

-- Generate insert statement from excel to db
--INSERT INTO [ETRADE].[dbo].[CUSTOMER] ([CUSTOMERNAME], [CITY], [DISTRICT], [BIRTHDAY], [GENDER]) VALUES ('"&A1&"','"&B1&"','"&C1&"','"&D1&"','"&E1&"');

-- TRUNCATE and DELETE differences - To check ID that is an identity 
--DELETE FROM CUSTOMER where CUSTOMERNAME LIKE 'ARDA%'
--TRUNCATE TABLE CUSTOMER

-- UPDATE command usage - use "DATEDIFF" function
--UPDATE [ETRADE].[dbo].[CUSTOMER] 
--SET AGE=DATEDIFF(YEAR,BIRTHDAY,GETDATE());
--UPDATE CUSTOMER SET AGE=AGE-1 WHERE ID=1;

-- BACKUP TABLE - recap below commands
--SELECT * INTO CUSTOMER_BACKUP FROM CUSTOMER
SELECT * FROM CUSTOMER_BACKUP
--DELETE FROM CUSTOMER_BACKUP
--INSERT INTO CUSTOMER_BACKUP VALUES ('Atalay ÖZKAN','Denizli','Kınıklı','1986-08-13','E',NULL)
--UPDATE CUSTOMER_BACKUP SET AGE=DATEDIFF(YEAR,BIRTHDAY,GETDATE());
--TRUNCATE  TABLE CUSTOMER_BACKUP


-- WHERE usage with	 <>, BETWEEN, LIKE, IN
SELECT * FROM CUSTOMER 
WHERE BIRTHDAY ='19971024'

SELECT * FROM CUSTOMER
WHERE CITY='RİZE' and DISTRICT <> 'Pazar / Rize'

SELECT CUSTOMERNAME FROM CUSTOMER
where BIRTHDAY between '19860101' and '19861230'

SELECT CUSTOMERNAME FROM CUSTOMER
where CUSTOMERNAME LIKE '%KOSKA%'

SELECT  *
FROM    CUSTOMER
WHERE   CITY = 'SAMSUN' AND DISTRICT NOT IN ('LADIK', 'TERME', 'BAFRA')
and gender<>'K'

-- DISTINCT command 
SELECT  DISTINCT CITY FROM CUSTOMER  where CITY ='ISTANBUL'

-- ORDER BY command usage sample (ASC || DESC)
SELECT * FROM CUSTOMER
ORDER BY CITY,CUSTOMERNAME -- if that's empty, it means ASC 

SELECT * FROM CUSTOMER
ORDER BY 7 DESC

-- TOP command usage (LIMIT, ROWNUM (Oracle))
SELECT TOP 25 PERCENT  * FROM CUSTOMER
SELECT TOP 10 * FROM CUSTOMER WHERE CITY='DENIZLI'





