
--Stored Procedures

use BikeStores


--Creating a procedure where we can find product information via orderID
GO
CREATE PROC sp_GETPRODUCTINFOBYORDERID (@orderID int)
AS
    BEGIN 
          select pp.brand_id,
		         pp.category_id,
				 pp.list_price,
				 pp.model_year,
				 pp.product_id,
				 pp.product_name
		  from sales.order_items soi
		  join production.products pp on soi.product_id=pp.product_id
		  join sales.orders so on soi.order_id=so.order_id
		  where SO.order_id=@orderID
	END
GO

execute sp_GETPRODUCTINFOBYORDERID 1


--Creating a procedure where we can extract employees sale revenues
go
CREATE PROC sp_GETEMPLOYEESALES (@employeename varchar(20))
AS
     BEGIN
	         select ss.first_name+SPACE(1)+ss.last_name as [Full Name],
			        CAST(SUM(soi.list_price*soi.quantity*(1-soi.discount)) as decimal) as Revenue,
					COUNT(soi.quantity) as Quantity
			 from sales.staffs ss
			 join sales.orders so on ss.staff_id=so.staff_id
			 join sales.order_items soi on so.order_id=soi.order_id
			 where first_name=@employeename
			 group by ss.first_name,ss.last_name
	 END
go

select * from sales.staffs

execute sp_GETEMPLOYEESALES mireya


--creating a procedure where we can find bicycle brands with the staff that representing them
go
CREATE PROC sp_BRANDSBYEMPLOYEES (@brandname varchar(10))
AS
    BEGIN
	     select ss.first_name+SPACE(1)+ss.last_name as [Full Name]
		 from production.brands pb
		 join production.products pp on pb.brand_id=pp.brand_id
		 join sales.order_items soi on soi.product_id=pp.product_id
		 join sales.orders so on soi.order_id=so.order_id
		 join sales.staffs ss on so.staff_id=ss.staff_id
		 where pb.brand_name=@brandname
		 group by ss.first_name+SPACE(1)+ss.last_name
	END
go

select * from production.brands

exec sp_BRANDSBYEMPLOYEES haro