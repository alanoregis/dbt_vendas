
  create view "venda_db"."public_staging"."stg_vendedores__dbt_tmp"
    
    
  as (
    select
    id_vendedor,
    trim(nome) as nome_vendedor,
    lower(trim(email)) as email_vendedor,
    trim(regiao) as regiao,
    data_admissao::date as data_admissao
from "venda_db"."public_raw"."raw_vendedores"
where id_vendedor is not null
  );