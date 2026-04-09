select
    id_produto as sk_produto,
    nome_produto,
    nome_categoria,
    preco_unitario,
    estoque
from "venda_db"."public_staging"."stg_produtos"
where ativo = true