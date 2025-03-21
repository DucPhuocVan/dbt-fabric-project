{% test greater_than_1(model, column_name) %}

SELECT 
    {{ column_name }}
FROM {{ model }}
WHERE {{ column_name }} < 2

{% endtest %}

