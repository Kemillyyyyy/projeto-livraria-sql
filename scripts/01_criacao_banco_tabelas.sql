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


