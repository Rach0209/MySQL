-- view 를 만들었다.

-- CREATE VIEW `new_view` AS
-- SELECT A.*, B.DEPARTMENT_NAME, B.MANAGER_ID AS '부서 매니저', B.LOCATION_ID FROM employees A
-- LEFT JOIN departments B ON A.DEPARTMENT_ID = B.DEPARTMENT_ID;


-- view는 테이블에서 한것처럼 조건문, 집계, 조인 모두 사용 가능.
-- 보기 편하게 하기위한 목적. 값의 조작은 불가능. (INSERT)
SELECT * FROM new_view
WHERE EMPLOYEE_ID = 100;

SELECT COUNT(*) FROM new_view;

SELECT * FROM new_view A
LEFT JOIN locations B ON A.LOCATION_ID = B.LOCATION_ID;

