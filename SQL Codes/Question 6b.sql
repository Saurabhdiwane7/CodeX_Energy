# Q6b = What are the typical consumption situations for energy drinks among respondents?

select 
Typical_consumption_situations,
count(respondent_id) as total_count
from fact_survey_responses
group by Typical_consumption_situations
order by total_count desc;

# Most Typical_consumption_situations of drinks are for Sports/exercise