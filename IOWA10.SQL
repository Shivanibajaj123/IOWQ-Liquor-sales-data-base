--10.	average sales of Fareway Stores store in the year 2021
SELECT avg(y.sale_dollars) as sale_dollars_2020,avg (x.sale_dollars) as sale_dollars_2021
from 
bigquery-public-data.iowa_liquor_sales_forecasting.2021_sales_predict x
full outer join bigquery-public-data.iowa_liquor_sales_forecasting.2020_sales_train y 
on x.store_name = y.store_name
where y.store_name LIKE '%Fareway Stores%'
