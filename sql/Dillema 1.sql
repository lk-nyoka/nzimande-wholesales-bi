SELECT 
    COUNT(*) as total_records,
    ROUND(SUM("Total Spent"), 2) as gross_revenue,
    ROUND(AVG("Total Spent"), 2) as avg_order_value,
    ROUND(SUM("Quantity"), 0) as total_units,
    ROUND(
        100.0 * SUM(CASE WHEN "Discount Applied" = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) as discount_rate_pct
FROM sales;