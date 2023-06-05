# 1. Создайте представление, в которое попадут автомобили стоимостью до 25 000 долларов
CREATE OR REPLACE VIEW less25k AS
SELECT * FROM cars
WHERE cost < 25000;

SELECT * FROM less25k;

# 2. Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов
ALTER VIEW less25k AS
SELECT * FROM cars
WHERE cost < 30000;

SELECT * FROM less25k;

# 3. Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди”
CREATE OR REPLACE VIEW skoda_audi AS
SELECT * FROM cars
WHERE name IN ('Skoda', 'Audi');

SELECT * FROM skoda_audi;