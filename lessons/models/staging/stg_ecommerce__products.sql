{{
  config(
    materialized = 'table',
    tags=['my_tag']
    )
}}

WITH source AS (
    SELECT *

    FROM {{ source('thelook_ecommerce', 'products') }}
)

SELECT
    id AS product_id,
    cost,
    retail_price,
    department

FROM source