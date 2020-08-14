#CRIANDO BANCO DE DADOS E USANDO-O
CREATE DATABASE IF NOT EXISTS exercicio1;
USE exercicio1;

#CRIANDO TABELA VEICULO (QUESTAO 1)
CREATE TABLE IF NOT EXISTS Veiculo(
	idVeiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(45),
    modelo VARCHAR(45),
    fabricante VARCHAR(45),
    combustivel VARCHAR(45),
    ano INT,
    valor FLOAT,
    quilometragem FLOAT
)ENGINE = INNODB;

#INSERINDO DADOS NA TABELA (QUESTAO 2)
INSERT INTO Veiculo (placa, modelo, fabricante, combustivel, ano, valor, quilometragem) 
VALUES ('IRS-1836', 'Corsa', 'Chevrolet', 'Diesel', 2015, 16000, 25000);
INSERT INTO Veiculo (placa, modelo, fabricante, combustivel, ano, valor, quilometragem) 
VALUES ('AFS-1846', 'Gol', 'Volkkwagen', 'Flex', 2018, 54000, 0);
INSERT INTO Veiculo (placa, modelo, fabricante, combustivel, ano, valor, quilometragem) 
VALUES ('BGS-1676', 'Onix', 'Chevrolet', 'Diesel', 1999, 32000, 32000);
INSERT INTO Veiculo (placa, modelo, fabricante, combustivel, ano, valor, quilometragem) 
VALUES ('IRS-1836', 'Prisma', 'Chevrolet', 'Gasolina', 2015, 20000, 45000);
INSERT INTO Veiculo (placa, modelo, fabricante, combustivel, ano, valor, quilometragem) 
VALUES ('ATY-4536', 'Civic', 'Honda', 'Gasolina', 2010, 25000, 22000);
INSERT INTO Veiculo (placa, modelo, fabricante, combustivel, ano, valor, quilometragem) 
VALUES ('HIO-1906', 'Corolla', 'Toyota', 'Flex', 2015, 16000, 25000);
INSERT INTO Veiculo (placa, modelo, fabricante, combustivel, ano, valor, quilometragem) 
VALUES ('WQD-1932', 'Uno', 'Fiat', 'Flex', 1998, 23000, 40000);
INSERT INTO Veiculo (placa, modelo, fabricante, combustivel, ano, valor, quilometragem) 
VALUES ('YJA-7342', 'HB20', 'Hyundai', 'Gasolina', 2009, 15000, 62000);
INSERT INTO Veiculo (placa, modelo, fabricante, combustivel, ano, valor, quilometragem) 
VALUES ('UHX-0098', 'EcoSport', 'Ford', 'Flex', 2008, 17000, 80000);
INSERT INTO Veiculo (placa, modelo, fabricante, combustivel, ano, valor, quilometragem) 
VALUES ('XGI-1740', 'Fox', 'Volkswagen', 'Flex', 2018, 70000, 0);
INSERT INTO Veiculo (placa, modelo, fabricante, combustivel, ano, valor, quilometragem) 
VALUES ('JIQ-1696', 'Strada', 'Fiat', 'Flex', 1900, 54000, 0);
INSERT INTO Veiculo (placa, modelo, fabricante, combustivel, ano, valor, quilometragem) 
VALUES ('HQR-9031', 'Ka Hatch', 'Ford', 'Diesel', 2017, 80000, 0);
INSERT INTO Veiculo (placa, modelo, fabricante, combustivel, ano, valor, quilometragem) 
VALUES ('BMZ-0923', 'Saveiro', 'Volkswagen', 'Gasolina', 2009, 20000, 28000);
INSERT INTO Veiculo (placa, modelo, fabricante, combustivel, ano, valor, quilometragem) 
VALUES ('EZC-6232', 'S10 Cabine Dupla', 'Chevrolet', 'Gasolina', 2005, 11000, 180000);
INSERT INTO Veiculo (placa, modelo, fabricante, combustivel, ano, valor, quilometragem) 
VALUES ('YUI-4821', 'New Fiesta Hatch', 'Ford', 'Flex', 2015, 26000, 53000);
INSERT INTO Veiculo (placa, modelo, fabricante, combustivel, ano, valor, quilometragem) 
VALUES ('KJA-1730', 'Fit', 'Honda', 'Gasolina', 2004, 8500, 205000);
INSERT INTO Veiculo (placa, modelo, fabricante, combustivel, ano, valor, quilometragem) 
VALUES ('OAN-6900', 'Duster', 'Renault', 'Diesel', 1999, 90000, 0);
INSERT INTO Veiculo (placa, modelo, fabricante, combustivel, ano, valor, quilometragem) 
VALUES ('KZA-0109', 'Voyage', 'Volkswagen', 'Flex', 2019, 76000, 0);
INSERT INTO Veiculo (placa, modelo, fabricante, combustivel, ano, valor, quilometragem) 
VALUES ('ZJK-1616', 'Cruze', 'Chevrolet', 'Flex', 2000, 22000, 25000);
INSERT INTO Veiculo (placa, modelo, fabricante, combustivel, ano, valor, quilometragem) 
VALUES ('ABN-8399', '530', 'Lifan', 'Gasolina', 2015, 14000, 107000);

#LISTANDO DADOS DA TABELA (QUESTAO 3)
#Selecionando todos os dados de todos os veiculos
SELECT * FROM Veiculo; 
#Selecionando Fabricante, modelo e ano dos veiculos com ano maior que 2000
SELECT fabricante, modelo, ano FROM Veiculo WHERE ano > 2000; 
#Selecionando todos os veiculos movidos a gasolina com ordem crescente de preço
SELECT * FROM Veiculo WHERE combustivel = 'Gasolina' ORDER BY valor DESC; 
#Selecionando fabricante, modelo, ano e valor dos veiculos que custam entre 15000 e 20000 por ordem decrescente de preço
SELECT fabricante, modelo, ano, valor FROM Veiculo WHERE valor > 15000 && valor < 20000 ORDER BY valor DESC; 
#Selecionando placa e quilometragem dos veiculos cuja quilometragem é menor que 30000
SELECT placa, quilometragem FROM Veiculo WHERE quilometragem < 30000;
#Selecionando todos os veiculos que sao movidos a gasolina OU Etanol
SELECT * FROM Veiculo WHERE combustivel = 'Gasolina' || combustivel = 'Flex';
#Selecionando todos os veiculos movidos a diesel e modelo Onix
SELECT * FROM Veiculo WHERE combustivel = 'Diesel' && modelo = 'Onix';

#ATUALIZANDO DADOS DA TABELA (QUESTAO 4)
UPDATE Veiculo SET valor = 110000 WHERE idVeiculo = 17;

#EXCLUINDO DADOS DA TABELA
DELETE FROM Veiculo WHERE idVeiculo = 3;