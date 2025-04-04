with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('raw_dex') }}

),

renamed as (

    select
        blockchain,
        project,
        version,
        pool, 
        token_id, 
        token_address,
        token_type

    from source

)

select * from renamed