--=======================================
-- Exercise 02: joins
--=======================================
-- Topic: INNER JOIN Practice
-- Task: Join Product and ProductCategory tables
-- Hint: [SalesLT].[Product].[ProductCategoryID] + [SalesLT].[ProductCategory].[ProductCategoryID]
--=======================================

SELECT *
FROM SalesLT.Product AS p
INNER JOIN SalesLT.ProductCategory AS pc
ON p.ProductCategoryID = pc.ProductCategoryID


-- start with the main table in question

--=======================================
-- Topic: LEFT JOIN Practice
-- Task: List all customers with order IDs, even those who have never placed an order.
-- Hint: LEFT JOIN with SalesOrderHeader
--=======================================

SELECT * -- select all columns
FROM SalesLT.Customer AS c -- main table
LEFT JOIN SalesLT.SalesOrderHeader AS so -- table to join
ON c.CustomerID = so.CustomerID -- join condition


--=======================================

SELECT ProductID, SUM(LineTotal)
FROM Sales.LT.SalesOrderDetail
GROUP BY ProductID