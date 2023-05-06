INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Mihail', 'Mihailov', 'Man', 55);
UPDATE employee SET first_name = 'Alexander', last_name = 'Bokov', gender = 'Man', age = 43 WHERE id = 4;
SELECT first_name AS Имя, last_name AS Фамилия FROM employee;
SELECT * FROM employee WHERE age < 30 or age > 50;
SELECT * FROM employee WHERE age BETWEEN 30 AND 50;
SELECT * FROM employee ORDER BY last_name DESC;
SELECT * FROM employee WHERE length(first_name) > 4; 

UPDATE employee SET first_name = 'Vyacheslav' WHERE id = 5;
UPDATE employee SET first_name = 'Alexander' WHERE id = 6;

SELECT first_name , SUM(age) FROM employee
GROUP BY first_name;

SELECT first_name, age FROM employee
WHERE age =(SELECT MIN(age) FROM Employee);

SELECT first_name, MAX(age) FROM employee
GROUP BY first_name HAVING COUNT(first_name) > 1
ORDER BY 2;



