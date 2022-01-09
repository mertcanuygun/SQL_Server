
--Using having clause and join

use BikeStores


--reading products with total revenue higher than 80000
select product_id,
       CAST(SUM(quantity*list_price*(1-discount)) as money) as [Total Revenue]
from sales.order_items
group by product_id
having SUM(quantity*list_price*(1-discount)) > 80000
order by product_id


--reading employee names and customerID's using join
select ss.first_name+SPACE(1)+ss.last_name as [Full Name],
	   customer_id
from sales.orders so
join sales.staffs ss on so.staff_id=ss.staff_id
group by customer_id,ss.first_name+SPACE(1)+ss.last_name


--Using another database to practice

use Northwind


--Reading products that have been sold order by order dates
select p.ProductID,
       p.ProductName,
	   p.UnitPrice,
	  CAST(DAY(o.OrderDate) as varchar)+'.'+CAST(MONTH(o.OrderDate) as varchar)+'.'+CAST(YEAR(o.OrderDate) as varchar) as [Order Date]
from Products p
join [Order Details] od on p.ProductID=od.ProductID
join Orders o on od.OrderID=o.OrderID
order by 4 asc


--Reading orders with a revenue of higher than 5000 
select ProductID,
       CAST(SUM(UnitPrice*Quantity*(1-Discount)) as smallmoney) as [Total Purchase Revenue]
from [Order Details]
group by [ProductID]
having SUM(UnitPrice*Quantity*(1-Discount)) > 5000
order by [Total Purchase Revenue] asc


--Reading number of countries grouped by category name that have been made a sell
select CategoryName,
       Count(distinct o.ShipCountry) as [Number of Countries]
from Categories c
join Products p on p.CategoryID=c.CategoryID
join [Order Details] od on p.ProductID=od.ProductID
join Orders o on od.OrderID=o.OrderID
group by CategoryName
order by 2 desc

