#EXCLUINDO AS TABELAS
DROP TABLE vilao; 
DROP TABLE agente; 
DROP TABLE missao; 

# BUSCANDO DADOS
SELECT * FROM agente;
SELECT * FROM missao;
SELECT * FROM vilao;

SELECT nome FROM agente WHERE id.missao = 1;

#INSERINDO DADOS
INSERT INTO agente (nome, endereco, nascimento, habilidade, sexo, email) 
VALUES ('Agente One', 'Endereco One', 01/01/1999, 'Hability One', 'M', 'emailone@email.com');
INSERT INTO agente (nome, endereco, nascimento, habilidade, sexo, email) 
VALUES ('Agente Two', 'Endereco Two', 02/02/1999, 'Hability Two', 'M', 'emailtwo@email.com');
INSERT INTO agente (nome, endereco, nascimento, habilidade, sexo, email) 
VALUES ('Agente Three', 'Endereco Three', 03/03/1999, 'Hability Three', 'F', 'emailthree@email.com');

INSERT INTO vilao (nome, num_crimes) 
VALUES ('Nome One', 11);
INSERT INTO vilao (nome, num_crimes)  
VALUES ('Nome Two', 3);

INSERT INTO missao (data, nome, local, duracao, is_critical, vilao_id) 
VALUES (04/04/1999, 'Nome One', 'local One', 10, true, 1);
INSERT INTO missao (data, nome, local, duracao, is_critical, vilao_id) 
VALUES (05/05/1999, 'Nome Two', 'local two', 20, false, 2);
