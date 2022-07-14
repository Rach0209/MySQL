SELECT  * FROM employees;
-- 공백 제거해주는 TRIM. 글자 사이에 있는 공백 제거는 불가능. 왼쪽, 오른쪽, 양쪽 가능.
SELECT RTRIM('a      '); -- 오른쪽 공백 제거
SELECT LTRIM('     a     '); -- 왼쪽 공백 제거
SELECT TRIM('      a      '); -- 양쪽 공백 제거

-- 대소문자 변환
SELECT LOWER('ABCDE'); -- 소문자로 변환
SELECT UPPER('abcde'); -- 대문자로 변환

-- 글자순서 뒤집기
SELECT REVERSE('qwer');

-- 'asdf' + 'zxcv' 문자열 붙이기
SELECT CONCAT('문자열', ' 결합', ' 함수');
SELECT CONCAT("결합", NULL, "값이 있으면?"); -- NULL값이 하나라도 포함되면 => NULL값 반환

-- 문자열 길이
SELECT CHAR_LENGTH('문자열 길이');

-- 문자열 변환/치환
SELECT REPLACE('원본 문자열에서 변환합니다', '변환', 'REPLACE');
SELECT REPLACE(1234, '1', '5');
SELECT REPLACE(12341, '1', '5'); -- 모든 '1'이 '5'로 변환

-- 문자열 자르기. 순서는 java(index가 0부터 시작)와 다르게, '1부터 시작'
-- 5번째부터 1개 순서
SELECT SUBSTRING('employees', 5); -- 문자열, 자를 시작 위치
SELECT SUBSTRING('employees', 5, 2); -- 문자열, 자를 시작 위치, 개수
SELECT SUBSTRING('employees', -3); -- 음수일 때 우측에서부터 위치를 세어나감
SELECT SUBSTRING('employees', -3, 2);

-- CONCAT과 비슷한데, 총 길이수를 제한할 수 있다.
-- (기본문자, 자릿수, 붙일문자열);
SELECT LPAD("123", 5, "0");
SELECT RPAD("456", 5, "*");
SELECT RPAD(456, 5, 456);
-- 반복 결합
SELECT REPEAT("반복결합", 3);

-- 글자의 위치를 찾기 1부터 시작임
SELECT LOCATE('D', 'ABCDEFG');
SELECT LOCATE('위치', '문자열의 위치를 찾는데 SQL의 문자 순서는 1부터임!!');
SELECT LOCATE('.', "515.123.4567", 5); -- 시작점을 주면, 시작점에서부터 계산한다. 반환 숫자는 총 길이에서 위치하는 값.

-- "515.123.4567"
-- .을 기준으로 각각 자르기
SELECT SUBSTRING("515.123.4567", 1, 3);
SELECT SUBSTRING("515.123.4567", 5, 3);
SELECT SUBSTRING("515.123.4567", -4);

-- 직원 테이블 전화번호 앞자리 3자리로 그룹지어 개수
SELECT * FROM employees;
SELECT (SELECT SUBSTRING(PHONE_NUMBER, 1, 3)) AS '앞번호3자리 그룹', COUNT(*) FROM employees GROUP BY (SELECT SUBSTRING(PHONE_NUMBER, 1, 3));

-- 수에 대한 함수
SELECT RAND(); -- 랜덤 수 생성
SELECT ROUND(123.123, 2); -- 반올림, 소수점 자릿수
SELECT FLOOR(1.555); -- 소수점 버림
SELECT CEIL(1.222); -- 소수점 올림 (정수값 기준으로 크면서, 소수점은 올림) 음수일 때, 헷갈릴 수 있음.

SELECT ABS(-55); -- 절댓값
SELECT POW(2, 8); -- 제곱

SELECT PI();

-- 주사위 1 ~ 6 사이의 난수(정수) 생성
SELECT CEIL(RAND() * 6) ;

