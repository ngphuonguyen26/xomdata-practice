-- Xom Data · Products more expensive than the category average
-- Problem: https://xomdata.com/practice/medium-subquery-103
-- Solved: 2026-08-27

with average_p as (
    select category, avg(price) as avg_price
    from products
    group by category
)
select h.product_name, h.category, h.price,round((h.price - p.avg_price), 0) as diff_from_avg, round(abs(100 - ((h.price / p.avg_price) * 100)),2) as pct_above
from products h join average_p p on h.category = p.category 
where h.price - p.avg_price > 0
group by h.product_name
order by pct_above desc, h.product_name asc
