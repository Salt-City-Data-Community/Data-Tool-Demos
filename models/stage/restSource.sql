{{ config(
    materialized='ephemeral'
    )
    }}


with restSource as (
    select 
        *
    from staging.restaurant
)


select 
    id
    ,name
    ,tag
    ,x
    ,y
    ,district
    ,IDDIST
    ,direction
    ,stars
    ,n_reviews
    ,min_price
    ,max_price
    ,platform
from restSource