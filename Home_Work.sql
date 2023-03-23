SELECT first_name AS Имя, 
       last_name AS Фамилия
FROM employee
;
SELECT * FROM employee
WHERE age<30 OR age>50
;
SELECT first_name,last_name
FROM employee
WHERE age
BETWEEN 30 AND 50
;
SELECT last_name AS Фамилия
FROM employee
GROUP BY Фамилия
ORDER BY last_name DESC
;
SELECT first_name AS Имя
FROM employee
WHERE LENGTH(first_name)>4
;
UPDATE employee
SET first_name='Саша'
WHERE id=3 OR id=5
;
UPDATE employee
SET first_name='Женя'
WHERE id=8 OR id=4
;
SELECT first_name AS Имя,
SUM (age) AS Суммарный_возраст
FROM employee
GROUP BY Имя
;
SELECT first_name AS Имя,
       age AS Минимальный_возраст
FROM employee
WHERE age = (SELECT MIN(AGE) FROM employee)
;
SELECT first_name AS Имя,
MAX(AGE) as Масимальный_возраст
FROM employee
GROUP BY Имя
HAVING COUNT(first_name)>1;

SELECT * FROM employee;