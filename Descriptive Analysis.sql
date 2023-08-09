-- 1. Descriptive Analysis

/*the average rating of all eateries*/
select eatery_id, avg(rating) as Avg_rating from reviews
group by eatery_id;

/*Count the number of reviews per eatery*/
select eatery_id, count(*) as review_count from reviews
group by eatery_id;

/*the distribution of male vs. female users*/
select gender, count(*) as Gender_Distribution from users
group by gender;

/*Determine the most common type of eatery in the database*/
select type_name, count(*) as type_count from eatery_types
group by type_name
having type_count = 
(select max(type_count) from 
(select count(*) as type_count from eatery_types
group by type_name) as inner_query);
