create database codex;
use codex;
show tables;
select * from brand_marketing;
select * from dim_cities;
select * from dim_respondents;
select * from fact_survey_responses;
select * from marketing_types;

# Q1  = a. Who prefers energy drink more? (male/female/non-binary?)

with cte as (
select f.Consume_frequency,
d.Gender,
count(f.Respondent_id) as total_count,
rank()over(Partition by f.Consume_frequency order by count(respondent_id) desc) as rnk
from fact_survey_responses f
join dim_respondents d 
on f.respondent_id =d.respondent_id 
group by f.consume_frequency,d.gender
)
select consume_frequency,
gender,Total_count
from cte where rnk =1

# Male Prefer the energy drinks more as compared to female/non-binary.