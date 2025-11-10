Create DATABASE users

USE users

CREATE TABLE users(
id int,
name varchar(20),
phone int
)

SELECT * FROM users

--ALTER TABLE ADD COLUMNS 
ALTER TABLE users ADD gender varchar(20)
ALTER TABLE users ADD addressed varchar(30)

--ALTER TABLE DROP COLUMNS
ALTER TABLE users DROP COLUMN addressed


--MODIFY
ALTER TABLE users ALTER COLUMN phone varchar(30)

--RENAME COULMN NAME 
EXEC sp_rename 'users.phone' , 'phone_no' , 'COLUMN';
EXEC sp_rename 'users' , 'users_data';


CREATE TABLE product(id int , names varchar(50),  price int , Stock int , description varchar(70))


INSERT INTO product (id, names, price, Stock, description) VALUES 
(99, 'Wireless Mouse', 19.99, 120, 'Ergonomic wireless mouse with USB receiver'),
(98, 'Mechanical Keyboard', 49.99, 75, 'RGB backlit mechanical keyboard with blue switches'),
(97, 'USB-C Charger', 14.99, 200, 'Fast charging USB-C wall adapter 20W'),
(96, 'Bluetooth Speaker', 29.99, 90, 'Portable waterproof Bluetooth speaker'),
(62, 'Gaming Monitor', 199.99, 30, '27-inch full HD gaming monitor 144Hz'),
(63, 'Laptop Stand', 23.50, 60, 'Adjustable aluminum laptop stand'),
(7, 'Noise Cancelling Headphones', 89.99, 40, 'Over-ear wireless noise cancelling headphones'),
(8, 'Webcam 1080p', 39.99, 85, 'Full HD USB webcam with microphone'),
(9, 'HDMI Cable 6ft', 7.99, 150, 'High-speed HDMI cable with gold connectors'),
(10, 'Smart LED Bulb', 12.99, 100, 'Wi-Fi enabled smart bulb with app control'),
(11, 'External Hard Drive 1TB', 59.99, 70, 'Portable 1TB USB 3.0 external hard drive'),
(12, 'Fitness Tracker', 49.95, 65, 'Water-resistant fitness tracker with heart rate monitor'),
(13, 'Wireless Earbuds', 39.99, 130, 'True wireless earbuds with charging case'),
(14, 'Graphics Tablet', 89.00, 25, 'Drawing tablet with pressure-sensitive pen'),
(15, 'LED Desk Lamp', 18.50, 110, 'Adjustable LED desk lamp with touch control'),
(16, 'Smartwatch', 129.99, 45, 'Bluetooth smartwatch with health tracking'),
(17, 'USB Flash Drive 64GB', 9.99, 180, 'USB 3.0 flash drive with keychain loop'),
(18, 'Portable Projector', 159.99, 20, 'Mini HD projector with HDMI and USB input'),
(19, 'Phone Tripod Stand', 15.99, 95, 'Adjustable tripod with phone holder'),
(20, 'Laptop Backpack', 34.99, 50, 'Water-resistant laptop backpack with USB port'),
(21, 'Car Phone Mount', 11.99, 140, 'Universal magnetic phone holder for car'),
(22, 'Gaming Chair', 149.99, 15, 'Ergonomic gaming chair with lumbar support'),
(23, 'Power Bank 10000mAh', 22.95, 120, 'Slim power bank with dual USB output'),
(24, 'Digital Thermometer', 6.99, 200, 'Fast-reading digital body thermometer'),
(25, 'Smart Plug', 10.99, 100, 'Wi-Fi smart plug with voice control'),
(26, 'Wireless Charger Pad', 17.99, 90, 'Qi-certified fast wireless charging pad'),
(27, 'VR Headset', 299.00, 10, 'Virtual reality headset with motion tracking'),
(28, 'USB Desk Fan', 13.50, 80, 'Portable USB-powered desktop fan'),
(29, 'Bluetooth Keyboard', 27.99, 55, 'Compact Bluetooth keyboard for tablets and phones'),
(30, 'Wi-Fi Range Extender', 24.99, 60, 'Signal booster for home Wi-Fi coverage')

DROP TABLE product

SELECT * FROM  product

--SELECT AND 
SELECT * FROM product WHERE Stock >= 20 AND price >= 150  AND id >= 10

--SELECT OR
SELECT * FROM  product WHERE Stock >= 100  OR price <=200 OR id <= 5

--SELECT NOT
SELECT * FROM product WHERE NOT id > 10 OR NOT Stock >= 40 