
  
    

        create or replace transient table local.public.foto_orders
         as
        (

with 

foto_orders as (
    
    select ID, AGENT_ID, COUPON_ID, PHOTOGRAPHER_ID, GALLERY_ID, RATE_ID, CREATED, TYPE, CURRENCY, PAYMENT_STATUS, SUM_TOTAL_EUR, SUM_TOTAL
    from LOCAL.PUBLIC.FOTO_RAW_ORDERS

)

select * from foto_orders
        );
      
  