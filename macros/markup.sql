{% macro markup(sellprice,costprice) %}
({{sellprice}}-{{costprice}})/{{costprice}}
{% endmacro %}