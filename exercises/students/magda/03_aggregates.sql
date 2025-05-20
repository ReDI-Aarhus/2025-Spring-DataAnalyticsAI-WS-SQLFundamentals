--=======================================
-- Exercise 03: aggregates
--=======================================
-- Topic: GROUP BY and Aggregation
-- Task: Show the number of orders per customer (only those who placed at least 1 order).
-- Hint: Use GROUP BY CustomerID and COUNT(*)
--=======================================
-- Your query here
SELECT CustomerID, COUNT(*) AS OrderCount
FROM SalesLT.SalesOrderHeader
GROUP BY CustomerID

--=======================================
-- Topic: SUM + Aliases and Formatting
-- Task: Show the number of orders per customer AND total sales amount
-- Hint: Use "SUM" and use "AS" to rename columns.
--=======================================
-- Your query here
SELECT CustomerID, COUNT(*) AS OrderCount, SUM(TotalDue) AS TotalSales
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

--=======================================
-- Topic: Filter with HAVING
-- Task: Get colors where average list price > 500
-- Hint: Use "AVG" both in SELECT and in filter
--=======================================
-- Your query here
SELECT Color, AVG(ListPrice) AS AvgPrice
FROM SalesLT.Product
WHERE Color IS NOT NULL
GROUP BY Color
HAVING AVG(ListPrice) > 500

--=======================================