CREATE TABLE Item (
    ID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    ItemCode VARCHAR(50) NOT NULL,
    Stock INT,
    Description TEXT,
    Status VARCHAR(10) CHECK (Status IN ('active', 'broken'))
);

INSERT INTO Item (ID, Name, ItemCode, Stock, Description, Status)
VALUES 
    (1, 'Item1', 'CODE001', 100, 'Description for Item1', 'active'),
    (2, 'Item2', 'CODE002', 50, 'Description for Item2', 'broken'),
    (3, 'Item3', 'CODE003', 75, 'Description for Item3', 'active'),
    (4, 'Item4', 'CODE004', 120, 'Description for Item4', 'broken'),
    (5, 'Item5', 'CODE005', 30, 'Description for Item5', 'active');