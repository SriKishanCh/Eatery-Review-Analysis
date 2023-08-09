-- 6. Gap Analysis

/*Identify eateries that haven't received a review for the longest time*/
select e.eatery_id,e.name, max(date_reviewed) as latest_review from
reviews as r
join eateries as e on r.eatery_id=e.Eatery_id
group by e.Eatery_id, e.name
order by latest_review asc;

