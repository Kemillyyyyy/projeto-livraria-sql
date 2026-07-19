-- 1. Criar o banco de dados da aula
CREATE DATABASE aula_professor;

-- 2. Avisar o programa que vamos usar esse banco
USE aula_professor;

-- 3. Criar uma tabelinha de alunos simples
CREATE TABLE alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100)
);