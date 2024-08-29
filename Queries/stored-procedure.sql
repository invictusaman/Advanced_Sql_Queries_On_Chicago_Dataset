-- Question 1: Write the structure of a query to create or replace a stored procedure called UPDATE_LEADERS_SCORE that takes a in_School_ID parameter as an integer and a in_Leader_Score parameter as an integer.

DELIMITER //

DROP PROCEDURE IF EXISTS `UPDATE_LEADERS_SCORE` //
  
CREATE PROCEDURE `UPDATE_LEADERS_SCORE`(in_School_ID int, in_Leader_Score int)
BEGIN

END //
DELIMITER ;



-- Question 2: Inside your stored procedure, write a SQL statement to update the Leaders_Score field in the CHICAGO_PUBLIC_SCHOOLS table for the school identified by in_School_ID to the value in the in_Leader_Score parameter.

DELIMITER //

DROP PROCEDURE IF EXISTS `UPDATE_LEADERS_SCORE` //
  
CREATE PROCEDURE `UPDATE_LEADERS_SCORE`(in_School_ID int, in_Leader_Score int)
BEGIN

    UPDATE `chicago_public_schools`
    SET Leaders_Score = in_Leader_Score
    WHERE School_ID = in_School_ID ;
 
END //

DELIMITER ;



-- Question 3: Inside your stored procedure, write a SQL IF statement to update the Leaders_Icon field in the CHICAGO_PUBLIC_SCHOOLS table for the school identified by in_School_ID using the following information.
-- Information table to update available at, assets > info_procedure.png

DELIMITER //

DROP PROCEDURE IF EXISTS `UPDATE_LEADERS_SCORE` //

CREATE PROCEDURE `UPDATE_LEADERS_SCORE`(in_School_ID int, in_Leader_Score int)
BEGIN

    -- Updating Leader Score
    UPDATE `chicago_public_schools`
    SET Leaders_Score = in_Leader_Score
    WHERE School_ID = in_School_ID;

    -- Updating Leader Icon
    IF in_Leader_Score >= 0 AND in_Leader_Score < 20 THEN
        UPDATE `chicago_public_schools`
        SET Leaders_Icon = 'Very Weak'
        WHERE School_ID = in_School_ID;
        
    ELSEIF in_Leader_Score < 40 THEN
        UPDATE `chicago_public_schools`
        SET Leaders_Icon = 'Weak'
        WHERE School_ID = in_School_ID;
        
    ELSEIF in_Leader_Score < 60 THEN
        UPDATE `chicago_public_schools`
        SET Leaders_Icon = 'Average'
        WHERE School_ID = in_School_ID;
        
    ELSEIF in_Leader_Score < 80 THEN
        UPDATE `chicago_public_schools`
        SET Leaders_Icon = 'Strong'
        WHERE School_ID = in_School_ID;
        
    ELSEIF in_Leader_Score < 100 THEN
        UPDATE `chicago_public_schools`
        SET Leaders_Icon = 'Very Strong'
        WHERE School_ID = in_School_ID;
        
    END IF;

END //

DELIMITER ;



-- Question 4: Write a query to call the stored procedure, passing a valid school ID and a leader score of 50, to check that the procedure works as expected.

-- Checking initial score and icon
Select School_ID, Leaders_Score, Leaders_Icon
FROM `chicago_public_schools` 
WHERE School_ID = 610038;

CALL UPDATE_LEADERS_SCORE(610038,50);

-- Checking updated score and icon
Select School_ID, Leaders_Score, Leaders_Icon
FROM `chicago_public_schools` 
WHERE School_ID = 610038;

