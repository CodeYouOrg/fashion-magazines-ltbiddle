-- Add your sql here
SELECT customer_name AS Customer, PRINTF("$%.2f",sum(price_per_month * subscription_length)) AS "Amount Due"
FROM customers
JOIN orders, subscriptions
ON orders.customer_id = customers.customer_id
AND subscriptions.subscription_id = orders.subscription_id
AND subscriptions.description = "Fashion Magazine"
WHERE orders.order_status = "unpaid"
GROUP BY customers.customer_name;
