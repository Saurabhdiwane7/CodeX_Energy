
#Q1c = Which type of marketing reaches the most Youth (15-30)?

select f.marketing_channels,
d.age,
count(f.respondent_id) as total_count
from fact_survey_responses f 
join dim_respondents d
on f.respondent_id =d.respondent_id 
where age in ('15-18','19-30')
group by f.marketing_channels,d.age
order by total_count desc;

# Online Ads and TV Commercial is the tyoe of marketing reaches the most in Youth (15-30) 
