USE dz_4;

CREATE TABLE models (
	SELECT DISTINCT auto.MARK FROM auto
);
ALTER TABLE models
ADD id INT PRIMARY KEY AUTO_INCREMENT;

DELIMITER //
CREATE PROCEDURE auto (IN num INT)
begin
DECLARE i INT DEFAULT 1; 
  IF (num > 0) THEN
	  WHILE i <= num DO      
		SELECT 
			CONCAT(COUNT(1), ' авто ', a.MARK, ' и ', 
				   (SELECT COUNT(1) FROM auto) - COUNT(1), ' авто другой марки'
			) AS 'info'
		FROM auto as a LEFT JOIN models as m
		ON a.MARK = m.MARK
		WHERE m.id = i;	
		SET i = i + 1;  
	  END WHILE;
  END IF;
end
//
CALL auto (4);
/*
SELECT 
	CONCAT(COUNT(1), ' авто ', a.MARK, ' и ', 
			(SELECT COUNT(1) FROM auto) - COUNT(1), ' авто другой марки') AS 'info'
FROM auto as a LEFT JOIN models as m
ON a.MARK = m.MARK
WHERE m.id = 2;	*/