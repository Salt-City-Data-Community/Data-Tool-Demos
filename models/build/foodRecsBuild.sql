{{ config(
    materialized='ephemeral'
    )
    }}

with restBuild as (
    select * from {{ref('restSource')}}
)

, reviewBuild as (
    select * from {{ref('reviewSource')}}
)

, modelBuild as (
    select * from {{ref('modelSource')}}
)


select

from