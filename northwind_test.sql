-- Load the files into sql

-- Name, city state and shipping fee
-- 

SELECT ship_name, ship_city, ship_state_province, shipping_fee
FROM Orders
ORDER BY shipping_fee DESC;


-- PART 2
SELECT ship_state_province, sum(shipping_fee)
FROM orders
GROUP by ship_state_province
ORDER by sum(shipping_fee) DESC;

-- Part 3
-- https://www.w3schools.com/SQL/trysql.asp?filename=trysql_select_all
SELECT Products.ProductName,
Suppliers.SupplierName, Suppliers.Phone 
FROM Products
INNER JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID;

-- 3.2
SELECT Suppliers.SupplierName, Suppliers.City, Suppliers.Country, avg(Products.Price)
FROM Suppliers
INNER JOIN Products
ON Products.SupplierID = Suppliers.SupplierID
GROUP BY Suppliers.SupplierName; -- use group by or avg will return one average price for the whole table