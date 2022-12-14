

select s.score, r.row_num as 'rank' from 
scores s join 
(select * from
(select score, row_number() over (order by score desc) as row_num
from Scores
group by score) as ranks) r
on s.score = r.score
order by r.row_num;
