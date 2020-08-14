INSERT INTO nu_conta(num_conta, saldo, senha) 
VALUES (11111, 1000, 'alunoinatel'),
	   (22222, 550, 'minhasenha'),
       (33333, 2340, 'abcd123'),
       (44444, 9504, '123445678'),
       (55555, 300, 'bruno123');
       
INSERT INTO pessoa(cpf, nome, nu_conta_num_conta) 
VALUES ('111.111.111-11', 'João Augusto', 11111),
	   ('222.222.222-22', 'Emanuel Silva', 22222),
       ('333.333.333-33', 'José', 33333),
       ('444.444.444-44', 'Augusto Costa', 44444),
       ('555.555.555-55', 'Bruno', 55555);
       
SELECT * FROM nu_conta;
SELECT * FROM pessoa;

DELETE FROM nu_conta WHERE num_conta = 11111;

UPDATE nu_conta SET saldo = saldo+(saldo*0.5) WHERE num_conta = 11111;

