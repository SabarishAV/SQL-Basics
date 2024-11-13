SELECT * FROM Customers
ORDER BY Country,Id

SELECT Country,COUNT(Id)
FROM Customers
GROUP BY Country

SELECT Country,COUNT(Id)
FROM Customers
GROUP BY Country
HAVING COUNT(Id) > 0