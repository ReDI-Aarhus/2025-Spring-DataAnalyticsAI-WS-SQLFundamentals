---
marp: true
theme: redi
paginate: true
---

# SQL Fundamentals Workshop

🗓 **Date:** 2025-05-07 (May 7th, 2025) <br/> 
🕠 **Time:** 17:30–20:00  
💻 **Tools:** VS Code, Azure SQL DB, GitHub

---
# What is a Database?

A **database** is a structured collection of data stored electronically. It's used to store, manage, and retrieve information efficiently.

### Common Elements - High level
- **Tables** – like spreadsheets, with rows and columns.
- **Schemas** – groups of related tables.
- **Keys** – Primary & Foreign for enforcing relationships.
- **Indexes** – for faster lookup.
- **Views** – virtual tables based on queries.
- **Stored Procedures & Functions** – reusable logic.

---

# Table elements
| Table      | Stores rows of data                          |
| ------------ | ----------------------------------- |
| Column       | A single field type (e.g. email)    |
| Data Type    | Specifies type of data: text, number, date etc.    |
| Row / Record | One item (e.g. one product)         |
| Primary Key  | Uniquely identifies each row        |
| Foreign Key  | Link between two tables             |


---

## Why Learn SQL?

- SQL is the *language of data*.
- Used across roles: analysts, engineers, admins.
- Enables you to explore, clean, and analyze data.

---

## Roles & Skills in the Data World

| Role              | Focus                           | Key SQL Skills               |
|-------------------|----------------------------------|------------------------------|
| Business Analyst  | Answering business questions     | SELECT, WHERE, JOIN          |
| Data Analyst      | Exploring, cleaning, modeling    | GROUP BY, CASE, CTEs         |
| Data Engineer     | Data pipelines and architecture  | Views, Indexes, Optimization |
| DBA               | Security, performance, backups   | Indexes, Permissions, Logs   |

---

## Learning Progression by role

| Skill / Role       | BA | DA | DBA |
| ------------------ | -- | -- | --- |
| SELECT basics      | ✅  | ✅  | ✅   |
| Filtering (WHERE)  | ✅  | ✅  | ✅   |
| Sorting (ORDER BY) | ✅  | ✅  | ✅   |
| JOINs              | ⚪  | ✅  | ✅   |
| Aggregation        | ⚪  | ✅  | ✅   |
| Subqueries         | ⚪  | ⚪  | ✅   |
| Indexes            | ❌  | ⚪  | ✅   |
| Permissions        | ❌  | ⚪  | ✅   |

---

## SQL Query Structure vs Logical Order

#### What we write:

```sql
SELECT ...
FROM ...
WHERE ...
GROUP BY ...
HAVING ...
ORDER BY ...
```

#### How SQL logically evaluates:

1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY


---

## Git & SQL Workflow

* Create branch per exercise.
* Work in `exercise/students/your-name-here/0x_xyz.sql` files
* Use `git add`, `commit`, `push`


---

## GitHub & Version Control Process - First exercise
Read: [git-cheatsheet.md](git-cheatsheet.md) in repos
###### Main steps:
* Clone the repo and create your exercise branch.
* Rename `/<your-name-here>/` folder.
* Work on exercise in dedicated .sql file: [01_select_basics.sql](../exercises/students/your-name-here/01_select_basics.sql)
* Add changes using `git add`, commit with `git commit -m`, and push with `git push --set-upstream`.

```bash
# create branch
git checkout -b "jane/01-select"
# make your changes
git add .
git commit -m "Completed 01_select exercise"
git push --set-upstream origin "jane/01-select"
```
---
## GitHub & Version Control Process - following exercises
Read: [git-cheatsheet.md](git-cheatsheet.md) in repos
###### Main steps:
* Create your exercise branch.
* Work on exercise in dedicated .sql file: [02_joins.sql](../exercises/students/your-name-here/02_joins.sql) 
* Add changes using `git add`, commit with `git commit -m`, and push with `git push --set-upstream`.

```bash
# create branch
git checkout -b "jane/02-joins"
# make your changes
git add .
git commit -m "Completed 02_joins exercise"
git push --set-upstream origin "jane/02_joins"
```
* Repeat for [03_aggregates.sql](../exercises/students/your-name-here/03_aggregates.sql) & [04_final_challenge.sql](../exercises/students/your-name-here/04_final_challenge.sql)

---

## The basic SELECTs
- SELECT
- DISTINCT
- WHERE
- ORDER BY
- LIMIT/TOP

---

### SELECT Without FROM

You can run queries without referencing a table:

```sql
SELECT 1 + 1 AS Result;
SELECT GETDATE() AS Today;
SELECT 'Hello, world!' AS Greeting;
```

Useful for testing expressions, for placeholders or system functions.

---

### DISTINCT: Remove Duplicates

```sql
SELECT DISTINCT City
FROM Customers;
```

Returns only unique cities.

---

### WHERE: Filter Rows

```sql
SELECT *
FROM Products
WHERE Price > 100;
```

Returns rows that match a condition.

---

### ORDER BY: Sort Results 

```sql
--ASC  = Sorts ascending (Default)
--DESC = Sorts descending

SELECT Name, Price
FROM Products
ORDER BY Price DESC;
```

Sorts by price (descending).

---

