# Advanced SQL Queries

*This projects highlight my knowledge of advance sql skills and techniques such as joins, transactions, views and stored procedure.*

There are three datasets - 

- chicago_crime
- chicago_socioeconomic_data
- chicago_public_schools
    
We will load the `.sql` files located at Tables folder to create and populate three tables. 

After that we will perform asked queries, solutions and questions can be found at `Queries` folder.

A Short description of each table :

## Chicago_Crime

```sql
CREATE TABLE `chicago_crime` (
  `ID` int DEFAULT NULL,
  `CASE_NUMBER` varchar(8) DEFAULT NULL,
  `DATE` varchar(10) DEFAULT NULL,
  `BLOCK` varchar(35) DEFAULT NULL,
  `IUCR` varchar(4) DEFAULT NULL,
  `PRIMARY_TYPE` varchar(33) DEFAULT NULL,
  `DESCRIPTION` varchar(46) DEFAULT NULL,
  `LOCATION_DESCRIPTION` varchar(33) DEFAULT NULL,
  `ARREST` varchar(5) DEFAULT NULL,
  `DOMESTIC` varchar(5) DEFAULT NULL,
  `BEAT` int DEFAULT NULL,
  `DISTRICT` int DEFAULT NULL,
  `WARD` varchar(2) DEFAULT NULL,
  `COMMUNITY_AREA_NUMBER` varchar(2) DEFAULT NULL,
  `FBICODE` varchar(3) DEFAULT NULL,
  `X_COORDINATE` varchar(7) DEFAULT NULL,
  `Y_COORDINATE` varchar(7) DEFAULT NULL,
  `YEAR` int DEFAULT NULL,
  `LATITUDE` varchar(30) DEFAULT NULL,
  `LONGITUDE` varchar(30) DEFAULT NULL,
  `LOCATION` varchar(29) DEFAULT NULL
)
```

## Chicago_Socioeconomic_data

```sql
CREATE TABLE `chicago_socioeconomic_data` (
  `COMMUNITY_AREA_NUMBER` varchar(2) DEFAULT NULL,
  `COMMUNITY_AREA_NAME` varchar(22) DEFAULT NULL,
  `PERCENT_OF_HOUSING_CROWDED` decimal(3,1) DEFAULT NULL,
  `PERCENT_HOUSEHOLDS_BELOW_POVERTY` decimal(3,1) DEFAULT NULL,
  `PERCENT_AGED_16__UNEMPLOYED` decimal(3,1) DEFAULT NULL,
  `PERCENT_AGED_25__WITHOUT_HIGH_SCHOOL_DIPLOMA` decimal(3,1) DEFAULT NULL,
  `PERCENT_AGED_UNDER_18_OR_OVER_64` decimal(3,1) DEFAULT NULL,
  `PER_CAPITA_INCOME` int DEFAULT NULL,
  `HARDSHIP_INDEX` varchar(2) DEFAULT NULL
)
```

## Chicago_Public_Schools

