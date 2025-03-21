{{ config(schema=var('gold_schema')) }}

SELECT 
    CityKey,
    City
FROM {{ ref('city') }}