/* 
SQL for data science (Coursera)

Module 4
Quiz

Date: 2024

Legend: Q=Question; A=Answer
*/

------------------------------------------------------------------------------------
-- Q1: Which of the following are supported in SQL when dealing with strings? (Select all that apply.)
-- A1: Substring, Lower, Concatenate, Upper, Trim

------------------------------------------------------------------------------------
-- Q2: What will the result of the following statement be?
SELECT SUBSTR('You are beautiful.', 3)
-- A2: u are beautiful

------------------------------------------------------------------------------------
-- Q3: What are the results of the following query?
select * orders
where order_date = ‘2017-07-15’
-- A3: You wont't get any results.

------------------------------------------------------------------------------------
-- Q4: Case statements can only be used for which of the following statements? (Select all that apply.)
-- A4: Select, Insert, Update, Delete.

------------------------------------------------------------------------------------
-- Q5: Which of the following is FALSE regarding views?
-- A5: Views will remain after database connection has ended

------------------------------------------------------------------------------------
-- Q6: You are only allowed to have one condition in a case statement. True or false?
-- A6: False

------------------------------------------------------------------------------------
-- Q7: Select the correct SQL syntax for creating a view.
-- A7: 
CREATE VIEW
customers AS
SELECT * 
FROM customers
WHERE Name LIKE '%I'

------------------------------------------------------------------------------------
-- Q8: Profiling data is helpful for which of the following? (Select all that apply.)
-- A8: Filter out unwanted data elements, Understanding your data

------------------------------------------------------------------------------------
-- Q9: What is the most important step before beginning to write queries?
-- A9: Understanding your data

------------------------------------------------------------------------------------
-- Q10: When debugging a query, what should you always remember to do first?
-- A10: Start simple and break it down first

------------------------------------------------------------------------------------
-- Score: 100%
------------------------------------------------------------------------------------