### TOP: Limit Rows (SQL Server)
Other tools may use `LIMIT`
```sql
SELECT TOP 5 Name, Price
FROM Products
ORDER BY Price DESC;
```

Returns only the first 5 rows.

---

## SQL JOIN Types

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN - **Don't need it!**
- FULL JOIN

Use [sql-joins.leopard.in.ua](https://sql-joins.leopard.in.ua) to visualize.

---

### INNER JOIN

Returns only rows that exist in both tables.

```sql
SELECT *
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID;
```

<img src="https://blog.codinghorror.com/content/images/2025/03/6a0120a85dcdae970b012877702708970c-pi.png" width="35%">

---

### LEFT JOIN or LEFT OUTER JOIN

Returns all rows from the left table (A), and matched rows from the right (B).

```sql
SELECT *
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID;
```

<img src="https://blog.codinghorror.com/content/images/2025/03/image-9.png" width="35%">

---

### RIGHT JOIN or RIGHT OUTER JOIN

Returns all rows from the right table (B), and matched rows from the left (A). <br/>
The opposite of `LEFT JOIN`.

- Most developers sticks to LEFT JOIN

```sql
SELECT *
FROM Orders o
RIGHT JOIN Customers c ON c.CustomerID = o.CustomerID;
```

---

### FULL JOIN or FULL OUTER JOIN

Returns all rows from both tables and links rows when there is a match based on join condition.

```sql
SELECT *
FROM Customers c
FULL OUTER JOIN Orders o ON c.CustomerID = o.CustomerID;
```
<img src="https://blog.codinghorror.com/content/images/2025/03/image-8.png" width="35%">

---

### LEFT JOIN, only Table A

Returns all rows from the left table (A), and **excludes** matched rows from the right (B).

```sql
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL;
```

<img src="https://blog.codinghorror.com/content/images/2025/03/image-10.png" width="35%">

---

### FULL JOIN, unique Table A & B

Returns all rows from both tables and links rows when there is a match based on join condition.

```sql
SELECT *
FROM Customers c
FULL OUTER JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL
    AND c.CustomerID IS NULL;
```

<img src="https://blog.codinghorror.com/content/images/2025/03/image-11.png" width="30%">

---

## Special topic: Understanding `NULL` in SQL

---

### ❓ What is `NULL`?

* `NULL` means *unknown*, *missing*, or *not applicable*.
* It is **not** the same as `0`, an empty string (`''`), or `false`.

```sql
SELECT Name, PhoneNumber
FROM Customers
WHERE PhoneNumber IS NULL;
```

✅ Use `IS NULL` or `IS NOT NULL` — not `= NULL`.

---

### ⚠️ Common Pitfalls with `NULL`

#### ❌ Equality checks fail:

```sql
-- This does NOT work
WHERE PhoneNumber = NULL
```

✅ Use:

```sql
WHERE PhoneNumber IS NULL
```

#### ❌ `NULL` breaks comparisons:

```sql
SELECT 1 + NULL; -- returns NULL
```

Any operation involving `NULL` returns `NULL`.

---

#### ❌ Aggregates ignore NULLs:

```sql
SELECT AVG(Discount)
FROM Sales; -- NULLs are ignored
```

Use `COUNT(column)` vs `COUNT(*)` carefully:

* `COUNT(column)` ignores `NULL`s.
* `COUNT(*)` counts all rows.


---

## Aggregations: 
- COUNT, SUM, AVG 
- GROUP BY
- HAVING

---
#### COUNT

```sql
SELECT COUNT(*) FROM Orders;
SELECT COUNT(Discount) FROM Orders; -- Ignores NULLs
```

#### SUM

```sql
SELECT SUM(TotalDue) FROM Orders; --The sum of TotalDue from Orders
```

#### AVG

```sql
SELECT AVG(TotalDue) FROM Orders; -- Average TotalDue from Orders
```

Aggregate functions summarize data.

---

### GROUP BY: Grouping Data

```sql
SELECT CustomerID, SUM(TotalDue)
FROM Orders
GROUP BY CustomerID;
```
Groups rows and calculates aggregate per group.
#### ⚠️ Can't mix aggregates and non-aggregate in SELECT

```sql
-- This does NOT work
SELECT CustomerID, SUM(TotalDue)
FROM Orders
```

---

### HAVING: Filter on Groups

```sql
SELECT CustomerID, COUNT(*) AS OrderCount
FROM Orders
GROUP BY CustomerID
HAVING COUNT(*) > 5;
```

Use `HAVING` to filter after aggregation (not `WHERE`).

---


### `04-final-challenge.sql` – *Customer Insights Report*

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

#### 💡 Starter Hint:

```sql
SELECT 
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    COUNT(soh.SalesOrderID) AS OrderCount,
    SUM(soh.TotalDue) AS TotalSpent
FROM SalesLT.Customer c
JOIN SalesLT.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
WHERE YEAR(soh.OrderDate) = 2013
GROUP BY c.FirstName, c.LastName
ORDER BY TotalSpent DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;
```

Would you like a version with subqueries or CTEs for added challenge?

---

## Additional Resources

* Azure SQL sample databases: [MS Docs](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms)
* SQL Style Guide: [sqlstyle.guide](https://www.sqlstyle.guide/)
* JOIN Visualizer: [sql-joins.leopard.in.ua](https://sql-joins.leopard.in.ua/)
* Practice site: [sqlpad.io](https://sqlpad.io/)

