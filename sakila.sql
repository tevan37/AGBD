SELECT rating ,count(film_id) AS cantidad_films FROM film
GROUP BY rating;

SELECT c.name, count(f.title) AS cantidad FROM film f 
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
GROUP BY c.category_id

SELECT a.last_name, a.first_name, count(fa.film_id) AS cantidad FROM film_actor fa
JOIN actor a ON fa.actor_id = a.actor_id
GROUP BY a.actor_id
ORDER BY cantidad DESC
LIMIT 10;

SELECT * FROM inventory i
JOIN store s ON i.store_id = s.store_id
JOIN address a ON 