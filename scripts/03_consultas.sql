-- ============================================================
-- PROJETO FINAL - HPGTI
-- Script 03: Consultas obrigatórias
-- Banco de dados: LivrariaProjetoFinal
-- ============================================================

USE LivrariaProjetoFinal;

-- 1) Listar todos os livros com seus respectivos autores e categorias
SELECT
    l.titulo,
    a.nome AS autor,
    c.nome_categoria AS categoria
FROM livros l
JOIN autores a ON l.id_autor = a.id_autor
JOIN categorias c ON l.id_categoria = c.id_categoria;


-- 2) Listar todos os livros e suas vendas, incluindo livros
--    que ainda não foram vendidos (usamos LEFT JOIN para não
--    perder os livros sem venda)
SELECT
    l.titulo,
    v.id_venda,
    v.quantidade,
    v.data_venda
FROM livros l
LEFT JOIN vendas v ON l.id_livro = v.id_livro;


-- 3) Listar todas as vendas com o título do livro vendido
SELECT
    v.id_venda,
    l.titulo,
    v.nome_cliente,
    v.data_venda
FROM vendas v
JOIN livros l ON v.id_livro = l.id_livro;


-- 4) Listar todos os livros vendidos, mostrando título,
--    quantidade vendida e data da venda
SELECT
    l.titulo,
    v.quantidade,
    v.data_venda
FROM vendas v
JOIN livros l ON v.id_livro = l.id_livro;


-- 5) Exibir os livros que ainda não foram vendidos
--    (livro não aparece na tabela vendas)
SELECT l.titulo
FROM livros l
LEFT JOIN vendas v ON l.id_livro = v.id_livro
WHERE v.id_venda IS NULL;


-- 6) Exibir os livros vendidos utilizando INNER JOIN
--    (só aparecem livros que têm pelo menos uma venda)
SELECT DISTINCT
    l.titulo,
    l.preco
FROM livros l
INNER JOIN vendas v ON l.id_livro = v.id_livro;


-- 7) Exibir todos os livros, inclusive os que não possuem
--    venda, utilizando LEFT JOIN
SELECT
    l.titulo,
    v.id_venda,
    v.status_venda
FROM livros l
LEFT JOIN vendas v ON l.id_livro = v.id_livro;


-- 8) Exibir todas as vendas e seus respectivos livros
--    utilizando RIGHT JOIN
--    (aqui a tabela "da direita", livros, é a que teria as
--    linhas preservadas mesmo sem correspondência)
SELECT
    v.id_venda,
    v.nome_cliente,
    l.titulo
FROM vendas v
RIGHT JOIN livros l ON v.id_livro = l.id_livro;


-- 9) Calcular o valor total de cada venda
--    (preço do livro x quantidade vendida)
SELECT
    v.id_venda,
    l.titulo,
    v.quantidade,
    l.preco,
    (v.quantidade * l.preco) AS valor_total_venda
FROM vendas v
JOIN livros l ON v.id_livro = l.id_livro;


-- 10) Calcular o valor total vendido pela livraria
--     Consideramos apenas vendas "Finalizada", já que vendas
--     "Cancelada" não devem contar como receita e vendas
--     "Pendente" ainda não foram concluídas.
SELECT
    SUM(v.quantidade * l.preco) AS valor_total_vendido
FROM vendas v
JOIN livros l ON v.id_livro = l.id_livro
WHERE v.status_venda = 'Finalizada';


-- 11) Listar os livros com estoque menor que 10 unidades
SELECT
    titulo,
    quantidade_estoque
FROM livros
WHERE quantidade_estoque < 10;


-- 12) Listar os livros publicados a partir de 2018
SELECT
    titulo,
    ano_publicacao
FROM livros
WHERE ano_publicacao >= 2018;


-- 13) Listar os livros cujo preço esteja entre R$ 50,00 e R$ 120,00
SELECT
    titulo,
    preco
FROM livros
WHERE preco BETWEEN 50.00 AND 120.00;


-- 14) Exibir a média de preço dos livros
SELECT
    AVG(preco) AS media_preco
FROM livros;


-- 15) Exibir a quantidade total de livros em estoque por categoria
SELECT
    c.nome_categoria,
    SUM(l.quantidade_estoque) AS total_estoque
FROM livros l
JOIN categorias c ON l.id_categoria = c.id_categoria
GROUP BY c.nome_categoria;


-- 16) Listar os autores e a quantidade de livros cadastrados
--     para cada um
SELECT
    a.nome AS autor,
    COUNT(l.id_livro) AS quantidade_livros
FROM autores a
LEFT JOIN livros l ON a.id_autor = l.id_autor
GROUP BY a.nome;

-- Fim do script 03
