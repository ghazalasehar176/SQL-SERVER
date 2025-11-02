CREATE DATABASE shop

--USE DATABASE
USE shop

--create 
CREATE TABLE product(
		id int,
		name varchar(50),
		price int,
		stock int,
		description text 
)
--insert
INSERT INTO product(id,name,price,stock,description)
VALUES
(1,'shirt' ,500 ,20 , 'This is shirt 500 rupees'),
(2,'shirt' ,600 ,20 , 'This is jean 500 rupees'),
(3,'shirt' ,700 ,20 , 'This is jeans1 500 rupees'),
(4,'shirt' ,800 ,20 , 'This is jeans2 500 rupees')
--select 
SELECT * FROM product

--delete
DELETE FROM product
DELETE FROM product WHERE id = 2

--update
UPDATE product SET name = 'cap' WHERE id = 3

UPDATE product SET
name = 'black jeans' , 
price = 1200 , 
description = 'this is black jeans'
WHERE id = 4

--DROP 
DROP TABLE product