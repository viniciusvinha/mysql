use db_escola;

create table tb_estudantes (
id bigint (8) auto_increment,
nome varchar (255) not null,
sobrenome varchar (255) not null, 
idade int not null,
cpf varchar (255) not null, 
nota decimal (4,2) not null,
primary key (id)
);

insert into tb_estudantes (nome, sobrenome, idade, cpf, nota) values ("Vinicius", "Vinha", 23, "123.123.123-12", 8.9);
insert into tb_estudantes (nome, sobrenome, idade, cpf, nota) values ("Aimée", "Thompson", 29, "234.234.234-23", 6.3);
insert into tb_estudantes (nome, sobrenome, idade, cpf, nota) values ("Luis", "Guerreiro", 25, "345.345.345-34", 3.0);
insert into tb_estudantes (nome, sobrenome, idade, cpf, nota) values ("Rafa", "Stark", 19, "456.456.456-45", 9.0);
insert into tb_estudantes (nome, sobrenome, idade, cpf, nota) values ("Lara", "Daniel", 18, "567.567.567-56", 10.0);
insert into tb_estudantes (nome, sobrenome, idade, cpf, nota) values ("Fiama", "Vidal", 27, "678.678.678-67", 7.4);
insert into tb_estudantes (nome, sobrenome, idade, cpf, nota) values ("Lucas", "Celestino", 26, "789.789.789-78", 4.5);
insert into tb_estudantes (nome, sobrenome, idade, cpf, nota) values ("Augusto", "Vicente", 28, "890.890.890-89", 1.2);

select * from tb_estudantes;

select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;

update tb_estudantes set idade = 46 where id = 3;