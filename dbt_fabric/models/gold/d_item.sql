{{ config(schema=var('gold_schema')) }}

SELECT StockItemKey, StockItem 
FROM {{ ref('item') }}