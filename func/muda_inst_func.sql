DELIMITER //
CREATE FUNCTION MudarInstrutorAluno(aluno_id INT, novo_instrutor_id INT)
RETURNS VARCHAR(100)
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
END //
DELIMITER ;


SELECT r.data, r.instrutor_id, i.nome AS instrutor_nome, ia.nome AS aluno_nome
FROM RESERVA r
JOIN PLANO_TREINO pt ON r.plano_treino_id = pt.id
JOIN FUNCIONARIO f ON r.instrutor_id = f.id
JOIN IDENTIFICADOR idf ON f.identificador_id = idf.id
JOIN IDENTIFICACAO i ON idf.identificacao_id = i.id
JOIN ALUNO a ON pt.aluno_id = a.id
JOIN IDENTIFICADOR idfa ON a.identificador_id = idfa.id
JOIN IDENTIFICACAO ia ON idfa.identificacao_id = ia.id
WHERE pt.aluno_id = 6
ORDER BY r.data;

SELECT MudarInstrutorAluno(6,5) AS resultado;
DROP FUNCTION MudarInstrutorAluno;
