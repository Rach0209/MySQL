SELECT * FROM books AS A
JOIN persons AS B ON A.owner = b.personid;

SELECT * FROM books AS A
INNER JOIN persons AS B ON A.owner = B.personid;
-- null 없앰

SELECT A.*, B.firstName, B.LastName FROM books AS A
INNER JOIN persons AS B ON A.owner = B.personid;
-- 셀렉 문에 사용가능;


SELECT * FROM my_db.books AS A
JOIN persons AS B ON A.owner = B.personId
WHERE A.price >= 10000;

