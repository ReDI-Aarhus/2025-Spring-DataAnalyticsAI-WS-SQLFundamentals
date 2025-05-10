--=======================================
-- Exercise 01: SELECT basics
--=======================================
-- Topic: SELECT Basics
-- Task: : Select your name
-- Hint: Use '' (single quotes) for text e.g. 'Joe'
--=======================================
SELECT 'Manisha Sahoo' as NAME;


--=======================================
-- Topic: SELECT Basics
-- Task: : Calculate 599 + 1
-- Hint: 
--=======================================
SELECT 599 + 1 as Result;


--=======================================
-- Topic: SELECT Basics
-- Task: : Select all columns from the Product table
-- Hint: Use SELECT *
--=======================================
SELECT * from SalesLT.Product


--=======================================
-- Topic: SELECT Basics
-- Task: Retrieve the FirstName, LastName, and EmailAddress of all customers.
-- Hint: Use SELECT with FROM SalesLT.Customer
--=======================================
Select FirstName, LastName, EmailAddress
from SalesLT.Customer


--=======================================
-- Topic: Using Distinct
-- Task: Find all unique products colors
-- Hint: Use DISTINCT
--=======================================
Select distinct Color
from SalesLT.Product


--=======================================
-- Topic: Filtering with WHERE
-- Task: Find all products that cost more than $1,000.
-- Hint: Use WHERE with ListPrice
--=======================================
Select * from SalesLT.Product
where ListPrice > 1000


--=======================================
-- Topic: Sorting with ORDER BY
-- Task: List the top 10 most expensive products
-- Hint: Use ORDER BY (DESC) + TOP clause
--=======================================
SELECT Top 10 Name, ListPrice
from SalesLT.Product
Order By ListPrice DESC


--=======================================