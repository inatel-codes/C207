CREATE DATABASE aula_11;
USE aula_11;

#CRIANDO
DROP PROCEDURE IF EXISTS atualizar_funcionario;
DELIMITER $$
CREATE PROCEDURE atualizar_funcionario(IN nome VARCHAR(20))
BEGIN
	DECLARE fim INT default 0;
    DECLARE nome_atual VARCHAR(20);
    DECLARE p cursor FOR (select nome_departamento from departamento);
    
    DECLARE continue handler for not found set fim = 1;
    
    open p;
    
    meu_loop: loop
    
		fetch p into nome_atual;
        
        if  nome_atual = nome
			then 
				delete from departamento where nome_departamento = nome;
                select 'Exclusão feita com sucesso!';
                leave meu_loop;
		elseif fim = 1
			then 
				select 'Erro na exclusão!';
				leave meu_loop;
		end if;
	end loop;

END $$
DELIMITER ;



