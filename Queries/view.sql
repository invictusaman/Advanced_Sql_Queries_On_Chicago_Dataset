-- For privacy reasons, you have been asked to create a view that enables users to select just the school name and the icon fields from the CHICAGO_PUBLIC_SCHOOLS table. By providing a view, you can ensure that users cannot see the actual scores given to a school, just the icon associated with their score. You should define new names for the view columns to obscure the use of scores and icons in the original table.

-- Question 1: Write and execute a SQL statement to create a view showing the columns listed in the following table, with new column names as shown in the second column.
-- Image in assets>view_table.png

DROP VIEW IF EXISTS Chicago_PS_View;

CREATE VIEW  Chicago_PS_View(School_Name,Safety_Rating,Family_Rating,Environment_Rating,Instruction_Rating,Leaders_Rating,Teachers_Rating)
AS SELECT NAME_OF_SCHOOL,Safety_Icon, Family_Involvement_Icon, Environment_Icon,Instruction_Icon, Leaders_Icon, Teachers_Icon
FROM `chicago_public_schools`;


-- Question 2: Write and execute a SQL statement that returns all of the columns from the view.

SELECT * FROM `Chicago_PS_View`;

-- Question 3: Write and execute a SQL statement that returns just the school name and leaders rating from the view.

SELECT School_Name,Leaders_Rating 
FROM `Chicago_PS_View`;
