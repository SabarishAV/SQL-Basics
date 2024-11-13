CREATE VIEW indian_customers AS
SELECT Id, Name
FROM Customers
WHERE Country = 'India';

SELECT * FROM indian_customers

DROP VIEW indian_customers