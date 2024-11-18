/* 
SQL for data science (Coursera)

Module 3
Coding Assignment

Date: 2024

Legend: Q=Question; A=Answer
*/

------------------------------------------------------------------------------------
-- Q1: Using a subquery, find the names of all the tracks for the album "Californication".
SELECT Name, AlbumId
FROM Tracks
WHERE AlbumId IN (
    SELECT AlbumId
    FROM Albums
    WHERE Title = 'Californication'
);
-- A1: Porcelain

------------------------------------------------------------------------------------
-- Q2: Find the total number of invoices for each customer along with the customer's full name, city and email.
SELECT Customers.*, COUNT(Invoices.InvoiceId)
FROM Customers INNER JOIN Invoices ON Customers.CustomerId = Invoices.CustomerId
GROUP BY CustomerId

------------------------------------------------------------------------------------
-- Q3: Retrieve the track name, album, artistID, and trackID for all the albums.
SELECT Tracks.Name,
Tracks.TrackId,
Albums.Title,
Albums.ArtistId
FROM Tracks INNER JOIN Albums ON Tracks.AlbumId = Albums.AlbumId

-- A3: Breaking The Rules

------------------------------------------------------------------------------------
-- Q4: Retrieve a list with the managers last name, and the last name of the employees who report to him or her.
SELECT EmployeeId,
LastName, 
FirstName,
ReportsTo
FROM Employees

-- A4: Callahan & King

------------------------------------------------------------------------------------
-- Q5: Find the name and ID of the artists who do not have albums. 
SELECT Artists.Name,
       Artists.ArtistId
       -- A left join (in contrast to an inner join) is needed as we want to retrieve
       -- the rows in the left table without a pair in the right one (i.e. IS NULL)
       FROM Artists LEFT JOIN Albums 
       ON Artists.ArtistId = Albums.ArtistId
       WHERE Albums.ArtistId IS NULL;

-- A5: Gilberto

------------------------------------------------------------------------------------
-- Q6: Use a UNION to create a list of all the employee's and customer's first names and last names ordered by the last name in descending order.
SELECT FirstName, LastName
FROM Customers
UNION
SELECT FirstName, LastName
FROM Employees 
ORDER BY LastName DESC;

-- A6: Taylor

------------------------------------------------------------------------------------
-- Q7: See if there are any customers who have a different city listed in their billing city versus their customer city.
SELECT Customers.City, Invoices.BillingCity
FROM Customers INNER JOIN Invoices ON Customers.CustomerId = Invoices.CustomerId
WHERE Customers.City IS NOT Invoices.BillingCity

-- A7: No customers have different cities listed.


------------------------------------------------------------------------------------
-- Score: 100%
------------------------------------------------------------------------------------

