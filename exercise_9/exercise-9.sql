-- find the film title of all inventory items that have never been rented
-- LEFT JOIN FROM inventory to film and to rental
-- use WHERE IS NULL

SELECT title
FROM film
INNER JOIN inventory on film.film_id = inventory.film_id
LEFT JOIN rental on inventory.inventory_id = rental.inventory_id
WHERE rental.inventory_id IS NULL;