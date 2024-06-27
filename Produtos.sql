SELECT PRO.CODPROD AS "Produto ID",
       PRO.DESCRPROD AS "Produto",
       GRU.CODPROD AS "Grupo de Produtos ID",
       GRU.DESCRPROD AS "Grupo de Produtos",
       PRO.CODMARCA AS "Marca ID",
       PRO.MARCA AS "Marca "
       
FROM TGFPRO PRO 
LEFT JOIN TGFPRO GRU ON PRO.CODGRUPOPROD = GRU.CODGRUPOPROD
