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
