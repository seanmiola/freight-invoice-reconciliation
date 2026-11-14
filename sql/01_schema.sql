CREATE TABLE dbo.Rates (
    CustomerID  INT PRIMARY KEY,
    RatePerMile DECIMAL(6,2) NOT NULL
);

CREATE TABLE dbo.Shipments (
    ShipmentID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    ShipDate   DATE NOT NULL,
    Miles      INT NOT NULL
);

CREATE TABLE dbo.Invoices (
    InvoiceID   INT IDENTITY PRIMARY KEY,
    ShipmentID  INT NOT NULL,
    Amount      DECIMAL(10,2) NOT NULL,
    InvoiceDate DATE NOT NULL
);

CREATE TABLE dbo.InvoiceStaging (
    ShipmentID INT,
    Amount     DECIMAL(10,2)
);

CREATE TABLE dbo.InvoiceErrors (
    ErrorID    INT IDENTITY PRIMARY KEY,
    ShipmentID INT,
    Reason     VARCHAR(200),
    LoggedAt   DATETIME DEFAULT GETDATE()
);
