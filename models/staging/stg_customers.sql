{{ config(materialized='table') }}

WITH tb1 as(
    select
    *
    from {{source('datafeed_shared_schema','RAW_CUSTOMERDATA')}})
select * from tb1

