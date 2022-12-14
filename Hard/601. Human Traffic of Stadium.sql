

select * from Stadium where id in (select distinct * from (
select id1 from (select s1.id as id1,s2.id as id2,s3.id as id3
from Stadium s1
join Stadium s2
on s1.id = s2.id+1
join Stadium s3
on s2.id = s3.id+1
where s1.people >= 100 and s2.people >= 100 and s3.people >= 100) t1

union all

select id2 from (select s1.id as id1,s2.id as id2,s3.id as id3
from Stadium s1
join Stadium s2
on s1.id = s2.id+1
join Stadium s3
on s2.id = s3.id+1
where s1.people >= 100 and s2.people >= 100 and s3.people >= 100) t2

union all

select id3 from (select s1.id as id1,s2.id as id2,s3.id as id3
from Stadium s1
join Stadium s2
on s1.id = s2.id+1
join Stadium s3
on s2.id = s3.id+1
where s1.people >= 100 and s2.people >= 100 and s3.people >= 100) t3
) t);
