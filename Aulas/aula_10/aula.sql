DROP DATABASE IF EXISTS SCH_NBK;

CREATE DATABASE SCH_NBK;

USE SCH_NBK;

CREATE TABLE nu_conta(
	num_conta int not null primary key,
    saldo real,
    senha varchar(20)
);

CREATE TABLE pessoa(
	cpf varchar(14) not null primary key,
    nome varchar(20),
    nu_conta_num_conta int not null,
    constraint fk_num_conta foreign key (nu_conta_num_conta) references nu_conta(num_conta)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

