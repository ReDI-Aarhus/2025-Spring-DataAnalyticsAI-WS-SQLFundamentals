--=======================================
-- Exercise 03: aggregates
--=======================================
-- Topic: GROUP BY and Aggregation
-- Task: Show the number of orders per customer (only those who placed at least 1 order).
-- Hint: Use GROUP BY CustomerID and COUNT(*)
--=======================================
-- Your query here

SELECT
    c.CustomerID,
    c.FirstName+' '+c.LastName AS CustomerName,
    COUNT(so.SalesOrderID) AS OrderCount
FROM SalesLT.Customer AS c
    INNER JOIN
    SalesLT.SalesOrderHeader AS so
    ON c.CustomerID = so.CustomerID
GROUP BY 
    c.CustomerID,
    c.FirstName,
    c.LastName
ORDER BY OrderCount DESC;


--=======================================
-- Topic: SUM + Aliases and Formatting
-- Task: Show the number of orders per customer AND total sales amount
-- Hint: Use "SUM" and use "AS" to rename columns.
--=======================================
-- Your query here
SELECT
    c.CustomerID,
    c.FirstName+' '+c.LastName AS CustomerName,
    COUNT(*) AS OrderCount,
    SUM(so.TotalDue) AS TotalSales
FROM SalesLt.Customer AS c
    JOIN SalesLt.SalesOrderHeader AS so
    ON c.CustomerID = so.CustomerID
GROUP BY
    c.CustomerID,
    c.FirstName,
    c.LastName
HAVING COUNT(*) > 0
ORDER BY TotalSales DESC;

--=======================================
-- Topic: Aliases and Formatting
-- Task: Display product names and prices, rename the columns to "Product" and "Price".
-- Hint: Use "AS" to rename columns
--=======================================
-- Your query here
SELECT Name AS Product, ListPrice AS Product
FROM SalesLT.Product;
--=======================================
-- Topic: Filter with HAVING
-- Task: Get colors where average list price > 500
-- Hint: Use "AVG" both in SELECT and in filter
--=======================================
-- Your query here
SELECT Color, AVG(ListPrice) AS AvaregeListPrice
FROM SalesLT.Product
GROUP BY Color
HAVING AVG(ListPrice) > 500;

--=======================================