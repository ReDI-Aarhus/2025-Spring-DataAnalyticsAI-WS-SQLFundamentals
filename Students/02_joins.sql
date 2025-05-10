--=======================================
-- Exercise 02: joins
--=======================================
-- Topic: INNER JOIN Practice
-- Task: Join Product and ProductCategory tables
-- Hint: [SalesLT].[Product].[ProductCategoryID] + [SalesLT].[ProductCategory].[ProductCategoryID]
--=======================================
Select 
      P.Name as ProductName
    , P.ProductCategoryID as CategoryIDFromProduct
    , PC.ModifiedDate
From SalesLT.Product as P, SalesLT.ProductCategory as PC
Where P.ProductCategoryID = PC.ProductCategoryID


--=======================================
-- Topic: LEFT JOIN Practice
-- Task: List all customers with order IDs, even those who have never placed an order.
-- Hint: LEFT JOIN with SalesOrderHeader
--=======================================
Select 
      *
From SalesLT.Customer as C 
Left Join SalesLT.SalesOrderHeader as SOH
On C.CustomerID = SOH.CustomerID

--=======================================

Select COALESCE(NULL, 'FirstThing')
Select COALESCE('bad', 'FirstThing')