-- UNION 한 줄로 병합해줌. 특징 : 기본적으로 중복을 걸러준다.
-- 행이 중복되면, 사라진다.
-- 하지만 UNION ALL을 하면, 중복을 신경쓰지 않고 행을 붙여준다.
SELECT 1, 2, 3
UNION
SELECT 4, 5, 6
UNION
SELECT 7, 8, 9
UNION ALL
SELECT 1, 2, 3;