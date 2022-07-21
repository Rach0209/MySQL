SELECT * FROM menus AS A
-- 기준이 왼쪽 테이블 : menus 8개
LEFT JOIN restaurants AS B ON A.restId = B.RestaurantId;
SELECT * FROM menus AS A
-- 기준이 오른쪽 테이블 : 붙일게 없더라도 나와서 20개됨.
RIGHT JOIN restaurants AS B ON A.restId = B.RestaurantId;


-- INNER JOIN : 값이 있는것만. (결합이 되는 행들만 남고, 나머지는 제거 후 조회)
-- LEFT OUTER JOIN : 왼쪽 기준으로 값 없는 것도 다 조회
SELECT * FROM restaurants AS A
-- 기준 : restaurants 20개 ;// 원래는 LEFT OUTER JOIN ; 줄여서 LEFT JOIN 
LEFT JOIN menus AS B ON A.RestaurantId = B.restId;

-- 기준인 오른쪽이 다 나옴. 참조가 없는 것들도 나온다.
SELECT * FROM restaurants AS A
RIGHT JOIN menus AS B ON a.RestaurantId = B.RestId;