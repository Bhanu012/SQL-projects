show databases;
create database grocery_sales;
use grocery_sales;


select * from blink ;
#2
select Item_Identifier  from blink;
#3
select count(Item_Identifier)  from blink;
#4
select max(Item_Weight)  from blink ;
#5
select min(Item_Weight)  from blink ;
#6
select avg(Item_Weight)  from blink ;
#7
select count(Item_Fat_Content)  from blink where Item_Fat_Content = 'Low Fat' ;
#8
select count(Item_Fat_Content)  from blink where Item_Fat_Content = 'Regular';
#9
select max(Item_MRP)  from blink;
#10
select min(Item_MRP)  from blink;
#11
select Item_Identifier, Item_Fat_Content , Item_Type , Item_MRP  from blink where Item_MRP > 200;
#12
select max(Item_MRP)  from blink where Item_Fat_Content = 'Low Fat';
#13
select min(Item_MRP) from blink where Item_Fat_Content = 'Low Fat';
#14
select * from blink where Item_MRP >=50 and Item_MRP <=100;
#15
select distinct(Item_Fat_Content)  from blink;
#16
select distinct(Item_Type)  from blink;
#17
select * from blink order by Item_MRP desc;
#18
select * from blink order by Item_Outlet_Sales  asc;
#19
select * from blink order by Item_Type asc;
#20
select * from blink where Item_Type in('dairy','Meat');
#21
select distinct(Outlet_Size)  from blink;
#22
select distinct(Outlet_Location_Type)  from blink;
#23
select distinct(Outlet_Type)  from blink;
#24
select count(Item_Identifier) as total from blink group by Item_Type  order by count(Item_Identifier)  desc;
#25
select count(Item_Identifier) as total from blink group by Outlet_Size order by count(Item_Identifier) asc;
#26
select count(Item_Identifier) as total from blink group by Outlet_Type order by count(Item_Identifier)  desc;
#27
select count(Item_Identifier) as total from blink group by Outlet_Location_Type  order by count(Item_Identifier)  desc;
#28
select max(Item_MRP)  from blink group by Item_Type ;
#29
select min(Item_MRP)  from blink group by Item_Type ;
#30
select min(Item_MRP)  from blink group by Outlet_Establishment_Year  order by avg(Item_MRP) desc;
#31
select max(Item_MRP)  from blink group by Outlet_Establishment_Year  order by avg(Item_MRP) desc;
#32
select avg(Item_MRP)  from blink group by Outlet_Type order by avg(Item_MRP) desc;
#33
select avg(Item_MRP)  from blink group by Outlet_Type  order by avg(Item_MRP) asc;
#34
select max(Item_MRP)  from blink group by Outlet_Type  ;
#35
select max(Item_Weight)  from blink group by Item_Type ;
#36
select max(Item_Weight)  from blink group by Outlet_Establishment_Year ;
#37
select min(Item_Weight)  from blink group by Item_Type ;
#38
select avg(Item_Weight)  from blink group by Outlet_Location_Type  order by avg(Item_Weight) desc;
#39
select max(Item_Outlet_Sales)  from blink group by Item_Type ;
#40
select min(Item_Outlet_Sales)  from blink group by Item_Type ;
#41
select min(Item_Outlet_Sales)  from blink group by Outlet_Establishment_Year;
#42
select max(Item_Outlet_Sales)  from blink group by Outlet_Establishment_Year order by max(Item_Outlet_Sales) desc;
#43
select avg(Item_Outlet_Sales)  from blink group by Outlet_Size order by avg(Item_Outlet_Sales) desc;
#44
select avg(Item_Outlet_Sales)  from blink group by Outlet_Type;
#45
select max(Item_Outlet_Sales)  from blink group by Outlet_Type;
#46
select sum(Item_Outlet_Sales)  from blink group by Item_Type;
#47
select sum(Item_Outlet_Sales)  from blink group by Item_Fat_Content ;
#48
select max(Item_Visibility) from blink group by Item_Type;
#49
select min(Item_Visibility) from blink group by Item_Type;
#50
select sum(Item_Outlet_Sales) from blink where Outlet_Location_Type = 'Tier 1' group by Item_Type;
#51
select sum(Item_Outlet_Sales) from blink where Item_Fat_Content in('Fat','LF') group by Item_Type;






















