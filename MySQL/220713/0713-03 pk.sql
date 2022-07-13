DROP DATABASE my_db; -- 데이터베이스 자체 지우기

CREATE DATABASE my_db;

USE my_db; -- 사용정의 해주지 않으면 만들 수 없음.

-- 컬럼 속성 우측에 'PRIMARY KEY' 를 입력 (줄여서PK) => 주요 키(= 기본 키) 설정. 중복X , NULL 값 허용X
CREATE TABLE students (
	number INT PRIMARY KEY
	, name VARCHAR(10)
    , age INT
    , score DOUBLE
);

DESC students;

-- 주요 키 (= 기본키) (PRIMARY KEY); 테이블을 만들 때에는, PK를 무조건 생성. 없는경우도 존재하지만 기본적으로 생성해준다.
-- 주요 키는 NULL값이 올 수 없음. !!!!! NOT NULL !!!!!
-- INSERT INTO students (number, name, age, score) VALUES (NULL, '길동', 20, 3.3);
INSERT INTO students (number, name, age, score) VALUES (1234, '길동', 20, 3.3);
-- 주요키는 중복 불가능. 고유한 값이 와야함. - PK를 통해 한 행을 특정할 수 있음.
INSERT INTO students (number, name, age, score) VALUES (1235, '둘리', 30, 4.4);
INSERT INTO students (number, name, age, score) VALUES (1236, '길동', 20, 3.3);


SELECT * FROM students;



