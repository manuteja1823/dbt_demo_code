{{ config(materialized='view') }}

WITH tb1 as(
    select
    *
    from {{source('datafeed_shared_schema','STAGE_EMP')}})
select * from tb1
