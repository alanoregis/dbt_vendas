
    
    

select
    sk_vendedor as unique_field,
    count(*) as n_records

from "venda_db"."public_olap"."dim_vendedor"
where sk_vendedor is not null
group by sk_vendedor
having count(*) > 1


