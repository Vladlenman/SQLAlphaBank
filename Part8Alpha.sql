SELECT
    id_emp, job_id, COUNT(*) AS Itog /* подсчитываем количество совпадающих работников */
    FROM Employee
	where Datediff(month, hire_date, hire_date) <=6 /* смотрим условие по дате */
    GROUP BY job_id /* группируем по рабочему месту */
