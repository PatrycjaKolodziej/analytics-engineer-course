with source as (

    select * from {{ source('northwind', 'inventory_transactions') }}
)
select
    *,
    current_timestamp() as igestion_timestamp
from source