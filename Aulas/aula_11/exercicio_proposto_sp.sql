DELIMITER $$
DROP PROCEDURE IF EXISTS confirma_pedido $$
CREATE PROCEDURE confirma_pedido(IN id_pedido BIGINT, IN status_pedido VARCHAR(45), IN valor_total REAL)
BEGIN
	IF status_pedido = 'PENDENTE'
		THEN 
			UPDATE pedido SET status_pedido = 'CONFIRMADO' WHERE id = id_pedido;
            UPDATE caixa SET dinheiro = dinheiro + valor_total WHERE id = 1;
            SELECT 'Compra lançada com sucesso!';
	ELSE SELECT 'Erro ao lançar a compra! O preço da compra excedeu o dinheiro do caixa!';
	END IF;
END $$
DELIMITER ;


