
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    observation_date as unique_field,
    count(*) as n_records

from "weather_warehouse"."main"."stg_weather"
where observation_date is not null
group by observation_date
having count(*) > 1



  
  
      
    ) dbt_internal_test