USE dz_4;

create table test_a (id INT, data varchar(1));
create table test_b (id INT);

insert into test_a(id, data) values
(10, 'A'),(20, 'A'),(30, 'F'),(40, 'D'),(50, 'C');
insert into test_b(id) values
(10),(30),(50);

SELECT a.id, a.data
FROM test_a AS a
LEFT JOIN test_b AS b
ON a.id = b.id
WHERE b.id IS NULL;