-- Active: 1663945334496@@127.0.0.1@3306@dca
create table products(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	category_id INT UNSIGNED NOT NULL,
	color varchar(20),
	prod_name varchar(50),
	price decimal(5,2),
	PRIMARY KEY (id)
);

INSERT INTO products (category_id, color, prod_name,price)
VALUES
	(1, 'black', 'ball1', 10),
	(1, 'red', 'ball2', 12),
	(1, 'green', 'ball3', 8),
	(1, 'green', 'rollers1', 30),
	(2, 'black', 'shirt1', 20),
	(2, 'red', 'shirt2', 22),
	(2, 'green', 'shirt3', 21),
	(2, 'black', 'pullover', 40),
	(2, 'red', 'pullover', 42);


SELECT * FROM products;

-- find max product price per category
SELECT MAX(price)
FROM products
GROUP BY category_id
HAVING MAX(price)>30;


SELECT key,sum(data)
FROM input
GROUP BY key;