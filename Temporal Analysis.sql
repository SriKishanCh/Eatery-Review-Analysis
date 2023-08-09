-- 2. Temporal Analysis

/*the highest number of new user registrations*/
select month(joining_date) as month, year(joining_date) as year, count(id) as no_of_registrations
from users
group by year,month
order by no_of_registrations desc
limit 1;

/*Determine if there's a particular month or season where more reviews are written*/
SELECT month(date_reviewed) as month, year(date_reviewed) as year, count(*) as no_of_reviews from reviews
group by year,month
order by no_of_reviews desc
limit 1;
