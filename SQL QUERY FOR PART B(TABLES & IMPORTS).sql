-- Create Customer table
CREATE TABLE Customer (
    CustomerID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(255),
    Phone VARCHAR(20)
);

-- Create Vehicle table
CREATE TABLE Vehicle (
    VehicleID SERIAL PRIMARY KEY,
    Make VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
    Color VARCHAR(50),
    VIN VARCHAR(50),
    Reg VARCHAR(50),
    Mileage INT,
    OwnerName VARCHAR(100)
);

-- Create Invoice table
CREATE TABLE Invoice (
    InvoiceID SERIAL PRIMARY KEY,
    InvoiceDate DATE,
    Subtotal NUMERIC(10, 2),
    SalesTaxRate NUMERIC(5, 2),
    SalesTax NUMERIC(10, 2),
    TotalLabour NUMERIC(10, 2),
    TotalParts NUMERIC(10, 2),
    Total NUMERIC(10, 2),
    CustomerID INT,
    VehicleID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID)
);

-- Create Job table
CREATE TABLE job (
    JobID SERIAL PRIMARY KEY,
    VehicleID INT,
    Description VARCHAR(255),
    Hours NUMERIC(5, 2),
    Rate NUMERIC(10, 2),
    Amount NUMERIC(10, 2),
    InvoiceID INT,
    FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID),
    FOREIGN KEY (InvoiceID) REFERENCES Invoice(InvoiceID)
);

-- Create Parts table
CREATE TABLE Parts (
    PartID SERIAL PRIMARY KEY,
    JobID INT,
    Part VARCHAR(50),
    PartName VARCHAR(100),
    Quantity INT,
    UnitPrice NUMERIC(10, 2),
    Amount NUMERIC(10, 2),
    InvoiceID INT,
    FOREIGN KEY (JobID) REFERENCES Job(JobID),
    FOREIGN KEY (InvoiceID) REFERENCES Invoice(InvoiceID)
);

-- Copy data into Customer table from CSV
COPY Customer (Name, Address, Phone)
FROM 'C:\Program Files\customer.csv' WITH (FORMAT csv, HEADER true);

-- Copy data into Vehicle table from CSV
COPY Vehicle (Make, Model, Year, Color, VIN, Reg, Mileage, OwnerName)
FROM 'C:\Program Files\vehicle.csv' WITH (FORMAT csv, HEADER true);

-- Copy data into Invoice table from CSV
COPY Invoice (invoiceid, InvoiceDate, Subtotal, SalesTaxRate, SalesTax, TotalLabour, TotalParts, Total, CustomerID, VehicleID)
FROM 'C:\Program Files\invoice.csv' WITH (FORMAT csv, HEADER true);

-- Copy data into Job table from CSV
COPY Job (Jobid, VehicleID, Description, Hours, Rate, Amount, InvoiceID)
FROM 'C:\Program Files\job.csv' WITH (FORMAT csv, HEADER true);

-- Copy data into Parts table from CSV
COPY Parts (PartID, JobID, Part, PartName, Quantity, UnitPrice, Amount, InvoiceID)
FROM 'C:\Program Files\parts22.csv' WITH (FORMAT csv, HEADER true);



