{{ config(schema=var('gold_schema')) }}

SELECT 
    sale.CityKey,
    city.City,
    sale.CustomerKey,
    customer.Customer,
    sale.SalespersonKey,
    employee.Employee,
    sale.StockItemKey,
    item.StockItem,
    sale.InvoiceDateKey,
    SUM(sale.Quantity) AS Quantity,
    SUM(sale.TotalIncludingTax) AS TotalIncludingTax,
    SUM(sale.Profit) AS Profit
FROM {{ ref('sale') }} sale
LEFT JOIN {{ ref('d_city') }} city
    ON sale.CityKey = city.CityKey
LEFT JOIN {{ ref('d_customer') }} customer
    ON sale.CustomerKey = customer.CustomerKey
LEFT JOIN {{ ref('d_employee') }} employee
    ON sale.SalespersonKey = employee.EmployeeKey
LEFT JOIN {{ ref('d_item') }} item
    ON sale.StockItemKey = item.StockItemKey
GROUP BY
    sale.CityKey,
    city.City,
    sale.CustomerKey,
    customer.Customer,
    sale.SalespersonKey,
    employee.Employee,
    sale.StockItemKey,
    item.StockItem,
    sale.InvoiceDateKey