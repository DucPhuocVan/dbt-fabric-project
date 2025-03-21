{{ config(schema=var('gold_schema')) }}

SELECT 
    CustomerKey,
    Customer
FROM {{ ref('customer') }}