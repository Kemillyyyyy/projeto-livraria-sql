/* =====================================================
   PROJETO FINAL - HPGTI
   Sistema: Livraria
   Arquivo: 02_insercao_dados.sql
===================================================== */

/* Seleciona o banco correto com underlines */
USE Livraria_Projeto_Final;

-- =====================================================
-- INSERÇÃO DE AUTORES
-- =====================================================

INSERT INTO autores (nome, nacionalidade) VALUES
('Fábio Silva', 'Brasileira'),     -- ID 1
('John Doe', 'Americano'),         -- ID 2
('Ana Clara', 'Brasileira'),       -- ID 3
('J. K. Rowling', 'Britânica'),    -- ID 4
('Alan Turing', 'Britânico');      -- ID 5


-- =====================================================
-- INSERÇÃO DE CATEGORIAS
-- =====================================================

INSERT INTO categorias (nome_categoria) VALUES
('Banco de Dados'),          -- ID 1
('Programação'),             -- ID 2
('Redes'),                   -- ID 3
('Engenharia de Software');  -- ID 4


-- =====================================================
-- INSERÇÃO DE LIVROS
-- =====================================================

INSERT INTO livros 
(titulo, ano_publicacao, preco, quantidade_estoque, id_autor, id_categoria)
VALUES
('Introdução ao SQL', 2019, 89.90, 15, 1, 1),
('Dominando MySQL', 2021, 120.00, 5, 1, 1),
('Lógica de Programação', 2017, 45.00, 20, 2, 2),
('Python Avançado', 2022, 135.00, 12, 3, 2),
('Redes de Computadores Infalíveis', 2015, 110.00, 8, 5, 3),
('Engenharia de Software Moderna', 2020, 95.00, 25, 3, 4),
('O Guia do Git e GitHub', 2023, 55.00, 3, 2, 2), -- Ajustado autor para ID 2 (John Doe)
('Livro Raro Não Vendido', 2018, 150.00, 10, 4, 1);


-- =====================================================
-- INSERÇÃO DE VENDAS
-- =====================================================

INSERT INTO vendas
(nome_cliente, email_cliente, quantidade, data_venda, status_venda, id_livro)
VALUES
('Carlos Augusto', 'carlos@email.com', 2, '2026-07-10', 'Finalizada', 1),
('Mariana Lima', 'mariana@email.com', 1, '2026-07-11', 'Finalizada', 1),
('Pedro Henrique', 'pedro@email.com', 1, '2026-07-12', 'Finalizada', 2),
('Fernanda Costa', 'fernanda@email.com', 3, '2026-07-13', 'Pendente', 3),
('Lucas Souza', 'lucas@email.com', 1, '2026-07-14', 'Finalizada', 4),
('Juliana Reis', 'juliana@email.com', 1, '2026-07-15', 'Cancelada', 5),
('Roberto Alves', 'roberto@email.com', 2, '2026-07-16', 'Finalizada', 6),
('Aline Moraes', 'aline@email.com', 1, '2026-07-17', 'Pendente', 7);


-- =====================================================
-- CONFERÊNCIA DOS DADOS INSERIDOS
-- =====================================================

SELECT * FROM autores;
SELECT * FROM categorias;
SELECT * FROM livros;
SELECT * FROM vendas;
