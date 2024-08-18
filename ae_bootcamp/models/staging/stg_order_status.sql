with source as (

    select * from {{ source('northwind', 'order_status') }}
)
select
    *,
    current_timestamp() as igestion_timestamp
from source