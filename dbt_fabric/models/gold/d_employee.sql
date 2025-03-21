{{ config(schema=var('gold_schema')) }}

SELECT 
    EmployeeKey,
    Employee
FROM {{ ref('employee') }}