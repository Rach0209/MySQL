-- SQL도 변수가 사용 가능하다
-- 세션(Session) 변수(Variable)
-- 서버에 접속해서 접속을 끊을 때 까지 유지되는 변수. - 한 번의 접속동안 유지
SET @myVar := 10; -- := 이 대입연산자가 됨

SELECT @myVar * 10 + 5;
