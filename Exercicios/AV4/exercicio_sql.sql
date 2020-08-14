#QUESTAO 1
CREATE DATABASE exercicio_sql;
USE exercicio_sql;

#QUESTAO 2
CREATE TABLE editora(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    cidade VARCHAR(45),
    estado VARCHAR(45),
    telefone VARCHAR(45),
    email VARCHAR(45) UNIQUE
);

#QUESTAO 3
CREATE TABLE estilo(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45)
);

#QUESTAO 4
CREATE TABLE autores(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    estado VARCHAR(45),
    telefone VARCHAR(45)
);

#QUESTAO 5
RENAME TABLE autores TO autor;

#QUESTAO 6
CREATE TABLE livros(
	id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(45),
    sinopse VARCHAR(1000),
    autor_id INT NOT NULL,
    editora_id INT NOT NULL,
    estilo_id INT NOT NULL,
    CONSTRAINT fk_autor_id FOREIGN KEY (autor_id) REFERENCES autor(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_editora_id FOREIGN KEY (editora_id) REFERENCES editora(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_estilo_id FOREIGN KEY (estilo_id) REFERENCES estilo(id) ON DELETE CASCADE ON UPDATE CASCADE
);

#QUESTAO 7
SELECT * FROM autor;
SELECT * FROM editora;
SELECT * FROM estilo;
SELECT * FROM livros;

#QUESTAO 8
INSERT INTO autor (nome, estado, telefone) 
VALUES ('Willian Souza', 'São Paulo', '(35) 984567897'),
	   ('Gabriel de Oliveira', 'Minas Gerais', '(38) 99943231'),
       ('João Alencar', 'Rio de Janeiro', '(35) 984890512');

#QUESTAO 9
INSERT INTO editora (nome, cidade, estado, telefone, email) 
VALUES ('Editora Europa', 'Volta Redonda', 'Rio de Janeiro', '(35) 999280495', 'editoraeuropa@email.com'),
	   ('Editora Bloch', 'São Paulo', 'São Paulo', '(35) 984560192', 'editorabloch@email.com'),
       ('Editora Positivo', 'São Bernardo do Campo', 'São Paulo', '(35) 984780192', 'editorapositivo@email.com');
       
#QUESTAO 10
INSERT INTO estilo (nome) VALUES ('Acadêmico');

#QUESTAO 11
INSERT INTO livros (titulo, sinopse, autor_id, editora_id, estilo_id) VALUES ('Introdução aos Bancos de Dados', 'Sistemas de Banco de Dados apresenta... aspectos não apenas 
											dos sistemas, mas também das aplicações de banco de dados, além de tecnologias relacionadas ao assunto. 
                                            A obra aborda - conceitos para proteger e usar os sistemas de banco de dados; 
                                            fundamentos de modelagem e de projeto de banco de dados; linguagens e 
                                            modelos fornecidos pelos sistemas de...',
                                            1, 3, 1);

#QUESTAO 12
INSERT INTO estilo (nome) VALUES ('Comédia'), ('Drama'), ('Ficção'), ('Suspense'), ('Romance');

#QUESTAO 13
INSERT INTO livros (titulo, sinopse, autor_id, editora_id, estilo_id) 
VALUES ('Neuromancer', 'No futuro, existe a matrix. Uma espécie de alucinação coletiva digital na qual a humanidade se conecta para, virtualmente, 
		 saber de tudo sobre tudo. Mas há uma elite que navega por essa grande rede de informação - os cowboys. Case era um deles, até o dia em que 
         tentou ser mais esperto do que os seus patrões. Que fritaram suas conexões com o ciberespaço, tornando-o um pária entre os seus iguais. 
         Ele vaga pelos subúrbios de Tóquio, mais envolvido do que nunca em destruir a si próprio, até ser contatado por Molly, 
         uma bela e perigosa mulher que, assim como ele, desconfia de tudo e de todos. Os dois acabam se envolvendo numa missão cheia de
         mistérios e perigos. Esta edição comemorativa de 25 anos de Neuromancer conta com nova tradução de Fábio Fernandes e prefácio 
         de William Gibson. O romance de estréia de Gibson é o primeiro volume da chamada Trilogia do Sprawl, que ainda inclui os livros Count Zero 
         e Mona Lisa Overdrive.', 1, 1, 4),
         
	   ('Fahrenheit 451', 'Adaptação do livro de Ray Bradbury sobre uma sociedade do futuro que baniu todos os materiais de leitura e o 
       trabalho dos bombeiros de manter as fogueiras a 451 graus: a temperatura que o papel queima. Um bombeiro começa a repensar sua função ao 
       conhecer uma jovem encantadora que adora livros.', 2, 3, 3);

#QUESTAO 14
SELECT * FROM estilo ORDER BY nome;

#QUESTAO 15
SELECT * FROM autor ORDER BY nome DESC;

#QUESTAO 16
SELECT nome, telefone FROM editora;

#QUESTAO 17
SELECT nome FROM editora;

#QUESTAO 18
SELECT nome FROM editora WHERE estado = 'Minas Gerais';

#QUESTAO 19
SELECT nome FROM autor WHERE estado = 'São Paulo';

#QUESTÃO 20
SELECT * FROM estilo WHERE id = 1;

#QUESTAO 21
SELECT * FROM autor WHERE id = 2;

#QUESTAO 22
SELECT titulo, sinopse, autor.nome AS 'Autor', editora.nome AS 'Editora', estilo.nome AS 'Estilo' FROM livros 
INNER JOIN autor ON livros.autor_id = autor.id 
INNER JOIN editora ON livros.editora_id = editora.id 
INNER JOIN estilo ON livros.estilo_id = estilo.id;

#QUESTAO 23
DELETE FROM editora WHERE id = 1 || id = 2; #OBS: COMO ESTÁ HABILITADO O DELETE CASCADE NO RELACIONAMENTO DE LIVRO COM EDITORA, 
										    #     ENTÃO O LIVRO QUE TENHA ESSA EDITORA TAMBEM SERÁ EXCLUIDO

#QUESTAO 24
UPDATE autor SET nome = 'Rodrigo Borges', estado = 'Santa Catarina', telefone =  '(35) 984670900' WHERE id = 2;										
UPDATE autor SET nome = 'Alencar Toledo', estado = 'São Paulo', telefone = '(35) 99987401' WHERE id = 3;

#QUESTAO 25
DELETE from livros WHERE id = 3;

#QUESTAO 26
SELECT COUNT(*) FROM autor;

#QUESTAO 27
SELECT AVG(id) AS Media, MAX(id) As Maior, MIN(id) AS Menor, SUM(id) AS Soma FROM autor;

#QUESTAO 28
SELECT titulo, sinopse FROM livros WHERE titulo like 'I%';

#QUESTAO 29
SELECT titulo, sinopse FROM livros WHERE sinopse like 'S%';

#QUESTAO 30
UPDATE livros SET autor_id = 2 WHERE id = 1;