#criando banco universidade
CREATE DATABASE IF NOT EXISTS universidade;

#usando o banco universidade
USE universidade;

#criando tabela faculdade
CREATE TABLE IF NOT EXISTS Faculdade (
 idFaculdade INT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(50) UNIQUE
);

#criando tabela aluno
CREATE TABLE IF NOT EXISTS Aluno (

 idAluno INT PRIMARY KEY AUTO_INCREMENT,
 nome VARCHAR(50) NOT NULL,
 email VARCHAR(50) UNIQUE,
 curso VARCHAR(50) NOT NULL ,

 idFaculdade INT,
 CONSTRAINT fk_idFaculdade FOREIGN KEY (idFaculdade) 
 REFERENCES Faculdade(idFaculdade)
 ON DELETE CASCADE
 ON UPDATE CASCADE
 
);

#Inserindo dados na tabela faculdade
INSERT INTO Faculdade(nome) VALUES ('Inatel'), ('Unifei');

#inserindo dados na tabela aluno
INSERT INTO Aluno (Nome, email, curso, idFaculdade) 
VALUES ('PB', 'pb@gea.inatel.br','GEA', 2 ),
 ('Vanessa', 'vanessaswerts@gec.inatel.br', 'GEC', 2 ), 
('AlexanDer','alexanderaugusto@gec.inatel.br', 'GEC', 1);

#Consultando dados das tabelas
SELECT F.idFaculdade, F.nome, A.idAluno, A.nome
FROM Aluno A
INNER JOIN Faculdade F
ON A.idFaculdade = F.idFaculdade;

#Deletando um aluno 
DELETE FROM universidade.Aluno WHERE email = 'pb@gea.inatel.br';

#selecionando tudo da tabela aluno
SELECT * FROM Aluno;

#cosultando apos ter deletado um aluno
SELECT A.nome, F.nome
FROM Aluno A
INNER JOIN Faculdade F
ON A.idFaculdade = F.idFaculdade;

#deletando uma faculdade
DELETE FROM Faculdade WHERE idFaculdade = 1;

#Consultando apos deletar a faculdade (alunos pertencentes a ela serão excluidos)
SELECT A.nome, F.nome
FROM Aluno A
INNER JOIN Faculdade F
ON A.idFaculdade = F.idFaculdade;


