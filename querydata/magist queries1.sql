use magist;
#1. categories of tech products Magist have.

SELECT 
#product_category_name,
 product_category_name_english ,
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
product_category_name_translation pt
join products p USING(product_category_name)
join order_items oi USING(product_id)
where product_category_name_english IN ('computers_accessories', 

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
GROUP BY product_category_name
order by Number_of_Product desc;

#2

  
       SELECT 
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
            'cine_photo' )
            then 'Tech_product'
            else 'Non_Tech'
            END as category , count(*) as Total_Product
       from product_category_name_translation pt
	join products p using(product_category_name)
	  join order_items oi using(product_id)
	    join orders o using(order_id)
       group by category ;
       
#2.1

 SELECT 
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
            END as category,count(order_status) as product_sold
       from product_category_name_translation pt
       left join products p using(product_category_name)
	 right join order_items oi using(product_id)
	    right join orders o using(order_id)
        WHERE order_status = 'delivered' 
        group by category
        ;
      

#2.2 how many tech products sold? what percentage from overall no: of products sold

 SELECT 
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
            END as category,count(order_status) as product_sold,round((16982/93215)*100,2) as percentage
       from product_category_name_translation pt
       left join products p using(product_category_name)
	 right join order_items oi using(product_id)
	    right join orders o using(order_id)
        WHERE order_status = 'delivered' and 
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
        group by category
        ;
      
      
 #3. average price of product sold
 
      
 SELECT 
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
            END as category,count(order_status) as product_sold,round(avg(price),2) as Average_price
       from product_category_name_translation pt
       left join products p using(product_category_name)
	 right join order_items oi using(product_id)
	    right join orders o using(order_id)
        WHERE order_status = 'delivered' 
        group by category
        ;
       
       
       
   #4.
   
       
     
     
     #5
     
     select timestampdiff(month, min(order_purchase_timestamp),
 max(order_purchase_timestamp)) as Total_Months_Of_Data_In_The_Dataset 
 from orders;
 
 #6.
 
  select count(*) as Total_Number_Of_Sellers
 from sellers;
 
 #6.1
 
 SELECT 
    COUNT(DISTINCT seller_id) as Tech_Seller
FROM
    sellers
        LEFT JOIN
    order_items USING (seller_id)
        LEFT JOIN
    products p USING (product_id)
        LEFT JOIN
    product_category_name_translation pt USING (product_category_name)
WHERE
    product_category_name_english IN ('computers_accessories', 

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
            'cine_photo');
            
            
	#6.2
    
    SELECT ((511 / 3095) * 100) as  Percentage_Of_Overall_Seller;
	
    
     #7 & 8 seller income
     
      SELECT 
    round(SUM(price),2) as Total_amount_earned ,(round(SUM(price),2)/3095/25) as Average_Monthly_Income_Of_Seller
FROM
    order_items oi
        LEFT JOIN
    orders o USING (order_id)
    
WHERE
    o.order_status = ('delivered');
    
    #7.1
     
SELECT 
       round(SUM(oi.price),2) as Total_amount_earned, (round(SUM(oi.price),2)/511/25) as Average_Monthly_Income_Of_Tech_Seller
FROM
    order_items oi
        LEFT JOIN
    orders o USING (order_id)
     LEFT JOIN
    products p USING (product_id)
        LEFT JOIN
    product_category_name_translation pt USING (product_category_name)
WHERE
    o.order_status = ('delivered')
    and product_category_name_english IN ('computers_accessories', 

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
            'cine_photo') ;
    
    
 #9.
 SELECT AVG(DATEDIFF(order_delivered_customer_date, order_purchase_timestamp)) as Average_Time
FROM orders;
 
 #10.  
 
 
SELECT
case 
when  datediff(order_estimated_delivery_date,order_delivered_customer_date) >= 0 then 'ON_Time'
 when  datediff(order_estimated_delivery_date,order_delivered_customer_date) < 0 then 'Delayed'
 when datediff(order_estimated_delivery_date,order_delivered_customer_date)  IS NULL then 'Unknown'
 end as Delivery_Status,
 COUNT(*) as Total_Orders
FROM orders
GROUP BY delivery_status ;
    

#11.

select
CASE 
      when  datediff(order_estimated_delivery_date,order_delivered_customer_date) >= 0 then 'ON_Time'
      when  datediff(order_estimated_delivery_date,order_delivered_customer_date) < 0 then 'Delayed'
      when datediff(order_estimated_delivery_date,order_delivered_customer_date)  IS NULL then 'Unknown' 
      END AS delivery_status,
round(avg(product_weight_g), 2) as avg_weight,
round(avg(product_length_cm * product_height_cm * product_width_cm), 2) as av_size,
count(*) as total_order
from orders
join order_items using (order_id)
join products using (product_id)
group by delivery_status;

select count(*),
case when review_score>=4 then "positive"
	when review_score>=3 then "average"
    else "negative"
    end as 'Review'
from order_reviews
group by Review
;