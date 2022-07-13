-- 데이터 베이스 => 집계, 통계를 위함
-- 집계 함수 특징 : '여러 개의 행'으로 된 정보들을 연산을 통해 '한 개의 결과'로 만들어낸다.
SELECT * FROM employees;
-- row의 개수를 세는 집계함수. *은 NULL 값에 영향 받지 않음.
SELECT COUNT(*) FROM employees;

-- 전화번호가 515~~로 시작하는 직원을 조회하는 쿼리문
SELECT * FROM employees WHERE PHONE_NUMBER LIKE '515%';
-- 전화번호가 515~~로 시작하는 직원의 수를 조회하는 쿼리문
SELECT COUNT(*) FROM employees WHERE PHONE_NUMBER LIKE '515%';

-- 합
SELECT SUM(SALARY) FROM employees;
-- 평균
SELECT AVG(SALARY) FROM employees;
-- 최대
SELECT MAX(SALARY) FROM employees;
-- 최소
SELECT MIN(SALARY) FROM employees;

-- 최대 연봉과 최소 연봉의 차를 구해봅시다.
SELECT MAX(SALARY) - MIN(SALARY) AS '최대최소 연봉 차이' FROM employees;

