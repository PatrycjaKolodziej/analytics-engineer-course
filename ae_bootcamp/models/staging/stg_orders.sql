with source as (

    select * from {{ source('northwind', 'orders') }}
)
select
    *,
    current_timestamp() as igestion_timestamp
from source