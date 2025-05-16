--=======================================
-- Exercise 01: SELECT basics
--=======================================
-- Topic: SELECT Basics
-- Task: : Select your name
-- Hint: Use '' (single quotes) for text e.g. 'Joe'
--=======================================

SELECT 
    'Stephanie' AS Name;


--=======================================
-- Topic: SELECT Basics
-- Task: : Calculate 599 + 1
-- Hint: 
--=======================================

SELECT 
    599 + 1 AS Result;

--=======================================
-- Topic: SELECT Basics
-- Task: : Select all columns from the Product table
-- Hint: Use SELECT *
--=======================================

SELECT * 
FROM SalesLT.Product;

-- Make sure this is from the correct database!

--=======================================
-- Topic: SELECT Basics
-- Task: Retrieve the FirstName, LastName, and EmailAddress of all customers.
-- Hint: Use SELECT with FROM SalesLT.Customer
--=======================================

SELECT 
    FirstName
    , LastName
    , EmailAddress 
FROM SalesLT.Customer;

-- another example to combine first and last name
SELECT 
    FirstName + ' ' + LastName AS 'FullName'
    , EmailAddress 
FROM SalesLT.Customer;

--=======================================
-- Topic: Using Distinct
-- Task: Find all unique products colors
-- Hint: Use DISTINCT
--=======================================

SELECT DISTINCT 
    Color 
FROM SalesLT.Product;

--=======================================
-- Topic: Filtering with WHERE
-- Task: Find all products that cost more than $1,000.
-- Hint: Use WHERE with ListPrice
--=======================================

SELECT
    ProductID
    , p.Name AS ProductName
    , ListPrice ListCost
FROM SalesLT.Product AS p
WHERE ListPrice > 1000;

--=======================================
-- Topic: Sorting with ORDER BY
-- Task: List the top 10 most expensive products
-- Hint: Use ORDER BY (DESC) + TOP clause
--=======================================

SELECT TOP 10
    ProductID
    , p.Name AS ProductName
    , ListPrice ListCost
FROM SalesLT.Product AS p
ORDER BY ListPrice DESC;

--=======================================