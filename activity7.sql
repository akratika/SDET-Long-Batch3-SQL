select * from orders;
-- statement to find the total purchase amount of all orders.
select sum(purchase_amount) as 'Total' from orders;

-- statement to find the average purchase amount of all orders.
select avg(purchase_amount) as 'Average' from orders;

-- statement to get the maximum purchase amount of all the orders.
select max(purchase_amount) as 'Maximum' from orders;

-- statement to get the minimum purchase amount of all the orders.
select min(purchase_amount) as 'Minimum' from orders;

-- statement to find the number of salesmen listed in the table.
select Count(distinct salesman_id) as 'Number of Salesman' from orders;