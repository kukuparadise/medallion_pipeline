
    
    

with all_values as (

    select
        temperature_category as value_field,
        count(*) as n_records

    from "weather_warehouse"."main"."int_weather_refined"
    group by temperature_category

)

select *
from all_values
where value_field not in (
    'Freezing','Cold','Mild','Hot'
)


