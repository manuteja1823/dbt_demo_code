{{ config(materialized='view') }}

WITH tb1 as(
    select
    id,
    frist_name,
    last_name 
    from {{source('datafeed_shared_schema','STAGE_EMP')}})
select * from tb1
