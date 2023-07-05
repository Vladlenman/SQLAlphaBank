CREATE VIEW new as
SELECT * FROM Employee JOIN Region ON Employee.id_region = Region.id_region /*объединяем работников с регионами*/
CREATE view new2 as
Select * From new inner join Work On new.job_id = work.job_id /* Добавляем зарплату к рабочему месту */
SELECT row_number() over(partition BY id_region order BY salary DESC) number, id_emp, id_region, salary /*Выводим ранжирование в таблице по региону, потом добавляем ранжирование по зарплате*/
FROM new2
Order by id_region, salary DESC; /* Делаем ранжирование по региону, затем по зарплате*/
