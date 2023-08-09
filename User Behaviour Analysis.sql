-- 4. User Behaviour Analysis

/*Identify the Top 5 Most Active Users*/
select u.id, u.full_name, count(r.review_id) as no_of_reviews from users
as u
join reviews as r on u.id=r.user_id
group by u.id, u.full_name
order by no_of_reviews desc
limit 5;

/* Gender-Based Analysis of Reviews*/
select u.gender, count(r.review_id) as no_of_reviews from users as u
join reviews as r on u.id=r.user_id
group by u.gender
order by no_of_reviews desc;