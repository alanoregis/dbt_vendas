select
    id_cliente as sk_cliente,
    nome_cliente,
    email,
    cidade,
    uf,
    data_cadastro
from "venda_db"."public_staging"."stg_clientes"
where ativo = true