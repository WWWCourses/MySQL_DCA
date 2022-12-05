-- Active: 1663945334496@@127.0.0.1@3306@dca

/* -------------------------------- Overview -------------------------------- */
-- example
SELECT *
FROM books
WHERE author_id = (
	SELECT id FROM authors WHERE lname='Adams'
);

/* ---------------------- Comparison Operators Overview --------------------- */
SELECT 2>3;

CREATE TABLE sales(id INT, cost_price INT, selling_price INT);
INSERT INTO sales(id, cost_price, selling_price)
VALUES
	(1, 100, 115),
    (2, 50, 45),
    (3, 200, 200),
    (4, 50, 100);

-- Select rows for which there is no profit:
SELECT *
FROM sales
WHERE cost_price>=selling_price;


-- Select rows for which the profit is biger that 20:
SELECT *
FROM sales
WHERE selling_price - cost_price>20;


-- further task
SELECT MAX(t.cost) FROM(
	SELECT s.selling_price - s.cost_price as cost FROM sales as s
) as t;


-- Select names of the authors who have lived more than 60 years:
SELECT a.lname
FROM authors as a
WHERE a.death_year - a.birth_year >60;


/* ------------------- Subqueries in Comparison Operators ------------------- */
CREATE TABLE t1(c1 INT);
CREATE TABLE t2(c2 INT);
INSERT INTO t1(c1) VALUES (1),(2),(3),(8);
INSERT INTO t2(c2) VALUES (1),(4),(5),(6);

-- Select c2 values which are equal to the sum of c1 values:
SELECT c2 FROM t2
WHERE c2=(
	SELECT SUM(c1) FROM t1
);

/* -------------------- Subqueries with ANY, ALL, IN SOME ------------------- */

-- Subqueries with ANY
-- select values in t1.c1 which are bigger than ANY value in t2.c2
SELECT *
FROM t1
WHERE c1 = ANY (
	SELECT c2 FROM t2
);

-- select authors published books after 1950
SELECT *
FROM authors as a
WHERE a.id = ANY(
	SELECT b.author_id FROM books as b
	WHERE b.pub_year>1950
);
-- this is not the same as above:
SELECT a.id,a.fn
FROM authors as a
JOIN books as b ON a.id=b.author_id
WHERE b.pub_year>1950;


-- NOT IN === <> ALL
SELECT *
FROM t1
WHERE c1 NOT IN (
	SELECT c2 FROM t2
);

SELECT *
FROM t1
WHERE c1 <> ANY (
	SELECT c2 FROM t2
);

-- SOME == ANY:
SELECT *
FROM t1
WHERE c1 <> SOME (
	SELECT c2 FROM t2
);


-- Subqueries with ALL

-- select values in t1.c1 which are different than ANY value in t2.c2
SELECT *
FROM t1
WHERE c1 <> ALL (
	SELECT c2 FROM t2
);


/* ----------------------------- Row Subqueries ----------------------------- */
CREATE TABLE a(c1 INT,c2 INT);
CREATE TABLE b(c3 INT,c4 INT);
INSERT INTO a(c1,c2) VALUES (1,2),(2,1),(3,4),(8,2);
INSERT INTO b(c3,c4) VALUES (1,2),(4,1),(5,3),(8,2);

-- find rows in a which match a row in b for which c3 value is 1
SELECT * FROM a
  WHERE (c1,c2) = (SELECT c3, c4 FROM b WHERE c3=1);

/* ------------------ Subqueries with EXISTS or NOT EXISTS ------------------ */
-- find users who have address records:
SELECT *
FROM users AS u
WHERE EXISTS (
	SELECT * FROM addresses AS a
	WHERE u.id=a.user_id
);

-- find users who have not address records
SELECT *
FROM users AS u
WHERE NOT EXISTS (
	SELECT * FROM addresses AS a
	WHERE u.id=a.user_id
);



