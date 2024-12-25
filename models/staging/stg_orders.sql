{{ config(materialized='table') }}

WITH tb1 as(
    select id,
    order_date,
    user_id,
    status

    from {{source('datafeed_shared_schema','RAW_ORDER')}})
select * from tb1
