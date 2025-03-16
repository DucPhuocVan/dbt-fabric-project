{{ config(schema=var('silver_schema')) }}

SELECT * FROM {{ source('stg', 'fact_sale') }}