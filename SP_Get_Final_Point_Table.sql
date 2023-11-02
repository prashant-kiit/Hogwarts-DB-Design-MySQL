CREATE PROCEDURE `Get_Final_Point_Table` ()
BEGIN
select pointt.position, house.name, pointt.points
from 
House house
inner join
Point_Table pointt
on house.house_id=pointt.house_id
order by pointt.position
;
END