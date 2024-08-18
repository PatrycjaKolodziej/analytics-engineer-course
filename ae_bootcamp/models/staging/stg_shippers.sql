with source as (

    select * from {{ source('northwind', 'shippers') }}
)
select
    *,
    current_timestamp() as igestion_timestamp
from source