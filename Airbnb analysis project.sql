show databases;
create database Airbnb;
use Airbnb;
select * from listing;
select * from booking;
#2
select name  from booking;
#3
select count(listing_id)  from listing;
#4
select count(id) from booking;
#5
select host_id from booking;
#6
select distinct(host_name) from booking;
#7
select distinct(neighbourhood_group) from booking;
#8
select distinct(neighbourhood) from booking;
#9
select distinct(room_type) from booking;
#10
select * from booking where neighbourhood_group in ('brooklyn','manhattan');
#11
select max(price)  from listing;
#12
select min(price)  from listing;
#13
select avg(price)  from listing;
#14
select min(minimum_nights)  from listing;
#15
select max(minimum_nights)  from listing;
#16
select avg(availability_365)  from listing;
#17
select listing_id , availability_365 from listing where availability_365 > 300;
#18
select count(listing_id) from listing where price >300 and price <400;
#19
select count(listing_id) from listing where minimum_nights < 5;
#20
select count(listing_id) from listing where minimum_nights >100;
#21
select * from booking inner join listing;
#22
select b.host_name, l.price from 
booking b inner join listing l;
#23
select b.room_type , l.price
from booking b inner join listing l ;
#24
select b.neighbourhood_group  , l.minimum_nights 
from booking b inner join listing l on b.id = l.listing_id;
#25
select b.neighbourhood  , l.availability_365 
from booking b inner join listing l on b.id = l.listing_id ;
#26
select  sum(l.price)
from booking b inner join listing l on b.id = l.listing_id group by neighbourhood_group;
#27
select  max(l.price)
from booking b inner join listing l on b.id = l.listing_id group by b.neighbourhood_group; 
#28
select  max(minimum_nights)
from booking b inner join listing l on b.id = l.listing_id group by b.neighbourhood_group;
#29
select  max(l.reviews_per_month)
from booking b inner join listing l on b.id = l.listing_id group by neighbourhood;
#30
select  max(l.price)
from booking b inner join listing l on b.id = l.listing_id group by room_type ;
#31
select  avg(l.number_of_reviews)
from booking b inner join listing l on b.id = l.listing_id group by room_type ;
#32
select  avg(l.price)
from booking b inner join listing l on b.id = l.listing_id group by room_type ;
#33
select  avg(l.minimum_nights)
from booking b inner join listing l on b.id = l.listing_id group by room_type ;
#34
select  avg(l.price) as average_price
from booking b inner join listing l on b.id = l.listing_id group by room_type having  average_price<100;
#35
select b.neighbourhood , avg(l.minimum_nights)
from booking b inner join listing l on b.id = l.listing_id group by neighbourhood having avg(l.minimum_nights)>5; 
#36 doubt
select * from listing where price > 200;
#38dooubt
select distinct(host_id , id) as disc from booking where disc in (select * from booking where host_id = id);
#39
select count(name) from booking where name regexp 'cozy';
#40
select host_id , neighbourhood_group  from booking where neighbourhood_group in (select price from listing), neighbourhood_group = manhattan;
#41
select l.price , b.id , b.host_name , b.neighbourhood
from listing l inner join booking b 
on l.listing_id = b.id 
where b.neighbourhood in ('Upper West Side','williamsburg') and l.price >100;
#42
select l.price , b.id , b.host_name , b.neighbourhood
from listing l inner join booking b 
on l.listing_id = b.id 
where b.host_name = 'Elise' and neighbourhood = 'Bedford-Stuyvesant';
#43
select b.host_name , l.availability_365 , l.minimum_nights 
from listing l inner join booking b 
on l.listing_id = b.id 
where l.availability_365 > 100 and l.minimum_nights > 100;
#44
select l.number_of_reviews , l.reviews_per_month , b.host_name 
from listing l inner join booking b
on l.listing_id = b.id 
where l.number_of_reviews > 500 and l.reviews_per_month > 5;
#45
select neighbourhood_group from booking where 













