SELECT title FROM film
ORDER BY title ASC

SELECT DISTINCT rating FROM film
ORDER BY rating ASC

SELECT title, rating, rental_rate FROM film
WHERE rating like 'PG%'
ORDER BY rental_rate DESC, title ASC

SELECT c.city, co.country FROM city c 
JOIN country co ON c.country_id = co.country_id
ORDER BY country ASC

SELECT DISTINCT co.country, count(c.city) AS cantidad FROM city c 
JOIN country co ON c.country_id = co.country_id
GROUP BY co.country
ORDER BY cantidad DESC

SELECT DISTINCT co.country AS pais, count(c.city) AS cantidad FROM city c 
JOIN country co ON c.country_id = co.country_id
WHERE cantidad NOT 1
GROUP BY pais
ORDER BY cantidad ASC
