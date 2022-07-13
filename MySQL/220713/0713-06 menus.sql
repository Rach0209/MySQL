-- 키 값은 아주 단순한 문자열이나 정수를 쓰는 것이 편하게 접근할 수 있다.
-- 식당 정보 테이블
-- 상호명
-- 전화번호
-- 주소 등
CREATE TABLE Restaurants (
	RestaurantId INT PRIMARY KEY AUTO_INCREMENT
	, name VARCHAR(20) NOT NULL
    , callNum VARCHAR(16) NOT NULL UNIQUE
    , address VARCHAR(100) NOT NULL UNIQUE
);
DESC Restaurants;

INSERT INTO Restaurants (name, callNum, address) VALUES ("영자면옥", "051-808-6958", "부산 부산진구 새싹로8번길 29"), ("옛날짜장", "051-816-7989", "부산 부산진구 중앙대로755번길 28")
			, ("대모골", "051-803-3109", "부산 부산진구 부전로152번길 71");
SELECT * FROM Restaurants;
DROP TABLE Restaurants;

-- 메뉴 정보 테이블
-- 음식명
-- 가격 등
CREATE TABLE Menus (
	MenuId INT PRIMARY KEY AUTO_INCREMENT
	, foodName VARCHAR(15) NOT NULL
    , Price INT NOT NULL
);
DESC Menus;

INSERT INTO Menus (foodName, Price)
 VALUES ("칼국수", 3000), ("밀면", 4000), ("칼국수 제육덮밥세트", 5000)
			, ("짜장면", 2500), ("볶음밥", 4000), ("볶짜", 4000), ("숯불간장구이정식", 7500), ("부대찌개", 7000);
SELECT * FROM Menus;
DROP TABLE Menus;
-- 테이블의 구조를 변경하는 명령어. 'ALTER' (DDL?)
-- COLUMN을 추가 'RestId'
ALTER TABLE Menus ADD COLUMN RestId INT;

SELECT * FROM Menus;

UPDATE Menus
SET RestId = 2
WHERE MenuId <> 1 AND MenuId <> 2 AND MenuId <> 3;

-- 값을 다른 테이블에 연관 시키기.
-- 외래 키 (FOREIGN KEY) : 다른 테이블에 있는 키를 참조하는 키 값.
-- ADD CONSTRAINT '외래키의 이름' FOREIGN KEY  이름은 생략 가능. 보통 fk_Menus_restrants~~식으로 설정함
ALTER TABLE Menus ADD CONSTRAINT FOREIGN KEY (RestId) REFERENCES Restaurants (RestaurantId);
DESC Menus;