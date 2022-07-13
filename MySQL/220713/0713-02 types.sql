-- 학생
-- 이름 : 가변길이 문자열(10자)
-- 나이 : 정수
-- 학점 : 실수

CREATE TABLE students (
	name VARCHAR(10)
    , age INT
    , score DOUBLE
);
-- BIGINT, LONG은 SQL 시스템 마다 이름이 다름
-- DOUBLE 부동 소수점 표현방식 => 근사값.
DESC students;

INSERT INTO students (name, age, score) VALUES ('길동', 20, 3.3);
INSERT INTO students (name, age, score) VALUES ('둘리', 20.5, 3); -- MySQL의 특징 => 나이의 속성값이 정수라서 반올림처리됨.

SELECT * FROM students;
DELETE FROM students WHERE name = '둘리';
INSERT INTO students (name, age, score) VALUES ('길동', 21, 2.6);

-- 고유한 기준을 세우기.  (비슷한 정보의 중복 제거 방지) 자바에서 Map - 중복되지 않는 Key.

