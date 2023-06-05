use dz_5;

# Добавьте новый столбец под названием «время до следующей станции»

SELECT *,
	TIMEDIFF(
		LEAD(station_time) OVER(PARTITION BY train_id),
		station_time
	) AS 'time_to_next_station'
FROM railway_timetable;
