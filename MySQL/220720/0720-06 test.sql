SELECT * FROM hr.employees;
/*
	부서 -- (employees.department_id => departments.department_id)
    직책 -- (employees.job_id -참-조-> job.job_id)
    매니저 -- (departments.MANAGER_ID -참-조-> employees.employee_id)
    위치 -- (department_id.location_id -참-조-> locations.location_id)
    
	1. 모든 부서의 부서명과 관리자(외래키 MANAGER_ID -> employees (employee_id 참조)) 의 이름
    2. 부서명이 IT로 시작하는 부서에서 근무하는 직원들의 이름과 부서명 조회
    3. 모든 직원들의 이름과 직책(JOB_TITLE) - (employees.job_id -참-조-> job.job_id) 조회
    4. 직원의 해당 직책의 jobs테이블에 책정된 최대 연봉(MAX_SALARY)을 초과한 연봉을 받는 직원이름, 현재연봉, 최대연봉 조회
    5. 부서의 (COUNTRY_ID)가 'US'인 부서에서 근무하는 직원명과 부서명.
*/
SELECT * FROM departments;
select * from jobs;
select * from locations;
-- 1.
SELECT A.DEPARTMENT_NAME, B.FIRST_NAME, B.LAST_NAME
FROM departments AS A
JOIN employees AS B ON A.MANAGER_ID = B.MANAGER_ID;

-- 2.
SELECT A.FIRST_NAME, A.LAST_NAME, B.DEPARTMENT_NAME FROM employees AS A
RIGHT JOIN departments AS B ON B.DEPARTMENT_ID = A.DEPARTMENT_ID
WHERE B.DEPARTMENT_NAME LIKE 'IT%';

-- 3.
SELECT A.FIRST_NAME, A.LAST_NAME, B.JOB_TITLE FROM employees AS A
JOIN jobs AS B ON B.JOB_ID = A.JOB_ID;

-- 4.
SELECT A.FIRST_NAME, A.SALARY, B.MAX_SALARY FROM employees AS A
JOIN jobs AS B ON B.JOB_ID = A.JOB_ID
WHERE A.SALARY >= B.MAX_SALARY;

-- 5.
SELECT A.FIRST_NAME, A.LAST_NAME, B.DEPARTMENT_NAME FROM employees AS A
JOIN departments AS B ON B.DEPARTMENT_ID = A.DEPARTMENT_ID
JOIN locations AS C ON C.LOCATION_ID = B.LOCATION_ID
WHERE C.COUNTRY_ID = 'US';
