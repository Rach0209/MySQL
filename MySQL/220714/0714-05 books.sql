SELECT * FROM my_db.books;
DESC books;
-- DEFAULT 는 기본 값이다. 기본값 = NULL
-- 첫번째 - 수정할 컬럼, 두번째 - 바꿀 새 이름
ALTER TABLE books CHANGE COLUMN Title Title VARCHAR(30) NOT NULL;

-- GUI로 default 값을 0으로 수정하였다.
INSERT INTO books (Title) VALUES ('디폴터값확인');

SELECT * FROM books;

-- CREATE TABLE myPractice (
-- 	colName1 VARCHAR(50) DEFAULT '39838o'
-- );
--  select * from myPractice;
