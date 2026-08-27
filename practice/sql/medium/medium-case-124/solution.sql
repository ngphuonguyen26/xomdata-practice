-- Xom Data · Classify student academic performance
-- Problem: https://xomdata.com/practice/medium-case-124
-- Solved: 2026-08-27

with student_avg as (
    select s.full_name, s.student_code, avg(sc.final_score) as avg_score
    from students s
    join scores sc on s.id = sc.student_id
    group by s.id, s.full_name, s.student_code
)

select s.full_name, s.student_code, round(avg_score,2) as avg_score, 
    case
        when avg_score >= 9 then 'Excellent'
        when 8 <= avg_score and avg_score < 9 then 'Good'
        when 7 <= avg_score and avg_score < 8 then 'Fair'
        when 5 <= avg_score and avg_score < 7 then 'Average'
        else 'Poor'
    end as grade,
    row_number() OVER (order by  avg_score DESC) as class_rank
from student_avg s
order by avg_score desc, s.student_code asc
limit 20
