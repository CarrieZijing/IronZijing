CREATE DATABASE lab20; 

USE lab20;

CREATE TABLE cars (VIN CHAR(17), Manufacture VARCHAR(30), Model CHAR(20),year INT, Color VARCHAR(20));
CREATE TABLE Invoices (INV_id VARCHAR(15), Date DATE, Car_VIN CHAR(17), Customer_id VARCHAR(5), Sales_id CHAR(5));
CREATE TABLE Salespersons (s_id CHAR(5), Name VARCHAR(25), Store VARCHAR(20));
CREATE TABLE Customers (c_id CHAR(5), Name VARCHAR(25), Phone CHAR(15), Email VARCHAR(25), Address VARCHAR(30), City VARCHAR(20), State VARCHAR(25), Country VARCHAR(25), Postal VARCHAR(10));