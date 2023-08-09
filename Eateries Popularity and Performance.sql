-- 3. Eateries Popularity and Performance

/*Rank Eateries by No.of Ratings*/
select et.type_name, r.eatery_id, count(r.review_id) as no_of_reviews from reviews as r
join eatery_types et on et.type_id=r.eatery_id
group by r.eatery_id,et.type_name
order by no_of_reviews desc;

/*Rank Eateries by Average Ratings*/
select et.type_name, r.eatery_id, avg(r.review_id) as avg_of_reviews from reviews as r
join eatery_types et on et.type_id=r.eatery_id
group by r.eatery_id,et.type_name
order by avg_of_reviews desc;

/*Identify Under-reviewed Eateries*/
select e.eatery_id, e.name,avg(r.rating) as avg_rating,
case
when avg(r.rating) between 4.5 and 5 then 'excellent'
when avg(r.rating) between 3.5 and 4.4 then 'good'
when avg(r.rating) between 2.5 and 3.4 then 'average'
when avg(r.rating) between 1.5 and 2.4 then 'below average'
else 'poor'
end as rating_category
from eateries as e
join reviews r on r.eatery_id=e.eatery_id
group by e.eatery_id,e.name
order by avg_rating desc;
