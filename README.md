## 📊 Restaurant Delivery Analytics Dashboard

This project provides insights into restaurant delivery performance using Google BigQuery and Looker Studio. It includes scheduled queries, views, and visual dashboards to track restaurant performance effectively.

### 📁 Project Structure

- **`peak_hour_performance.sql`**  
  A **scheduled query** that tracks restaurant order volumes by hour to identify peak business hours.  
  ⏰ *Scheduled daily at 11:30 PM UTC.*

- **`restaurant_delivery_performance.sql`**  
  A **view** that analyzes average delivery times and cancellation counts per restaurant to monitor delivery efficiency.

- **`restaurant_sales_summary.sql`**  
  A **view** summarizing each restaurant’s sales, including:
  - Total sales for the current month
  - Today’s sales
  - Weekend sales performance (Friday–Sunday)

### 📷 Dashboard Screenshots

Visualizations created in Looker Studio for better performance monitoring:

- `Restaurant_sales_summary.png`
- `Restaurant_delivery_performance.png`
- `Peak_hour_performance.png`

### 💻 Tools Used

- Google BigQuery
- Looker Studio
- GitHub for version control
