
  
    

  create  table "venda_db"."public_raw"."raw_itens_pedido__dbt_tmp"
  
  
    as
  
  (
    select * from "venda_db"."oltp"."itens_pedido"
  );
  