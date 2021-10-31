-- @Author Atalay Özkan
--Aggregate functions
--Sum,Count,Min,Max,Avg

SELECT BRANCH,count(*) as TrxNum ,sum(LINENET) as SumSales,min(LINENET) as MinimumPrice,max(LINENET) as MaximumPrice, AVG(LINENET) AS AvreagaSales FROM SALES --WHERE BRANCH='İstanbul Subesi'
GROUP BY BRANCH


SELECT TOP 10 * FROM SALES

-- How do I retrive the data of the branch with the maximum sales?

SELECT TOP 10 BRANCH AS BRANCH_NAME, SUM(LINENET) AS SUMSALES
FROM SALES 
GROUP BY BRANCH
ORDER BY SUM(LINENET) DESC

-- To be able to retrive the branch name and sales sum data which is bigger than 50k?
select BRANCH,FORMAT(SUM(LINENET),'N') as SumSales from sales
--where SUM(LINENET)> 50000
group by BRANCH 
having SUM(LINENET)>= 50000 and branch is not null
order by SUM(LINENET) desc


--To be able to retrive the branch of sales daily report
select * from sales where branch LIKE 'BURSA%' and date_='20170105'


select branch,date_, SUM(LINENET) as SumSales,count(*) as numRow
from sales
where branch='Bursa Subesi'
Group by branch,date_
order by branch, SumSales desc


-- the branch of sales data according to date
select date_,branch, sum(LINENET) as SumSales from sales
where branch is not null
group by date_,branch
order by date_ 

-- the branch of sales data according to category name
select CATEGORY_NAME1, brand, SUM(LINENET) AS SumSales from Sales 
WHERE CATEGORY_NAME1 ='GIDA'
GROUP BY CATEGORY_NAME1, brand
order by 3 desc