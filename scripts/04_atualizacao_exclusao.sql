/* =====================================================
   PROJETO FINAL - HPGTI
   Sistema: Livraria
   Arquivo: 04_atualizacao_exclusao.sql
===================================================== */

-- Seleciona o banco de dados correto (com underlines)
USE Livraria_Projeto_Final;

-- Desativa a trava de segurança para permitir as alterações por ID
SET SQL_SAFE_UPDATES = 0;

-- =====================================================
-- ATUALIZAÇÃO DOS DADOS (UPDATE)
-- =====================================================

-- 1. Atualizar o preço do livro de ID 1
UPDATE livros
SET preco = 99.90
WHERE id_livro = 1;

-- 2. Atualizar a quantidade em estoque do livro de ID 2
UPDATE livros
SET quantidade_estoque = 20
WHERE id_livro = 2;

-- 3. Atualizar a nacionalidade do autor de ID 1
UPDATE autores
SET nacionalidade = 'Brasileira'
WHERE id_autor = 1;

-- 4. Atualizar o status da venda de ID 4
UPDATE vendas
SET status_venda = 'Finalizada'
WHERE id_venda = 4;

-- =====================================================
-- EXCLUSÃO DE DADOS (DELETE)
-- =====================================================

-- 5. Excluir a venda de ID 6
DELETE FROM vendas
WHERE id_venda = 6;

-- Reativa a trava de segurança após terminar
SET SQL_SAFE_UPDATES = 1;

-- =====================================================
-- CONSULTAS PARA CONFERÊNCIA (OPCIONAL)
-- =====================================================

SELECT * FROM autores;
SELECT * FROM livros;
SELECT * FROM vendas;