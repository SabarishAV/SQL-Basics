-- Set Operators

SELECT Id FROM Customers
UNION
SELECT CustomerId FROM Orders

-- Returns commomn rows
SELECT Id FROM Customers
INTERSECT
SELECT CustomerId FROM Orders

SELECT Id FROM Customers
EXCEPT
SELECT CustomerId FROM Orders



-- Nested Queries

SELECT DISTINCT Id
FROM Customers
WHERE Id > (SELECT AVG(Id) FROM Orders)


-- JOIN

-- Returns only the rows that have matching values in both tables.
SELECT
c.Id AS CustomerId,
c.Name AS CustomerName,
o.Id AS OrderId,
o.Amount AS OrderAmount
FROM
Customers c
INNER JOIN Orders o ON c.Id = o.CustomerId

-- Returns everything from left table
SELECT
c.Id AS CustomerId,
c.Name AS CustomerName,
o.Id AS OrderId,
o.Amount AS OrderAmount
FROM
Customers c
LEFT JOIN Orders o ON c.Id = o.CustomerId


SELECT
c.Id AS CustomerId,
c.Name AS CustomerName,
o.Id AS OrderId,
o.Amount AS OrderAmount
FROM
Customers c
RIGHT JOIN Orders o ON c.Id = o.CustomerId


-- SELECT
-- c.Id AS CustomerId,
-- c.Name AS CustomerName,
-- o.Id AS OrderId,
-- o.Amount AS OrderAmount
-- FROM
-- Customers c
-- FULL OUTER JOIN Orders o ON c.Id = o.CustomerId