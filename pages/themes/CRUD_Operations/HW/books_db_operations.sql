-- Active: 1663945334496@@127.0.0.1@3306@books_db


-- list names of books written between 1950 - 1970 years order by book name, ascending
SELECT book_name FROM books WHERE pub_year>=1950 AND pub_year<=1970 ORDER BY book_name;

-- find how many books each author have written
SELECT count(*)
FROM books
GROUP BY author_id;

SELECT count(*), lname from books,authors WHERE  authors.id=author_id
GROUP BY author_id;
