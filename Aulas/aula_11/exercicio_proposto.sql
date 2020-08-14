CREATE DATABASE supermarket;

USE supermarket;

CREATE TABLE caixa(
	id bigint primary key auto_increment,
    dinheiro real not null
);

CREATE TABLE pedido(
	id bigint primary key auto_increment,
    cpf_cliente varchar(45),
    status_pedido varchar(45) not null,
    valor_total real not null,
    caixa_id bigint not null,
    constraint fk_caixa_id foreign key (caixa_id) references caixa(id)
);

insert into caixa (dinheiro) values (100.00), (40.45);
insert into pedido (cpf_cliente, status_pedido, valor_total, caixa_id) 
values ('111.111.111-11', 'PENDENTE', 25.00, 1), ('222.222.222-22', 'PENDENTE', 42.50, 1);

select * from caixa;
select * from pedido;

CALL confirma_pedido(2, 'PENDENTE', 42.50);