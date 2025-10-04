-- category with the largest number of rented movies
select c.name as category_name, count(r) as total_rentals
from category as c
join film_category as fc using (category_id)
join inventory as i using (film_id)
join rental as r using (inventory_id)
group by c.name
order by 
total_rentals desc


