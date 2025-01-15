-- 1. Listar todos os alunos que possuem um plano ativo com descrições de exercício
SELECT a.id, i.nome, p.nome AS plano, e.nome AS exercicio, pt.repeticoes, pt.series, pt.carga
FROM ALUNO a
JOIN IDENTIFICADOR idf ON a.identificador_id = idf.id
JOIN IDENTIFICACAO i ON idf.identificacao_id = i.id
JOIN PLANO p ON a.plano_id = p.id
JOIN PLANO_TREINO pt ON a.id = pt.aluno_id
JOIN EXERCICIO e ON pt.exercicio_id = e.id
WHERE idf.ativo = true
ORDER BY i.nome;


-- 2. Buscar os instrutores responsáveis por reservas de treinos em um período específico
SELECT r.data, f.id, i.nome AS instrutor
FROM RESERVA r
JOIN FUNCIONARIO f ON r.instrutor_id = f.id
JOIN IDENTIFICADOR idf ON f.identificador_id = idf.id
JOIN IDENTIFICACAO i ON idf.identificacao_id = i.id
WHERE r.data BETWEEN '2025-01-01' AND '2025-01-31';


-- 3. Listar todos os exercícios associados a um grupo muscular específico
SELECT e.nome, e.descricao, gm.nome AS grupo_muscular
FROM EXERCICIO e
JOIN GRUPO_MUSCULAR gm ON e.grupo_muscular_id = gm.id
WHERE gm.nome = 'Peitoral';


-- 4. Buscar a quantidade de alunos cadastrados em cada unidade
SELECT u.nome AS unidade, COUNT(a.id) AS total_alunos
FROM UNIDADE u
JOIN PLANO p on u.id = p.unidade_id
JOIN ALUNO a ON p.id = a.plano_id
GROUP BY u.nome;


-- 5. Listar os alunos que possuem pagamentos atrasados
SELECT i.nome AS aluno_nome, hp.data_vencimento, DATEDIFF(CURDATE(), hp.data_vencimento) AS dias_atraso
FROM HISTORICO_PAGAMENTO hp
JOIN ALUNO a ON hp.aluno_id = a.id
JOIN IDENTIFICACAO i ON a.identificador_id = i.id
WHERE hp.data_pagamento IS NULL AND hp.data_vencimento < CURDATE();


-- 6. Calcular o total arrecadado com pagamentos de mensalidades por mês
SELECT DATE_FORMAT(hp.data_pagamento, '%Y-%m') AS mes_ano, SUM(hp.valor) AS total_receitas
FROM HISTORICO_PAGAMENTO hp
WHERE hp.data_pagamento IS NOT NULL
GROUP BY DATE_FORMAT(hp.data_pagamento, '%Y-%m')
ORDER BY mes_ano DESC;


-- 7. Listar os 5 funcionários que realizaram mais avaliações físicas
SELECT i.nome AS funcionario_nome, COUNT(ha.id) AS total_avaliacoes
FROM HISTORICO_AVALIACAO ha
JOIN FUNCIONARIO f ON ha.funcionario_id = f.id
JOIN IDENTIFICACAO i ON f.identificador_id = i.id
GROUP BY i.nome
ORDER BY total_avaliacoes DESC
LIMIT 5;


-- 8. Média de alunos inscritos por plano
SELECT p.nome AS plano_nome, COUNT(a.id) AS total_alunos, ROUND(COUNT(a.id) / (SELECT COUNT(*) FROM PLANO), 2) AS media_por_plano
FROM PLANO p
LEFT JOIN ALUNO a ON p.id = a.plano_id
GROUP BY p.nome;


-- 9. Listar os alunos com pagamentos pendentes (inclusive atrasados)
SELECT a.id AS aluno_id, i.nome AS aluno_nome, i.cpf AS aluno_cpf, hp.data_pagamento, hp.valor, hp.data_vencimento
FROM ALUNO a
JOIN IDENTIFICADOR idf ON a.identificador_id = idf.id
JOIN IDENTIFICACAO i ON idf.identificacao_id = i.id
LEFT JOIN HISTORICO_PAGAMENTO hp ON a.id = hp.aluno_id
WHERE hp.data_pagamento IS NULL
ORDER BY hp.data_vencimento DESC;


--  10. Liste os funcionários que geraram mais receita
SELECT i.nome AS funcionario_nome, SUM(hp.valor) AS total_receita
FROM HISTORICO_PAGAMENTO hp
JOIN ALUNO a ON hp.aluno_id = a.id
JOIN HISTORICO_AVALIACAO ha ON a.id = ha.aluno_id
JOIN FUNCIONARIO f ON ha.funcionario_id = f.id
JOIN IDENTIFICACAO i ON f.identificador_id = i.id
WHERE hp.data_pagamento IS NOT NULL
GROUP BY i.nome
ORDER BY total_receita DESC;

