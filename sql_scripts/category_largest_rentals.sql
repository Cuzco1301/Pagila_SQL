-- category with the largest number of rented movies
SELECT
    c.name AS category_name,
    COUNT(r.rental_id) AS total_rentals
FROM
    category AS c
JOIN film_category AS fc USING (category_id)
JOIN inventory AS i USING (film_id)
JOIN rental AS r USING (inventory_id)
GROUP BY
    c.name
ORDER BY
    total_rentals DESC;


