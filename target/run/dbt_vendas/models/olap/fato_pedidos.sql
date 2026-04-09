
  
    

  create  table "venda_db"."public_olap"."fato_pedidos__dbt_tmp"
  
  
    as
  
  (
    select
    p.id_pedido || '-' || ip.id_item as sk_pedido,
    dc.sk_cliente,
    dp.sk_produto,
    dv.sk_vendedor,
    to_char(p.data_pedido, 'YYYYMMDD')::int as sk_data,
    ip.quantidade,
    ip.preco_unitario as valor_unitario,
    ip.subtotal as valor_total_item,
    p.status
from "venda_db"."public_staging"."stg_pedidos" p
join "venda_db"."public_staging"."stg_itens_pedido" ip on p.id_pedido = ip.id_pedido
join "venda_db"."public_olap"."dim_clientes" dc on p.id_cliente = dc.sk_cliente
join "venda_db"."public_olap"."dim_produtos" dp on ip.id_produto = dp.sk_produto
join "venda_db"."public_olap"."dim_vendedor" dv on p.id_vendedor = dv.sk_vendedor
  );
  