-- Média de preço diária por Distrito

SELECT 
    neighbourhood_group AS Distrito, 
    AVG(price) AS "Media Preco"
FROM 
    "airbnb-ny-db"."dados_ny"
GROUP BY 
    neighbourhood_group
HAVING 
    AVG(price) > 0
ORDER BY 
    "Media Preco" DESC
LIMIT 15