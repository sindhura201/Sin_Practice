{% snapshot snap_tests %}


{{
    config(
      target_database='sindhura_DB',
      target_schema='SIN_SHOP',
      unique_key='order_id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from sindhura_DB.JAFFLE_SHOP.mock_orders

{% endsnapshot %}