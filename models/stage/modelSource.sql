{{ config(
    materialized='ephemeral'
    )
    }}


with modelSource as (
    select 
        *
    from staging.model
)


select 
    id_review
    ,anger 
    ,anticipation
    ,disgust
    ,fear
    ,joy
    ,sadness
    ,surprise
    ,trust
    ,negative
    ,positive
    ,stars_1
    ,stars_2
    ,stars_3
    ,stars_4
    ,stars_5
from modelSource