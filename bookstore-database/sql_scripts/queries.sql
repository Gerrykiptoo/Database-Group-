-- Books by Language
SELECT l.language_name, COUNT(b.book_id) AS total_books
FROM book_language l
LEFT JOIN book b ON l.language_id = b.language_id
GROUP BY l.language_name;

-- Publisher Statistics
SELECT p.name, 
       COUNT(b.book_id) AS books_published,
       AVG(b.price) AS avg_price
FROM publisher p
LEFT JOIN book b ON p.publisher_id = b.publisher_id
GROUP BY p.name;