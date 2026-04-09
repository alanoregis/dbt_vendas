
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select sk_vendedor
from "venda_db"."public_olap"."fato_pedidos"
where sk_vendedor is null



  
  
      
    ) dbt_internal_test