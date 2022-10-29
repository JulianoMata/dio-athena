-- Preço máximo por proprietário

SELECT 
    host_id AS "ID proprietario",
    MAX(price) As "Preco Maximo"
FROM 
    "airbnb-ny-db"."dados_ny"
GROUP BY 
    host_id
ORDER BY 
    MAX(price) DESC
LIMIT 10