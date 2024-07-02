SELECT TO_CHAR(DTREF, 'MM/YYYY') AS "Mês",
       CODVEND AS "Vendedor",
       -999 AS "Parceiro",
       -999 AS "Produto",
       -999 AS "Empresa",
       -999 AS "Tipo de Operação",
       -999 AS "Centro de Resultado",
       -999 AS "Natureza",
       PREVREC AS "Meta"
FROM TGFMET
WHERE CODMETA IN (1)
  AND PREVREC >0
