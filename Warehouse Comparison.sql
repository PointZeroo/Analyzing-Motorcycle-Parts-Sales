-- Explore the data in the table
SELECT 
		warehouse,
		SUM(total - payment_fee) as net_revenue
FROM sales
WHERE client_type = 'Wholesale'
GROUP BY warehouse
ORDER BY net_revenue DESC;