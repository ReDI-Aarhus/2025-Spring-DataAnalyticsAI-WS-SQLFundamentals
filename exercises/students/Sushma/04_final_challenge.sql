--=======================================
-- Exercise 04: final challenge
--=======================================
/*
#### **Goal:**

Create a report showing the top 5 customers (by total purchase amount) who placed orders in the year 2008, including their name, number of orders, and total spent.

#### **Requirements:**

1. Include customer full name.
2. Only include orders from 2008.
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
SELECT FirstName + ' ' + LastName AS CustomerName, COUNT(SalesOrderID) AS OrderCount, SUM(TotalDue) AS TotalSpent
FROM SalesLT.Customer
   INNER JOIN SalesLT.SalesOrderHeader
   ON SalesLT.Customer.CustomerID = SalesLT.SalesOrderHeader.CustomerID
WHERE YEAR(OrderDate) = 2008
GROUP BY FirstName, LastName
ORDER BY TotalSpent DESC
OFFSET 0 ROWS
FETCH NEXT 5 ROWS ONLY
--I took help from ChatGPT. but I understood.
--=======================================
