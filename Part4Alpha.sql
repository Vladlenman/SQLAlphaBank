CREATE VIEW new AS
SELECT * FROM Region INNER JOIN Employee ON Region.id_region = Employee.id_region /*Создание новой таблицы с работниками и именами регионов*/
CREATE VIEW new2 AS
Select * from Region LEFT OUTER JOIN new ON Region.id_region = new.id_region /*Создание таблицы регионов по числу работников*/
SELECT name_region from new2 where `id_region:1` IS NULL /*Поиск регионов, которым было присвоено NULL*/
