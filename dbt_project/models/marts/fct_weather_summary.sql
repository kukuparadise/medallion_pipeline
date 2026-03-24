with refined as (
    select * from {{ ref('int_weather_refined') }}
)

select
    date_trunc('week', observation_date) as observation_week,
    count(*) as days_in_week,
    round(avg(max_temp_c), 2) as avg_max_temp,
    max(max_temp_c) as peak_temp,
    min(max_temp_c) as low_temp
from refined
group by 1
order by 1 desc