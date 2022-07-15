-- 부서 ID가 90인 직원들 인원수
SELECT COUNT(*) FROM employees
	WHERE DEPARTMENT_ID = 90;
-- 부서 id 60
SELECT COUNT(*) FROM employees
	WHERE DEPARTMENT_ID = 60;
-- 부서 id 30
SELECT COUNT(*) FROM employees
	WHERE DEPARTMENT_ID = 30;

-- 부서별(그룹)로 직원들의 인원 수
-- GROUP BY => 그룹 별로 집계를 낸다.
SELECT DEPARTMENT_ID, COUNT(*) FROM employees
	GROUP BY DEPARTMENT_ID;
    
-- 부서별 최고 연봉, 최저 연봉, 평균 연봉, 연봉 합
SELECT DEPARTMENT_ID, MAX(SALARY), MIN(SALARY), AVG(SALARY), SUM(SALARY) 
FROM employees 
GROUP BY DEPARTMENT_ID;

-- JOB_ID의 젤 위에 존재하는 값의 LAST_NAME 1개만 조회
SELECT JOB_ID, LAST_NAME FROM employees GROUP BY JOB_ID;
-- 중복 제거 -- 'DISTINCT'
-- 행의 값이 내가 조회하고자하는 모든 값이 같아야 중복으로 처리 => 중복 제거 
-- JOB_ID에 존재하는 LAST_NAME의 모두가 나옴 106개
SELECT DISTINCT JOB_ID, LAST_NAME FROM employees;

-- 직원 테이블 LAST_NAME을 중복 제거하고 조회
SELECT DISTINCT LAST_NAME FROM employees;
-- 직원 테이블 LAST_NAME 그룹 별로 인원 수 조회
SELECT LAST_NAME, COUNT(*) FROM employees GROUP BY LAST_NAME;
-- 같은 LAST_NAME 그룹의 카운트가 2이상인 행들만 조회
SELECT LAST_NAME, COUNT(*) 
FROM employees 
-- WHERE COUNT(*) > 1 -- WHERE은 FROM에서 가져올 때 조건을 검사
GROUP BY LAST_NAME
HAVING COUNT(*) > 1; -- 그룹에 대한 조건절은 'HAVING' 사용
-- 위의 성을 가지는 직원 목록 조회
SELECT * FROM employees WHERE LAST_NAME IN (
"Cambrault"
, "Grant"
, "King"
, "Smith"
, "Taylor"
);
-- 서브쿼리로 처리
SELECT * FROM employees WHERE LAST_NAME IN (
	SELECT LAST_NAME
    FROM employees
    GROUP BY LAST_NAME
    HAVING COUNT(*) > 1
);
-- 급여 중복제거 목록 57row
SELECT DISTINCT SALARY FROM employees ORDER BY SALARY;
-- 5번째로 적게 받는 직원들 목록
-- SALARY 중복제거 후, 4칸 건너띄면 5번째 연봉
SELECT * FROM employees 
WHERE SALARY = (SELECT DISTINCT SALARY FROM employees ORDER BY SALARY LIMIT 1 OFFSET 4);

-- 상위 연봉 50명(같은 연봉에 대해서 이름이 빠른친구)에 대해서 부서별로 몇 명씩 있는지?
SELECT * FROM employees;
SELECT DEPARTMENT_ID, COUNT(*) 
 FROM
	(SELECT * FROM employees 
		ORDER BY SALARY DESC, FIRST_NAME ASC 
        LIMIT 50)
	AS GIVEMEMORE
	GROUP BY DEPARTMENT_ID;
