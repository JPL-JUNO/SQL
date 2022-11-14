select product_id, product_type, sale_price,
	rank() over (partition by product_type order by sale_price) as ranks
    from product;
    
select product_id, product_type, sale_price,
	rank() over (order by sale_price) as ranks
    from product;
    
    
select product_id, product_type, sale_price,
	rank() over (order by sale_price) as ranking,
    dense_rank() over (order by sale_price) as dense_ranking,
    row_number() over (order by sale_price) as row_num
    from product;
    
select product_id, product_name, sale_price,
	sum(sale_price) over (order by product_id) as current_sum
	from product;
    
select product_id, product_name, sale_price,
	avg(sale_price) over (order by product_id) as current_avg,
	sum(sale_price) over (order by product_id) as current_sum
	from product;
-- 与上面简写是等价的，但是最好显式指明框架的范围，尤其是在following使用时      
select product_id, product_name, sale_price,
	avg(sale_price) over (order by product_id 
		rows between 2 preceding and current row) as moving_avg
	from product;

select product_id, product_name, sale_price,
	avg(sale_price) over (order by product_id rows 2 preceding) as moving_avg
	from product;

select product_id, product_name, sale_price,
	avg(sale_price) over (order by product_id 
		rows between current row and 2 following) as moving_avg
	from product;
    
select product_id, product_name, product_type,
	avg(sale_price) over (order by product_id 
		rows between 1 preceding and 1 following) as moving_avg
	from product;

-- arbitrary order
select product_id, product_type, sale_price,
	rank() over (order by sale_price) as ranking
	from product;

select product_id, product_type, sale_price,
	rank() over (order by sale_price) as ranking
	from product
	order by ranking;
