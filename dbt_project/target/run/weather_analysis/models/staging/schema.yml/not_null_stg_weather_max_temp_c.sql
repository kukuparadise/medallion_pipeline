
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select max_temp_c
from "weather_warehouse"."main"."stg_weather"
where max_temp_c is null



  
  
      
    ) dbt_internal_test