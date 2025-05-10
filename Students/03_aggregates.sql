--=======================================
-- Exercise 03: aggregates
--=======================================
-- Topic: GROUP BY and Aggregation
-- Task: Show the number of orders per customer (only those who placed at least 1 order).
-- Hint: Use GROUP BY CustomerID and COUNT(*)
--=======================================
Select 
      count(*) as NumberOfOrders, C.Firstname
From SalesLT.Customer as C 
Left Join SalesLT.SalesOrderHeader as SOH
On C.CustomerID = SOH.CustomerID
Group By C.CustomerID, C.Firstname


--=======================================
-- Topic: SUM + Aliases and Formatting
-- Task: Show the number of orders per customer AND total sales amount
-- Hint: Use "SUM" and use "AS" to rename columns.
--=======================================
SELECT 
    SUM(SOH.TotalDue) AS TotalSales, SOH.SalesOrderID, count(*) as NumberOfOrders
FROM 
    SalesLT.SalesOrderHeader AS SOH
LEFT JOIN SalesLT.Customer as C 
On C.CustomerID = SOH.CustomerID
GROUP BY 
    SOH.SalesOrderID


Select * 
FROM SalesLT.SalesOrderHeader AS SOH

Select * from SalesLT.SalesOrderDetail



--=======================================
-- Topic: Aliases and Formatting
-- Task: Display product names and prices, rename the columns to "Product" and "Price".
-- Hint: Use "AS" to rename columns
--=======================================
-- Your query here


--=======================================
-- Topic: Filter with HAVING
-- Task: Get colors where average list price > 500
-- Hint: Use "AVG" both in SELECT and in filter
--=======================================
-- Your query here


--=======================================