use magist;
#1.
SELECT 
   count(*) as Number_of_orders
FROM
    orders;
    

#2.
SELECT 
    order_status, count(*) as Status
FROM
    orders
group by order_status;

#3.

SELECT 
    YEAR(order_purchase_timestamp) AS year_,
   # MONTH(order_purchase_timestamp) AS month_,
   # DATE(order_purchase_timestamp) as date_,
    #COUNT(customer_id),
    round(sum(price),2) as revenue
FROM
    order_items oi
    join orders o using(order_id)
GROUP BY year_ #, month_ 
 order by year_ desc; #, month_  desc;

#4.
SELECT 
 count(*) as Number_of_products
FROM 
products;


#5. tech and non_Tech product

SELECT 
product_category_name, product_category_name_english ,
count(product_category_name) Number_of_Product,
CASE WHEN
product_category_name_english IN (
           'computers_accessories', 

            'electronics', 

            'consoles_games', 

            'audio', 

            'computers', 


            'music', 

            'tablets_printing_image', 

            'pc_gamer', 

            'telephony', 

            'fixed_telephony',
            'cds_dvds_musicals',
            'dvds_blu_ray',
             'fixed_telephony',
            'cine_photo')
            then 'Tech_product'
            else 'Non_Tech'
            END as category
FROM
products p 
Left JOIN product_category_name_translation pt USING(product_category_name)

GROUP BY product_category_name
order by Number_of_Product desc;

# ORDER DELIVERED IN TIME OR NOT



SELECT
case 
when  datediff(order_estimated_delivery_date,order_delivered_customer_date) >= 0 then 'ON_Time'
 when  datediff(order_estimated_delivery_date,order_delivered_customer_date) < 0 then 'Delayed'
 when datediff(order_estimated_delivery_date,order_delivered_customer_date)  IS NULL then 'Unknown'
 end as Delivery_Status,
 COUNT(*) as Total_Orders
FROM orders
GROUP BY delivery_status ;













	

 