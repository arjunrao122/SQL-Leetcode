

select dd.name as Department,ee.name as Employee, ee.salary as Salary from
(select e.salary, e.departmentId as did ,
row_number() over (
partition by departmentid
    order by salary desc
) as rn
from employee e
join department d
on e.departmentid = d.id
group by e.salary, e.departmentid
) as sal
join Employee ee
on ee.salary = sal.salary
join department dd
on ee.departmentId = dd.id
where ee.salary = sal.salary and ee.departmentId = sal.did and sal.rn <=3
