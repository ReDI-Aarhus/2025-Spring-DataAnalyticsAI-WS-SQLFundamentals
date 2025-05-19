--=======================================
-- Exercise 02: joins
--=======================================
-- Topic: INNER JOIN Practice
-- Task: Join Product and ProductCategory tables
-- Hint: [SalesLT].[Product].[ProductCategoryID] + [SalesLT].[ProductCategory].[ProductCategoryID]
--=======================================
-- Your query here
SELECT 1 AS Test;

SELECT 
    p.ProductID,
    p.Name AS ProductName,
    pc.ProductCategoryID,
    pc.Name AS CategoryName
FROM 
    SalesLT.Product AS p
INNER JOIN 
    SalesLT.ProductCategory AS pc
ON 
    p.ProductCategoryID = pc.ProductCategoryID;


--=======================================
-- Topic: LEFT JOIN Practice
-- Task: List all customers with order IDs, even those who have never placed an order.
-- Hint: LEFT JOIN with SalesOrderHeader
--=======================================
-- Your query here


--=======================================