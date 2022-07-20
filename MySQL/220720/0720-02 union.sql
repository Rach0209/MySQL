-- UNION 한 줄로 병합해줌.
-- 행이 중복되면, 사라진다.
-- UNION ALL을 하면, 중복을 신경쓰지 않고 행을 붙여준다.
SELECT 1, 2, 3
UNION
SELECT 4, 5, 6
UNION
SELECT 7, 8, 9
UNION ALL
SELECT 1, 2, 3;