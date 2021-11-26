create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria (
id bigint auto_increment,
classe varchar(255) not null,
quantidade int not null,
ativo boolean not null,
primary key (id)
);

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal (10,3) not null,
fabricante varchar (255) not null,
regiao varchar (255) not null,
tipo_id bigint not null,
primary key (id),
foreign key (tipo_id) references tb_categoria (id)
);

insert into tb_categoria (classe, quantidade, ativo) values ("Medicamento", 1000, true);
insert into tb_categoria (classe, quantidade, ativo) values ("Beleza e Higiene", 500, true);
insert into tb_categoria (classe, quantidade, ativo) values ("Bebês", 300, true);

select * from tb_categoria;

insert into tb_produtos (nome, preco, fabricante, regiao, tipo_id) values ("Cloroquina", 120.00, "EUA", "Zona Leste", 1);
insert into tb_produtos (nome, preco, fabricante, regiao, tipo_id) values ("Shampoo Seda", 29.90, "Brasil", "ABC", 1);
insert into tb_produtos (nome, preco, fabricante, regiao, tipo_id) values ("Hidratante Facial", 80.00, "China", "Zona Sul", 1);
insert into tb_produtos (nome, preco, fabricante, regiao, tipo_id) values ("Ivermectina", 140.00, "EUA", "ABC", 1);
insert into tb_produtos (nome, preco, fabricante, regiao, tipo_id) values ("Fralda", 70.00, "Taiwan", "Zona Norte", 1);
insert into tb_produtos (nome, preco, fabricante, regiao, tipo_id) values ("Sabonete Facial", 29.90, "Alemanha", "Zona Oeste", 1);
insert into tb_produtos (nome, preco, fabricante, regiao, tipo_id) values ("Advil", 13.90, "Canadá", "Zona Sul", 1);
insert into tb_produtos (nome, preco, fabricante, regiao, tipo_id) values ("Chupeta", 35.90, "China", "Zona Leste", 1);

select * from tb_produtos;

select nome, preco, fabricante, regiao, quantidade from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.tipo_id where preco > 50;

select nome, preco, fabricante, regiao, quantidade from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.tipo_id where preco between 3 and 60;

select * from tb_produtos where nome like "%b%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.tipo_id;


select nome, preco, fabricante, regiao, quantidade from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.tipo_id where classe = "Medicamento";










