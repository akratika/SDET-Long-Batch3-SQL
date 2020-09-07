-- Add new column
alter table salesman add grade int;

-- update values in grade column
update salesman set grade=100;

-- display data
select * from salesman;