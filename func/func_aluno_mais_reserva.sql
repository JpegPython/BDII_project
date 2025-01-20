DELIMITER //
CREATE FUNCTION AlunoMaisReservas(start_date DATE, end_date DATE)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE aluno_nome VARCHAR(100);
    
    -- Encontrar o aluno com mais reservas no período
    SELECT i.nome INTO aluno_nome
    FROM RESERVA r
    JOIN PLANO_TREINO pt ON r.plano_treino_id = pt.id
    JOIN ALUNO a ON pt.aluno_id = a.id
    JOIN IDENTIFICADOR idf ON a.identificador_id = idf.id
    JOIN IDENTIFICACAO i ON idf.identificacao_id = i.id
    WHERE r.data BETWEEN start_date AND end_date
    GROUP BY i.nome
    ORDER BY COUNT(r.id) DESC
    LIMIT 1;
    
    RETURN aluno_nome;
END //
DELIMITER ;

SELECT AlunoMaisReservas('2025-01-01', '2025-01-31') AS aluno_com_mais_reservas;
