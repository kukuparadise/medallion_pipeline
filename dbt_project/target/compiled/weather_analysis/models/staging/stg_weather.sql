with source as (
    -- read from landing zone
    select * from read_parquet('../data/raw/weather_raw.parquet')
)

select
    cast(time as date) as observation_date,
    cast(temperature_2m_max as float) as max_temp_c,
    -- metadata column here
    current_timestamp as loaded_at
from source