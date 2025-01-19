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
