CREATE DATABASE IF NOT EXISTS exercicio_aula8;

USE exercicio_aula8;

CREATE TABLE IF NOT EXISTS agente (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR (45),
    nascimento DATE,
    habilidade VARCHAR(45),
    sexo VARCHAR (45),
    email VARCHAR(45)
)ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS vilao(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    num_crimes INT NOT NULL
)ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS missao(
	id INT AUTO_INCREMENT PRIMARY KEY,
    data DATE NOT NULL,
    nome VARCHAR(45) NOT NULL,
    local VARCHAR(45),
    duracao INT,
    is_critical TINYINT,
    vilao_id INT NOT NULL,
    CONSTRAINT fk_vilao_id FOREIGN KEY (vilao_id) REFERENCES vilao(id)
)ENGINE = INNODB;

CREATE TABLE missao_has_agente(
	missao_id INT NOT NULL,
    agente_id INT NOT NULL,
    PRIMARY KEY (missao_id, agente_id),
    CONSTRAINT fk_missao_id FOREIGN KEY (missao_id) REFERENCES missao(id),
    CONSTRAINT fk_agente_id FOREIGN KEY (agente_id) REFERENCES agente(id)
)ENGINE = INNODB;











