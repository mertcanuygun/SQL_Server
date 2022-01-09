--Creating skalar and table-valued functions 


use BikeStores


--Creating a skalar function that can calculate the profit with taxes extracted from the revenues
go
CREATE FUNCTION GETPROFITfor8PERCENT (@price decimal, @amount int, @discount decimal)
RETURNS DECIMAL
       BEGIN
            return (@price * @amount * (1- @discount)) - ((@price * @amount * (1- @discount)) * 0.08)
	   END
go


select pp.product_id,
       pp.product_name,
       sum(dbo.GETPROFITfor8PERCENT(soi.list_price,soi.quantity,soi.discount)) as Profit
from sales.order_items soi
join production.products pp on soi.product_id=pp.product_id
group by pp.product_name, pp.product_id


--Creating a table-valued function where we can get total revenue by storeid
go
CREATE FUNCTION GETSALESBYSTORE (@storeID int)
RETURNS TABLE
      RETURN select sum(soi.list_price*soi.quantity*(1-soi.discount)) as Revenue
	         from sales.stores ss
			 join sales.orders so on ss.store_id=so.store_id
			 join sales.order_items soi on so.order_id=soi.order_id
			 where ss.store_id=@storeID
go


select * from GETSALESBYSTORE(3) --checking if it works and it does. Althoguh I will make some improvements. I would like to see how many products have been sold to accomplish the calculated revenue


ALTER FUNCTION GETSALESBYSTORE (@storeID int) --I altered the function by adding storeID and quantity to get a more compact info
RETURNS TABLE
      RETURN select ss.store_id,
	                sum(soi.list_price*soi.quantity*(1-soi.discount)) as Revenue,
	                sum(soi.quantity) as [Total Sold Quantity]
	         from sales.stores ss
			 join sales.orders so on ss.store_id=so.store_id
			 join sales.order_items soi on so.order_id=soi.order_id
			 where ss.store_id=@storeID
			 group by ss.store_id