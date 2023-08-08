# Q6a = a. Where do respondents prefer to purchase energy drinks?

select 
purchase_location,
count(respondent_id) as total_count
from fact_survey_responses 
group by purchase_location
order by total_count desc;

# Supermarket is the most preferable location for users to purchase the energy drinks.