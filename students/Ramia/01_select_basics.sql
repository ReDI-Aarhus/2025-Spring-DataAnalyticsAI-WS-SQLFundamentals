--=======================================
-- Exercise 01: SELECT basics
--=======================================
-- Topic: SELECT Basics
-- Task: : Select your name
-- Hint: Use '' (single quotes) for text e.g. 'Joe'
--=======================================
-- 
SELECT 'Ramia Elansari'


--=======================================
-- Topic: SELECT Basics
-- Task: : Calculate 599 + 1
-- Hint: 
--=======================================
-- 
SELECT 599+1


--=======================================
-- Topic: SELECT Basics
-- Task: : Select all columns from the Product table
-- Hint: Use SELECT *
--=======================================
--
SELECT * FROM SalesLT.Product

--=======================================
-- Topic: SELECT Basics
-- Task: Retrieve the FirstName, LastName, and EmailAddress of all customers.
-- Hint: Use SELECT with FROM SalesLT.Customer
--=======================================
-- Your query here 
SELECT FirstName
,LastName
,EmailAddress
 FROM SalesLT.Customer


--=======================================
-- Topic: Using Distinct
-- Task: Find all unique products colors
-- Hint: Use DISTINCT
--=======================================
-- Your query here
 SELECT DISTINCT Color FROM SalesLT.Product


--=======================================
-- Topic: Filtering with WHERE
-- Task: Find all products that cost more than $1,000.
-- Hint: Use WHERE with ListPrice
--=======================================
-- Your query here
SELECT ProductID 
,Name AS ProductName
,ListPrice
FROM SalesLT.Product
WHERE ListPrice > 1000

--=======================================
-- Topic: Sorting with ORDER BY
-- Task: List the top 10 most expensive products
-- Hint: Use ORDER BY (DESC) + TOP clause
--=======================================
-- Your query here
SELECT TOp 10
ProductID 
,p.Name AS ProductName
,ListPrice
FROM SalesLT.Product AS p
ORDER By ListPrice DESC

--=======================================
SELECT *
FROM SalesLT.Product AS P
FULL OUTER JOIN SalesLT.SalesOrderDetail AS s 
On p.ProductID = s.ProductID
SELECT COALESCE (NULL, 'FirstTHing')
SELECT COALESCE ('bad', 'FirstTHing')