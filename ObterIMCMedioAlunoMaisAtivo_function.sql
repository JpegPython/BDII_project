DELIMITER //

CREATE FUNCTION ObterIMCMedioAlunoMaisAtivo(start_date DATE, end_date DATE, altura DECIMAL(3,2))
RETURNS DECIMAL(5,2)
DETERMINISTIC
BEGIN
    DECLARE aluno_nome VARCHAR(100);
    DECLARE aluno_id INT;
    DECLARE imc DECIMAL(5,2);
    
    -- Obter o nome do aluno com mais reservas no período
    SET aluno_nome = AlunoMaisReservas(start_date, end_date);
    
    -- Obter o ID do aluno com base no nome
    SELECT a.id INTO aluno_id
    FROM ALUNO a
    JOIN IDENTIFICADOR idf ON a.identificador_id = idf.id
    JOIN IDENTIFICACAO i ON idf.identificacao_id = i.id
    WHERE i.nome = aluno_nome;
    
    -- Calcular o IMC do aluno chamando a função CalcularIMC
    SET imc = CalcularIMC(aluno_id, altura);
    
    RETURN imc;
END //

DELIMITER ;

-- Para calcular o IMC médio do aluno mais ativo num período específico:
-- SELECT ObterIMCMedioAlunoMaisAtivo('2025-01-01', '2025-01-31', 1.75) AS imc_medio_aluno_mais_ativo;

SELECT ObterIMCMedioAlunoMaisAtivo('2025-01-01', '2025-01-31', 1.75) AS imc_medio_aluno_mais_ativo;

