CREATE DATABASE aula_11;
USE aula_11;

#CRIANDO
DELIMITER $$
DROP PROCEDURE IF EXISTS testeif $$
CREATE PROCEDURE testeif (IN num1 INT, IN num2 INT, OUT resposta VARCHAR(45))
BEGIN
	DECLARE soma INT;
    SET soma = num1 + num2;
    IF soma >= 0 THEN SET resposta = 'positivo';
		ELSE SET resposta = 'negativo';
	END IF;
END $$
DELIMITER ;

#USANDO
CALL testeif(10, 20, @resp);

SELECT @resp AS 'Resultado da SP: ';

