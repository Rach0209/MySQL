-- 사람
-- 이름
-- 성
-- 나이
-- 위의 세 컬럼은 필수. NOT NULL 설정하기 => 컬럼의 우측에 NOT NULL 입력
-- 중복을 허용하지 않는 제약사항 'UNIQUE'
CREATE TABLE persons (
	personId INT PRIMARY KEY AUTO_INCREMENT
    , firstName VARCHAR(10) NOT NULL
    , LastName VARCHAR(10) NOT NULL
    , age INT NOT NULL
    , email VARCHAR(50) NOT NULL UNIQUE
);
DESC persons;
-- NOT NULL 이기 때문에, 제약사항에 걸려서 값의 입력 불가
-- INSERT INTO persons (firstName, lastName, age) VALUES (null, null, null);

-- email 주소가 중복이 되어 제약사항에 위배. 입력 불가.
INSERT INTO persons (firstName, lastName, age, email) VALUES ("길동", "홍", 20, "길동@길동.net");
INSERT INTO persons (firstName, lastName, age, email) VALUES ("길동", "고", 42, "kildong@길동.net");
-- PK가 5로 나오는 이유는, '시도'한 만큼 AUTO_INCREMENT가 증가시키기 때문.
SELECT * FROM persons;
