-- 글자 합치는 함수를 만듬
SELECT hello("니이름");

SELECT * FROM books;
CALL usp_countBooks;

-- 세션 변수를 사용해서 int를 받아올 출력 공간을 만듬. - 세션 변수 => 접속해서 로그아웃까지
CALL usp_findbytitle('asdf', @count);

SELECT @count;

CALL usp_loop(10);
-- BEGIN -- DECLARE는 변수의 선언.
-- 	DECLARE i INT;
--     DECLARE sum INT DEFAULT 0;
--     
--     SET i = 0;
--     참이 될 때 까지 반복시킨다. UNTIL
--     REPEAT
-- 		SET sum = sum + i;
--         SET i = i + 1;
-- 	UNTIL i > num END REPEAT; 
--     
--     SELECT sum;
--     
-- END

-- 똑같은 반복문. Eclipse에서 쓰던 조건;
-- WHILE i <= num DO -- DO는 참일 때, 시작한다는 뜻.
-- 	 SET sum = sum + i;
--      SET i = i + 1;
-- 	END WHILE;