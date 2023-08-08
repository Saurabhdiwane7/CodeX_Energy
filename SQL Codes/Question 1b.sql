# Q 1b = Which age group prefers energy drinks more?

# Ans = 

with cte as (
select f.Consume_frequency,
d.age,
count(f.Respondent_id) as total_count,
rank()over(Partition by f.Consume_frequency order by count(respondent_id) desc) as rnk
from fact_survey_responses f
join dim_respondents d 
on f.respondent_id =d.respondent_id 
group by f.consume_frequency,d.age
)
select consume_frequency,
age,Total_count
from cte where rnk =1

# Age group lies within 19-30 prefer energ drinks most!