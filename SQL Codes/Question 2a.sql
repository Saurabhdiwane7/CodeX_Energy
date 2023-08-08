# Q2a = a. What are the preferred ingredients of energy drinks among respondents?

select 
	Ingredients_expected,
	count(respondent_id) as total_count
from fact_survey_responses
group by Ingredients_expected
order by total_count desc
limit 1;

# Most Preffered ingredient in energy drink is Caffeine.


