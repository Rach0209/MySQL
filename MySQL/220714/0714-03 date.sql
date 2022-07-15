SELECT * FROM employees;

DESC employees;

-- 현재 시스템, MySQL서버의 날짜를 사용한다.
-- MySQL 날짜 : DATE
-- 시간 : TIME
-- 날짜 시간 : DATETIME / TIMESTAMP

SELECT CURRENT_DATE();
SELECT CURRENT_TIME();
SELECT CURRENT_TIMESTAMP();

-- 특정한 날짜에 대한 값을 만들기
SELECT DATE '2022-07-14';
SELECT CAST('2022-07-14' AS DATE);
SELECT CONVERT('2022-07-14', DATE);
SELECT TIME '12:05:33';

-- HIRE_DATE가 1987년 6월 인 직원들 목록 조회
SELECT * FROM employees										-- 구분자만 존재하면 알아서 변환시도해서 인식함
WHERE HIRE_DATE BETWEEN DATE '1987/06/01' AND '1987%06@30'; -- MySQL은 날짜를 문자열로 표현해도 인식함 모든 SQL이 그런것은 아님

-- 날짜 연산 -> 함수도 지원한다.
SELECT ADDDATE('1987-06-01', 40); -- 임수입력하면 날짜를 빼줌. (=SUBDATE)
SELECT SUBDATE('1987-06-01', 1);
SELECT DATE_ADD('1987-06-01', INTERVAL 40 DAY); -- 파라미터 타입을 기간을 표현하는 타입으로 받는다. 
						   -- INTERVAL => 날짜(06-01)와 날짜(07-11)사이의 간격을 표현. 40일 간격. DAY 일수, MONTH 월수, YEAR 년수
SELECT DATE_SUB('1987-06-01', INTERVAL 1 MONTH);
SELECT '1987-06-01' + INTERVAL 1 YEAR;
SELECT '1987-06-30' + INTERVAL 1 DAY; -- 간격표현을 쓰면 합연산처럼 사용할 수 있다.

SELECT DAYOFWEEK('2022-07-14'); -- 1 = 일요일, 7 = 토요일

-- 발췌, 날짜 가져오기
SELECT EXTRACT(YEAR FROM CURRENT_DATE()); -- 2022
SELECT EXTRACT(YEAR FROM '2022-07-14'); -- 2022
SELECT EXTRACT(MONTH FROM '2022-07-14'); -- 7
SELECT EXTRACT(DAY FROM '2022-07-14'); -- 14

SELECT STR_TO_DATE('2021/06/13', '%Y/%m/%d'); -- 문자열을 날짜로. 서식문자를 통해 나타내주어야 함. 파라미터의 구분자 같게
SELECT DATE_FORMAT(DATE '2021-06-13', '%y/%M/%D'); -- 날짜를 문자열로. MySQL 날짜 서식 참고하기~
SELECT DATEDIFF('2022-06-13', '2022-06-01'); -- DATEDIFF 날짜 간의 일수 계산

-- 17일에 고용된 직원 목록
SELECT * FROM employees WHERE (EXTRACT(DAY FROM HIRE_DATE) = 17);

SELECT * FROM employees
WHERE HIRE_DATE LIKE '%-17'; -- MySQL에서 문자취급이 가능해서, LIKE로 찾기도 가능하다~

-- job_history 각 행별로 일한 '기간(일)' 조회
SELECT * FROM job_history;
SELECT START_DATE, END_DATE, DATEDIFF(END_DATE, START_DATE) AS inter FROM job_history;
-- 데이터 베이스는 어긋나지 않게 하기위해, 모든 정보를 계산해서 담는 것 보다는, 계산할 수 있는 자료는 '필요할 때마다 계산'한다.

-- SQL에서 형변환 <CAST, CONVERT...>
-- 자료형 숫자, 문자열, 날짜 의 형변환
SELECT CAST(10 AS TIME);
SELECT CAST('10' AS DOUBLE) + 5.5;
-- 똑같은 기능이지만, SQL에 따라서 없는 함수가 존재.
SELECT CONVERT(10, TIME);
SELECT CONVERT('10', DOUBLE) + 5.5;
-- MySQL은 느긋한 규칙이라 호환을 아주 잘 해주는 편