DELIMITER //
CREATE PROCEDURE TotalTreinosAluno(aluno_id INT)
BEGIN
    SELECT ht.id, ht.data_inicio, ht.data_fim, e.nome AS exercicio, pt.repeticoes, pt.series, pt.carga
    FROM HISTORICO_TREINO ht
    JOIN PLANO_TREINO pt ON ht.plano_treino_id = pt.id
    JOIN EXERCICIO e ON pt.exercicio_id = e.id
    WHERE pt.aluno_id = aluno_id;
END //MudarInstrutorAlunoDELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `MudarInstrutorAluno`(aluno_id INT, novo_instrutor_id INT) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE msg VARCHAR(100);
    DECLARE aluno_nome VARCHAR(100);
    
    -- Verificar se o aluno existe
    IF (SELECT COUNT(*) FROM ALUNO WHERE id = aluno_id) = 0 THEN
        SET msg = 'Aluno não encontrado';
    ELSE
        -- Obter o nome do aluno
        SELECT i.nome INTO aluno_nome
        FROM ALUNO a
        JOIN IDENTIFICADOR idf ON a.identificador_id = idf.id
        JOIN IDENTIFICACAO i ON idf.identificacao_id = i.id
        WHERE a.id = aluno_id;
        
        -- Atualizar o instrutor nas reservas do aluno
        UPDATE RESERVA r
        JOIN PLANO_TREINO pt ON r.plano_treino_id = pt.id
        SET r.instrutor_id = novo_instrutor_id
        WHERE pt.aluno_id = aluno_id;
        
        SET msg = CONCAT('Instrutor mudado com sucesso para o aluno: ', aluno_nome);
    END IF;
    
    RETURN msg;
END$$
DELIMITER ;

DELIMITER ;

-- SELECT TotalTreinosAluno(2) AS total_treinos;

-- Calcula IMC do aluno

DELIMITER //

CALL TotalTreinosAluno(3);
