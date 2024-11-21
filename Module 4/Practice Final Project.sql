/* 
SQL for data science (Coursera)

Module 4
Practice Final Project

Date: 2024


NOTE: 1) Make sure that the replacement of the commatas worked. If it did not work, wrong values will be returned.
      2) Make sure that you DO NOT SCROLL when/after you enter the data in the respective fields on the Coursera site, while your cursor is still in the data field. 
         If you e.g. scroll with your mousewheel, the entered values will change xD.
*/

------------------------------------------------------------------------------------
--Find the total milk production for the year 2023.
SELECT SUM(Value)
FROM milk_production mp 
WHERE "Year" = 2023;
-- 91812000000

------------------------------------------------------------------------------------
--Show coffee production data for the year 2015.
SELECT Value
FROM coffee_production cp 
WHERE Year = 2015;
-- 6600000

------------------------------------------------------------------------------------
-- Find the average honey production for the year 2022.
SELECT AVG(VALUE)
FROM honey_production hp 
WHERE Year = 2022;
-- 3133275

------------------------------------------------------------------------------------
-- Get the state names with their corresponding ANSI codes from the state_lookup table.
-- What number is Iowa?
SELECT State, State_ANSI 
FROM state_lookup sl 
WHERE State = "IOWA";
-- 19

------------------------------------------------------------------------------------
-- Find the highest yogurt production value for the year 2022.
SELECT max(Value)
FROM yogurt_production yp 
WHERE "Year" = 2022;
-- 793256000

------------------------------------------------------------------------------------
-- Find states where both honey and milk were produced in 2022.
-- Did State_ANSI "35" produce both honey and milk in 2022?
SELECT * 
FROM honey_production hp INNER JOIN milk_production mp ON hp.State_ANSI = mp.State_ANSI 
WHERE hp.Year = 2022 AND mp.Year = 2022 AND hp.State_ANSI = 35;
-- NO

------------------------------------------------------------------------------------
-- Find the total yogurt production for states that also produced cheese in 2022.
SELECT SUM(DISTINCT yp.Value) AS YogTotProd	-- Also works with subquerying
FROM yogurt_production yp INNER JOIN cheese_production cp ON yp.State_ANSI = cp.State_ANSI 
WHERE yp.Year = 2022 AND cp.Year = 2022;
-- 1171095000

------------------------------------------------------------------------------------
-- Score: 100%
-----------
