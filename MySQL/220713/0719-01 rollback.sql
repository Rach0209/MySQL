--             ↑요위에 파란불 켜놓으면 실행하자마자 커밋된다.
-- 실수로 수정 한 경우에 대비해서, 롤백을 시킬 수 있게. 번개 불을 끄자. X를 누르면 ROLLBACK시켜서, 되돌릴 수 있다.
-- 토글버튼을 꺼놓으면, Transaction이 생긴다.
-- 작업 => 트랜잭션 생성 => 커밋 => 결과물 반영 ( 커밋을 하면, 작업 끝. 되돌리기 불가 ) 
-- 작업 => 트랜잭션 시작점 생성 => 롤백 => 트랜잭션 시작점의 전 상태로 되돌리기.
SELECT * FROM my_db.books;

INSERT INTO books (title, price) VALUES ("테스트합니다잉", 4040);

INSERT INTO books (title, price) VALUES ("파란불껐음!", 3333);

UPDATE books
SET price = 1;

-- 트랜잭션의 시작. 커밋을 하지 않고 서버접속을 끊으면 => 트랜잭션 시작점으로 돌아감
START TRANSACTION;
-- 작업하기
UPDATE books
SET price = 50000;
-- 작업확인
SELECT * FROM books;
-- 롤백; 되돌리기
ROLLBACK;
-- 커밋; 되돌릴 수 없음. 결과물
COMMIT;
