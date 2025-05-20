--=======================================
-- Exercise 02: joins
--=======================================
-- Topic: INNER JOIN Practice
-- Task: Join Product and ProductCategory tables
-- Hint: [SalesLT].[Product].[ProductCategoryID] + [SalesLT].[ProductCategory].[ProductCategoryID]
--=======================================
-- Your query here
SELECT p.Name AS ProductName, c.Name AS CategoryName
FROM SalesLT.Product p
INNER JOIN SalesLT.ProductCategory c
ON p.ProductCategoryID = c.ProductCategoryID;
--=======================================
-- Topic: LEFT JOIN Practice
-- Task: List all customers with order IDs, even those who have never placed an order.
-- Hint: LEFT JOIN with SalesOrderHeader
--=======================================
-- Your query here
SELECT c.CustomerID, c.FirstName, c.LastName, o.SalesOrderID
FROM SalesLT.Customer c
LEFT JOIN SalesLT.SalesOrderHeader o
ON c.CustomerID = o.CustomerID;

--=======================================