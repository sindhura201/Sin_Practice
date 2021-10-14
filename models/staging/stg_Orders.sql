 {{ config(
materialized="table"
) }}
  
   
   select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from sindhura_DB.jaffle_shop.orders

{{ limit_data_in_dev('order_date') }}