-- Nome do anfitrião, tipo, quantidade de imóveis, nome do Distrito
-- Ondre afitrião possui 2 ou mais imóveis

SELECT 
    host_name AS Proprietario,
    name AS Imovel, 
    calculated_host_listings_count AS "Qtde Imoveis", 
    neighbourhood_group AS Distrito
FROM 
    "airbnb-ny-db"."dados_ny"
WHERE 
    calculated_host_listings_count >= 2 AND price > 0
ORDER BY 
    neighbourhood_group DESC
LIMIT 10