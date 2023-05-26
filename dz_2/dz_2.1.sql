-- 1. Используя операторы языка SQL, создайте таблицу “sales”. Заполните ее данными.

CREATE DATABASE IF NOT EXISTS dz_2;
USE dz_2;

CREATE TABLE IF NOT EXISTS sales (
	id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    order_date DATE NOT NULL,
    count_product INT UNSIGNED NOT NULL
);

INSERT INTO sales (order_date, count_product) VALUES
	('2022-01-01', 156),
	('2022-01-02', 180),
	('2022-01-03', 21),
	('2022-01-04', 124),
	('2022-01-05', 341);
    
SELECT * FROM sales;
