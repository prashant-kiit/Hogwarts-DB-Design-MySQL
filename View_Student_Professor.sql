CREATE VIEW `Student_Professor` AS
select id, name, department, house, powers
from Student
union
select id, name, department, house, powers
from Professor