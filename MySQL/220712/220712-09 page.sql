-- 239행을 가지는 country 테이블을 각 페이지별 행의 개수와 보고자 하는 페이지 번호를 정하면
-- 해당 row들을 조회할 수 있는 SELECT 문을 작성해보기
SELECT * FROM country;
SELECT * FROM country LIMIT 10;
SELECT * FROM country LIMIT 10, 10;
SELECT * FROM country LIMIT 20, 50;
SELECT * FROM country LIMIT 70, 50;
SELECT * FROM country LIMIT 120, 50;
SELECT * FROM country LIMIT 170, 50;
SELECT * FROM country LIMIT 220, 19;

SET @rowCount := 239;
SET @pageNumber := 1;
SET @pagePer := 60;
SET @totalPage := (@rowCount / @pagePer) + 1; -- 총 페이지 수 (계산 수식 작성)
PREPARE STMT FROM 'SELECT * FROM country LIMIT @pageNumber, @pagePer';
EXECUTE STMT USING @pagePer, @pageNumber;

-- SELECT * FROM country LIMIT @pagePer, @pageNumber;
