--=======================================
-- Exercise 04: final challenge
--=======================================
/*
#### **Goal:**

Create a report showing the top 5 customers (by total purchase amount) who placed orders in the year 2013, including their name, number of orders, and total spent.

#### **Requirements:**

1. Include customer full name.
2. Only include orders from 2013.
3. Show:

   * Number of orders placed.
   * Total `TotalDue` amount.
4. Sort results by total spent, descending.
5. Limit to top 5 customers.
---
#### **Tables Involved:**

* `SalesLT.Customer`
* `SalesLT.SalesOrderHeader`

#### **Expected Output Columns:**

* `CustomerName` (concatenation of FirstName + LastName)
* `OrderCount`
* `TotalSpent`

---
*/
--=======================================
-- Your query here


--=======================================

SELECT TOP 5
    c.FirstName + ' ' + c.LastName AS 'CustomerName' -- combine first and last name
    , COUNT(so.SalesOrderID) AS OrderCount -- Count the number of orders
    , SUM(so.TotalDue) AS TotalSpent -- Sum the total due for each customer
FROM [SalesLT].[Customer] AS c
INNER JOIN [SalesLT].[SalesOrderHeader] AS so 
    ON c.CustomerID = so.CustomerID -- Join customers with their orders
WHERE YEAR(so.OrderDate) = 2008 -- Filter orders from the year 2013
GROUP BY c.FirstName, c.LastName -- Group by customer name to aggregate data
ORDER BY TotalSpent DESC; -- Sort by total spent in descending order


SELECT
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName 
    , COUNT(so.SalesOrderID) AS OrderCount
    , SUM(so.TotalDue) AS TotalSpent
FROM [SalesLT].[Customer] AS c
JOIN [SalesLT].[SalesOrderHeader]  AS so
   ON c.CustomerID = so.CustomerID
WHERE YEAR(so.OrderDate) = 2008
GROUP BY c.CustomerID, c.FirstName, c.LastName
ORDER BY TotalSpent DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY; -- Limit to top 5 customers



SELECT *
FROM [SalesLT].[SalesOrderHeader]

SELECT *
FROM [SalesLT].[Customer]