USE dz_4;

/* ---------------------------------------------------------------------------
1. Вывести на экран, сколько машин каждого цвета для машин марок BMW и LADA	*/
SELECT MARK, COLOR, COUNT(1) as count FROM auto
    WHERE MARK = 'BMW'
    GROUP BY COLOR
UNION
SELECT MARK, COLOR, COUNT(1) as count FROM auto
    WHERE MARK = 'LADA'
    GROUP BY COLOR;

/* ---------------------------------------------------------------------------
2. Вывести на экран марку авто и количество AUTO не этой марки		*/
SELECT 
	CONCAT(COUNT(1), ' авто ', MARK, ' и ', 
		   (SELECT COUNT(1) FROM auto) - COUNT(1), ' авто другой марки'
    ) AS 'task_2'
FROM auto 
WHERE MARK = 'BMW'

UNION

SELECT 
	CONCAT(COUNT(1), ' авто ', MARK, ' и ', 
		   (SELECT COUNT(1) FROM auto) - COUNT(1), ' авто другой марки')
FROM auto 
WHERE MARK = 'LADA'

UNION

SELECT 
	CONCAT(COUNT(1), ' авто ', MARK, ' и ', 
		   (SELECT COUNT(1) FROM auto) - COUNT(1), ' авто другой марки') 
FROM auto 
WHERE MARK = 'VOLVO'

UNION

SELECT 
	CONCAT(COUNT(1), ' авто ', MARK, ' и ', 
		   (SELECT COUNT(1) FROM auto) - COUNT(1), ' авто другой марки')
FROM auto 
WHERE MARK = 'AUDI';