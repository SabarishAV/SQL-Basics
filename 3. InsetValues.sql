CREATE DATABASE sample
USE sample


CREATE TABLE Customers(
Id INT PRIMARY KEY,
Name VARCHAR(100) NOT NULL,
Email VARCHAR(255) UNIQUE,
Country VARCHAR(100) DEFAULT 'India'
)

CREATE TABLE Orders(
Id INT PRIMARY KEY,
CustomerId INT,
Amount INT,
CONSTRAINT check_amount CHECK(Amount >= 100),
FOREIGN KEY (CustomerId) REFERENCES Customers(Id)
)

INSERT INTO Customers 
VALUES
(1,'John','john@gmail.com','USA'),
(2,'Bob','bob@gmail.com','India')

INSERT INTO Orders 
VALUES
(1,1,1000),
(2,1,2000)

SELECT * from Customers