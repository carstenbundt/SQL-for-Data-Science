/* 
SQL for data science (Coursera)

Module 4
Coding questions

Date: 2024

Legend: Q=Question; A=Answer
*/

------------------------------------------------------------------------------------
-- Q1: What is the city and country result for CustomerID 16?

SELECT CustomerId,
FirstName,
LastName,
Address,
City,
UPPER (City || ' ' || Country)
FROM Customers
WHERE CustomerId = 16 

-- A1: MOUNTAIN VIEW USA

------------------------------------------------------------------------------------
-- Q2: Create a new employee user id by combining the first 4 letters of the employee’s first name with the first 2 letters of the employee’s last name. 
--     Make the new field lower case and pull each individual step to show your work.
--     What is the final result for Robert King?

SELECT EmployeeId, 
FirstName,
LastName, 
LOWER(SUBSTR(FirstName, 1, 4) || SUBSTR(LastName, 1, 2)) AS UserId
FROM Employees;

-- A2: robeki

------------------------------------------------------------------------------------
-- Q3: Show a list of employees who have worked for the company for 15 or more years using the current date function. Sort by lastname ascending.
--     What is the lastname of the last person on the list returned?

SELECT EmployeeId, 
FirstName,
LastName,
HireDate,
STRFTIME('%Y %m %d', 'now') - HireDate AS YearsInCompany
FROM Employees
WHERE YearsInCompany >= 15
ORDER BY LastName ASC;

-- A3: Peacock

------------------------------------------------------------------------------------
-- Q4: Profiling the Customers table, answer the following question.
--     Are there any columns with null values? Indicate any below. Select all that apply.

SELECT FirstName,
Company,
PostalCode,
Address,
Fax,
Phone
FROM Customers
--WHERE FirstName IS NULL OR Company IS NULL OR PostalCode IS NULL OR Address IS NULL OR Fax IS NULL OR Phone IS NULL;

-- A4: Company, Postal Code, Fax, Phone

------------------------------------------------------------------------------------
-- Q5: Find the cities with the most customers and rank in descending order.
-- Which of the following cities indicate having 2 customers?

SELECT CustomerId,
City,
COUNT(City) AS CityCount
FROM Customers
GROUP BY City
ORDER BY CityCount DESC;

-- A5: Sao Paulo, London, Mountain View.

------------------------------------------------------------------------------------
-- Q6: Create a new customer invoice id by combining a customer’s invoice id with their first and last name while ordering your query in the following order: firstname, lastname, and invoiceID.
-- Select all of the correct "AstridGruber" entries that are returned in your results below. Select all that apply.

SELECT FirstName,
LastName, 
InvoiceId,
FirstName || LastName || InvoiceId AS NewId
FROM Customers c INNER JOIN Invoices i ON c.CustomerId = i.CustomerId
WHERE FirstName = 'Astrid' AND LastName = 'Gruber';

-- A6: AstridGruber273, AstridGruber296, AstridGruber370

------------------------------------------------------------------------------------
-- Score: 100%
------------------------------------------------------------------------------------
