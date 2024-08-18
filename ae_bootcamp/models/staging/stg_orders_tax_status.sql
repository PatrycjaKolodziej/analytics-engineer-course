with source as (

    select * from {{ source('northwind', 'orders_tax_status') }}
)
select
    *,
    current_timestamp() as igestion_timestamp
from source