


# 看地里data engineer 的面筋很少， 刚刚电面完 来回馈一下地里：SQL:
# tables:
# customers: id, name, birthday, gender
# stores: id, state, area_squarefeet. visit 
# product: id, name,....
# sale: product_id, store_id, customer_id ... 
# 1. Percentage of male in customers 
SELECT sum(if(t1.gener ='male',1,0))/count(*)
from customers t1
# 2. Percentage of customers who has at least 1 product
select sum(if(temp.product_id is NULL, 0,1))/count(*) as ratio
from (
	select name,product_id 
	from customers t1 left join sale t2
	on t1.id = t2.id
	group by t1.id
) temp
# 3. how many distinct states are all the store located -- count(distinct state)
select count(distinct(t1.state)) from stores t1
# 3. count the product having at least 5 unit orders.
select distinct(product_id)
from product t1
where (select count(distinct(product_id)) from product where product_id >= product_id) > 5
# 4. how many stores are having more than 26000 area sqrt, count by state basis. 
select t1.states, count(t1.states)
from stores t1
where t1.area_squarefeet > 26000
group by t1.states
# 5. print out the oldest and youngest customer's birthday on gender level
select gender, min(birthday),max(birthday)
from customers
gorup by gender








1) SELECT SUM (CASE WHEN gender = 'male' THEN 1 ELSE 0 END) / COUNT(*)
FROM customers

2) SELECT  SUM(CASE WHEN product_id IS NULL THEN 0 ELSE 1 END) / COUNT(*) as ratio
    FROM( 
            SELECT name, product_id FROM 
            customers c.鏈枃鍘熷垱鑷�1point3acres璁哄潧
            LEFT JOIN sale s
            ON c.id = s.customer_id
            GROUP BY c.id
    ) temp ;

3) SELECT  COUNT(DISTINCT(state)).鏈枃鍘熷垱鑷�1point3acres璁哄潧
FROM stores;

4) SELECT count(*)
    FROM
    (
            SELECT product_id
            FROM sale
            GROUP BY product_id
            HAVING SUM(unit_order) >= 5
    ) temp

5) SELECT state,. From 1point 3acres bbs
        COUNT(id)
     FROM stores s
     WHERE area_squarefeet > 26000
     GROUP BY state
鏉ユ簮涓€浜�.涓夊垎鍦拌鍧�. 
6) SELECT gender, MIN(birthday), MAX(birthday)
    FROM customers
    GROUP BY gender

# 1) 
-- SELECT SUM (CASE WHEN gender = 'male' THEN 1 ELSE 0 END) / COUNT(*)
-- FROM customers



# 2) SELECT  SUM(CASE WHEN product_id IS NULL THEN 0 ELSE 1 END) / COUNT(*) as ratio
#     FROM( 
#             SELECT name, product_id FROM 
#             customers c
#             LEFT JOIN sale s
#             ON c.id = s.customer_id
#             GROUP BY c.id
#     ) temp ;

# 3) SELECT  COUNT(DISTINCT(state))
# FROM stores;

# 4) SELECT count(*)
#     FROM
#     (
#             SELECT product_id. from: 1point3acres.com/bbs 
#             FROM sale
#             GROUP BY product_id
#             HAVING SUM(unit_order) >= 5
#     ) temp
# . Waral 
# 5) SELECT state,.1point3acres
#         COUNT(id)
#      FROM stores s
#      WHERE area_squarefeet > 26000
#      GROUP BY state

# 6) SELECT gender, MIN(birthday), MAX(birthday)
#     FROM customers.
#     GROUP BY gender








