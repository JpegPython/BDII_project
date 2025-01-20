DELIMITER //

CREATE TRIGGER bloqueia_atualizacao_instrutor
BEFORE UPDATE ON RESERVA
FOR EACH ROW
BEGIN
    DECLARE aluno_id INT;
    DECLARE pagamento_pendente BOOLEAN;
    
    -- Obter aluno_id a partir do plano_treino_id na tabela RESERVA
    SELECT pt.aluno_id INTO aluno_id 
    FROM PLANO_TREINO pt
    WHERE pt.id = NEW.plano_treino_id;
    
    -- Verificar se o aluno possui pagamentos pendentes
    SET pagamento_pendente = EXISTS (
        SELECT 1
        FROM HISTORICO_PAGAMENTO hp
        WHERE hp.aluno_id = aluno_id
          AND hp.data_pagamento IS NULL
    );
    
    -- Bloquear a atualização se houver pagamentos pendentes
    IF pagamento_pendente THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Não é permitido mudar o instrutor enquanto o aluno possui pagamentos pendentes.';
    END IF;
END;

//

DELIMITER ;
DROP TRIGGER IF EXISTS bloqueia_atualizacao_instrutor;

INSERT INTO HISTORICO_PAGAMENTO (aluno_id, data_vencimento, valor, data_pagamento, metodo_pagamento)
VALUES (1, '2025-01-30', 100.00, NULL, 'Cartão');

INSERT INTO RESERVA (data, plano_treino_id, instrutor_id)
VALUES (NOW(), 1, 1);

UPDATE RESERVA
SET instrutor_id = 2
WHERE id = 1;

SHOW TRIGGERS \G;

