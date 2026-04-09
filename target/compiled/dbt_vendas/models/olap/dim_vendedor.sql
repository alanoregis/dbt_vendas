select
    id_vendedor as sk_vendedor,
    nome_vendedor,
    email_vendedor,
    regiao,
    data_admissao
from "venda_db"."public_staging"."stg_vendedores"