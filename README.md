# Projeto Livraria SQL — Projeto Final HPGTI

Banco de dados relacional para o controle de livros, autores, categorias,
clientes e pedidos de uma livraria, desenvolvido como Projeto Final da
disciplina de Banco de Dados.

## Integrantes do grupo

- Karolina
- Ingrid
- Bárbara

## Descrição do projeto

O banco de dados `LivrariaProjetoFinal` foi criado para informatizar o
controle de livros, autores, categorias e vendas de uma livraria, permitindo
consultas que auxiliam na gestão do negócio (estoque, faturamento, vendas
por livro, etc).

## Estrutura do banco de dados

O banco possui 4 tabelas:

| Tabela      | Descrição                                        |
|-------------|---------------------------------------------------|
| autores     | Dados dos autores dos livros                      |
| categorias  | Categorias dos livros (Banco de Dados, Programação, Redes, Engenharia de Software) |
| livros      | Livros disponíveis na livraria                    |
| vendas      | Vendas realizadas pela livraria                    |

### Relacionamentos

- **autores → livros**: 1 para N (um autor pode ter vários livros, cada livro tem apenas um autor)
- **categorias → livros**: 1 para N (uma categoria pode ter vários livros, cada livro pertence a apenas uma categoria)
- **livros → vendas**: 1 para N (um livro pode aparecer em várias vendas, cada venda se refere a apenas um livro)

## Estrutura de arquivos

```
projeto-livraria-sql/
├── README.md
├── roteiros/
│   ├── 01_criacao_banco_tabelas.sql     # Criação do banco e das tabelas (DDL)
│   ├── 02_insercao_dados.sql            # Inserção dos dados de teste (DML)
│   ├── 03_consultas.sql                 # Consultas obrigatórias (DQL)
│   └── 04_atualizacao_exclusao.sql      # Atualização e exclusão de dados (DML)
└── evidências/
    ├── print_consultas.jpeg
    └── print_commits.jpeg
```

## Como executar o projeto

1. Abra o MySQL Workbench (ou outra ferramenta de sua preferência, como DBeaver).
2. Execute o arquivo `roteiros/01_criacao_banco_tabelas.sql` — isso cria o banco e as tabelas.
3. Execute o arquivo `roteiros/02_insercao_dados.sql` — isso popula as tabelas com dados de teste.
4. Execute o arquivo `roteiros/03_consultas.sql` — isso roda todas as consultas obrigatórias.
5. Execute o arquivo `roteiros/04_atualizacao_exclusao.sql` — isso demonstra comandos de atualização (UPDATE) e exclusão (DELETE) de dados.

## Principais consultas realizadas

1. Listagem de livros com autor e categoria
2. Livros e suas vendas (incluindo os não vendidos)
3. Vendas com o título do livro
4. Livros vendidos: título, quantidade e data
5. Livros ainda não vendidos
6. Livros vendidos usando INNER JOIN
7. Todos os livros usando LEFT JOIN
8. Vendas e livros usando RIGHT JOIN
9. Valor total de cada venda
10. Valor total vendido pela livraria
11. Livros com estoque menor que 10
12. Livros publicados a partir de 2018
13. Livros com preço entre R$ 50 e R$ 120
14. Média de preço dos livros
15. Estoque total por categoria
16. Quantidade de livros por autor

## Comandos Git mais utilizados no projeto

```bash
git init                                   # Inicializa o repositório local
git add .                                  # Adiciona os arquivos alterados
git commit -m "mensagem descritiva"        # Registra as alterações
git branch -M main                         # Renomeia a branch principal para main
git remote add origin <URL_DO_REPOSITORIO> # Conecta ao repositório remoto no GitHub
git push -u origin main                    # Envia os commits para o GitHub
git pull                                   # Atualiza a cópia local com as mudanças dos colegas
git status                                 # Verifica o estado atual dos arquivos
git log                                    # Mostra o histórico de commits
```

## Evidências

As evidências (prints das consultas executadas e do histórico de commits)
estão na pasta `evidências/`.

## Link do repositório

https://github.com/Kemillyyyyy/projeto-livraria-sql
