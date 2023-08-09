-- 5. Correlation Analysis

/* correlation between day of week and average rating*/
select dayofweek(date_reviewed) as dayofweek, avg(rating) as avgrating
from reviews
group by dayofweek
order by avgrating desc;

/* Correlation between the frequency of reviews and average rating for
eateries*/
select e.eatery_id, e.name, count(r.review_id) as no_of_reviews,
avg(rating) as avgrating from eateries as e
join reviews as r on r.eatery_id = e.Eatery_id
group by e.eatery_id, e.name
order by no_of_reviews, avgrating desc;

