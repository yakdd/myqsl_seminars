CREATE DATABASE dz_6;
USE dz_6;
DELIMITER //

/* 2. Выведите только четные числа от 1 до 10 */
-- создаем временную таблицу для записи четных чисел:
CREATE TEMPORARY TABLE even_table (num INT)//

-- создаем процедуру заполнения таблицы четными числами:
DROP PROCEDURE IF EXISTS get_even_num//
CREATE PROCEDURE get_even_num ()
BEGIN
  DECLARE i INT DEFAULT 2;
  WHILE i <= 10 DO
    INSERT INTO even_table (num) VALUES (i);
    SET i = i + 2;
  END WHILE;
END//

CALL get_even_num//
SELECT * FROM even_table//