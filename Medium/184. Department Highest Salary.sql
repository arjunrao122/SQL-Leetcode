
select d.name as Department, e.name as Employee, e.salary as Salary 
from Employee e join Department d on e.departmentId = d.id
group by e.departmentId, e.name
having (salary, departmentId) In (select max(salary), departmentId from Employee group by departmentId );
