SELECT PRO.CODPROD AS "Produto ID",
       PRO.DESCRPROD AS "Produto",
       GRU.CODGRUPOPROD AS "Grupo de Produtos ID",
       GRU.DESCRGRUPOPROD AS "Grupo de Produtos",
       COALESCE(PRO.MARCA, 'N/A') AS "Marca ID",
       COALESCE(PRO.MARCA, 'Sem marca') AS "Marca "
       
FROM TGFPRO PRO 
LEFT JOIN TGFGRU GRU ON PRO.CODGRUPOPROD = GRU.CODGRUPOPROD
