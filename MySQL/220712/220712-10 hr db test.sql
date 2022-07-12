-- hr 데이터 베이스 사용하기 명령어 작성
USE hr;
show tables;
-- employees(직원) 테이블의 구조(어떤한 컬럼이 있는지)를 조회해보세요.
DESCRIBE employees;
-- employees(직원) 테이블의 모든 행의 모든 열을 조회해보세요.
SELECT * FROM employees;
-- 직원 테이블의 First_Name(이름) 열의 값이 'John'인 직원 조회
SELECT * FROM employees WHERE First_Name = 'John';
-- 직원 테이블의 Last_Name(성) 열의 값이 'John을 포함하는 값'인 직원 조회
SELECT * FROM employees WHERE Last_Name LIKE '%John%';
-- 직원 테이블의 이름의 값이 6글자인 직원 조회
SELECT * FROM employees WHERE First_Name LIKE '______';
-- 직원 테이블 Salary(연봉) 열의 값이 10000이상 ~ 15000이하인 직원 조회
SELECT * FROM employees WHERE Salary BETWEEN 10000 AND 15000;
-- 직원 테이블의 이름, 성, 연봉 컬럼과 연봉의 6%를 연산하여 'tax'라는 별명으로 조회하세요.
SELECT First_Name AS '이름', Last_Name AS '성', Salary AS '연봉', Round(Salary * 0.06, 1) AS 'tax' FROM employees;
