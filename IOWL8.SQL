--8.	stores that have the same number of sales as the previous year
SELECT st.store_name,st.sale_dollars
FROM `bigquery-public-data.iowa_liquor_sales_forecasting.2020_sales_train` st
INNER JOIN `bigquery-public-data.iowa_liquor_sales_forecasting.2021_sales_predict` sp ON
st.sale_dollars=sp.sale_dollars
GROUP BY st.store_name, st.sale_dollars limit 5
