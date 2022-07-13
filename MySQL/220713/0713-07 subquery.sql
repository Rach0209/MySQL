-- hr 부서(departments) 테이블 모든 행과 열 조회
SELECT * FROM departments;

-- 부서 명이 'IT%'로 시작하는 부서들 조회
SELECT * FROM departments WHERE DEPARTMENT_NAME LIKE 'IT%';

-- 60, 210, 230
-- 직원 테이블 -- 두번의 SELECT으로 값을 찾음.
-- 한 문장안에 넣기. SELECT은 두번나옴
SELECT * FROM employees WHERE DEPARTMENT_ID IN
(	-- 괄호안의 내용 ==> 서브쿼리(SubQuery).
	SELECT DEPARTMENT_ID FROM departments WHERE DEPARTMENT_NAME LIKE 'IT%'
);

-- 연봉 내림차순 정렬.
-- 연봉 상위 10명.
-- 연봉 오름차순으로 조회
SELECT * FROM (
	SELECT * FROM employees ORDER BY SALARY DESC LIMIT 10
) AS A -- 별명 안붙이면 에러. FROM 에 들어갈 때, 별명 필수. 이외에도 몇 가지 있음.
ORDER BY SALARY ASC;

-- 동적으로 값을 구하고자하는 컬럼명을 적는 부분에도 서브쿼리 작성 가능.
SELECT (SELECT 1), 2, 3, 4;

-- David Austin의 연봉과 같은 연봉을 받는 직원들 조회하기
SELECT * FROM employees WHERE FIRST_NAME = 'David' AND LAST_NAME = 'Austin';
SELECT * FROM employees WHERE SALARY = ( -- 서브쿼리
	SELECT SALARY FROM employees WHERE FIRST_NAME = 'David' AND LAST_NAME = 'Austin'
);