-- Qtde de imoveis por distrito considerando os que possuem mais de 1000.

SELECT 
    neighbourhood_group AS Distrito,
    COUNT(*) AS "Qtde de imoveis" 
FROM 
    "airbnb-ny-db"."dados_ny"
GROUP BY 
    neighbourhood_group
HAVING 
    COUNT(*) >= 1000
