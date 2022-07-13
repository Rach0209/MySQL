CREATE DATABASE my_db;

SHOW DATABASES;

USE my_db;

SHOW TABLES;

-- 사람 테이블
-- '열(Column)' /
-- 열1 이름 문자열 -- 괄호()안에 컬럼의 속성들을 적어줌. database에서는 타입과 '길이'를 같이 고려해야함 => name VARCHAR(10),
-- 열2 나이 정수
CREATE TABLE persons (
	name VARCHAR(10),
    age INT
); -- 테이블 이름은 고유. 같은 이름을 가질 수 없어서 2번 실행하면 오류 (이미 존재)
DESCRIBE persons;

SELECT * FROM persons;
-- 열에 값을 집어 넣는 명령어 INSERT INTO (열의 값), 넣고자하는 행의 정보 VALUES (열에대한 행의 값)
INSERT INTO persons (name, age) VALUES ("홍길동", 22);
-- 행 추가
-- '브루스 리', 30살
-- '스티븐 킹', 40살
INSERT INTO persons (name, age) VALUES ("브루스 리", 30), ("스티븐 킹", 40);

-- '철수', 20살
-- '철수', 30살
-- '철수', 40살
INSERT INTO persons (name, age) VALUES ('철수', 20), ('철수', 30), ('철수', 40);

-- '삭제'
-- 테이블의 '모든 행' 삭제
DELETE FROM persons;
-- '테이블'의 삭제
DROP TABLE persons;

-- 책 테이블 생성
-- 제목 : 문자열
-- 가격 : 정수
CREATE TABLE books (
	Title VARCHAR (25),
    Price INT
);
DROP TABLE books;
SHOW TABLES;
DESCRIBE books;
SELECT * FROM books;
-- 파워자바, 25000
-- 하늘과 바람과 별과 시, 15000 -- 컬럼의 속성에서 타이틀의 글자수가 10일 때, 넣으려는 값이 더 커서 행에 추가 할 수 없다.
-- 꽃을 보듯 너를 본다, 12000
INSERT INTO books (title, price) VALUES ('파워자바', 25000), ('하늘과 바람과 별과 시', 15000), ('꽃을 보듯 너를 본다', 12000);

-- 문자열 타입
-- CHAR(5) -- 고정된 길이값. 'A'를 넣으면 'A    '로 공백(4칸)이 모자란 길이값을 채워줌. 무조건 고정된 길이값
-- VARCHAR(5) -- 가변 길이 값. '     ' 5개의 길이 값(공백5칸)이 있는 칸에 'A'를 집어넣으면 'A'로 길이 값이 한 개로 변한다.
-- CHAR(5)를 최적화 한 이유 => A가 1byte일때, 길이가 변하지 않아서, 공백까지 총 5byte를 사용하기 때문에 공백을 지워줌으로 자원 절약.
CREATE TABLE testChar (
	fixLength CHAR(5)
    , varLength VARCHAR(5)
);
SELECT * FROM testChar;
INSERT INTO testChar (fixLength, varLength) VALUES ('A', 'A');
-- SET sql_mode = 'PAD_CHAR_TO_FULL_LENGTH'; -- sql엔진이 최적화를 시켜서 확인하기위해 특정 값 써줌. 다시 최적화 하려면 SET sql_mode = ''; 입력.
SELECT char_length(fixLength), char_length(varLength) FROM testChar;

-- 빈칸(공백) 제거 TRIM() // RTRIM() 우즉 공백 제거, LTRIM() 좌측 공백 제거.
SELECT RTRIM('A              ');
SELECT LTRIM('              A');