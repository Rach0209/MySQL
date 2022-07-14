SELECT * FROM my_db.pktest;

INSERT INTO pktest (myCol1, myCol2) VALUE ('1', '1');

INSERT INTO pktest (myCol1, myCol2) VALUE ('1', '2');

INSERT INTO pktest (myCol1, myCol2) VALUE ('2', '1');

INSERT INTO pktest (myCol1, myCol2) VALUE ('1', '1'); -- X
-- 여러 컬럼에대해 PK를 주면 여러 컬럼의 값이 모두 동일해야 중복안됨.

-- PK는 여러 컬럼에 대해 설정가능, 하지만 INDEX는 1개. 정렬 순서를 가짐. 

-- DB는 SERVER 개념... 지금 사용하는 WORKBENCH - Client 개념 