
  
    

  create  table "venda_db"."public_raw"."raw_pedidos__dbt_tmp"
  
  
    as
  
  (
    select * from "venda_db"."oltp"."pedidos"
  );
  