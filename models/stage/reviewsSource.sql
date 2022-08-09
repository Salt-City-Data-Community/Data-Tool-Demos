{{ config(
    materialized='ephemeral'
    )
    }}


with reviewSource as (
    select 
        *
    from staging.reviews
)


select 
    id_review
    ,review
    ,title
    ,score
    ,likes
    ,id_nick
    ,service
    ,date
    ,platform
from reviewSource