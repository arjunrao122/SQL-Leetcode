

select distinct t1.num as ConsecutiveNums from Logs t1
join Logs t2
on t1.id = t2.id +1
join Logs t3
on t1.id = t3.id +2
where t1.num = t2.num and t1.num = t3.num;
