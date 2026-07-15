/* =====================================================
   PROJETO FINAL - HPGTI
   Sistema: Livraria
   Arquivo: 01_criacao_banco_tabelas.sql
===================================================== */

/* Criação do banco de dados */
create database LivrariaProjetoFinal;

/* Seleciona o banco de dados */
USE LivrariaProjetoFinal;

/* =====================================================
   TABELA: AUTORES
   ================================================== */
CREATE TABLE autores (
    id_autor INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50) NOT NULL,

    PRIMARY KEY (id_autor)
);


/* =====================================================
   TABELA: CATEGORIAS
   ================================================== */
CREATE TABLE categorias (
	id_categoria INT AUTO_INCREMENT,
    nome_categoria VARCHAR(100) NOT NULL,
    
    PRIMARY KEY (id_categoria)
);

/* =====================================================
   TABELA: LIVROS
   ================================================== */
CREATE TABLE livros (
	id_livro INT AUTO_INCREMENT,
    titulo varchar(150) NOT NULL,
    ano_publicacao INT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    id_autor INT NOT NULL,
    id_categoria INT NOT NULL,
    
    PRIMARY KEY (id_livro),
    
    FOREIGN KEY (id_autor)
		REFERENCES autores(id_autor),
        
	FOREIGN KEY (id_categoria)
		REFERENCES categorias(id_categoria)
);

/* =====================================================
   TABELA: VENDAS
   ================================================== */
CREATE TABLE vendas (
	id_venda INT AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    email_cliente VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    data_venda DATE NOT NULL,
    status_venda VARCHAR(20) NOT NULL,
    
    id_livro INT NOT NULL,
    
    PRIMARY KEY (id_venda),
    
    FOREIGN KEY (id_livro)
		REFERENCES livros(id_livro)
);

