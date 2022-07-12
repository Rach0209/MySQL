-- Ctrl + Shift + Enter : 전체 실행
-- Ctrl + Enter : 한 줄 실행
SHOW DATABASES; -- 데이터 목록 보기

USE world; -- 데이터베이스 world를 사용하겠다.

SHOW TABLES; -- 테이블 목록 보기
-- 테이블 안의 내용을 볼 때, SELECT사용
select 3 % 2; -- ( +, -, *, /, % ) 산술 연산 수행 후, 결과 보여줌

select "Hello World"; -- 'Hello World' 홑, 쌍따옴표 둘 다 가능, 일반적인 문자열 합연산 수행 불가. DB마다 다름.

select 10 = 10; -- 관계연산자(이클립스에서 ==) 논리값으로 True = 1, False = 0 반환. 
select 10 != 11; -- 다름을 물어 볼때, '!=' MySQL에서는 사용가능하나, 
select 10 <> 11; -- 보통 '<>'로 사용
select 10 <= 11; -- 크기비교


