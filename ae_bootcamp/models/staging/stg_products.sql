with source as (

    select * from {{ source('northwind', 'products') }}
)
select
    *,
    current_timestamp() as igestion_timestamp
from source