```sql
CREATE TABLE `chicago_public_schools` (
  `School_ID` int DEFAULT NULL,
  `NAME_OF_SCHOOL` varchar(65) DEFAULT NULL,
  `Elementary, Middle, or High School` varchar(2) DEFAULT NULL,
  `Street_Address` varchar(29) DEFAULT NULL,
  `City` varchar(7) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `ZIP_Code` int DEFAULT NULL,
  `Phone_Number` varchar(14) DEFAULT NULL,
  `Link` varchar(78) DEFAULT NULL,
  `Network_Manager` varchar(40) DEFAULT NULL,
  `Collaborative_Name` varchar(34) DEFAULT NULL,
  `Adequate_Yearly_Progress_Made_` varchar(3) DEFAULT NULL,
  `Track_Schedule` varchar(12) DEFAULT NULL,
  `CPS_Performance_Policy_Status` varchar(16) DEFAULT NULL,
  `CPS_Performance_Policy_Level` varchar(15) DEFAULT NULL,
  `HEALTHY_SCHOOL_CERTIFIED` varchar(3) DEFAULT NULL,
  `Safety_Icon` varchar(11) DEFAULT NULL,
  `SAFETY_SCORE` varchar(2) DEFAULT NULL,
  `Family_Involvement_Icon` varchar(11) DEFAULT NULL,
  `Family_Involvement_Score` varchar(3) DEFAULT NULL,
  `Environment_Icon` varchar(11) DEFAULT NULL,
  `Environment_Score` varchar(2) DEFAULT NULL,
  `Instruction_Icon` varchar(11) DEFAULT NULL,
  `Instruction_Score` varchar(2) DEFAULT NULL,
  `Leaders_Icon` varchar(20) DEFAULT NULL,
  `Leaders_Score` varchar(3) DEFAULT NULL,
  `Teachers_Icon` varchar(11) DEFAULT NULL,
  `Teachers_Score` varchar(3) DEFAULT NULL,
  `Parent_Engagement_Icon` varchar(7) DEFAULT NULL,
  `Parent_Engagement_Score` varchar(3) DEFAULT NULL,
  `Parent_Environment_Icon` varchar(7) DEFAULT NULL,
  `Parent_Environment_Score` varchar(3) DEFAULT NULL,
  `AVERAGE_STUDENT_ATTENDANCE` varchar(6) DEFAULT NULL,
  `Rate_of_Misconducts__per_100_students_` decimal(4,1) DEFAULT NULL,
  `Average_Teacher_Attendance` varchar(6) DEFAULT NULL,
  `Individualized_Education_Program_Compliance_Rate` varchar(7) DEFAULT NULL,
  `Pk_2_Literacy__` varchar(30) DEFAULT NULL,
  `Pk_2_Math__` varchar(30) DEFAULT NULL,
  `Gr3_5_Grade_Level_Math__` varchar(30) DEFAULT NULL,
  `Gr3_5_Grade_Level_Read__` varchar(3) DEFAULT NULL,
  `Gr3_5_Keep_Pace_Read__` varchar(3) DEFAULT NULL,
  `Gr3_5_Keep_Pace_Math__` varchar(3) DEFAULT NULL,
  `Gr6_8_Grade_Level_Math__` varchar(3) DEFAULT NULL,
  `Gr6_8_Grade_Level_Read__` varchar(3) DEFAULT NULL,
  `Gr6_8_Keep_Pace_Math_` varchar(3) DEFAULT NULL,
  `Gr6_8_Keep_Pace_Read__` varchar(3) DEFAULT NULL,
  `Gr_8_Explore_Math__` varchar(3) DEFAULT NULL,
  `Gr_8_Explore_Read__` varchar(3) DEFAULT NULL,
  `ISAT_Exceeding_Math__` varchar(4) DEFAULT NULL,
  `ISAT_Exceeding_Reading__` varchar(4) DEFAULT NULL,
  `ISAT_Value_Add_Math` varchar(3) DEFAULT NULL,
  `ISAT_Value_Add_Read` varchar(3) DEFAULT NULL,
  `ISAT_Value_Add_Color_Math` varchar(6) DEFAULT NULL,
  `ISAT_Value_Add_Color_Read` varchar(6) DEFAULT NULL,
  `Students_Taking__Algebra__` varchar(30) DEFAULT NULL,
  `Students_Passing__Algebra__` varchar(30) DEFAULT NULL,
  `9th Grade EXPLORE (2009)` varchar(3) DEFAULT NULL,
  `9th Grade EXPLORE (2010)` varchar(3) DEFAULT NULL,
  `10th Grade PLAN (2009)` varchar(3) DEFAULT NULL,
  `10th Grade PLAN (2010)` varchar(3) DEFAULT NULL,
  `Net_Change_EXPLORE_and_PLAN` varchar(3) DEFAULT NULL,
  `11th Grade Average ACT (2011)` varchar(3) DEFAULT NULL,
  `Net_Change_PLAN_and_ACT` varchar(3) DEFAULT NULL,
  `College_Eligibility__` varchar(3) DEFAULT NULL,
  `Graduation_Rate__` varchar(3) DEFAULT NULL,
  `College_Enrollment_Rate__` varchar(3) DEFAULT NULL,
  `COLLEGE_ENROLLMENT` int DEFAULT NULL,
  `General_Services_Route` int DEFAULT NULL,
  `Freshman_on_Track_Rate__` varchar(3) DEFAULT NULL,
  `X_COORDINATE` decimal(10,3) DEFAULT NULL,
  `Y_COORDINATE` decimal(10,3) DEFAULT NULL,
  `Latitude` decimal(10,8) DEFAULT NULL,
  `Longitude` decimal(11,8) DEFAULT NULL,
  `COMMUNITY_AREA_NUMBER` int DEFAULT NULL,
  `COMMUNITY_AREA_NAME` varchar(22) DEFAULT NULL,
  `Ward` int DEFAULT NULL,
  `Police_District` int DEFAULT NULL,
  `Location` varchar(27) DEFAULT NULL
) 
```

#### This project was done as a part of SQL advanced queries course at Coursera.

#### Follow my data journey, [Portfolio_Link](https://www.amanbhattarai.com)
