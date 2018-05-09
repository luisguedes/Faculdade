-- Quais os paises cadastrados no BD?
SELECT * FROM pais

-- Nomes dos continentes
SELECT nome FROM continente

-- Continentes dos Paises Cadastrados no DB
SELECT continente_id FROM pais
    GROUP BY continente_id

-- Qual é a Capital da Finlândia?
SELECT capital FROM pais p
    WHERE p.nome = "Finlândia"

-- Paises Asiaticos que obterem a independecia depois de 1950?
SELECT d_ref_hist, nome FROM pais p
    WHERE p.continente_id = "Asia"
    AND p.d_ref_hist > '1950'
    ORDER BY p.d_ref_hist

-- Paises falando a lingua portuguesa na africa?
SELECT * FROM pais p
    WHERE p.ling = "Português"
    ORDER BY p.nome

-- Quais as cidades Brasileiras?
SELECT * FROM cidade c
    WHERE c.pais_id = "Brasil"
    ORDER BY c.nome

-- Qual é a população mundial?
SELECT SUM(pop) as populacao_mundial
    FROM continente

-- Número das cidades chamadas "São Luís" no mundo?
SELECT COUNT(*) as cidades_sao_luis FROM cidade c
    WHERE c.nome LIKE "%São Luís%"

-- Em qual pais se encontra o hotel mais barato?
SELECT TOP 1 p.nome as nome_do_pais_com_hotel_mais_barato FROM hotel_quarto hq
    INNER JOIN hotel h ON hq.hotel_id = h.cnpj
    INNER JOIN cidade c ON h.cidade_id = c.id
    INNER JOIN pais p ON c.pais_id = p.nome
    ORDER BY preco