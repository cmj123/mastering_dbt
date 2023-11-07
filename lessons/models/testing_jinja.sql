{# A comment that won't be present in the compiled sql #}

-- A comment that will be present

{% set my_long_variable %}
    SELECT 1 AS my_col
{% endset %}

{{- my_long_variable -}}
{{-  my_long_variable -}}
{{- my_long_variable -}}

{% set my_list = ['user_id','created_at']  %}

{{ my_list }}

SELECT 
{%- for item in my_list %}
    {{ item }}{% if not loop.last %},{% endif %}
{%- endfor %}