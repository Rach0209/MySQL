-- 주요 키(기본 키)를 자동 생성해주는 AUTO_INCREMENT 사용 
-- => 'INT' 정수형 타입에 대응해서 쓸 수 있다. 자동으로 증가하면서 키값 부여해줌, PK의 시작점은 설정 가능. 값 변경은 어려움.
CREATE TABLE books (
	BookId INT PRIMARY KEY AUTO_INCREMENT
    , Title VARCHAR(30)
    , Price INT
);

DESC books;

INSERT INTO books (Title, Price) VALUES ("책1", 2000), ("책2", 3000), ("중복이름", 2500), ("중복이름", 3000);
-- 중간에 있던 중복이름,2500의 책을 지움
DELETE FROM books WHERE BookId = 3;
-- 새로 책 하나 생성
INSERT INTO books (Title, Price) VALUES ("아무거나", 3000);
-- 결과는 마지막 PK값에서 증가된 값이 들어옴. PK값이 3이 아닌, 5로 설정.
-- AUTO_INCREMENT 는 증가만 가능, 감소는 불가
-- ID는 고유한 값이다. => 고유함에 문제가 생길 수 있음. 변경이 되면 고유한 성질을 침범하기 때문.
-- 3번을 사용할 수는 있으나, 나중에 문제가 됨. 참조가 꼬이는 현상방지. 삭제되면 삭제된 그대로 고유하게 나둠.

SELECT * FROM books;