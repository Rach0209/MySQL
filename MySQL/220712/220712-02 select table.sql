SELECT * FROM country; -- country테이블 안의 모든 것을 볼 때( * ) SELECT ?? 보고싶은 것 FROM country 컨트리에서 보고 싶은 것 불러오기

select * from city;

SELECT Name, 
Population -- 문장 끝을 ;로 표기, 필요 시 여러줄 작성 가능
FROM country; -- Column도 대소문자 신경쓰지않음, 명령어, 테이블 이름도 마찬가지.
-- DESC = DESCRIBE 테이블의 구조를 볼 수 있는 명령어. 
DESCRIBE country;

-- country 테이블 Code열과 GNP 열을 조회해보세요.
SELECT Code, GNP FROM country;
-- SELECT (Column 이름) FROM (Table 이름) WHERE (특정한 조건식); 보고싶은 특정한 조건을 가진 행만 출력
SELECT * FROM country WHERE Name = 'South Korea';
-- 국가명이 'Japan' 조회
SELECT * FROM country WHERE Name = 'Japan';
-- 국가명이 'China' 조회
SELECT * FROM country WHERE Name = 'China';

-- Continent 값이 'Asia' 인 행 조회하기
SELECT * FROM country WHERE Continent = 'Asia';
-- SQL은 || 대신, OR문자 그대로 사용. MySQL은 둘다 가능. 반대 => AND로 사용. 대소문자 구분 X
SELECT * FROM country WHERE Name = 'South Korea' OR Name = 'Japan' || Name = 'China';

-- Population(인구) 컬럼 값이 40,000,000 이상인 국가 조회하기
SELECT * FROM country WHERE Population >= 40000000;
-- Population(인구) 컬럼 값이 40,000,000 이상이고 50,000,000이하인 국가의 모든 컬럼을 조회
SELECT * FROM country WHERE Population >= 40000000 AND Population <= 50000000;

-- Continent 값이 'Asia'를 제외한 국가 목록 조회
SELECT * FROM country WHERE Continent <> 'Asia';
