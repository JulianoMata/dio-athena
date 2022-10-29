-- Quantidade de imóveis por bairro

SELECT
     neighbourhood AS Bairro, 
     COUNT(id) AS "Qtde de imóveis"
FROM 
    "airbnb-ny-db"."dados_ny"
GROUP BY 
    neighbourhood
ORDER BY 
    COUNT(id) DESC 
LIMIT 6
