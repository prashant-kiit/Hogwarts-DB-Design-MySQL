select student.id, student.name, house.name
from Student student
inner join
House house
on student.house_id=house.house_id;