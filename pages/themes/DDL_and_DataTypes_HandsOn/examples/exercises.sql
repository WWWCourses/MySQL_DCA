 drop table users;


 CREATE TABLE IF NOT EXISTS users (
   fname VARCHAR(20),
   lname VARCHAR(20),
   birth_year YEAR
 );

 SHOW CREATE TABLE users;

 ALTER TABLE users ADD COLUMN birth_date DATETIME;
 ALTER TABLE users ADD COLUMN salary DECIMAL(8,2);
 ALTER TABLE users DROP COLUMN birth_year;

INSERT INTO users (fname,lname,birth_date,salary)
VALUES ('Jhon','Smith', '1990-11-25', 4500.50 );

SELECT * FROM users;

