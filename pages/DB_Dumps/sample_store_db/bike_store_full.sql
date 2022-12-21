CREATE DATABASE IF NOT EXISTS bike_store_db

CREATE TABLE categories (
	category_id INT PRIMARY KEY,
	category_name VARCHAR (255) NOT NULL
);

CREATE TABLE brands (
	brand_id INT PRIMARY KEY,
	brand_name VARCHAR (255) NOT NULL
);

CREATE TABLE products (
	product_id INT PRIMARY KEY,
	product_name VARCHAR (255) NOT NULL,
	brand_id INT NOT NULL,
	category_id INT NOT NULL,
	model_year SMALLINT NOT NULL,
	list_price DECIMAL (10, 2) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES categories (category_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (brand_id) REFERENCES brands (brand_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE customers (
	customer_id INT PRIMARY KEY,
	first_name VARCHAR (255) NOT NULL,
	last_name VARCHAR (255) NOT NULL,
	phone VARCHAR (25),
	email VARCHAR (255) NOT NULL,
	street VARCHAR (255),
	city VARCHAR (50),
	state VARCHAR (25),
	zip_code VARCHAR (5)
);

CREATE TABLE stores (
	store_id INT PRIMARY KEY,
	store_name VARCHAR (255) NOT NULL,
	phone VARCHAR (25),
	email VARCHAR (255),
	street VARCHAR (255),
	city VARCHAR (255),
	state VARCHAR (10),
	zip_code VARCHAR (5)
);

CREATE TABLE employees (
	employee_id INT PRIMARY KEY,
	first_name VARCHAR (50) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	email VARCHAR (255) NOT NULL UNIQUE,
	phone VARCHAR (25),
	store_id INT NOT NULL,
	manager_id INT,
	FOREIGN KEY (store_id) REFERENCES stores (store_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (manager_id) REFERENCES employees (employee_id) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE orders (
	order_id INT PRIMARY KEY,
	customer_id INT,
	order_status tinyint NOT NULL COMMENT '1 = Pending; 2 = Processing; 3 = Rejected; 4 = Completed'
	order_date DATE NOT NULL,
	required_date DATE NOT NULL,
	shipped_date DATE,
	store_id INT NOT NULL,
	employee_id INT,
	FOREIGN KEY (customer_id) REFERENCES customers (customer_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (store_id) REFERENCES stores (store_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (employee_id) REFERENCES employees (employee_id) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE order_items (
	order_id INT,
	item_id INT,
	product_id INT NOT NULL,
	quantity INT NOT NULL,
	list_price DECIMAL (10, 2) NOT NULL,
	discount DECIMAL (4, 2) NOT NULL DEFAULT 0,
	PRIMARY KEY (order_id, item_id),
	FOREIGN KEY (order_id) REFERENCES orders (order_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE stocks (
	store_id INT,
	product_id INT,
	quantity INT,
	PRIMARY KEY (store_id, product_id),
	FOREIGN KEY (store_id) REFERENCES stores (store_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO brands(brand_id,brand_name)
	VALUES(1,'Electra'),
	    (2,'Haro'),
	    (3,'Heller'),
	    (4,'Pure Cycles'),
	    (5,'Ritchey'),
	    (6,'Strider'),
	    (7,'Sun Bicycles'),
	    (8,'Surly'),
	    (9,'Trek');
INSERT INTO categories(category_id,category_name)
	VALUES(1,'Children Bicycles'),
	    (2,'Comfort Bicycles'),
	    (3,'Cruisers Bicycles'),
	    (4,'Cyclocross Bicycles'),
	    (5,'Electric Bikes'),
	    (6,'Mountain Bikes'),
	    (7,'Road Bikes');
INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price)
	VALUES(1,'Trek 820 - 2016',9,1,2016,379.99),
	    (2,'Ritchey Timberwolf Frameset - 2016',5,2,2016,749.99),
	    (3,'Surly Wednesday Frameset - 2016',8,3,2016,999.99),
	    (4,'Trek Fuel EX 8 29 - 2016',9,6,2016,2899.99),
	    (5,'Heller Shagamaw Frame - 2016',3,5,2016,1320.99),
	    (6,'Surly Ice Cream Truck Frameset - 2016',8,7,2016,469.99),
	    (7,'Trek Slash 8 27.5 - 2016',9,3,2016,3999.99),
	    (8,'Trek Remedy 29 Carbon Frameset - 2016',9,6,2016,1799.99),
	    (9,'Trek Conduit+ - 2016',9,5,2016,2999.99),
	    (10,'Surly Straggler - 2016',8,4,2016,1549);
INSERT INTO customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code)
	VALUES(1, 'Debra','Burks',NULL,'debra.burks@yahoo.com','9273 Thorne Ave. ','Orchard Park','NY',14127),
	    (2, 'Kasha','Todd',NULL,'kasha.todd@yahoo.com','910 Vine Street ','Campbell','CA',95008),
	    (3, 'Tameka','Fisher',NULL,'tameka.fisher@aol.com','769C Honey Creek St. ','Redondo Beach','CA',90278),
	    (4, 'Daryl','Spence',NULL,'daryl.spence@aol.com','988 Pearl Lane ','Uniondale','NY',11553),
	    (5, 'Charolette','Rice','(916) 381-6003','charolette.rice@msn.com','107 River Dr. ','Sacramento','CA',95820),
	    (6, 'Lyndsey','Bean',NULL,'lyndsey.bean@hotmail.com','769 West Road ','Fairport','NY',14450),
	    (7, 'Latasha','Hays','(716) 986-3359','latasha.hays@hotmail.com','7014 Manor Station Rd. ','Buffalo','NY',14215),
	    (8, 'Jacquline','Duncan',NULL,'jacquline.duncan@yahoo.com','15 Brown St. ','Jackson Heights','NY',11372),
	    (9, 'Genoveva','Baldwin',NULL,'genoveva.baldwin@msn.com','8550 Spruce Drive ','Port Washington','NY',11050),
	    (10, 'Pamelia','Newman',NULL,'pamelia.newman@gmail.com','476 Chestnut Ave. ','Monroe','NY',10950),
	    (11, 'Deshawn','Mendoza',NULL,'deshawn.mendoza@yahoo.com','8790 Cobblestone Street ','Monsey','NY',10952),
	    (12, 'Robby','Sykes','(516) 583-7761','robby.sykes@hotmail.com','486 Rock Maple Street ','Hempstead','NY',11550);

INSERT INTO orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,employee_id)
	VALUES(1,1,2,'2015-01-01','2015-01-03','2015-01-03',1,2),
	    (2,2,2,'2016-01-01','2016-01-04','2016-01-03',2,6),
	    (3,3,2,'2019-01-02','2019-01-05','2019-01-03',2,7),
	    (4,4,2,'2018-01-03','2018-01-04','2018-01-05',1,3),
	    (5,5,2,'2011-01-03','2011-01-06','2011-01-06',2,6),
	    (6,6,2,'2014-01-04','2014-01-07','2014-01-05',2,6),
	    (7,7,2,'2013-01-04','2013-01-07','2013-01-05',2,6),
	    (8,8,2,'2013-01-04','2013-01-05','2013-01-05',2,7),
	    (9,9,2,'2016-01-05','2016-01-08','2016-01-08',1,2),
	    (10,10,2,'2015-01-05','2015-01-06','2015-01-06',2,6),
	    (11,11,2,'2019-01-05','2019-01-08','2019-01-07',2,7),
	    (12,12,2,'2015-01-06','2015-01-08','2015-01-09',1,2),
	    (13,1,2,'2016-01-08','2016-01-11','2016-01-11',2,6),
	    (14,4,2,'2018-01-09','2018-01-11','2018-01-12',1,3),
	    (15,7,2,'2010-01-09','2010-01-10','2010-01-12',2,7);
INSERT INTO order_items(order_id, item_id, product_id, quantity, list_price,discount)
	VALUES(1,1,10,1,599.99,0.2),
	    (2,1,9,1,599.99,0.07),
	    (3,1,3,1,999.99,0.05),
	    (4,1,2,2,749.99,0.1),
	    (5,3,6,1,599.99,0.07),
	    (6,1,8,1,449.00,0.07),
	    (7,1,5,1,529.99,0.07),
	    (8,1,4,1,269.99,0.05),
	    (9,1,7,2,3999.99,0.1),
	    (10,1,1,1,269.99,0.1),
	    (11,1,8,1,1799.99,0.05),
	    (12,1,4,2,2899.99,0.1),
	    (13,1,10,1,269.99,0.1),
	    (14,1,6,1,469.99,0.07),
	    (15,3,5,2,449.00,0.05);
INSERT INTO stores(store_id, store_name, phone, email, street, city, state, zip_code)
    VALUES(1, 'Santa Cruz Bikes','(831) 476-4321','santacruz@bikes.shop','3700 Portola Drive', 'Santa Cruz','CA',95060),
        (2, 'Baldwin Bikes','(516) 379-8888','baldwin@bikes.shop','4200 Chestnut Lane', 'Baldwin','NY',11432),
        (3, 'Rowlett Bikes','(972) 530-5555','rowlett@bikes.shop','8000 Fairway Avenue', 'Rowlett','TX',75088);

INSERT INTO employees(employee_id, first_name, last_name, email, phone, store_id, manager_id)
	VALUES(1,'Fabiola','Jackson','fabiola.jackson@bikes.shop','(831) 555-5554',1,NULL),
	    (2,'Mireya','Copeland','mireya.copeland@bikes.shop','(831) 555-5555',1,1),
	    (3,'Genna','Serrano','genna.serrano@bikes.shop','(831) 555-5556',1,2),
	    (4,'Virgie','Wiggins','virgie.wiggins@bikes.shop','(831) 555-5557',1,2),
	    (5,'Jannette','David','jannette.david@bikes.shop','(516) 379-4444',2,1),
	    (6,'Marcelene','Boyer','marcelene.boyer@bikes.shop','(516) 379-4445',2,5),
	    (7,'Venita','Daniel','venita.daniel@bikes.shop','(516) 379-4446',2,5),
	    (8,'Kali','Vargas','kali.vargas@bikes.shop','(972) 530-5555',3,1),
	    (9,'Layla','Terrell','layla.terrell@bikes.shop','(972) 530-5556',3,7),
	    (10,'Bernardine','Houston','bernardine.houston@bikes.shop','(972) 530-5557',3,7);
INSERT INTO stocks(store_id, product_id, quantity)
	VALUES(1,1,27),
	    (1,2,5),
	    (1,3,6),
	    (2,4,14),
	    (2,5,5),
	    (2,6,28),
	    (3,7,14),
	    (3,8,24),
	    (3,9,0),
	    (3,10,5);