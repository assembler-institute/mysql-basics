DROP DATABASE IF EXISTS shop;
CREATE DATABASE IF NOT EXISTS shop;
USE shop;

SELECT 'CREATING DATABASE STRUCTURE' as 'INFO';

DROP TABLE IF EXISTS sellers,
                     Products,
                     Orders,
                     Order_Items, 
                     Customers; 
                    

/*!50503 set default_storage_engine = InnoDB */;
/*!50503 select CONCAT('storage engine: ', @@default_storage_engine) as INFO */;



CREATE TABLE sellers (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(255) NOT NULL,
  Email VARCHAR(255) NOT NULL,
  PhoneNumber VARCHAR(20) NOT NULL,
  Address VARCHAR(255) NOT NULL,
  CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Customers (
ID INT AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(255),
Email VARCHAR(255),
Phone_Number VARCHAR(255),
Address VARCHAR(255),
Created_At TIMESTAMP
);

CREATE TABLE Products (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Description TEXT,
    Price DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL,
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Seller_ID INT NOT NULL,
    FOREIGN KEY (Seller_ID) REFERENCES Sellers(ID)
);

CREATE TABLE Orders (
    ID INT PRIMARY KEY,
    Order_Number INT,
    Order_Date DATE,
    Customer_ID INT,
    Total_Amount FLOAT,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(ID)
);

CREATE TABLE Order_Items (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_ID INT,
    Order_ID INT,
    Quantity INT,
    Price DECIMAL(10,2),
    FOREIGN KEY (Product_ID) REFERENCES Products(ID),
    FOREIGN KEY (Order_ID) REFERENCES Orders(ID)
);

SHOW TABLES FROM shop;