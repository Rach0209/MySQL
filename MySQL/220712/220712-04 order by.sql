SELECT Code AS "코드", Name AS "이름", Population AS "인구" FROM country;

-- 위의 조회 + SurfaceArea(별명 면적) 컬럼을 추가로 조회
SELECT Code AS "코드", Name AS "이름", Population AS "인구", SurfaceArea AS "면적" FROM country;
-- 연산결과도 나옴. 
SELECT 
    Code AS '코드',
    Name AS '이름',
    Population AS '인구',
    SurfaceArea AS '면적',
    15 + 15 AS '계산결과',
    ROUND(Population / SurfaceArea, 1) AS '인구밀도'
FROM
    country
WHERE
    SurfaceArea <= 50000 AND Population >= 10000;
    
-- 인구 밀도 조회    
SELECT Code AS '코드', Name AS '이름', Population AS '인구', SurfaceArea AS '면적', 15 + 15 AS '계산결과'
	, ROUND(Population / SurfaceArea, 1) AS '인구밀도'
FROM country
ORDER BY 인구밀도 DESC; -- 인구를 기준으로 정렬 할 때. WHERE절 다음 제일 마지막.... ASC: 오름차순, DESC: 내림차순

-- 아시아 대륙 국가들의 인구 순으로(내림차순) 조회하기
SELECT * 
	FROM country 
    WHERE Continent = 'Asia'
    ORDER BY Population DESC;
-- LifeExpectancy 오름차순 조회 (NULL값을 제외한 행)
SELECT * FROM country WHERE LifeExpectancy IS NOT NULL ORDER BY LifeExpectancy ASC;

-- 국가의 이름, 인구, GNP, GNPOld (GNPOld - GNP 차를 구해서 "GNP 변화량" 내림차순) 조회
SELECT Name, Population, GNP, GNPOld, (GNPOld - GNP) AS 'GNP 변화량'
	FROM country 
    WHERE GNP IS NOT NULL AND GNPOld IS NOT NULL
	ORDER BY `GNP 변화량` DESC; -- ' ` '(~물결자리) 쓰면 컬럼을 지칭할 때와 데이터베이스의 객체를 지칭 할 때 사용가능! 공백 사용가능
    
-- 대륙 순으로 정렬해서 조회... 여러 기준으로 정렬하기. 1차적으로 동일한 기준으로 정렬된 상태에서 2차적인 정렬 또함.
SELECT * FROM country ORDER BY Continent, Population;

-- GovernmentForm 오름차순, GNP 내림차순 정렬 조회
SELECT * FROM country ORDER BY GovernmentForm, GNP DESC;

