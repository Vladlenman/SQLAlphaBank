CREATE VIEW new as
SELECT * FROM Employee JOIN Region ON Employee.id_region = Region.id_region /*объединяем работников с регионами*/
CREATE view new2 as
Select * From new inner join Work On new.job_id = work.job_id /* Добавляем зарплату к рабочему месту */
CREATE view new3 AS /* создаём таблицу с количеством совпадающих работников */
SELECT
    id_region, salary, COUNT(*) AS Itog
    FROM new2
    GROUP BY id_region, salary
    HAVING COUNT(*)>1
select sum(Itog) from new3 /* находим сумму таких */
