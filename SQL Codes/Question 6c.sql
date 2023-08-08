 # Q6c =What factors influence respondents' purchase decisions, such as price range and limited edition packaging?

# For Price Range

select 
	price_range,
	count(respondent_id) as total_counts
from fact_survey_responses
group by price_range
order by total_counts desc;

#For Limited Edition

select 
	Limited_edition_packaging,
    count(respondent_id) as total_counts
from fact_survey_responses
group by Limited_edition_packaging
order by total_counts desc;
	
# For Health concern
select
	health_concerns,
    count(respondent_id) as total_count
from fact_survey_responses
group by health_concerns
order by total_count desc;