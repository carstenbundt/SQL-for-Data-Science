/* 
SQL for data science (Coursera.org)

Module 3
Practice Quiz - Writing Queries

Date: November, 13, 2024

Legend: Q=Question; A=Answer
*/

------------------------------------------------------------------------------------
-- Q1: How many albums does the artist Led Zeppelin have?

-- Calculate the total number of albumId from albums table (N=347)
SELECT COUNT(albumId)
FROM albums
-- Define Led Zeppelin's albums using subquerying 
WHERE ArtistId IN (
		SELECT ArtistId
		FROM artists
		WHERE Name LIKE "Led Zeppelin"
		);
		
-- A1: 14

------------------------------------------------------------------------------------
-- Q2: Create a list of album titles and the unit prices for the artist "Audioslave".

SELECT a.Title, t.UnitPrice
-- inner join of album and tracks table on AlbumId key
From (albums a INNER JOIN tracks t ON a.AlbumId = t.AlbumId)
-- Another INNER JOIN of artists and albums table on ArtistID key
INNER JOIN artists art ON art.ArtistID = a.ArtistID
-- Selection of Audioslave as variable of interest
WHERE art.Name = 'Audioslave'

-- A2: 40

------------------------------------------------------------------------------------
-- Q3: Find the first and last name of any customer who does not have an invoice. Are there any customers returned from the query?  

SELECT *
-- INNER JOIN of customers and invoices table ON customerId key
FROM customers c INNER JOIN invoices i ON c.CustomerId = i.CustomerId

-- Check whether any InvoiceId IS NULL
Where i.InvoiceId IS NULL

-- A3: No

------------------------------------------------------------------------------------
-- Q4: What is the total price for the album “Big Ones”?

-- Select Title from albums table and UnitPrice from tracks table
SELECT a.Title, sum(t.UnitPrice)

-- Inner join album and tracks table on AlbumId key
FROM albums a INNER JOIN tracks t ON a.AlbumId = t.AlbumId

-- Filter based on album title
Where a.Title = 'Big Ones'

-- A4: 14.85 (Important: the code returns 14.850000000000001 but if this value is used, it is considered to be wrong)!
