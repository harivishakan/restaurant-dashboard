
SELECT
  DATE(order_time) AS order_date,
  restaurant_name,
  CASE
    WHEN EXTRACT(HOUR FROM order_time) BETWEEN 12 AND 15 THEN 'Lunch'
    WHEN EXTRACT(HOUR FROM order_time) BETWEEN 18 AND 22 THEN 'Dinner'
    ELSE 'Other'
  END AS peak_period,
  COUNT(*) AS total_orders,
  ROUND(AVG(TIMESTAMP_DIFF(delivery_time, order_time, MINUTE)), 2) AS avg_delivery_time_mins,
  COUNTIF(delivery_status = 'Cancelled') AS cancellations
FROM
  `food-delivery-analysis-461311.food_delivery_dataset.orders`
WHERE
  DATE(order_time) = CURRENT_DATE()
  AND EXTRACT(HOUR FROM order_time) IN (12,13,14,15,18,19,20,21,22)
GROUP BY
  order_date, restaurant_name, peak_period
HAVING
  peak_period != 'Other'
ORDER BY
  restaurant_name, peak_period;
