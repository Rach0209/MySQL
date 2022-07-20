SELECT * FROM my_db.books;
-- 중복 거르기
SELECT * FROM books WHERE price BETWEEN 1000 AND 10000
UNION
SELECT * FROM books WHERE title LIKE '책%';
-- 중복허용
-- 컬럼의 개수, 순서, 타입이 중요.
SELECT title, price, bookId FROM books WHERE price BETWEEN 1000 AND 10000
UNION ALL
SELECT * FROM books WHERE title LIKE '책%';