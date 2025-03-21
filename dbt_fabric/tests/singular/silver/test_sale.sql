SELECT * FROM {{ ref('sale') }}
WHERE Quantity < 2
