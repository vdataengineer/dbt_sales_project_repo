{{
    config(
        materialized='table',
        post_hook=[
        "CREATE OR REPLACE TABLE DIM_DB.DIM_SCH.hook_test AS 
          SELECT * EXCLUDE (DEPARTMENT,SALARY ) FROM SALES_DB.RAW.EMPLOYEE_DETAILS;"
  ]
    )
}}

 select * from SALES_DB.RAW.EMPLOYEE_DETAILS