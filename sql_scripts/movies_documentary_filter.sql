--movies with their category and rental price
select f.title as movies, c.name as category, f.rental_rate as rental_price
from 
film as f
join 
film_category as fc using (film_id)
join 
category as c using (category_id)
where c.name='Documentary' and rental_rate>=2.99
order by rental_rate desc;


