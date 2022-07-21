-- LIKE persons의 모양 처럼 만들어 줌. COLUMN 의 이름, 제약사항 등
CREATE TABLE persons_copy LIKE persons;
-- 내용도 복사하기.
INSERT INTO persons_copy (firstName, lastName, age, email)
SELECT firstName, lastName, age, email FROM persons;

SELECT * FROM persons_copy;

-- view를 넣어서 복사할 수 있다.


CREATE TABLE persons_copy2
SELECT * FROM persons;

DESC persons_copy2;

-- 임시 테이블. TEMPORARY TABLE 
-- TABLE과 똑같이, column, 제약사항 등 똑같이 만들 수 있는데, 임시로 만드는 것.
-- 왼쪽의 스키마에서 새로고침해도 나타나지 않지만, 조회하면 나타난다.
-- 접속이 끊어지면, 테이블은 사라진다.
-- 테이블을 테스트하거나, 복사본을 만들어 데이터 조작하거나, Stored Procedures에서 결과 테이블을 만들어 낼때, 변수처럼 조작하기위해.
CREATE TEMPORARY TABLE mytable (
	myNum int
    , myStr VARCHAR(100)
);

SELECT * FROM mytable;
INSERT INTO mytable VALUES (1, 'a');
-- 임시 테이블 데이터를 복사해서 테이블로 넣기가 가능하다~
-- 임시 테이블로 프로시져 
-- CREATE PROCEDURE `new_procedure` ()
-- BEGIN
-- 	CREATE TEMPORARY TABLE datas(
-- 		number int
--         , today DATE
-- 	);
--     
--     INSERT INTO datas (number, today) VALUES (10, curdate());
--     
--     SELECT * FROM datas;
-- END
