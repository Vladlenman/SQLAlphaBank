CREATE VIEW new AS
SELECT * FROM Region INNER JOIN Employee ON Region.id_region = Employee.id_region /*соединяем работников с названиями регионов*/
CREATE VIEW new2 AS
Select * from Employee JOIN work ON Employee.job_id = work.job_id /*связываем код места работы и заработную плату*/
CREATE VIEW new3 AS
Select name_region, sum(salary) from new2 group by id_region HAVING count(id_emp)>5 and sum(salary)>10000 /*выполняем итоговую проверку условия */
