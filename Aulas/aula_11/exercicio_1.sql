CREATE DATABASE aula_11;
USE aula_11;

#CRIANDO
DROP PROCEDURE IF EXISTS atualizar_funcionario;
DELIMITER $$
CREATE PROCEDURE atualizar_funcionario(IN cpf_funcionario VARCHAR(20), IN novoSalario DOUBLE)
BEGIN
	DECLARE fim INT default 0;
    DECLARE cpf_atual VARCHAR(20);
    DECLARE p cursor FOR (select cpf from funcionario);
    
    DECLARE continue handler for not found set fim = 1;
    
    open p;
    
    meu_loop: loop
    
		fetch p into cpf_atual;
        
    SET soma = num1 + num2;
    IF soma >= 0 THEN SET resposta = 'positivo';
		ELSE SET resposta = 'negativo';
	END IF;
END $$
DELIMITER ;

#USANDO
CALL testeif(10, 20, @resp);

SELECT @resp AS 'Resultado da SP: ';

