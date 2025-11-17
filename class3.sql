--Aggregate Function
--Sum , Count , Avg , Min , Max
--Group By

Use users

SELECT * FROM product
--SUM 
--AS
SELECT SUM(price) AS PriceTotal FROM product
SELECT SUM(price) PriceTotal FROM product

--COUNT 
SELECT COUNT(id) totalProduct from product


--AVG 
SELECT AVG(price) priceAverage FROM product

--MIN
SELECT MIN(STOCK) totalProduct FROM product

--MAX 
SELECT MAX(Stock) totalProduct FROM product

CREATE TABLE myProduct(
id int , 
named varchar(20),
price int , 
stock int ,
category varchar(50),
);

INSERT INTO myProduct(id , named , price , stock , category)
VALUES
(1, 'Cotton Fabric', 15, 100, 'Fabric'),
(2, 'Silk Fabric', 40, 50, 'Fabric'),
(3, 'Zipper', 5, 200, 'Accessories'),
(4, 'Linen Fabric', 25, 75, 'Fabric'),
(5, 'Velvet Fabric', 35, 40, 'Fabric'),
(6, 'Buttons Pack', 7, 150, 'Accessories'),
(7, 'Wool Fabric', 30, 55, 'Fabric'),
(8, 'Sewing Thread', 3, 300, 'Tools'),
(9, 'Chiffon Fabric', 22, 80, 'Fabric'),
(10, 'Satin Fabric', 28, 65, 'Fabric'),
(11, 'Measuring Tape', 4, 120, 'Tools'),
(12, 'Organza Fabric', 27, 70, 'Fabric'),
(13, 'Pins Box', 6, 180, 'Accessories'),
(14, 'Canvas Fabric', 18, 90, 'Fabric'),
(15, 'Polyester Fabric', 12, 120, 'Fabric'),
(16, 'Scissors', 15, 75, 'Tools'),
(17, 'Rayon Fabric', 17, 110, 'Fabric'),
(18, 'Jute Fabric', 14, 95, 'Fabric'),
(19, 'Tailor Chalk', 2, 200, 'Tools'),
(20, 'Tweed Fabric', 32, 45, 'Fabric'),
(21, 'Flannel Fabric', 21, 85, 'Fabric'),
(22, 'Thread Cutter', 8, 60, 'Tools'),
(23, 'Corduroy Fabric', 26, 60, 'Fabric'),
(24, 'Fabric Glue', 10, 50, 'Tools'),
(25, 'Georgette Fabric', 23, 75, 'Fabric'),
(26, 'Seam Ripper', 7, 90, 'Tools'),
(27, 'Crepe Fabric', 24, 80, 'Fabric'),
(28, 'Elastic Band', 9, 130, 'Accessories'),
(29, 'Muslin Fabric', 13, 100, 'Fabric'),
(30, 'Lace Fabric', 38, 35, 'Fabric');


SELECT* FROM product
--Purpose: Data ko categories ya groups me divide karta hai.
--Use: Jab aggregate functions (SUM, COUNT, AVG, MAX, MIN) lagana ho har group ke liye.
--GROUP BY 
SELECT category , COUNT(category) productCount , SUM(price) categoryAmount FROM myProduct GROUP BY category;


--Purpose: Grouped data par filter lagata hai.
--Use: WHERE aggregate functions ke saath kaam nahi karta, HAVING use karte hain.
--Having
SELECT SUM(price) AS TotalPrice , COUNT(stock) AS StockCount , category FROM myProduct
GROUP BY category HAVING COUNT(stock) > 6 


SELECT COUNT(id) productCount , SUM(price) TotalPrice , category FROM myProduct GROUP BY  category HAVING SUM(price) >= 30