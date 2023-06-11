USE dz_6;
DELIMITER //

/* 1. Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней, часов, минут и секунд.
Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds ' */

DROP FUNCTION IF EXISTS seconds_format//
CREATE FUNCTION seconds_format (seconds INT)
RETURNS TINYTEXT DETERMINISTIC
BEGIN
  DECLARE time_string TINYTEXT;
  SET @days = seconds DIV 86400;
  SET @seconds = seconds % 86400;
  SET time_string = CONCAT(@days, ' days ');

  SET @hours = @seconds DIV 3600;
  SET @seconds = @seconds % 3600;
  SET time_string = CONCAT(time_string, @hours, ' hours ');

  SET @minutes = @seconds DIV 60;
  SET @seconds = @seconds % 60;
  SET time_string = CONCAT(time_string, @minutes, ' minutes ', @seconds, ' seconds');
  
  RETURN time_string;
END//

SELECT seconds_format(123456)//