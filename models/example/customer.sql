 {{ config(materialized='table') }}

with source_data as (

    select  * from source('jaffle_shop','CUSTOMER')

)

select *
from source_data
WHERE C_CUSTKEY = 270001