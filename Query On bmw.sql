-- TOTAL UNITS SOLD BY ENGINE TYPE
SELECT SUM(`MODEL UNITS SOLD`) as `total units` , `Engine Type`
FROM bmw.bmw_data_csv
group by `Engine Type`;
-- AVERAGE SEGMENT PRICE
SELECT ROUND(avg(PRICE_INR),0) AS `AVERAGE SEGMENT PRICE`, SEGMENT
FROM BMW.bmw_data_csv
group by SEGMENT;
-- Average Competition faced by model 
Select  Model , avg(`Competition by rivarly Index`) As `Competition Index`
FROM bmw.bmw_data_csv
group by model ;
-- Units Sold By Country
SELECT country , sum(`MODEL UNITS SOLD`) as `Units Sold`
FROM BMW.BMW_DATA_CSV
group by country;
-- Average Price Of Each Model
Select Model , ROUND(AVG(Price_INR),0) As `Average Price`
FROM BMW.BMW_DATA_CSV
GROUP BY MODEL;
-- YEAR BY YEAR GROWTH
SELECT Year , sum(`MODEL UNITS SOLD`) as `Units Sold` , ROUND(AVG(`ACTIVE DEALERSHIP COUNT`),0)  AS `Active Dealerships Per Year` 
FROM BMW.BMW_DATA_CSV
Group By year 
Order by year ASC;
-- Sales By Segment
select Segment , SUM(`MODEL UNITS SOLD`) AS `Units Per Segment`
FROM BMW.BMW_DATA_CSV
GROUP BY segment
ORDER BY SUM(`MODEL UNITS SOLD`) ASC;



