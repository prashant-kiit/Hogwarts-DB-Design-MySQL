CREATE PROCEDURE `Update_Points` ()
BEGIN

DECLARE finished INTEGER DEFAULT 0;
DECLARE house_id_ INT DEFAULT 0;
DECLARE points_ INT DEFAULT 0;

DEClARE curPoints 
		CURSOR FOR 
			select house_id, points from Point_Table_Current_Year; 
            
DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = 1;

OPEN curPoints;

getPoints: LOOP
		FETCH curPoints INTO house_id_, points_;
		IF finished = 1 THEN 
			LEAVE getPoints;
		END IF;
		UPDATE House set points_current_year = points_ where house_id = house_id_;
	END LOOP getPoints;
CLOSE curEmail;

END