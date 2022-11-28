-- Active: 1663945334496@@127.0.0.1@3306@Tmp

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
('John','Smith','jhon@smith.com'),
('Maria','Kox','maria@gmail.com'),
('Peter','Gabriel','peter@gmail.com');


INSERT INTO `orders` (`customer_id`,`order_date`) VALUES
(1, "2022-11-20 21:00:00"),
(1, "2022-10-20 21:30:00"),
(1, "2022-10-20 21:38:00"),
(3, "2022-10-22 17:52:00"),
(3, "2022-03-22 18:59:00");
