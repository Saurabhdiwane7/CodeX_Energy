
# Q2c  = What packaging preferences do respondents have for energy drinks?

select 
	Packaging_preference,
	count(respondent_id) as total_count
from fact_survey_responses
group by packaging_preference
order by total_count desc
limit 1;

# Compact and portable cans are the most preffered packaging preference among respondents.