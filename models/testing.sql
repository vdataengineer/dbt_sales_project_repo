{{
config(
        pre_hook = "{{insert_metadatalog('testing','Full')}}"
       ,post_hook= "{{update_metadatalog('testing')}}"
      )
}}


select * from   ECOM_DB.RAW.CUSTOMERS1111
  