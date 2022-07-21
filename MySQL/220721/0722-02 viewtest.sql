-- my_db 레스토랑, 메뉴랑 결합
-- CREATE VIEW `resmenuview` AS
-- SELECT A.RestaurantId, A.name AS '음식점이름', A.callNum, A.address, B.menuId, B.foodName AS '메뉴이름', B.price FROM restaurants A
-- JOIN  menus B
-- WHERE A.RestaurantId = B.restId;
SELECT * FROM resmenuview;
SELECT * FROM restaurants;
SELECT * FROM menus;