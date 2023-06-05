CREATE DATABASE dz_5;

USE dz_5;

CREATE TABLE cars (
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    cost INT
);

INSERT cars VALUES
	(1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
	(5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);

CREATE TABLE railway_timetable (
	train_id INT,
    station VARCHAR(20),
    station_time TIME
);

DROP TABLE railway_timetable;

INSERT INTO railway_timetable VALUES
	(110, 'San Francisco', '10:00:00'),
	(110, 'Redwood City', '10:54:00'),
	(110, 'Palo Alto', '11:02:00'),
	(110, 'San Jose', '12:35:00'),
	(120, 'San Francisco', '11:00:00'),
	(120, 'Palo Alto', '12:49:00'),
	(120, 'San Jose', '13:30:00');
    
