CREATE DATABASE exercicio2;

USE exercicio2;

CREATE TABLE cliente(
	cpf VARCHAR(14) PRIMARY KEY,
    nome VARCHAR(45), 
    dataNscimento DATE,
    endereco VARCHAR(45),
    cep VARCHAR(9),
    bairro VARCHAR(45),
    cidade VARCHAR(45),
    uf VARCHAR(2)
)ENGINE = INNODB;

ALTER TABLE cliente ADD COLUMN dataUltimaCompra DATE;

INSERT INTO cliente (cpf, nome, dataNscimento, endereco, cep, bairro, cidade, uf)
VALUES  ('04496332780', 'João da Silva', 25/11/1969, 'Rua Antônio Numes', '88045963', 'Palmeiras', 'Londrina', 'PR'),
		('05485031490', 'Ana Regina Fagundes', 21/09/1986, 'Rua Palmeias Novas', '88078923', 'Leblon', 'Rio de Janeiro', 'RJ'),
        ('03350314905', 'Fernando Soares', 05/03/1990, 'Rua Palmeias Novas', '88048917', 'Copacabana', 'Rio de Janeiro', 'RJ');

SELECT * FROM cliente WHERE cidade = 'Rio de Janeiro';

DELETE FROM cliente WHERE cpf = '04496332780';

SELECT * FROM cliente;

UPDATE cliente SET nome = 'Gabriel Costa' WHERE cpf = '05485031490';
