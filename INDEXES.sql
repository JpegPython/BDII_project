
-- 1. Listar todos os alunos que possuem um plano ativo com descrições de exercício
SELECT a.id, i.nome, p.nome AS plano, e.nome AS exercicio, pt.repeticoes, pt.series, pt.carga
FROM ALUNO a
JOIN IDENTIFICADOR idf ON a.identificador_id = idf.id
JOIN IDENTIFICACAO i ON idf.identificacao_id = i.id
JOIN PLANO p ON a.plano_id = p.id
JOIN PLANO_TREINO pt ON a.id = pt.aluno_id
JOIN EXERCICIO e ON pt.exercicio_id = e.id
WHERE idf.ativo = true;



EXPLAIN SELECT a.id, i.nome, p.nome AS plano, e.nome AS exercicio, pt.repeticoes, pt.series, pt.carga
FROM ALUNO a
JOIN IDENTIFICADOR idf ON a.identificador_id = idf.id
JOIN IDENTIFICACAO i ON idf.identificacao_id = i.id
JOIN PLANO p ON a.plano_id = p.id
JOIN PLANO_TREINO pt ON a.id = pt.aluno_id
JOIN EXERCICIO e ON pt.exercicio_id = e.id
WHERE idf.ativo = true;

CREATE INDEX idx_identificador_ativo ON IDENTIFICADOR(ativo);
CREATE INDEX idx_identificacao_id ON IDENTIFICADOR(identificacao_id);
CREATE INDEX idx_plano_id ON PLANO(id);
CREATE INDEX idx_plano_treino_aluno_id ON PLANO_TREINO(aluno_id);
CREATE INDEX idx_exercicio_id ON EXERCICIO(id);
CREATE INDEX idx_aluno_identificador_id ON ALUNO(identificador_id);
CREATE INDEX idx_aluno_plano_id ON ALUNO(plano_id);

DROP INDEX idx_identificador_ativo ON IDENTIFICADOR;
DROP INDEX idx_identificacao_id ON IDENTIFICADOR;
DROP INDEX idx_plano_id ON PLANO;
DROP INDEX idx_plano_treino_aluno_id ON PLANO_TREINO;
DROP INDEX idx_exercicio_id ON EXERCICIO;
DROP INDEX idx_aluno_identificador_id ON ALUNO;
DROP INDEX idx_aluno_plano_id ON ALUNO;




-- 6. Calcular o total arrecadado com pagamentos de mensalidades por mês
SELECT DATE_FORMAT(hp.data_pagamento, '%Y-%m') AS mes_ano, SUM(hp.valor) AS total_receitas
FROM HISTORICO_PAGAMENTO hp
WHERE hp.data_pagamento IS NOT NULL
GROUP BY DATE_FORMAT(hp.data_pagamento, '%Y-%m')
ORDER BY mes_ano DESC;

EXPLAIN SELECT DATE_FORMAT(hp.data_pagamento, '%Y-%m') AS mes_ano, SUM(hp.valor) AS total_receitas
FROM HISTORICO_PAGAMENTO hp
WHERE hp.data_pagamento IS NOT NULL
GROUP BY DATE_FORMAT(hp.data_pagamento, '%Y-%m')
ORDER BY mes_ano DESC;

CREATE INDEX idx_historico_pagamento_data_pagamento ON HISTORICO_PAGAMENTO(data_pagamento);
DROP INDEX idx_historico_pagamento_data_pagamento ON HISTORICO_PAGAMENTO;
