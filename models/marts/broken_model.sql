{{
    config(
        materialized='view'
    )
}}

SELECT
    *
FROM {{ ref('non_existent_model') }}  -- This will cause dependency error
