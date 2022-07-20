SELECT * FROM employees;
-- 각 직원들의 이름과 연봉, 평균연봉과의 차(연봉 - 평균연봉)를 조회해보세요.alter
SELECT AVG(SALARY) AS '평균연봉' FROM employees;
SELECT FIRST_NAME, SALARY, ROUND(SALARY - (SELECT AVG(SALARY) FROM employees)) AS '평균연봉과의 차' FROM employees;
-- 최고 연봉직원과 최저 연봉직원들의 이름을 조회해보세요.
SELECT MAX(SALARY) FROM employees;
SELECT MIN(SALARY) FROM employees;
SELECT FIRST_NAME FROM employees WHERE SALARY = (SELECT MAX(SALARY) FROM employees);
SELECT FIRST_NAME FROM employees WHERE SALARY = (SELECT MAX(SALARY) FROM employees) OR SALARY = (SELECT MIN(SALARY) FROM employees);
-- 평균 연봉보다 높게 받는 직원 조회
SELECT * FROM employees WHERE SALARY > (SELECT AVG(SALARY) FROM employees);
-- 부서명이 IT로 시작하는 직원들의 수(카운트)를 조회해보세요.
SELECT * FROM departments;
SELECT * FROM departments WHERE DEPARTMENT_NAME LIKE 'IT%';
SELECT COUNT(*) AS '부서명이 IT로 시작하는 직원 수' FROM employees WHERE DEPARTMENT_ID IN 
( 
	SELECT DEPARTMENT_ID FROM departments WHERE DEPARTMENT_NAME LIKE 'IT%'
);
-- Douglas Grant의 이메일을 'dog@naver.com'으로 변경해보세요.
SELECT EMAIL FROM employees WHERE FIRST_NAME = 'Douglas' AND LAST_NAME = 'Grant';
UPDATE employees
SET EMAIL = 'dog@naver.com' 
WHERE FIRST_NAME = 'Douglas' AND LAST_NAME = 'Grant';
-- Ellen Abel과 같은 부서에서 근무하는 직원을 연봉 내림차순으로 정렬해서 조회
SELECT * FROM employees WHERE FIRST_NAME = 'Ellen';
SELECT * FROM employees WHERE DEPARTMENT_ID = 80 ORDER BY SALARY DESC;
SELECT * FROM employees WHERE DEPARTMENT_ID = (SELECT DEPARTMENT_ID FROM employees WHERE FIRST_NAME = 'Ellen') ORDER BY SALARY DESC;
-- 부서명이 IT로 시작하는 부서에서 근무하는 최고연봉자보다 높은 연봉을 받는 직원 목록을 연봉 오름차순으로 조회
SELECT * FROM departments WHERE DEPARTMENT_NAME LIKE 'IT%'; -- 60, 210, 230
SELECT * FROM employees WHERE DEPARTMENT_ID IN
( -- 부서명이 IT로 시작하는 부서에서 근무하는 사람들
	SELECT DEPARTMENT_ID FROM departments WHERE DEPARTMENT_NAME LIKE 'IT%'
);
SELECT MAX(SALARY) FROM employees WHERE DEPARTMENT_ID IN
( -- 부서명이 IT로 시작하는 부서에서 근무하는 사람들의 최고연봉
	SELECT DEPARTMENT_ID FROM departments WHERE DEPARTMENT_NAME LIKE 'IT%'
);
-- 최종 답안
SELECT * FROM employees WHERE SALARY > (
	SELECT MAX(SALARY) FROM employees WHERE DEPARTMENT_ID IN
	( 
		SELECT DEPARTMENT_ID FROM departments WHERE DEPARTMENT_NAME LIKE 'IT%'
	)
) ORDER BY SALARY ASC;
-- 자기가 속한 부서의 평균연봉보다 많은 연봉을 받는 직원
SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM employees AS MINE WHERE SALARY > (SELECT AVG(SALARY) FROM employees WHERE DEPARTMENT_ID = MINE.DEPARTMENT_ID);