-- Stroed Procedures 만든것들.
-- 
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_loop`(IN num INT)
BEGIN
	DECLARE i INT;
    DECLARE sum INT DEFAULT 0;
    
    SET i = 0;
    
    WHILE i <= num DO
	 SET sum = sum + i;
     SET i = i + 1;
	END WHILE;
    
    
--    REPEAT
-- 		SET sum = sum + i;
--        SET i = i + 1;
-- 	UNTIL i > num END REPEAT;
    
    SELECT sum;
    
END


--
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_findbytitle`(IN title VARCHAR(50), OUT count INT)
BEGIN
	SELECT * FROM books AS A WHERE A.title = title;
    
    SELECT COUNT(*) INTO count FROM persons;
END



-- 
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_countbooks`()
BEGIN
	SELECT COUNT(*) AS '개수' FROM books;
END



-- 
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_selectTable`(IN tableName VARCHAR(50))
BEGIN
	CASE tableName WHEN 'books' THEN
			SELECT * FROM books;
					WHEN 'persons' THEN
			SELECT * FROM persons;
		END CASE; -- CASE 짝 맞춰줌
END

