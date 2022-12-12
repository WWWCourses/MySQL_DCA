-- Active: 1663945334496@@127.0.0.1@3306@dca

drop TABLE t1;
create TABLE t1(
	c1 VARCHAR(5),
	c2 INT UNSIGNED DEFAULT NULl
);

SELECT  * FROM t1;

INSERT INTO t1 (c1,c2) VALUES ('A',2),('B',3),('C',NULL),('D',3),('E',5);

SELECT STD(c1),STDDEV_SAMP(c1),VARIANCE(c1),VAR_SAMP(c1) FROM t1;

SELECT SUM(c2), SUM(c2+10), SUM(DISTINCT c2) FROM t1;

SELECT SUM(c1),SUM(c2) FROM t1;

/* ---------------------------------- COUNT --------------------------------- */
SELECT * FROM t1;
SELECT COUNT(DISTINCT c2,c1) FROM t1;

SELECT COUNT(*), COUNT(c2),COUNT(DISTINCT c2) FROM t1;


/* ----------------------------------- AVG ---------------------------------- */
SELECT AVG(c2),AVG(DISTINCT c2) FROM t1;
SELECT SUM(c2)/COUNT(c2), SUM(c2)/COUNT(*), SUM(DISTINCT c2)/COUNT(DISTINCT c2) FROM t1;

/* ----------------------------------- SUM ---------------------------------- */
SELECT SUM(c2),SUM(DISTINCT c2) FROM t1;

SELECT * FROM t1;

/* ----------------------------------- MIN ---------------------------------- */
SELECT * FROM t1;

SELECT MAX(c1), MAX(C2), MAX(DISTINCT c2) FROM t1;

/* -------------------------------- GROUP BY -------------------------------- */
select * from products;

SELECT continent, count(country)
FROM drinks
GROUP BY continent;



SELECT MAX(beer_servings) FROM drinks;
SELECT country
FROM drinks
WHERE beer_servings = (SELECT MAX(beer_servings) FROM drinks);

SELECT continent, MIN(beer_servings), MAX(beer_servings), AVG(beer_servings)
FROM drinks
GROUP BY continent;

SELECT continent, count(*)
FROM drinks
GROUP BY continent;

SELECT continent, count(country) as countries, MAX(wine_servings)
FROM drinks
GROUP BY continent;


-- How many are the countries which beer_servings is greater than average:
SELECT count(*)
FROM drinks
WHERE wine_servings>(SELECT AVG(wine_servings) FROM drinks);


SELECT country,beer_servings
FROM drinks
WHERE beer_servings > (
	SELECT AVG(beer_servings) FROM drinks
);

HAVING Clause

SELECT continent,MAX(beer_servings), MAX(wine_servings)
FROM drinks
GROUP BY continent
HAVING MAX(beer_servings)>MAX(wine_servings);


SELECT country
FROM drinks as d
GROUP BY country
HAVING d.beer_servings>AVG(d.beer_servings);

-- Find the country which consumes max wine
SELECT country, wine_servings
FROM drinks
WHERE wine_servings=MAX(wine_servings);


SELECT country, wine_servings
FROM drinks
WHERE wine_servings=(
	select MAX(wine_servings) from drinks
);


SELECT continent,MAX(wine_servings)
FROM drinks
GROUP BY continent;
HAVING wine_servings>AVG(wine_servings);

-- Find continents which have more than 30 countries;
SELECT continent, MAX(wine_servings)
FROM drinks
GROUP BY continent
HAVING MAX(wine_servings)>AVG(wine_servings);

SELECT country, MAX(wine_servings)
FROM drinks
GROUP BY country
HAVING MAX(wine_servings) = 370;

-- WHERE wine_servings=(
-- 	select MAX(wine_servings) from drinks
-- );


SELECT continent, AVG(wine_servings) as average_wine,AVG(spirit_servings) as average_spirit
FROM drinks
GROUP BY continent
HAVING average_wine>average_spirit
ORDER BY continent;

select continent, AVG(beer_servings), AVG(wine_servings), AVG(spirit_servings)
from drinks
group by continent;

select continent, MAX(beer_servings), MIN(beer_servings), AVG(beer_servings)
from drinks
group by continent;

SELECT * FROM drinks;

-- select country which consumes most wine in each continent
SELECT continent, AVG(wine_servings),MAX(wine_servings)
FROM drinks
GROUP BY continent;

SELECT *
FROM drinks
WHERE wine_servings >