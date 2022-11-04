-- CREATE TABLE department (id SERIAL PRIMARY KEY, name VARCHAR(30), isProfit boolean);

-- INSERT INTO department (name, isProfit)
-- VALUES	('Бухгалтерия', 'false'),
-- 		('Кредитный отдел', 'true'),
-- 		('Отдел продаж', 'true'),
-- 		('Правление', 'false');

-- CREATE TABLE employee (
-- 	id SERIAL PRIMARY KEY,
-- 	full_name VARCHAR(30),
-- 	salary int,
-- 	department_id int references department(id)
-- 	);

-- INSERT INTO employee (full_name, salary, department_id)
-- VALUES 	('Петров Иван', '30000', 3),
-- 		('Иванова Наталья', '50000', 1),
-- 		('Мирских Петр', '100000', 4),
-- 		('Улюкаев Владимир', '200000', 4),
-- 		('Заморский Виктор', '70000', 2);

-- вывод по id
-- SELECT *
-- FROM employee
-- WHERE department_id = 4;

-- вывод по названию отдела
-- SELECT e.*
-- FROM employee AS e INNER JOIN department AS d ON e.department_id = d.id
-- WHERE d.name = 'Правление';

-- SELECT SUM(salary) as "общая сумма всех зарплат"
-- FROM employee;

-- SELECT e.full_name AS "ФИО", d.isProfit AS "принадлежит к прибыльному отделу"
-- FROM employee AS e INNER JOIN department AS d ON e.department_id = d.id
-- WHERE d.isProfit = true;

-- SELECT *
-- FROM employee
-- WHERE salary >= 10000 and salary <= 100000;

-- DELETE FROM employee
-- WHERE full_name = 'Мирских Петр';

-- UPDATE department
-- SET name = 'Депозитный отдел', isProfit = 'false'
-- WHERE name = 'Кредитный отдел';

-- SELECT *
-- FROM employee
-- WHERE LOWER(full_name) LIKE '%иван%';

-- SELECT d.name, AVG(e.salary)
-- FROM employee AS e INNER JOIN department AS d ON e.department_id = d.id
-- GROUP BY d.name;

-- DROP TABLE employee
-- DROP TABLE department