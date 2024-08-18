with source as (
    
    select * from {{ source('northwind', 'customer') }}
)
select 
    *,
    current_timestamp() as igestion_timestamp
from source