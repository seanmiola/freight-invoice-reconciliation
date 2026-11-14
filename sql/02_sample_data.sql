-- Sample data for the freight invoice reconciliation practice project.
-- All data is made up. Planted errors are listed in the comments below.

INSERT dbo.Rates (CustomerID, RatePerMile) VALUES
(1, 2.50),
(2, 3.00);

INSERT dbo.Shipments (ShipmentID, CustomerID, ShipDate, Miles) VALUES
(1001, 1, '2026-10-02', 400),
(1002, 1, '2026-10-05', 250),
(1003, 2, '2026-10-07', 300),
(1004, 2, '2026-10-10', 500),
(1005, 1, '2026-10-12', 100),
(1006, 2, '2026-10-15', 200),
(1007, 1, '2026-10-20', 350),
(1008, 2, '2026-10-28', 450);

INSERT dbo.Invoices (ShipmentID, Amount, InvoiceDate) VALUES
(1001, 1000.00, '2026-10-31'),
(1002,  625.00, '2026-10-31'),
(1003,  900.00, '2026-10-31'),
(1003,  900.00, '2026-10-31'),  -- planted error: duplicate invoice
(1004, 1200.00, '2026-10-31'),  -- planted error: should be 1500.00
(1005,  250.00, '2026-10-31'),
(1007,  875.00, '2026-10-31');
-- planted error: shipments 1006 and 1008 were never invoiced
