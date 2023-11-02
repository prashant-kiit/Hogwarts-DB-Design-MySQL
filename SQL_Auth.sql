CREATE ROLE Hog_Admin;
GRANT ALL 
ON mydb.Professor
TO Hog_Admin;
GRANT ALL 
ON mydb.Student
TO Hog_Admin;
CREATE USER Hog_Admin123@localhost IDENTIFIED BY 'Prashant';
GRANT Hog_Admin 
TO Hog_Admin123@localhost;