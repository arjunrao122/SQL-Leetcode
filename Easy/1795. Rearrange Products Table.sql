

select * from (select product_id, 'store1' store ,store1 as price from products
union all 
select product_id, 'store2' store, store2 as price from products
union all
select product_id, 'store3' store, store3 as price from products) t
where price is not null;
