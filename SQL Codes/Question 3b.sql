#Q3b = What are the primary reasons consumers prefer those brands over ours?

select 
Reasons_for_choosing_brands as Reasons,
Count(respondent_id) as Total_Reasons_Submitted
from fact_survey_responses
group by Reasons
order by Total_reasons_Submitted desc;

# Brand Reputation ,Taste/falvor preference and Avaliablity are the top 3 reasons consumers prefer these brands over ours.