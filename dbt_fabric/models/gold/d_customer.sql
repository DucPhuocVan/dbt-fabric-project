{{ config(schema=var('gold_schema')) }}

SELECT * FROM {{ ref('customer') }}