CREATE VIEW new AS /*создаём мнимую таблицу*/
SELECT name_emp, hire_date,
	strftime('%d', hire_date) AS Day /*Вытаскиваем день из даты*/
FROM Employee
Select name_emp from new where Day <=7 /*Проверяем условие дня, тут зависит от формата записи даты, строка или число будет*/
