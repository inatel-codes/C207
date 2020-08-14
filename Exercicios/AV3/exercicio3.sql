CREATE DATABASE exercicio3;

USE exercicio3;

CREATE TABLE departamento(
	nome VARCHAR(45),
    codigo INT PRIMARY KEY,
    telefone VARCHAR(45),
    centro VARCHAR(45)
)ENGINE = INNODB;

CREATE TABLE curso(
	idCurso INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(45),
    tipo VARCHAR(15),
    coordenador VARCHAR(45),
    viceCoordenador VARCHAR(45),
    departamento_codigo INT NOT NULL,
    CONSTRAINT fk_departamento_codigo FOREIGN KEY (departamento_codigo) REFERENCES departamento(codigo)
)ENGINE = INNODB;

CREATE TABLE aluno(
	nome VARCHAR(45),
    matricula INT PRIMARY KEY,
    cpf VARCHAR(20) UNIQUE,
    endereco VARCHAR(45),
    telefone VARCHAR(45),
    dataNascimento DATE,
    sexo VARCHAR(10),
    departamento_codigo INT NOT NULL,
    curso_idCurso INT NOT NULL,
    CONSTRAINT fk_departamento_codigo1 FOREIGN KEY (departamento_codigo) REFERENCES departamento(codigo),
	CONSTRAINT fk_curso_idCurso FOREIGN KEY (curso_idCurso) REFERENCES curso(idCurso)
)ENGINE = INNODB;

CREATE TABLE professor(
	nome VARCHAR(45),
    cpf VARCHAR(45) PRIMARY KEY,
    telefoe VARCHAR(45),
	departamento_codigo INT NOT NULL,
    CONSTRAINT fk_departamento_codigo2 FOREIGN KEY (departamento_codigo) REFERENCES departamento(codigo)
)ENGINE = INNODB;

CREATE TABLE disciplina(
	nome VARCHAR(45),
    descricao VARCHAR(45),
    codigo INT PRIMARY KEY,
    numeroCreditos INT,
	departamento_codigo INT NOT NULL,
    CONSTRAINT fk_departamento_codigo3 FOREIGN KEY (departamento_codigo) REFERENCES departamento(codigo)
)ENGINE = INNODB;

CREATE TABLE oferta(
	idOferta INT AUTO_INCREMENT PRIMARY KEY,
    horario TIME,
    professor_cpf VARCHAR(45) NOT NULL,
    CONSTRAINT fk_professor_cpf FOREIGN KEY (professor_cpf) REFERENCES professor(cpf)
)ENGINE = INNODB;







