--movies with their category and rental price
SELECT
    f.title AS movies,
    c.name AS category,
    f.rental_rate AS rental_price
FROM
    film AS f
JOIN film_category AS fc USING (film_id)
JOIN category AS c USING (category_id)
WHERE
    c.name='Documentary' AND f.rental_rate >= 2.99
ORDER BY
    rental_price DESC;



