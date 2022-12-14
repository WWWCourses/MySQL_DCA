-- Active: 1663945334496@@127.0.0.1@3306@books_store_db

SELECT *
FROM clients as cl
JOIN clients_books as cb
ON cl.id=cb.client_id;

SELECT cl.name,cl.age,count(cb.book_id) as books
FROM clients as cl
JOIN clients_books as cb
ON cl.id=cb.client_id
GROUP BY cb.client_id
HAVING books>2;