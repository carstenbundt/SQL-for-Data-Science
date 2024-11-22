/* 
SQL for data science (Coursera)

Module 4
Final Project

Date: 2024

Legend: Q=Question; A=Answer

NOTES: 
Using DBeaver and following the assignment instructions does result in 'Value' columns to be of VARCHAR data type. This results in SQL statements
such as 'x.Value > 1000000' to NOT WORK. One can circumvent this problem by e.g. changing the data type while importing the .csv
to the respective tables that have previously been created using the script the course provides for the final project. 
The steps are: After right-clicking on the table to import data -> during the "tables mapping" step,
double click on the respective .csv table -> a window opens where you can configure the metadata structure -> double click on the "Target type" entry
for the relevant column to change the datatype to INTEGER.
*/

------------------------------------------------------------------------------------
-- Q1: What is the total milk production for 2023?
SELECT SUM(Value) 
FROM milk_production mp 
WHERE "Year" = 2023;

-- A1: 91812000000

------------------------------------------------------------------------------------
-- Q2: Which states had cheese production greater than 100 million in April 2023? The Cheese Department wants to focus their marketing efforts there. 
--     How many states are there?
SELECT *
FROM cheese_production cp 
WHERE cp.Year = 2023 AND cp.Period = "APR" AND cp.Value > 100000000;

-- A2: 2 (But this excludes the empty entry in State_ANSI where it is unclear WHY it is empty as it has a corresponding cp.Value?)

------------------------------------------------------------------------------------
-- Q3: Your manager wants to know how coffee production has changed over the years. 
--     What is the total value of coffee production for 2011?
SELECT Value
FROM coffee_production cp 
WHERE "Year" = 2011;

-- A3: 7600000

------------------------------------------------------------------------------------
-- Q4: There's a meeting with the Honey Council next week. Find the average honey production for 2022 so you're prepared.
SELECT Value
FROM honey_production hp 
WHERE YEAR = 2022;

-- A4: 3133275

------------------------------------------------------------------------------------
-- Q5: The State Relations team wants a list of all states names with their corresponding ANSI codes. Can you generate that list?
--     What is the State_ANSI code for Florida?
SELECT State,
State_ANSI
FROM state_lookup sl 
WHERE State = 'FLORIDA';

-- A5: 12

------------------------------------------------------------------------------------
-- Q6: For a cross-commodity report, can you list all states with their cheese production values, even if they didn't produce any cheese in April of 2023?
--     What is the total for NEW JERSEY?
SELECT *, SUM(cp.Value) AS totalNewYers
FROM state_lookup sl LEFT JOIN cheese_production cp ON sl.State_ANSI = cp.State_ANSI 
WHERE sl.State = "NEW JERSEY" AND cp.Year = 2023 AND cp.Period = 'APR';

-- A6: 4889000

------------------------------------------------------------------------------------
-- Q7: Can you find the total yogurt production for states in the year 2022 which also have cheese production data from 2023? This will help the Dairy Division in their planning.
SELECT SUM(DISTINCT(yp.Value))
FROM yogurt_production yp LEFT JOIN cheese_production cp ON yp.State_ANSI = cp.State_ANSI 
WHERE yp.Year = 2022 AND cp.Year = 2023;

-- A7: 1171095000

------------------------------------------------------------------------------------
-- Q8: List all states from state_lookup that are missing from milk_production in 2023.
--     How many states are there?
SELECT sl.State
FROM state_lookup sl LEFT JOIN milk_production mp ON sl.State_ANSI = mp.State_ANSI AND mp.Year = 2023
WHERE mp.State_ANSI IS NULL;
  
-- A8: 26

------------------------------------------------------------------------------------
-- Q9: List all states with their cheese production values, including states that didn't produce any cheese in April 2023.
--     Did Delaware produce any cheese in April 2023?
SELECT * 
FROM state_lookup sl LEFT JOIN cheese_production cp ON sl.State_ANSI = cp.State_ANSI
WHERE sl.State = "DELAWARE" AND cp.Period = 'APR';
  
-- A9: No

------------------------------------------------------------------------------------
-- Q10: Find the average coffee production for all years where the honey production exceeded 1 million.
SELECT AVG(cp.Value) AS coffeeProd
FROM coffee_production cp WHERE cp.Year IN
(SELECT hp.Year FROM honey_production hp WHERE hp.Value > 1000000);

-- A10: 6426666

------------------------------------------------------------------------------------
-- Score: 100%
------------------------------------------------------------------------------------

