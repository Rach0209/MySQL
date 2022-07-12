SELECT * FROM country
	WHERE Name LIKE '%Korea%'; -- 비슷한 컬럼들을 조회할 때. 'Korea'를 포함하는 것.
    
SELECT * FROM country WHERE NAME LIKE '%K%'; -- K가 들어간 것들
SELECT * FROM country WHERE NAME LIKE '%K'; -- K로 끝나는 것들
SELECT * FROM country WHERE NAME LIKE 'K%'; -- K로 시작하는 것들

-- 국가 이름이 'A'로 시작하고 'A'로 끝나는 국가 조회
SELECT * FROM country WHERE NAME LIKE 'A%A';

-- 국가 이름이 'A'로 시작하고 'A'로 끝나는 국가 조회 (6자)
SELECT * FROM country WHERE NAME LIKE 'A____A'; -- 언더바(4개) + A 2개로 총 6글자 표현.

-- 국가명이 ~ria로 끝나는 국가 조회
SELECT * FROM country WHERE NAME LIKE '%ria';

-- Region 컬럼이 North ~~ 시작하는 국가 조회
SELECT * FROM country WHERE Region LIKE 'North%';

-- Region 컬럼에 A로 시작해서 a로 끝나는 명칭을 포함하지 않는 국가
SELECT * FROM country WHERE Region NOT LIKE '%A%a' AND Region NOT LIKE 'a%a%';

