{# {{
  config(
    group = 'marketing',
    )
}} #}

SELECT * FROM {{ ref('dim_orders') }}