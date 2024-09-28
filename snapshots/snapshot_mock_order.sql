{% snapshot scd_timestamp_mock_order %}
    {{
        config(
            target_database='SALES_DB',
            target_schema='snap_sch',
            unique_key='ORDER_ID',
            strategy='timestamp',
            updated_at='UPDATED_AT',
        )
    }}
    select * from  SALES_DB.RAW.MOCK_ORDERS
{% endsnapshot %}