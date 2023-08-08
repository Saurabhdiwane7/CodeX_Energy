# Q4a = Which marketing channel can be used to reach more customers?
select 
	Marketing_channels,
    count(respondent_id) as total_counts
from fact_survey_responses
group by Marketing_channels
order by total_counts desc
limit 1;

# Online Ads is most used marketing channel to reach more customers


