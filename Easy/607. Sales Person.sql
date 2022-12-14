

select name from salesperson where sales_id not in
(select s.sales_id from
SalesPerson s join Orders o on s.sales_id = o.sales_id
 join company c on o.com_id = c.com_id
where c.name = 'RED'
);

