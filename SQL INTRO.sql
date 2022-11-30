-- Using the bestbuy database:
USE bestbuy;
-- Copy the following and paste into MySql Workbench

-- find all products
SELECT * FROM products;
-- find all products that cost $1400
SELECT * FROM products WHERE price = 1400;
-- find all products that cost $11.99 or $13.99
SELECT * FROM products WHERE price = 11.99 or price = 13.99;
-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM products WHERE NOT price = 11.99;
-- find all products and sort them by price from greatest to least
SELECT * FROM products ORDER BY price DESC;
-- find all employees who don't have a middle initial
SELECT * FROM employees WHERE MiddleInitial IS NULL;
-- find distinct product prices
SELECT distinct price FROM products;
-- find all employees whose first name starts with the letter ‘j’
SELECT * FROM employees where FIRSTName like 'J%';
-- find all Macbooks
SELECT * FROM products WHERE Name LIKE 'macbook';
-- find all products that are on sale
SELECT * FROM products WHERE Onsale;
-- find the average price of all products
SELECT AVG(price) FROm products;
-- find all Geek Squad employees who don't have a middle initial
SELECT * FROM employees WHERE MiddleInitial IS NULL AND title LIKE '%Geek%Squad%';
-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest
SELECT * FROM products WHERE StockLevel BETWEEN 500 AND 1200 ORDER BY price;