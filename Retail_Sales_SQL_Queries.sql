CREATE DATABASE RetailPortfolio;

USE RetailPortfolio;

SELECT *
FROM RetailSales;

SELECT COUNT(*)
FROM RetailSales;

SELECT COUNT(*) AS NUMBEROfColumns
FROM INFORMATION_SCHEMA. COLUMNS
WHERE TABLE_NAME= 'RetailSales';

SELECT COUNT(*) AS MissingCustomer
FROM RetailSales
WHERE CustomerId is NULL 

SELECT COUNT(*) AS MissingDisCount
FROM RetailSales
WHERE Discount is NULL ;

SELECT PaymentMethod, COUNT(*) AS CountRows
FROM RetailSales
GROUP BY PaymentMethod
ORDER BY CountRows DESC;

SELECT OrderStatus, COUNT(*) AS CountRows
FROM RetailSales
GROUP BY OrderStatus
ORDER BY CountRows DESC;

SELECT Category, COUNT(*) AS CountRows
FROM RetailSales
GROUP BY Category
ORDER BY CountRows DESC;

SELECT Segment, COUNT(*) AS CountRows
FROM RetailSales
GROUP BY Segment
ORDER BY CountRows DESC;