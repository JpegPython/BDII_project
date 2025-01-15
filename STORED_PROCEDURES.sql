-- 1. Lista instrutores pelo periodo
DELIMITER //
CREATE PROCEDURE BuscarInstrutoresPorPeriodo(IN start_date DATE, IN end_date DATE)
BEGIN
    SELECT r.data, f.id AS instrutor_id, i.nome AS instrutor_nome
    FROM RESERVA r
    JOIN FUNCIONARIO f ON r.instrutor_id = f.id
    JOIN IDENTIFICADOR idf ON f.identificador_id = idf.id
    JOIN IDENTIFICACAO i ON idf.identificacao_id = i.id
    WHERE r.data BETWEEN start_date AND end_date;
END //
DELIMITER ;
-- CALL BuscarInstrutoresPorPeriodo('2025-01-01', '2025-01-31');

-- Lista total de treinos dos alunos

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
    RETURN imc;
END //
DELIMITER ;
-- SELECT CalcularIMC(1, 1.75) AS imc;

