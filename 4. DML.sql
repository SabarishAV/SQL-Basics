INSERT INTO Customers 
VALUES
(1,'John','john@gmail.com','USA'),
(2,'Bob','bob@gmail.com','India'),
(3,'Bob','bob1@gmail.com','UK')

INSERT INTO Orders 
VALUES
(1,1,1000),
(2,1,2000)

SELECT * from Customers

DELETE FROM Customers
WHERE Id = 3

UPDATE Customers
SET Country = 'UK'
WHERE Id = 1