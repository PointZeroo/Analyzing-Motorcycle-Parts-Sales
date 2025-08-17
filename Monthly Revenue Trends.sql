-- Explore the data in the table
SELECT 	
		TO_CHAR(date, 'Month')as month,
		SUM(total - payment_fee) as net_revenue
FROM sales
WHERE client_type = 'Wholesale'
GROUP BY month
ORDER BY net_revenue DESC;