INSERT INTO book_language (language_name) VALUES
('English'),
('French'),
('Spanish');

INSERT INTO publisher (name, established_year) VALUES
('Penguin Classics', 1935),
('HarperCollins', 1989);

INSERT INTO book (title, isbn, publication_date, price, language_id, publisher_id) VALUES
('The Great Novel', '978-3-16-148410-0', '2020-01-15', 24.99, 1, 1),
('Learning SQL', '978-1-59327-827-4', '2022-05-20', 39.95, 1, 2);