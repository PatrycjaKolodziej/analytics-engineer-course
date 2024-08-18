with source as (

    select * from {{ source('northwind', 'employees') }}
)
select
    *,
    current_timestamp() as igestion_timestamp
from source