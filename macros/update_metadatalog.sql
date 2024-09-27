{% macro update_metadatalog(modelname) %}
update metadatalog set  status = 'done'
                       ,rowcount = (select count(*) from {{modelname}})
                       ,enddate = getdate()
        where modelname = '{{modelname}}'
          and jobid = (select max(jobid) from metadatalog where modelname = '{{modelname}}')
          and startdate = (select max(startdate) from metadatalog  where modelname = '{{modelname}}')
{% endmacro %}