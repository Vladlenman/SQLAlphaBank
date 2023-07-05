UPDATE Employee SET hire_date=strftime('%Y', hire_date) /* оставляем только год для запроса*/
CREATE VIEW new as
SELECT * FROM Employee JOIN Region ON Employee.id_region = Region.id_region /*объединяем работников с регионами*/
CREATE view new2 as
Select * From new inner join Work On new.job_id = work.job_id /*соединяем профессию с зарплатой*/
Create View new3 as
Select id_region, strftime('%Y', hire_date) as Year, avg(salary) as avg_salary from new2 group by id_region, strftime('%Y', hire_date) /* создаём таблицу со средней зарплатой по регионам и по годам */
Select id_emp, salary/avg_salary as result from new3 /*Находим итоговый результат*/
