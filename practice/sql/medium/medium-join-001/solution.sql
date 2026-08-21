-- Xom Data · Customer spending per order
-- Problem: https://xomdata.com/practice/medium-join-001
-- Solved: 2026-08-21

select c.full_name, count(o.customer_id) as order_count, 
sum(o.total_amount) as total_spending, avg(o.total_amount) as avg_order_value,
row_number() over (order by sum(o.total_amount) desc, full_name asc) as spending_rank
from customers c, orders o
where c.id = o.customer_id
group by o.customer_id;
