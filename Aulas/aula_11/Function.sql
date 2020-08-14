CREATE DATABASE aula_11_function;

USE aula_11_function;

DELIMITER $$
DROP FUNCTION IF EXISTS nome_funcao $$
CREATE FUNCTION nome_funcao (valor INT) RETURNS INT
BEGIN 
	DECLARE resp INT;
    SET resp = 1;
    
    WHILE valor > 0 DO
		SET resp = resp * valor;
        SET valor = valor - 1;
	END WHILE;
    
    return resp;
    
END $$
DELIMITER ;

SELECT nome_funcao(5) AS 'Fatorial: ';