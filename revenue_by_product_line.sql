-- Explore the data in the table
SELECT product_line,
		TO_CHAR(date, 'Month')as month,
		warehouse,
		SUM(total - payment_fee) as net_revenue
FROM sales
WHERE client_type = 'Wholesale'
GROUP BY product_line, month, warehouse
ORDER BY product_line DESC, month DESC, net_revenue DESC;