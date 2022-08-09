{{ config(
    materialized='table'
    )
    }}

with fact_peruvian_food_recs as (
    select * from {{ref('foodRecsBuild')}}
)

select * from fact_peruvian_food_recs