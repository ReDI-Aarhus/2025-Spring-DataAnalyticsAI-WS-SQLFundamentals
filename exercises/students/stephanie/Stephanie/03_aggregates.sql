--=======================================
-- Exercise 03: aggregates
--=======================================
-- Topic: GROUP BY and Aggregation
-- Task: Show the number of orders per customer (only those who placed at least 1 order).
-- Hint: Use GROUP BY CustomerID and COUNT(*)
--=======================================

SELECT 
    soh.CustomerID
    , COUNT(soh.SalesOrderID) AS OrderCount -- Counting SalesOrderID should give the number of orders per customer?
FROM [SalesLT].[SalesOrderHeader] AS soh
GROUP BY soh.CustomerID -- GROUP BY groups the result set by CustomerID
HAVING COUNT(soh.CustomerID) > 0; -- HAVING filters the groups based on the condtion that the customer has at leasst

-- Im not sure if I did this one correct. Why does each customer has an order count of 1?
-- I also tried SalesOrderNumber instead of SalesOrderID, but it gave me the same result.

SELECT 
    soh.CustomerID
    , COUNT(soh.SalesOrderNumber) AS OrderCount -- Counting SalesOrderID should give the number of orders per customer?
FROM [SalesLT].[SalesOrderHeader] AS soh
GROUP BY soh.CustomerID -- GROUP BY groups the result set by CustomerID
HAVING COUNT(soh.CustomerID) > 0;

--=======================================
-- Topic: SUM + Aliases and Formatting
-- Task: Show the number of orders per customer AND total sales amount
-- Hint: Use "SUM" and use "AS" to rename columns.
--=======================================

SELECT
    soh.CustomerID
    , SUM(soh.TotalDue) AS TotalSales -- SUM calculates the total sales amount
    , COUNT(soh.SalesOrderID) AS OrderCount 
FROM [SalesLT].[SalesOrderHeader] AS soh
GROUP BY soh.CustomerID -- GROUP BY groups the result set by CustomerID

-- I get the same, OrderCount = 1

--=======================================
-- Topic: Aliases and Formatting
-- Task: Display product names and prices, rename the columns to "Product" and "Price".
-- Hint: Use "AS" to rename columns
--=======================================

SELECT
    p.Name AS Product -- AS renames the column to Product
    , p.ListPrice AS Price -- AS renames the column to Price
FROM [SalesLT].[Product] AS p


--=======================================
-- Topic: Filter with HAVING
-- Task: Get colors where average list price > 500
-- Hint: Use "AVG" both in SELECT and in filter
--=======================================

SELECT
    p.Color
    , AVG(p.ListPrice) AS AvgListPrice -- AVG calculates the average list price
FROM [SalesLT].[Product] AS p
GROUP BY p.Color -- GROUP BY groups the result set by Color
HAVING AVG(p.ListPrice) > 500 -- HAVING filters the groups based on the condition that the average list price > 500


--=======================================


