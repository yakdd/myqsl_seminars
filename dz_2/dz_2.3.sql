/*
3. Создайте таблицу “orders”, заполните ее значениями.
Выберите все заказы. В зависимости от поля order_status выведите столбец full_order_status:
OPEN – «Order is in open state» ; CLOSED - «Order is closed»; CANCELLED - «Order is cancelled»
*/
USE dz_2;

CREATE TABLE IF NOT EXISTS orders (
	id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    employee_id VARCHAR(4) NOT NULL,
    amount FLOAT,
    order_status VARCHAR(20) NOT NULL
);

INSERT INTO orders (employee_id, amount, order_status) VALUES
	('e03', 15.00, 'OPEN'),
	('e01', 25.50, 'OPEN'),
	('e05', 100.70, 'CLOSED'),
	('e02', 22.18, 'OPEN'),
	('e04', 9.50, 'CANCELLED');

SELECT * FROM orders;

SELECT
	id AS 'id заказа',
    CASE
		WHEN order_status = 'OPEN' THEN 'Order is in open state'
		WHEN order_status = 'CLOSED' THEN 'Order is closed'
		WHEN order_status = 'CANCELLED' THEN 'Order is cancelled'
        ELSE 'Error'
	END AS 'full_order_status'
FROM orders;


