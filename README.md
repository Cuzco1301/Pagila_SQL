---
##  Case Study 1: Category Ranking by Total Rentals

### 1. The Business Question
**Objective:** To determine which movie category generates the highest number of rental events to prioritize inventory purchasing.
**Impact:** This result guides management in inventory optimization and purchasing strategy to maximize Return on Investment (ROI).

### 2. The Data Strategy (SQL)
A complex query using four JOINs was necessary to link the rental events with their categories:
* **Tables Joined:** `category` → `film_category` → `inventory` → `rental`.
* **Aggregation:** The `COUNT(rental_id)` function was used to sum all unique rental events.
* **Order:** The results were grouped by category name and ordered by the total count (`ORDER BY total_rentals DESC`) to rank popularity.

### 3. The Source Code (SQL Query)
```sql
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

View the complete SQL Script: [sql_scripts/category with the largest number of rented movies.sql](sql_scripts/category with the largest number of rented movies.sql)

4. Conclusion and Visualization
Conclusion: The analysis reveals that the Sports category is the top performer, indicating that the purchasing strategy should prioritize this genre. The overall performance of all categories is shown in the ranking below.

Visualization:
![Category Ranking Bar Chart](visualizations/category with the largest number of rented movies.png)

Data Transparency: The complete ranking of all 16 categories used for this visualization is available for verification in the file [data/category with the largest number of rented movies.csv](data/category with the largest number of rented movies.csv) accompanying this repository.
