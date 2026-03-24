with staging as (
    select * from "weather_warehouse"."main"."stg_weather"
)

select
    *,
    -- business logic: classify the day
    case 
        when max_temp_c <= 0 then 'Freezing'
        when max_temp_c > 0 and max_temp_c <= 15 then 'Cold'
        when max_temp_c > 15 and max_temp_c <= 25 then 'Mild'
        else 'Hot'
    end as temperature_category,
    
    -- window function
    lag(max_temp_c) over (order by observation_date) as prev_day_temp
from staging