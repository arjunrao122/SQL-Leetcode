
/*
select a.userid as buyer_id, a.joindate as join_date, ifnull(b.yearo,0) as orders_in_2019 
from 
(
select u.user_id as userid, u.join_date as joindate, count(year(o.order_date)) as yearo
from users u join orders o on u.user_id = o.buyer_id
group by u.user_id
) as a
left join
(
  select  u.user_id as userid, u.join_date as joindate, count(year(o.order_date)) as yearo
from users u join orders o on u.user_id = o.buyer_id
where  year(o.order_date) = 2019
group by u.user_id  
) as b
on a.userid = b.userid
order by buyer_id;
*/


select u.user_id as 'buyer_id',u.join_date, ifnull(count(o.order_id),0) as orders_in_2019 
from Users as u left join Orders as o on u.user_id=o.buyer_id and o.order_date like '2019%' 
group by u.user_id;
