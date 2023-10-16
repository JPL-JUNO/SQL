-- Active: 1683725252949@@127.0.0.1@3306@salesordersample

CREATE DATABASE SalesOrderSample;

USE SalesOrderSample;

CREATE TABLE
    Categories(
        CategoryID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        CategoryDescription VARCHAR(75) NULL
    );

CREATE TABLE
    Customers(
        CustomerID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        CustFirstName VARCHAR(25) NULL,
        CustLastName VARCHAR(25) NULL,
        CustStreetAddress VARCHAR(50) NULL,
        CustCity VARCHAR(30) NULL,
        CustState VARCHAR(2) NULL,
        CustZipCode VARCHAR(10) NULL,
        CustAreaCode SMALLINT NULL DEFAULT 0,
        CustPhoneNumber VARCHAR(8) NULL
    );

CREATE TABLE
    Employees(
        EmployeeID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        EmpFirstName VARCHAR(25) NULL,
        EmpLastName VARCHAR(25) NULL,
        EmpStreetAddress VARCHAR(50) NULL,
        EmpCity VARCHAR(30) NULL,
        EmpState VARCHAR(2) NULL,
        EmpZipCode VARCHAR(10) NULL,
        EmpAreaCode SMALLINT NULL DEFAULT 0,
        EmpPhoneNumber VARCHAR(8) NULL,
        EmpDOB DATETIME NULL,
        ManagerID INT NULL
    );

CREATE TABLE
    Orders(
        OrderNUmber INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        OrderDate DATE NULL,
        ShipDate DATE NULL,
        CustomerID INT NULL,
        EmployeeID INT NULL,
        OrderTotal DECIMAL(15, 2) NULL DEFAULT 0
    );

CREATE TABLE
    Product_Vendors(
        ProductNumber INT NOT NULL,
        VendorID INT NOT NULL,
        WholesalePrice DECIMAL (15, 2) NULL DEFAULT 0,
        DaysToDeliver SMALLINT NULL DEFAULT 0
    );

CREATE TABLE
    Products(
        ProductNumber INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        ProductName VARCHAR(50) NULL,
        ProductDescription VARCHAR(100) NULL,
        ProductUPD VARCHAR(12) NULL,
        RetailPrice DECIMAL(15, 2) NULL DEFAULT 0,
        QuantityOnHand SMALLINT NULL DEFAULT 0,
        CategoryID int NULL
    );

CREATE TABLE
    Vendors(
        VendorID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        VendName VARCHAR(25) NULL,
        VendStreetAddress VARCHAR(50) NULL,
        VendCity VARCHAR(30) NULL,
        VendState VARCHAR(2) NULL,
        VendZipCode VARCHAR(10) NULL,
        VendPhoneNumber VARCHAR(15) NULL,
        VendFaxNumber VARCHAR(15) NULL,
        VendWebPage TEXT NULL,
        VendEMailAddress VARCHAR(50) NULL
    );

CREATE TABLE
    ztblMonths(
        MonthYear VARCHAR(15) NOT NULL,
        YearNumber SMALLINT NOT NULL,
        MonthNumber SMALLINT NOT NULL,
        MonthStart DATE NOT NULL,
        MonthEnd DATE NOT NULL,
        January SMALLINT NOT NULL DEFAULT 0,
        February SMALLINT NOT NULL DEFAULT 0,
        March SMALLINT NOT NULL DEFAULT 0,
        April SMALLINT NOT NULL DEFAULT 0,
        May SMALLINT NOT NULL DEFAULT 0,
        June SMALLINT NOT NULL DEFAULT 0,
        July SMALLINT NOT NULL DEFAULT 0,
        August SMALLINT NOT NULL DEFAULT 0,
        September SMALLINT NOT NULL DEFAULT 0,
        October SMALLINT NOT NULL DEFAULT 0,
        November SMALLINT NOT NULL DEFAULT 0,
        December SMALLINT NOT NULL DEFAULT 0
    );

CREATE TABLE
    ztblPriceRanges(
        PriceCategory VARCHAR(20) NOT NULL,
        LowPrice DECIMAL(15, 2) NULL,
        HighPrice DECIMAL(15, 2) NULL
    );

CREATE TABLE ztblSeqNumbers( Sequence INT NOT NULL DEFAULT 0 ) ;