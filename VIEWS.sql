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

# select * from alunos_ativos;
-- VIEW que retorna os alunos e seus planos de treino descritos detalhadamente
CREATE VIEW planos_com_exercicios AS
SELECT a.id,IDENTIFICACAO.nome as nome_aluno, EXERCICIO.nome AS nome_exercicio,
       EXERCICIO.descricao AS descricao_exercicio, pt.repeticoes, pt.series,pt.carga,
       EQUIPAMENTO.nome as nome_aparelho, gp.nome as grupo_muscular FROM ALUNO a
JOIN IDENTIFICADOR on a.identificador_id = IDENTIFICADOR.id
JOIN IDENTIFICACAO ON IDENTIFICADOR.identificacao_id = IDENTIFICACAO.id
JOIN PLANO_TREINO pt ON a.id = pt.id
JOIN EXERCICIO ON pt.id = EXERCICIO.id
JOIN EQUIPAMENTO ON EXERCICIO.equipamento_id = EQUIPAMENTO.id
JOIN GRUPO_MUSCULAR gp ON EXERCICIO.grupo_muscular_id = gp.id
ORDER BY a.id;


# select * from planos_com_exercicios