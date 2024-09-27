{% macro insert_metadatalog(modelname, type) %}
	Insert into metadatalog(modelname, status,rowcount,startdate,type)
	values('{{modelname}}','running',0,getdate(),'{{type}}')
{% endmacro %}