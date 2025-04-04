with dexes as (

    select * from {{ ref('stg_dex') }}
),

final as (

    select 
        blockchain,
        project,
        version,
        pool,
        token_id,
        token_address,
        token_type 
    from dexes
)

select * from final