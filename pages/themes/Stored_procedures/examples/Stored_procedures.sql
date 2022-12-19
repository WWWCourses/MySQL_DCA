-- Active: 1663945334496@@127.0.0.1@3306@books_store_db

/* ------------------------- User Defined Variables ------------------------- */
-- SET @a=3,
-- 	@b=4;
-- SET @rect_area=@a*@b;

-- SELECT @a,@b,@rect_area;

-- SELECT MAX(price) INTO @max_price FROM books;

-- SELECT @min_price:=MIN(price), @max_price:=MAX(price)
-- FROM books;

-- SELECT * FROM books
-- WHERE price IN (@min_price, @max_price);


-- DECLARE x INT;

/* ---------------------------- Stored Procedures --------------------------- */

DELIMITER //
CREATE PROCEDURE spIncrementCount
(INOUT counter INT, IN increment INT)
BEGIN
	SET counter=counter+increment;
END //

SET @counter = 1;

CALL spIncrementCount(@counter,5);

SELECT @counter;


DELIMITER ;

SET count=1;
CALL spGetMostExpensiveAuthorBook('Kurt', @max_book_price);

SELECT @max_book_price;

SELECT * FROM books WHERE id=1;

CALL `spGetAuthorBooks`('Kurt',@books);

SELECT @books;

/* ---------------------------- Stored Functions ---------------------------- */


CREATE FUNCTION levToDollar
(lev DECIMAL(10,2) UNSIGNED)
RETURNS DECIMAL(10,2) UNSIGNED
DETERMINISTIC
BEGIN
	RETURN lev*0.54;
END;

SELECT levToDollar(price) as price_in_dollars
FROM books
LIMIT 5;


/* ----------------------------- Local Variables ---------------------------- */
DELIMITER //
CREATE FUNCTION spGetBookPriceLevel(book_id INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE book_level VARCHAR(20) DEFAULT 'none';
	DECLARE book_price DECIMAL(5,2) DEFAULT 0;

	--Get book price:
	SELECT price INTO book_price
	FROM books
	WHERE books.id=book_id;

	-- Define book level
	CASE
		WHEN book_price<=10 THEN
			SET book_level='Cheep';
		WHEN (book_price>10 AND book_price<50) THEN
			SET book_level='Affordable';
		WHEN book_price>=50 THEN
			SET book_level='Expensive';
	END CASE;

	-- Return the book level
	RETURN book_level;
END //

DELIMITER ;









