-- CASE WHEN '조건식' THEN '참일 때 값' ELSE '거짓일 때 값' END키워드로 종료 // 끝을 알려주어야 함
SELECT CASE WHEN 10 > 5 THEN '왼쪽이 오른쪽보다 큽니다'
			ELSE '왼쪽이 오른쪽보다 작거나 같습니다'
			END;
            
SELECT CASE WHEN 10 > 5 THEN "왼쪽"
			WHEN 10 = 5 THEN "같음"
            WHEN 10 < 5 THEN "오른쪽"
            END AS '비교';
            
-- 기대 수명이 0이면 0 대신 0.0으로 조회
USE world;
SELECT Name
	, CASE WHEN LifeExpectancy IS NULL THEN 0.0 
		ELSE LifeExpectancy
        END AS Life
    FROM country;

USE hr;
-- 직원 이름(이름 + 성) 결합시킨 Full Name, 전화번호가 011로 시작하는 경우 '개인전화', 그 외의 경우 '내선 번호'라고 별명은 '분류' 조회
SELECT (SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Full Name' 
	, CASE WHEN PHONE_NUMBER LIKE '011%' THEN '개인전화'
		ELSE '내선 번호'
        END AS '분류'
FROM employees;
		
-- 특정한 값에 대해, 왼쪽값이 NULL 이면 우측의 값으로 대체하는 함수
SELECT IFNULL(NULL, '대체값');

-- 값이 3개. 1번째 값이 NULL이면 2번째값, 2번째값도 NULL이면 3번째 값으로 표현
SELECT IFNULL(IFNULL("첫번째값", "두번째값"), "세번째값");
SELECT COALESCE("첫", "두", "세"); -- 나열만 해주는 함수. 첫번째 NULL 이면 두번째, NULL이면 세번째.
-- INFNULL / NULLIF 혼돈 주의
SELECT NULLIF('A', 'A'); -- ()파라미터의 값 두개가 같으면 NULL, 다르면 첫번째 값. A A 일때 NULL, B A 일때 B
