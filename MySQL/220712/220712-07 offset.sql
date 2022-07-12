SELECT * FROM country;
-- SELECT * FROM country LIMIT 1 OFFSET 2; -- OFFSET ()칸 건너띄고 조회
-- SELECT * FROM country LIMIT 2, 1; -- 똑같은표현. OFFSET의 값이 먼저나오고, LIMIT 값

-- PAGE 나누기. 보고 싶은 만큼만 잘라서 나눈 것.
SELECT * FROM country LIMIT 10 OFFSET 0;
SELECT * FROM country LIMIT 10 OFFSET 10; -- 열 칸 건너띄고 열개
SELECT * FROM country LIMIT 10 OFFSET 20;



