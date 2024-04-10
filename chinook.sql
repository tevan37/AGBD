SELECT name, Composer, Milliseconds FROM tracks
ORDER BY name ASC

SELECT LastName, FirstName, Address, City FROM customers

SELECT name, Composer, Milliseconds FROM tracks
WHERE Composer IS NULL AND Milliseconds > 290000

SELECT LastName, FirstName, Company FROM customers
WHERE Company IS NOT NULL

SELECT DISTINCT BillingCity, BillingState FROM invoices
WHERE BillingState IS NOT NULL
ORDER BY BillingCity DESC

SELECT Title FROM albums
WHERE Title LIKE "%of%"
ORDER BY Title ASC

SELECT t.name, g.name FROM tracks t JOIN genres g ON t.GenreId = g.GenreId

SELECT t.name, a.Title FROM tracks t JOIN albums a ON t.AlbumId = a.AlbumId
ORDER BY Title DESC