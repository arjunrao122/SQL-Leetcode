
select email from 
(select email, count(email) as counter from person group by email) as temp 
where counter >1 ;
