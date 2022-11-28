-- Active: 1663945334496@@127.0.0.1@3306@Tmp
-- desc employees;

-- ALTER TABLE `employees` ADD INDEX idx_first_name(`first_name`(3));
-- CREATE INDEX idx_first_name ON employees(first_name(3));

-- DROP INDEX first_name ON employees;
-- DROP INDEX idx_first_name ON employees;

-- select * from employees WHERE first_name='Anneke';


use Tmp;

drop TABLE artist;

CREATE TABLE artist (
  fname VARCHAR(20),
  lname VARCHAR(20) NOT NULL DEFAULT ''
);

INSERT INTO artist (fname) VALUES ('Robert');

SELECT * FROM artist;

SHOW CREATE TABLE artist;
desc artist;

CREATE TABLE artist (
  id MEDIUMINT,
  fname VARCHAR(20) UNIQUE DEFAULT NULL,
  lname VARCHAR(20) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE artist (
  id MEDIUMINT(4) NOT NULL AUTO_INCREMENT,
  fname VARCHAR(20),
  lname VARCHAR(20) NOT NULL,
  PRIMARY KEY(id),
  UNIQUE(lname)
);

CREATE TABLE artist (
	id INT PRIMARY KEY,
	fname VARCHAR(20) DEFAULT NULL,
	lname VARCHAR(20) NOT NULL,
	CONSTRAINT lname UNIQUE (lname)
);
desc artist;

INSERT INTO artist VALUES (1,'Fname1', 'Lname1');
INSERT INTO artist VALUES (1,'Fname1', 'Lname1');


drop TABLE t;
CREATE TABLE t(
	id INT UNSIGNED PRIMARY KEY,
	c1 SMALLINT,
	c2 SMALLINT
);
desc t;
drop table t;
CREATE TABLE t(
	id INT PRIMARY KEY AUTO_INCREMENT,
	c1 SMALLINT,
	c2 SMALLINT
);

insert into t (c1,c2)
VALUES (1,1),(1,1),(1,1);

select * from t;



desc t;

INSERT INTO t (c1) VALUES (1);


CREATE TABLE users(
	pin INT NOT NULL UNIQUE,
	name VARCHAR(20)
);
INSERT INTO users VALUES (1234561234, 'Jhon');
INSERT INTO users VALUES (1234561234, 'Adam');

SELECT * FROM users;

-- Define the Parent Table
DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS`customers` (
	`id` int NOT NULL AUTO_INCREMENT,
	`first_name` varchar(45) NOT NULL,
	`last_name` varchar(45) NOT NULL,
	`email` varchar(100) DEFAULT NULL,
	PRIMARY KEY (`id`)
);

-- Define the Child Table
DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders`(
	`id` int NOT NULL AUTO_INCREMENT,
	`customer_id` int NOT NULL,
	`order_date` datetime NOT NULL,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`customer_id`)
		REFERENCES `customers`(`id`)
			ON DELETE CASCADE
			ON UPDATE CASCADE
);

INSERT INTO `customers` (`first_name`,`last_name`,`email`) VALUES
('Jhon','Smith','jhon@smith.com'),
('Maria','Kox','maria@gmail.com'),
('Peter','Kox','peter@gmail.com');


INSERT INTO `orders` (`customer_id`,`order_date`) VALUES
(1, "2022-11-20 21:00:00"),
(1, "2022-10-20 21:30:00"),
(1, "2022-10-20 21:38:00"),
(3, "2022-10-22 17:52:00"),
(3, "2022-03-22 18:59:00");

DELETE FROM customers WHERE id=1;
