WITH sales_calculation AS (
    SELECT
        quantity,
        total_price,
        (quantity * total_price) AS gross_sales
    FROM {{ ref('sales_data') }}  -- Replace 'sales_data' with your source model/table name
)

SELECT
    AVG(gross_sales) AS avg_gross_sales
FROM sales_calculation
