-- You realise that if someone calls your code with a score outside of the allowed range (0-99), then the score will be updated with the invalid data and the icon will remain at its previous value. There are various ways to avoid this problem, one of which is using a transaction.

-- Question 1: Update your stored procedure definition. Add a generic ELSE clause to the IF statement that rolls back the current work if the score did not fit any of the preceding categories.

DELIMITER //

DROP PROCEDURE IF EXISTS `UPDATE_LEADERS_SCORE` //

CREATE PROCEDURE `UPDATE_LEADERS_SCORE`(in_School_ID int, in_Leader_Score int)
BEGIN

START TRANSACTION;

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
    ELSE 
    ROLLBACK;
    
    END IF;

END //

DELIMITER ;


-- Question 2: Update your stored procedure definition again. Add a statement to commit the current unit of work at the end of the procedure.


DELIMITER //

DROP PROCEDURE IF EXISTS `UPDATE_LEADERS_SCORE` //

CREATE PROCEDURE `UPDATE_LEADERS_SCORE`(in_School_ID int, in_Leader_Score int)
BEGIN

START TRANSACTION;

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
    ELSE 
    ROLLBACK;
    
    END IF;

    COMMIT;

END //

DELIMITER ;



-- Question 3: 

--a) Write and run one query to check that the updated stored procedure works as expected when you use a valid score of 38.

Select School_ID, Leaders_Score, Leaders_Icon
FROM `chicago_public_schools` 
WHERE School_ID = 610038;

CALL UPDATE_LEADERS_SCORE(610038,38);

Select School_ID, Leaders_Score, Leaders_Icon
FROM `chicago_public_schools` 
WHERE School_ID = 610038;

--b) Write and run another query to check that the updated stored procedure works as expected when you use an invalid score of 101.

Select School_ID, Leaders_Score, Leaders_Icon
FROM `chicago_public_schools` 
WHERE School_ID = 610038;

CALL UPDATE_LEADERS_SCORE(610038,101);

Select School_ID, Leaders_Score, Leaders_Icon
FROM `chicago_public_schools` 
WHERE School_ID = 610038;
