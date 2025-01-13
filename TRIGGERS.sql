DELIMITER //

CREATE TRIGGER valida_data_cadastro_aluno
BEFORE INSERT ON ALUNO
FOR EACH ROW
BEGIN
    IF NEW.data_cadastro > CURDATE() THEN
        SET NEW.data_cadastro = CURDATE();
    END IF;
END;

//

DELIMITER ;


DELIMITER //

CREATE TRIGGER bloqueia_exclusao_aluno_pendente
BEFORE DELETE ON ALUNO
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1 
        FROM HISTORICO_PAGAMENTO 
        WHERE aluno_id = OLD.id AND data_pagamento IS NULL
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Não é permitido excluir um aluno com pagamentos pendentes.';
    END IF;
END;

//

DELIMITER ;