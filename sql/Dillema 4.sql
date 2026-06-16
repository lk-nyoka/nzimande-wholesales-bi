SELECT 
	Location, 
	COUNT(*) as total_order,
	ROUND(SUM("Total Spent"), 2) as total_revenue, 
	ROUND(AVG("Total Spent"), 2) as avg_order_value,
	ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER(), 2) as pct_transactions
FROM sales
GROUP BY Location
ORDER BY avg_order_value;
	