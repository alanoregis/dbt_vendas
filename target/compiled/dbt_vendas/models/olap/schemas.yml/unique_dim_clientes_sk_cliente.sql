
    
    

select
    sk_cliente as unique_field,
    count(*) as n_records

from "venda_db"."public_olap"."dim_clientes"
where sk_cliente is not null
group by sk_cliente
having count(*) > 1


