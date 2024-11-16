/* 
SQL for data science (Coursera)

Module 3
Quiz

Date: November, XX, 2024

Legend: Q=Question; A=Answer
*/

------------------------------------------------------------------------------------
-- Q1: Which of the following statements is true regarding subqueries?
-- A1: Subqueries always process the innermost query first and the work outward.

-- Q2: If you can accomplish the same outcome with a join or a subquery, which one should you always choose?
-- A2: Joins are usually faster, but subqueries can be more reliable, so it depends on your situation.

-- Q3: The following diagram is a depiction of what type of join?
-- A3: Inner Join

-- Q4: Select which of the following statements are true regarding inner joins. (Select all that apply.) 
-- A4.1: Performance will most likely worsen with the more joins you make
-- A4.2: There is no limit to the number of table you can join with an inner join. 
-- A4.3: Inner joins are one of the most popular types of joins use.

-- Q5: Which of the following is true regarding Aliases? (Select all that apply.) 
-- A5.1: SQL aliases are used to give a table, or a column in a table, a temporary name.
-- A5.2: Aliases are often used to make column names more readable.
-- A5.3: An alias only exists for the duration of the query.

-- Q6: What is wrong with the following query?
SELECT Customers.CustomerName, Orders.OrderID
FROM LEFT JOIN ON Customers.CustomerID = Orders.CustomerID FROM Orders AND Customers
ORDER BY
CustomerName;
-- A6: The table name comes after the join condition

-- Q7: What is the difference between a left join and a right join? 
-- A7: The only difference between a left and right join is the order in which the tables are relating.

-- Q8: If you perform a cartesian join on a table with 10 rows and a table with 20 rows, how many rows will there be in the output table?
-- A8: 200

-- Q9: Which of the following statements about Unions is true? (Select all that apply.)
-- A9.1: Each SELECT statement within UNION must have the same number of columns
-- A9.2: The columns must also have similar data types
-- A9.3: The UNION operator is used to combine the result-set of two or more SELECT statements

-- Q10: Data scientists need to use joins in order to: (Select the best answer)
-- A10: Retrieve data from multiple tables

--------------
-- Score: 100%
--------------
