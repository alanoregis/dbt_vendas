
  
    

  create  table "venda_db"."public_raw"."raw_categorias__dbt_tmp"
  
  
    as
  
  (
    select * from "venda_db"."oltp"."categorias"
  );
  