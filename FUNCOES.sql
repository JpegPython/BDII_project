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


DELIMITER //
CREATE FUNCTION CalcularIMC(aluno_id INT, altura DECIMAL(3,2))
RETURNS DECIMAL(5,2)
DETERMINISTIC
BEGIN
    DECLARE peso DECIMAL(10,2);
    DECLARE imc DECIMAL(5,2);
    DECLARE total_avaliacoes INT;

    -- Verificar se o aluno existe
    IF (SELECT COUNT(*) FROM ALUNO WHERE id = aluno_id) = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Aluno não encontrado';
    END IF;

    -- Calcular o número de avaliações disponíveis para o aluno
    SELECT COUNT(*) INTO total_avaliacoes
    FROM HISTORICO_AVALIACAO
    WHERE aluno_id = aluno_id;

    -- Verificar se existem avaliações disponíveis
    IF total_avaliacoes = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nenhuma avaliação disponível para o aluno';
    END IF;

    -- Calcular a média ponderada do peso nas avaliações disponíveis
    SELECT AVG(ha.peso) INTO peso
    FROM HISTORICO_AVALIACAO ha
    WHERE ha.aluno_id = aluno_id;

    -- Calcular o IMC
    SET imc = peso / (altura * altura);
    RETURN  imc;
END //
DELIMITER ;

SELECT CalcularIMC(6, 1.90) AS imc;

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

DELIMITER //
CREATE FUNCTION TotalPago(aluno_id INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
    
    -- Calcular o total pago
    SELECT SUM(hp.valor) INTO total
    FROM HISTORICO_PAGAMENTO hp
    WHERE hp.aluno_id = aluno_id;
    
    RETURN total;
END //
DELIMITER ;
SELECT TotalPago(15) AS total_pago;

SELECT TotalPago(1) AS total_pago;

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
