with source as (

    select * from {{ source('northwind', 'privileges') }}
)
select
    *,
    current_timestamp() as igestion_timestamp
from source