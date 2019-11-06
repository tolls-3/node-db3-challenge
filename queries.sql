-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName, CategoryName
FROM Product
    JOIN Category ON Category.Id = Product.CategoryId;
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT [Order].Id AS [Order Id], CompanyName AS [Shipper Company name]
FROM [Order]
    LEFT JOIN [Shipper]
    ON [Order].ShipVia = [Shipper].Id
WHERE [Order].OrderDate < "2012-08-09";
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT ProductName as [Product Name], Quantity
FROM [Product]
    LEFT JOIN OrderDetail
    ON [Product].Id = [OrderDetail].ProductId
WHERE [OrderDetail].OrderId = 10251
ORDER BY [Product Name] Asc;
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT [Order].Id as [Order Id],
    [Customer].CompanyName as [Customer Company Name],
    [Employee].LastName as [Employee Last Name]
FROM [Order]
    LEFT JOIN [Customer]
    ON [Order].CustomerId = [Customer].Id
    LEFT JOIN [Employee]
    ON [Order].EmployeeId = [Employee].Id;