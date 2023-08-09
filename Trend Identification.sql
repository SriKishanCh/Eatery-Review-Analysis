-- 7. Trend Identification

/*Extracting monthly average ratings for each eatery*/
select e.eatery_id, e.name, month(r.date_reviewed) as month,
year(r.date_reviewed) as year, avg(r.rating) as avg_rating
from eateries as e
join reviews as r on e.Eatery_id=r.eatery_id
group by e.Eatery_id, e.Name, month, year
order by e.Eatery_id, year, month;