CREATE PROCEDURE `Load_Tournament_with_Points_Table` (in paramDate Date)
BEGIN
SET @jsonVariable = (
    SELECT JSON_ARRAYAGG(
        JSON_OBJECT('position', position, 'house_id', house_id, 'points', points)
    ) AS json_data
    FROM mydb.Points_Table_Current_Year
);

-- Insert into Tournament table
INSERT INTO Tournament (tour_date, points_table) VALUES (paramDate, @jsonVariable);
END