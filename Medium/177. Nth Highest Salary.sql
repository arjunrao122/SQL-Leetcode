

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      select salary from (
          select salary, ROW_NUMBER() over (order by salary desc) as rownum
          from Employee
          group by salary
          having count(salary) > 0
      ) as temp
      where temp.rownum = N
      
  );
END

