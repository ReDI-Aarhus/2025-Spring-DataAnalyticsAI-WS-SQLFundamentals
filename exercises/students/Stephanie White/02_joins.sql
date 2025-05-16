--=======================================
-- Exercise 02: joins
--=======================================
-- Topic: INNER JOIN Practice
-- Task: Join Product and ProductCategory tables
-- Hint: [SalesLT].[Product].[ProductCategoryID] + [SalesLT].[ProductCategory].[ProductCategoryID]
--=======================================

SELECT 
    p.ProductID -- p references to the main table (SalesLT.Product) as you have named it p
    , p.Name AS ProductName
    , pc.Name AS CategoryName -- pc references to the joined table (SalesLT.ProductCategory) as you have named it pc
FROM [SalesLT].[Product] AS p
INNER JOIN SalesLT.ProductCategory AS pc -- INNER JOIN produces what exist in both tables
ON p.ProductCategoryID = pc.ProductCategoryID -- ON specifies the condition for the join



--=======================================
-- Topic: LEFT JOIN Practice
-- Task: List all customers with order IDs, even those who have never placed an order.
-- Hint: LEFT JOIN with SalesOrderHeader
--=======================================

SELECT * -- * selects all columns from the tables
    , c.FirstName + ' ' + c.LastName AS FullName
    , so.SalesOrderID
FROM [SalesLT].[Customer] AS c -- references to the main table (SalesLT.Customer)
LEFT JOIN [SalesLT].[SalesOrderHeader] AS so -- LEFT JOIN produces all records from the left table (SalesLT.Customer) and matching records from the right table (SalesLT.SalesOrderHeader)
ON c.CustomerID = so.CustomerID -- ON specifies the condition for the join

--=======================================