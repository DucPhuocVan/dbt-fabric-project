{{ config(schema=var('silver_schema')) }}

SELECT * FROM {{ source('stg', 'dimension_customer') }}