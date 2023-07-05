CREATE VIEW new AS /* Создаём новую таблицу*/
SELECT name_emp, hire_date,
	strftime('%Y', hire_date) AS Year /*Вытаскиваем год в отдельный столбец*/
FROM Employee
select Year, Count(Distinct(name_emp)) from new Group by Year /*Подсчитываем сумму для уникальных значений и выводим по годам*/
