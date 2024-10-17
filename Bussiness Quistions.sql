/*1- comparison between competators per category*/
SELECT Product_Category,AVG(unit_price)as price,AVG(Competitor1_Unit_Price)as c1,
AVG(Competitor2_Unit_Price)as c2,AVG(Competitor3_Unit_Price)as c3
FROM retail_price
GROUP BY Product_Category

/*2-Demand and quantity sold per month*/
SELECT month,Year, AVG(Customers_Demand)AS Demand,AVG(Unit_Price)AS Price,AVG(Quantity)AS Quantity_Sold
FROM retail_price
GROUP BY Month,Year
ORDER BY Quantity_Sold DESC,price 

/*3-number of weekdays and weekends relation with sales and demand*/
SELECT Month_Weekdays,AVG(unit_price)as price,AVG(Competitor1_Unit_Price)as c1,
AVG(Competitor2_Unit_Price)as c2,AVG(Competitor3_Unit_Price)as c3,
AVG(Quantity)AS Quantity_Sold,AVG(Customers_Demand)AS Demand
FROM retail_price
GROUP BY Month_Weekdays
ORDER BY Month_Weekdays

/*4-number of holidays relation with sales and demand*/
SELECT Month_Holidays,AVG(unit_price)as price,AVG(Competitor1_Unit_Price)as c1,
AVG(Competitor2_Unit_Price)as c2,AVG(Competitor3_Unit_Price)as c3,
AVG(Quantity)AS Quantity_Sold,AVG(Customers_Demand)AS Demand
FROM retail_price
GROUP BY Month_Holidays
ORDER BY Month_Holidays

SELECT Product_Category, sum(Quantity)Quantity_sold,sum(Customers_Demand)Demand
FROM retail_price
GROUP BY Product_Category

/*5-volum and weight relation with price*/
SELECT Product_Category,AVG(unit_price)as price,AVG(volume_cm3)volume,AVG(Product_Weight_g)weight,AVG(Competitor1_Unit_Price)as c1,
AVG(Competitor2_Unit_Price)as c2,AVG(Competitor3_Unit_Price)as c3
FROM retail_price
GROUP BY Product_Category
ORDER BY volume

/*6-max & min unit price*/
SELECT Product_Category,MAX(unit_price)as MAXprice,MIN(unit_price)as MINprice,
MAX(Competitor1_Unit_Price)as c1_max,MIN(Competitor1_Unit_Price)as c1_min,
MAX(Competitor2_Unit_Price)as c2_max,MIN(Competitor2_Unit_Price)as c2_min,
MAX(Competitor3_Unit_Price)as c3_max,MIN(Competitor3_Unit_Price)as c3_min
FROM retail_price
GROUP BY Product_Category

/*7-max&min delivery cost*/
SELECT Product_Category,MAX(Delivery_Cost)as MAXprice,MIN(Delivery_Cost)as MINprice,
MAX(Competitor1_Delivery_Cost)as c1_max,MIN(Competitor1_Delivery_Cost)as c1_min,
MAX(Competitor2_Delivery_Cost)as c2_max,MIN(Competitor2_Delivery_Cost)as c2_min,
MAX(Competitor3_Delivery_Cost)as c3_max,MIN(Competitor3_Delivery_Cost)as c3_min
FROM retail_price
GROUP BY Product_Category

/*8- Total sales per category*/
SELECT Product_Category,round(SUM(Total_Price),2)as total_sales,ROUND(AVG(unit_price),2)price
FROM retail_price
GROUP BY Product_Category
ORDER BY total_sales DESC



