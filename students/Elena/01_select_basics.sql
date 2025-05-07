--=======================================
-- Exercise 01: SELECT basics
--=======================================
-- Topic: SELECT Basics
-- Task: : Select your name
-- Hint: Use '' (single quotes) for text e.g. 'Joe'
--=======================================
-- Your query here
SELECT 'Elena' AS Name

--=======================================
-- Topic: SELECT Basics
-- Task: : Calculate 599 + 1
-- Hint: 
--=======================================
-- Your query here
SELECT 599 + 1 AS Sum

--=======================================
-- Topic: SELECT Basics
-- Task: : Select all columns from the Product table
-- Hint: Use SELECT *
--=======================================
-- Your query here
SELECT * 
FROM SalesLT.Product

--=======================================
-- Topic: SELECT Basics
-- Task: Retrieve the FirstName, LastName, and EmailAddress of all customers.
-- Hint: Use SELECT with FROM SalesLT.Customer
--=======================================
-- Your query here
SELECT TOP 5 
    FirstName, 
    LastName,
    FirstName + ' ' + LastName AS FullName, 
    EmailAddress
FROM SalesLT.Customer    

--=======================================
-- Topic: Using Distinct
-- Task: Find all unique products colors
-- Hint: Use DISTINCT
--=======================================
-- Your query here
SELECT DISTINCT 
    Color
FROM SalesLT.Product

--=======================================
-- Topic: Filtering with WHERE
-- Task: Find all products that cost more than $1,000.
-- Hint: Use WHERE with ListPrice
--=======================================
-- Your query here
SELECT 
    ProductID, 
    Name AS ProductName, 
    ListPrice AS Price
FROM SalesLT.Product AS P
WHERE ListPrice > 1000

--=======================================
-- Topic: Sorting with ORDER BY
-- Task: List the top 10 most expensive products
-- Hint: Use ORDER BY (DESC) + TOP clause
--=======================================
-- Your query here
SELECT TOP 10 *
FROM SalesLT.Product
ORDER BY ListPrice DESC

--=======================================

SELECT *
FROM SalesLT.Product as p
FULL OUTER JOIN SalesLT.SalesOrderHeader as soh
ON soh.ProductID = p.ProductID

SELECT COALESCE(NULL, 'FirstName')
SELECT COALESCE('bad', 'FirstName')
SELECT ISNULL('bad', 'FirstName')