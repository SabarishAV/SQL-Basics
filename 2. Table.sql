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

CREATE INDEX idx_amount ON Orders(Amount)

ALTER TABLE Customers ADD State VARCHAR(100)

DROP TABLE Customers
DROP TABLE Orders