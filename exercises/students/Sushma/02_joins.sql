--=======================================
-- Exercise 02: joins
--=======================================
-- Topic: INNER JOIN Practice
-- Task: Join Product and ProductCategory tables
-- Hint: [SalesLT].[Product].[ProductCategoryID] + [SalesLT].[ProductCategory].[ProductCategoryID]
--=======================================
-- Your query here
SELECT SalesLT.Product.Name, SalesLT.ProductCategory.Name
FROM SalesLT.Product
    INNER JOIN SalesLT.ProductCategory
    ON SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID
------I am confused here, what columns to select. I selected the name of both tables.      



--=======================================
-- Topic: LEFT JOIN Practice
-- Task: List all customers with order IDs, even those who have never placed an order.
-- Hint: LEFT JOIN with SalesOrderHeader
--=======================================
-- Your query here
SELECT SalesLT.Customer.FirstName, SalesLT.SalesOrderHeader.SalesOrderID
FROM SalesLT.Customer
    LEFT JOIN SalesLT.SalesOrderHeader
    ON SalesLT.Customer.CustomerID = SalesLT.SalesOrderHeader.CustomerID



--=======================================