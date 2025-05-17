--=======================================
-- Exercise 03: aggregates
--=======================================
-- Topic: GROUP BY and Aggregation
-- Task: Show the number of orders per customer (only those who placed at least 1 order).
-- Hint: Use GROUP BY CustomerID and COUNT(*)
--=======================================
-- Your query here
SELECT COUNT(SalesOrderID) AS NumberOfOrders, CustomerID
FROM SalesLT.SalesOrderHeader
GROUP BY CustomerID



--=======================================
-- Topic: SUM + Aliases and Formatting
-- Task: Show the number of orders per customer AND total sales amount
-- Hint: Use "SUM" and use "AS" to rename columns.
--=======================================
-- Your query here
SELECT SUM(TotalDue) AS TotalSales, COUNT(SalesOrderID) AS NumberOfOrders, CustomerID
FROM SalesLT.SalesOrderHeader
GROUP BY CustomerID

--=======================================
-- Topic: Aliases and Formatting
-- Task: Display product names and prices, rename the columns to "Product" and "Price".
-- Hint: Use "AS" to rename columns
--=======================================  
-- Your query here
SELECT Name AS Product, ListPrice AS Price
FROM SalesLT.Product
--here table name is not mentioned?

--=======================================
-- Topic: Filter with HAVING
-- Task: Get colors where average list price > 500
-- Hint: Use "AVG" both in SELECT and in filter
--=======================================
-- Your query here
SELECT Color, AVG(ListPrice) AS AverageListPrice
FROM SalesLT.Product
GROUP BY Color
HAVING AVG(ListPrice) > 500

--=======================================