-- Active: 1663945334496@@127.0.0.1@3306@books_db
/* -------------------- inner join vs where t1.id = t2.id ------------------- */
-- SELECT a.lname, b.book_name
-- FROM authors AS a, books as b
-- WHERE a.id = b.author_id;

-- SELECT a.lname, b.book_name
-- FROM authors AS a INNER JOIN books as b
-- ON a.id = b.author_id;



-- Select all books (name and year) written by 'Kurt Vonnegut'
-- SELECT book_name,pub_year
-- FROM books
-- WHERE author_id=(SELECT id FROM authors WHERE lname='Vonnegut');

-- SELECT lname, book_name,pub_year
-- FROM authors AS a, books as b
-- WHERE a.id=b.author_id
-- AND a.lname='Vonnegut';

-- SELECT lname, book_name,pub_year
-- FROM authors AS a INNER JOIN books as b
-- ON a.id=b.author_id
-- WHERE a.lname = 'Vonnegut';

-- Show lname, book_name, pub_year for books written after 1900

-- SELECT lname, book_name, pub_year
-- FROM authors as a, books as b
-- WHERE b.pub_year > 1900 AND a.id=b.author_id;


-- SELECT lname, book_name, pub_year
-- FROM authors as a JOIN books as b
-- ON a.id=b.author_id
-- WHERE b.pub_year > 1900;

/* ------------------------------- RIGHT JOIN ------------------------------- */
SELECT *
FROM authors as a
RIGHT OUTER JOIN books as b
ON a.id=b.author_id;

