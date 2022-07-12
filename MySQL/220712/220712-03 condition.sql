-- SELECT * FROM country WHERE Name = 'South Korea' OR Name = 'Japan' || Name = 'China'; IN을 사용하기.
SELECT * FROM country WHERE Name IN ('South Korea', 'Japan', 'China'); -- 쉼표 가능 IN을 사용하면 여러개 값중에서 하나라도 있으면 참~
-- NOT IN, NOT BETWEEN 을 사용하면, 부정의 뜻.
-- 특정한 범위의 값을 찾을 때. BETWEEN ?? AND ??; 
SELECT * FROM country WHERE Population BETWEEN 40000000 AND 50000000;

-- Continent 컬럼 값이 North America, Europe, Asia를 제외한 국가들 중
-- GNP 값이 100이상 1000이하인 국가 목록 조회하기
SELECT * FROM country WHERE Continent NOT IN ('North America', 'Europe', 'Asia') AND GNP BETWEEN 100 AND 1000;
-- 값이 없는 null 값이 있다.alter
-- 관계 연산으로는 NULL값을 찾아 낼 수 없다. 무조건 NULL 이기 때문.
SELECT * FROM country WHERE IndepYear IS NOT NULL; -- NULL값이 아닌 것들만 찾기

