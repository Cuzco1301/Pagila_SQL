--Show customers who have spent more than $100 in total.
SELECT
    c.first_name || ' ' || c.last_name AS full_name,
    SUM(amount) AS total_spent
FROM
    customer AS c
JOIN
    payment AS p USING (customer_id)
GROUP BY
    c.customer_id, full_name
HAVING
    SUM(amount) > 100
ORDER BY
    total_spent DESC;


