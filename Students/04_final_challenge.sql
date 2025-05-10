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
SELECT TOP 5
    (c.FirstName + ' ' + c.LastName) AS CustomerName,
    COUNT(s.SalesOrderID) AS OrderCount,
    SUM(s.TotalDue) AS TotalSpent
--    s.OrderDate
FROM 
    SalesLT.Customer c
JOIN 
    SalesLT.SalesOrderHeader s ON c.CustomerID = s.CustomerID
WHERE
    s.OrderDate BETWEEN '2008-01-01' AND '2008-12-31'
GROUP BY 
    c.FirstName, c.LastName
ORDER BY 
    TotalSpent DESC;



--select * from SalesLT.SalesOrderHeader. In this table all the Orders are from 2008. So no data from 2013 as per requirement.


--=======================================
