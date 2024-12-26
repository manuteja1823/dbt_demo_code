{{ config(materialized='view') }}

WITH tb1 as(
    select
    id,
    frist_name,
<<<<<<< HEAD
    last_name
=======
    last_name 
>>>>>>> d33fa701591724ce0dbcdd6ac1c2dc1bb53e162d
    from {{source('datafeed_shared_schema','STAGE_EMP')}})
select * from tb1
