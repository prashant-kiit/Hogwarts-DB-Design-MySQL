
select power.id, power.power_desc 
from Power power where power.id not in
( 
select  prof.power_id
from Professor_Power_Relationship_Table prof
union
select  stud.power_id
from Student_Power_Relationship_Table stud
);