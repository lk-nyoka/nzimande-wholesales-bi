SELECT 
	Category, 
	COUNT(*) as order_count, 
	ROUND(SUM("Total Spent"), 2) as total_revenue, 
	ROUND(SUM("Quantity"), 0) as total_units, 
	ROUND(SUM("Total Spent") / NULLIF(SUM(Quantity), 0), 2) as rev_per_unit, 
	RANK() OVER (ORDER BY SUM("Total Spent") DESC) as revenue_rank, 
	RANK() OVER (ORDER BY SUM("Quantity") DESC) as volume_rank
FROM sales
GROUP BY Category
ORDER BY rev_per_unit;