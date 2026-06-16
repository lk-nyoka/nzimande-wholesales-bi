SELECT 
    Category,
    "Discount Applied",
    COUNT(*) as order_count,
    ROUND(AVG("Quantity"), 2) as avg_units_per_order,
    ROUND(AVG("Total Spent"), 2) as avg_order_value
FROM sales
GROUP BY Category, "Discount Applied"
ORDER BY Category, "Discount Applied";