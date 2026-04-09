
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    sk_vendedor as unique_field,
    count(*) as n_records

from "venda_db"."public_olap"."dim_vendedor"
where sk_vendedor is not null
group by sk_vendedor
having count(*) > 1



  
  
      
    ) dbt_internal_test