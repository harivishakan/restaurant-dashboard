CREATE OR REPLACE VIEW food-delivery-analysis-461311.food_delivery_dataset.restaurant_sales_summary AS
SELECT
  restaurant_name,
  COUNT(*) AS total_month_sales,
  COUNT(CASE WHEN DATE(order_time) = CURRENT_DATE() THEN 1 END) AS today_sales,
  COUNT(CASE 
          WHEN EXTRACT(DAYOFWEEK FROM order_time) IN (6,7,1) 
               AND EXTRACT(MONTH FROM order_time) = 5 
               AND EXTRACT(YEAR FROM order_time) = 2025 THEN 1 
        END) AS weekend_sales
FROM
  `your_project.your_dataset.orders`
WHERE
  EXTRACT(MONTH FROM order_time) = 5
  AND EXTRACT(YEAR FROM order_time) = 2025
GROUP BY
  restaurant_name;
