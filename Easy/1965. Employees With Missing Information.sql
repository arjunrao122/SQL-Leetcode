

select employee_id from
(select * from Employees 
union
select * from Salaries) as u
group by employee_id
having count(employee_id) = 1
order by employee_id'

