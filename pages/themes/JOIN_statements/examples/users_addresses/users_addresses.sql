-- Active: 1663945334496@@127.0.0.1@3306@users_db


CREATE DATABASE users_db;


CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(255),
  PRIMARY KEY (id)
);

CREATE TABLE addresses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED DEFAULT NULL,
  city VARCHAR(255),
  PRIMARY KEY (id),
  Foreign Key (user_id) REFERENCES users(id)
);

INSERT INTO users(name)
VALUES ('Ivan'),('John'),('Merry'),('Pesho');

INSERT INTO addresses(city,user_id)
VALUES ('Sofia',1),('Paris',3);

INSERT INTO addresses(city)
VALUES ('Lodon'),('New York');


SELECT * FROM users;
SELECT * FROM addresses;



/* ------------------------------- INNER JOIN ------------------------------- */
SELECT *
FROM users as u INNER JOIN addresses as a
ON u.id = a.user_id;

SELECT *
FROM users as u JOIN addresses as a
ON u.id = a.user_id;

/* -------------------------------- LEFT JOIN ------------------------------- */
SELECT *
FROM users as u LEFT JOIN addresses as a
ON u.id = a.user_id;

/* ------------------------ LEFT JOIN with exclusion ------------------------ */
SELECT *
FROM users AS u LEFT JOIN addresses AS a
ON u.id = a.user_id
WHERE a.user_id IS NULL;


/* ------------------------------- RIGHT JOIN ------------------------------- */
SELECT u.name, a.city
FROM users AS u RIGHT JOIN addresses AS a
ON u.id = a.user_id;

/* ------------------------ RIGHT JOIN with exclusion ----------------------- */
SELECT *
FROM users AS u RIGHT JOIN addresses AS a
ON u.id = a.user_id
WHERE u.id IS NULL;


/* ------------------------------- FULL OUTER JOIN ------------------------------- */
-- OUTER JOIN = LEFT JOIN UNION [ALL] RIGHT JOIN
SELECT *
FROM users AS u LEFT JOIN addresses AS a
ON u.id = a.user_id

UNION

SELECT *
FROM users AS u RIGHT JOIN addresses AS a
ON u.id = a.user_id;


/* --------------------- FULL OUTER JOIN with exclusion --------------------- */
SELECT *
FROM users AS u LEFT JOIN addresses AS a
ON u.id = a.user_id
WHERE a.user_id IS  NULL

UNION

SELECT *
FROM users AS u RIGHT JOIN addresses AS a
ON u.id = a.user_id

WHERE u.id IS NULL;


/* ------------------------------- SEMI JOIN ------------------------------- */
-- Let's add multiple records in child table to see the difference between inner join
UPDATE addresses SET user_id=1 WHERE addresses.id=3;

SELECT *
FROM users AS u
WHERE EXISTS (
	SELECT * FROM addresses AS a
	WHERE u.id = a.user_id
);


/* ------------------------------- ANTI SEMI JOIN ------------------------------- */
SELECT *
FROM users AS u
WHERE NOT EXISTS (
	SELECT * FROM addresses AS a
	WHERE u.id = a.user_id
);



/* ---------------------------------- UNION --------------------------------- */
SELECT 1,1
UNION
SELECT 2,2;

/* ------------------------------- CROSS JOIN ------------------------------- */
SELECT *
FROM users
CROSS JOIN addresses;

SELECT * from users, addresses;
