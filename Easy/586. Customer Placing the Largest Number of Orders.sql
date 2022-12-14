
/* 
SLOWER SOLUTION 

select customer_number from (select customer_number, count(customer_number) as counter from orders 
group by customer_number) as t
where counter = (select max(counter) from (select customer_number, count(customer_number) as counter from orders 
group by customer_number) as t1)
*/

/* FASTER SOLUTION */
select customer_number from orders group by customer_number
order by count(customer_number) desc
limit 1;
