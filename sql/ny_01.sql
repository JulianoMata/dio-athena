-- Nome, tipo, número de avaliação e preço do imóvel anunciado
-- Onde número de de avaliações são maiores que 300 e preço entre $90 e $120

SELECT 
    name AS Imovel, 
    room_type AS Tipo, 
    number_of_reviews AS Avaliacoes, 
    price AS Preco
FROM 
    "airbnb-ny-db"."dados_ny"
WHERE 
    number_of_reviews > 300 AND price BETWEEN 90 AND 120