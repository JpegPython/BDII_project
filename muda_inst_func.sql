DELIMITER //
CREATE FUNCTION MudarInstrutorAluno(aluno_id INT, novo_instrutor_id INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE msg VARCHAR(100);
    
    -- Verificar se o aluno existe
    IF (SELECT COUNT(*) FROM ALUNO WHERE id = aluno_id) = 0 THEN
        SET msg = 'Aluno não encontrado';
    ELSE
        -- Atualizar o instrutor nas reservas do aluno
        UPDATE RESERVA r
        JOIN PLANO_TREINO pt ON r.plano_treino_id = pt.id
        SET r.instrutor_id = novo_instrutor_id
        WHERE pt.aluno_id = aluno_id;
        
        SET msg = 'Instrutor mudado com sucesso';
    END IF;
    
    RETURN msg;
END //
DELIMITER ;


SELECT r.data, r.instrutor_id, i.nome AS instrutor_nome
FROM RESERVA r
JOIN PLANO_TREINO pt ON r.plano_treino_id = pt.id
JOIN FUNCIONARIO f ON r.instrutor_id = f.id
JOIN IDENTIFICADOR idf ON f.identificador_id = idf.id
JOIN IDENTIFICACAO i ON idf.identificacao_id = i.id
WHERE pt.aluno_id = 2;


SELECT MudarInstrutorAluno(2,8) AS resultado;
