 use BikeStores;
select DB_NAME();
select * from sales.customers;
select * from production.products;
select product_name,product_id,model_year from production.
Order by model_year;
select * from production.products;
select * from production.stocks;
select P.product_id,P.product_name,S.quantity 
From production.products as P
Inner join production.stocks AS S
on P.product_id = S.product_id;


Select 
ord.order_id as OrderId,
concat (cus.first_name,' ',cus.last_name) as CustomerName,
cus.City as CustomerCity,
cus.state as CustomerState,
SUM(Items.QUANTITY) AS total_units,
sum(Items.quantity * Items.List_price) as Revenue,
Pro.product_name as ProductName,
Procat.category_name as CategoryName,
Stores.store_name as StoreName,
concat(staffs.first_name, ' ' , staffs.last_name) as SalesRep,
ord.order_date as CustomerOrders
From sales.orders as ord
join sales.customers as cus
on ord.customer_id = cus.customer_id
join sales.order_items as Items
on ord.order_id = Items.Order_id
join production.products as pro 
on Pro.product_id = Items.product_id
join production.categories as ProCat
on Procat.category_id = pro.category_id
join sales.stores as Stores
on stores.store_id = ord.store_id
Join sales.staffs as Staffs
on ord.staff_id = Staffs.staff_id
Group by
ord.order_id,
concat (cus.first_name,' ',cus.last_name) ,
cus.City ,
cus.state,
ord.order_date,
Pro.product_name,
Procat.Category_Name,
Stores.store_name,
concat(staffs.first_name, ' ' , staffs.last_name);






Select * from sales.orders


brand_name as BrandName,
category_name as Category,

