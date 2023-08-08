# Q3a = Who are the current market leaders?

select 
Current_brands as Top_Brands,
Count(respondent_id) as Total_count
from fact_survey_responses
group by Top_Brands
order by total_count desc limit 1;

# Coka-Cola is the current Top Brand Among Users