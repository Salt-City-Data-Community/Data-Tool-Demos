{{ config(
    materialized='ephemeral'
    )
    }}

with restBuild as (
    select * from {{ref('restSource')}}
)

, reviewBuild as (
    select * from {{ref('reviewsSource')}}
)

, modelBuild as (
    select * from {{ref('modelSource')}}
)


select
    modelSource.id_review
    ,modelSource.anger 
    ,modelSource.anticipation
    ,modelSource.disgust
    ,modelSource.fear
    ,modelSource.joy
    ,modelSource.sadness
    ,modelSource.surprise
    ,modelSource.trust
    ,modelSource.negative
    ,modelSource.positive
    ,modelSource.stars_1
    ,modelSource.stars_2
    ,modelSource.stars_3
    ,modelSource.stars_4
    ,modelSource.stars_5
    ,reviewSource.review
    ,reviewSource.title
    ,reviewSource.score
    ,reviewSource.likes
    ,reviewSource.id_nick
    ,reviewSource.service
    ,reviewSource.date
    ,reviewSource.platform
from modelSource
left join reviewSource on reviewSource.id_review = modelSource.id_review