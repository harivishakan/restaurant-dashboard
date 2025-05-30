CREATE OR REPLACE VIEW food-delivery-analysis-461311.food_delivery_dataset.restaurant_delivery_performance AS
SELECT
  restaurant_name,
  COUNT(*) AS total_orders,
  AVG(TIMESTAMP_DIFF(delivery_time, order_time, MINUTE)) AS avg_delivery_minutes,
  SUM(CASE WHEN delivery_status = 'Cancelled' THEN 1 ELSE 0 END) AS total_cancellations,
  ROUND(100 * SUM(CASE WHEN delivery_status = 'Cancelled' THEN 1 ELSE 0 END) / COUNT(*), 2) AS cancellation_rate_percent
FROM
  orders
GROUP BY
  restaurant_name
ORDER BY
  avg_delivery_minutes DESC;
