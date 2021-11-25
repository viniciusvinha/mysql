use db_rh;

create table tb_funcionarios (
id bigint (5) auto_increment,
nome varchar (255) not null,
sobrenome varchar (255) not null,
cpf varchar (255)  not null,
ocupacao varchar (255) not null,
salario decimal (5,0) not null,
primary key (id)
);

insert into tb_funcionarios (nome, sobrenome, cpf, ocupacao, salario) values ("Vinicius", "Vinha", "123.123.123.12", "Gerente de Operações", 7500.00);
insert into tb_funcionarios (nome, sobrenome, cpf, ocupacao, salario) values ("John", "Alystair", "234.234.234-23", "Gerente de Vendas", 8000.00);
insert into tb_funcionarios (nome, sobrenome, cpf, ocupacao, salario) values ("Relâmpago", "Marquinhos", "345.345.345-34", "Gerente de Marketing", 9000.00);
insert into tb_funcionarios (nome, sobrenome, cpf, ocupacao, salario) values ("Messi", "Careca", "456.456.456-45", "Gerente de Logística", 10000.00);
insert into tb_funcionarios (nome, sobrenome, cpf, ocupacao, salario) values ("Stuart", "Little", "567.567.567-56", "Gerente de Finanças", 11000.00);

select * from tb_funcionarios;

select * from tb_funcionarios where salario > 2000;

select * from tb_funcionarios where salario < 2000;

update tb_funcionarios set salario = 1900 where id = 3

