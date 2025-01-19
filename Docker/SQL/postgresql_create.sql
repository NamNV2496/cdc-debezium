CREATE database IF NOT EXISTS sales;

CREATE TABLE IF NOT EXISTS public.marketSale(
    CustomerID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    SaleDate DATE NOT NULL,
    UnitPrice DECIMAL(10, 2) NOT NULL,
    TotalAmount DECIMAL(10, 2) AS (Quantity * UnitPrice) STORED,
    PaymentMethod VARCHAR(50),
    SalespersonID INT,
    Remarks TEXT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (SalespersonID) REFERENCES Employees(EmployeeID)
);



-- Customers table
CREATE TABLE IF NOT EXISTS public.Customers(
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address TEXT,
    City VARCHAR(50),
    Country VARCHAR(50),
    RegistrationDate DATE DEFAULT CURRENT_DATE
);

-- Products table
CREATE TABLE IF NOT EXISTS public.Products(
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    UnitPrice DECIMAL(10, 2) NOT NULL,
    StockQuantity INT DEFAULT 0,
    SupplierID INT,
    Description TEXT
);

-- Employees table
CREATE TABLE IF NOT EXISTS public.Employees (
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Position VARCHAR(50),
    HireDate DATE,
    Email VARCHAR(100),
    Phone VARCHAR(20)
);


ALTER TABLE Employees ADD COLUMN EmployeeID BIGSERIAL PRIMARY KEY;
ALTER TABLE Products ADD COLUMN ProductID BIGSERIAL PRIMARY KEY;
ALTER TABLE Customers ADD COLUMN CustomersID BIGSERIAL PRIMARY KEY;
ALTER TABLE Customers marketSale ADD COLUMN saleID BIGSERIAL PRIMARY KEY;