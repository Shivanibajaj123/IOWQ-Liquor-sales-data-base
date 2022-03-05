--4.	What stores have sold the most gallons of liquor?
SELECT
store_name,
store_location,
ROUND(SUM(volume_sold_gallons),2) AS gallons_sold
FROM
`bigquery-public-data.iowa_liquor_sales.sales`
GROUP BY
store_name,
store_location
ORDER BY
gallons_sold DESC limit 5
