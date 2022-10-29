-- Imoveis com ultimas avaliações entre dias 07 e 15 de setembro 2022 

SELECT 
    name AS Imovel, 
    neighbourhood_group AS Distrito, 
    room_type AS Tipo, 
    number_of_reviews AS Avaliacoes
FROM 
    "airbnb-ny-db"."dados_ny"
WHERE 
    last_review  BETWEEN '2022-09-07' AND '2022-09-15'