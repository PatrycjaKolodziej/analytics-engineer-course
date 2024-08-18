with source as (

    select * from {{ source('northwind', 'strings') }}
)
select
    *,
    current_timestamp() as igestion_timestamp
from source