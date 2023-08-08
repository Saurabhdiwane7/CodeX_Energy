# Q4b. How effective are different marketing strategies and channels in reaching our customers?

with cte as (
select 
f.Marketing_channels,
d.Age,
count(f.respondent_id) as total_count,
rank()over(Partition by age order by count(f.respondent_id) desc) as rnk
from  fact_survey_responses f
join dim_respondents d 
on  f.respondent_id = d.respondent_id 
group by f.Marketing_channels,
d.Age
order by count(f.respondent_id) desc)
select Age,Marketing_channels from cte where rnk =1;