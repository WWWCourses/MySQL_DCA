
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