# BDII_project

Projeto da Disciplina de Banco de Dados II na Universidade Federal Fluminense.

Integrantes do projeto: *Dawson Oliveira, Higor Luiz da Silva, João Pedro Souza*

Nosso projeto visa implementar um banco de dados com tema livre com as seguintes configurações:

1. O modelo conceitual
2. O esquema relacional no SGBD escolhido (mySQL)
3. Cada esquema deve conter *NO MÍNIMO* 15 tabelas
4. Cada grupo deve implementar * NO MÍNIMO* 5 stored procedures/funções
5. Cada grupo deve implementar *NO MÍNIMO* 2 triggers
6. Cada grupo deve implementar *NO MÍNIMO* 2 visões
7. Cada grupo deve propor 10 consultas sobre o banco de dados desenvolvido. PS: não vale "SELECT * FROM CLIENTE"
8. Cada grupo deve implementar os índices de forma a acelerar as consultas propostas no item (7)

Itens Opcionais:

a. Permissões no banco de dados
b. Fragmentação de tabelas

Nosso projeto então será o sistema de uma academia.

Representação do mini mundo:
1. Todas as pessoas possuem apenas 1 identificação. 
2. Uma identificação pode ter diversos identificadores  
a. Ex: Aluno pode também ser um funcionário, nesse caso havendo 
dois identificadores (para aluno e para funcionários) que 
conteriam a mesma identificação 
3. Funcionário possuem 1 ou mais cargos ( 1 identificador por cargo) 
4. Cada plano possui uma ou mais unidades 
5. Um aluno pode reservar aula com um funcionário instrutor se o 
plano permitir 
6. Um aluno possui diversos planos de treino  
a. Ex; Treino ABC 
b. O treino pode estar ou não ativo (treino antigo é inativo) 
7. Um Plano de Treino possui diversos exercícios 
8. Um exercício sempre possui um equipamento, mesmo que esse seja 
o proprio corpo 
9. Exercícios podem ter o mesmo nome do equipamento 
a. Ex: Cadeira extensora 
10. Um exercício trabalha 1 ou mais grupos musculares 
11. Um aluno possui diversos históricos de pagamentos 
12. um aluno possui diversos historicos de avaliação sempre feito por 
um funcionário
