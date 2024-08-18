with source as (

    select * from {{ source('northwind', 'suppliers') }}
)
select
    *,
    current_timestamp() as igestion_timestamp
from source