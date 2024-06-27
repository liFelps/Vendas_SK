SELECT VEN.CODVEND AS "Vendedor ID",
       VEN.APELIDO AS "Vendedor",
       GER.CODVEND AS "Gerente ID",
       GER.APELIDO AS "Gerente",
       VEN.ATIVO AS "Vendedor Ativo ID",
       CASE WHEN VEN.ATIVO = 'S' THEN 'Sim'
       ELSE 'Não' END  AS "Vendedor Ativo",
       CASE WHEN USU.ACCOUNTNOMEFOTO IS NULL THEN 'https://mitra-multitenant-prod.s3.amazonaws.com/tenant_5109/label-images/person.png'
       ELSE USU.ACCOUNTNOMEFOTO END AS "Foto"
FROM TGFVEN VEN
LEFT JOIN TGFVEN GER ON GER.CODVEND = VEN.CODGER
LEFT JOIN TSIUSU USU ON USU.CODVEND = VEN.CODVEND
WHERE VEN.CODVEND <> 0 
