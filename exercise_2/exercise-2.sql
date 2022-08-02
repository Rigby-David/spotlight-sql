-- find all rental dates for customers with the first_name Patricia
-- use INNER JOIN FROM customer onto rental

SELECT rental_date
from customer inner join rental on customer.first_name = rental.rental_date
where customer.first_name = 'Patricia';