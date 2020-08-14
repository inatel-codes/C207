DROP DATABASE IF EXISTS aula_tabela;
CREATE DATABASE aula_tabela;

USE aula_tabela;

CREATE TABLE IF NOT EXISTS faculdade(
	nome varchar(30),
    cnpj varchar(18),
    primary key(cnpj)
);

CREATE TABLE IF NOT EXISTS aluno(
	matricula int, 
	nome varchar(30),
    faculdade_cnpj varchar(18),
    primary key(matricula),
	CONSTRAINT fk_faculdade_cnpj FOREIGN KEY(faculdade_cnpj) 
    REFERENCES faculdade(cnpj)
    ON DELETE CASCADE
    ON UPDATE NO ACTION
);

ALTER TABLE aluno ADD column curso varchar(30) not null;
#ALTER TABLE aluno DROP curso;
ALTER TABLE aluno MODIFY curso int;

select * from aluno;


