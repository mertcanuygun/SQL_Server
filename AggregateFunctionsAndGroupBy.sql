
--Reading data using aggregate functions and group by to extract the rows that have the same values

use BikeStores


--Reading list prices grouped by order amounts
select list_price,
       count(order_id) as Amount
from sales.order_items
group by list_price
order by list_price asc


--Reading Products grouped by quantities
select product_id,
       sum(quantity) [Quantities]
from sales.order_items
group by product_id
order by product_id


--Reading average revenue from the sales
select CAST(AVG(quantity*list_price*(1-discount)) as smallmoney) as [Average Revenue]
from sales.order_items


--Reading products grouped by total revenue 
select product_id,
       count(quantity) as [Quantity],
       sum(quantity*list_price*(1-discount)) as [Total Revenue]
from sales.order_items
group by product_id
order by SUM(quantity*list_price*(1-discount)) asc


--Reading products in every store with biggest stocks
select product_id,
       MAX(quantity) as [Biggest Stock] 
from production.stocks
group by product_id
order by [Biggest Stock] desc


--Reading delayed orders
select order_id,
       customer_id,
       order_date,
       DATEDIFF(DAY,required_date,shipped_date) as [Delay Time]
from sales.orders
where DATEDIFF(DAY,required_date,shipped_date)>0
group by DATEDIFF(DAY,required_date,shipped_date),customer_id,order_date,order_id
order by order_id


--Using another database to practice

use Northwind


--reading the total number of product that are available
select COUNT(ProductID) as [Total Product Number]
from Products


--reading the total units in stock
select SUM(UnitsInStock) as [Total Units in Stock]
from Products


--reading the amount of products grouped by categories
select CategoryID,
       Count(*) as Amount
from Products
group by CategoryID


--reading the amount of products that the unit price is above 10 grouped by categories
select CategoryID,
       COUNT(*) as Amount
from Products
where UnitPrice > 10
group by CategoryID


--reading employees who are female and from USA
select (FirstName + ' ' + LastName) as [Full Name],
       Title,
	   Country,
	   BirthDate
from Employees
where (TitleOfCourtesy like '%s.') and (Country like '%A') 


