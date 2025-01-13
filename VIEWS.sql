-- VIEW que retorna apenas os alunos com todos os pagamentos em dia.
CREATE VIEW alunos_ativos AS
SELECT a.id, a.identificador_id, a.data_cadastro, a.plano_id
FROM ALUNO a
WHERE NOT EXISTS (
    SELECT 1
    FROM HISTORICO_PAGAMENTO hp
    WHERE hp.aluno_id = a.id
      AND hp.data_pagamento IS NULL
      AND hp.data_vencimento < CURDATE()
);

CREATE VIEW planos_com_exercicios AS
SELECT 
    a.id AS aluno_id,
    a.identificador_id,
    a.plano_id,
    pt.id AS plano_treino_id,
    pt.repeticoes,
    pt.series,
    pt.carga,
    e.id AS exercicio_id,
    e.nome AS nome_exercicio,
    e.descricao AS descricao_exercicio
FROM 
    ALUNO a
JOIN 
    PLANO_TREINO pt ON a.plano_treino_id = pt.id
JOIN 
    EXECUTA_EM ee ON pt.id = ee.TreinoID
JOIN 
    EXERCICIO e ON ee.ExercicioID = e.id;
