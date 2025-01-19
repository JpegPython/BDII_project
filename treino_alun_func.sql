DELIMITER //
CREATE PROCEDURE TotalTreinosAluno(aluno_id INT)
BEGIN
    SELECT ht.id, ht.data_inicio, ht.data_fim, e.nome AS exercicio, pt.repeticoes, pt.series, pt.carga
    FROM HISTORICO_TREINO ht
    JOIN PLANO_TREINO pt ON ht.plano_treino_id = pt.id
    JOIN EXERCICIO e ON pt.exercicio_id = e.id
    WHERE pt.aluno_id = aluno_id;
END //
DELIMITER ;

-- SELECT TotalTreinosAluno(2) AS total_treinos;

-- Calcula IMC do aluno

DELIMITER //

CALL TotalTreinosAluno(3);
