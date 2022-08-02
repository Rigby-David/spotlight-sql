-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join

SELECT name
FROM category
LEFT JOIN film_category ON category.category_id = film_category.category_id
LEFT JOIN film ON film_category.film_id = film.film_id
INNER JOIN inventory ON film.inventory_id = inventory.inventory_id
LEFT JOIN rental ON inventory.rental_id = rental.rental_id
WHERE rental.rental_id IS NULL;