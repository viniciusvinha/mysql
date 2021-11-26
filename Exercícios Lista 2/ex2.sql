create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria (
id bigint auto_increment,
tipo varchar(255) not null,
quantidade int not null,
ativo boolean not null,
primary key (id)
);

create table tb_pizza (
id bigint auto_increment,
sabor varchar (255) not null,
regiao varchar (255) not null,
preco decimal (10,3) not null,
tipo_id bigint not null,
primary key (id),
foreign key (tipo_id) references tb_categoria (id)
);

insert into tb_categoria (tipo, quantidade, ativo) values ("pizza salgada", 200, true);
insert into tb_categoria (tipo, quantidade, ativo) values ("pizza doce", 130, true);
insert into tb_categoria (tipo, quantidade, ativo) values ("pizza vetegariana", 50, true);
insert into tb_categoria (tipo, quantidade, ativo) values ("esfiha salgada", 180, true);
insert into tb_categoria (tipo, quantidade, ativo) values ("esfiha doce", 110, true);

select * from tb_categoria;

insert into tb_pizza (sabor, regiao, preco, tipo_id) values ("Marguerita", "Zona Leste", 39.90, 1);
insert into tb_pizza (sabor, regiao, preco, tipo_id) values ("Calabresa", "Zona Oeste", 39.90, 4);
insert into tb_pizza (sabor, regiao, preco, tipo_id) values ("Brigadeiro", "Zona Norte", 42.90, 2);
insert into tb_pizza (sabor, regiao, preco, tipo_id) values ("Abobrinha", "Zona Sul", 49.90, 3);
insert into tb_pizza (sabor, regiao, preco, tipo_id) values ("M&M's", "ABC", 4.90, 5);
insert into tb_pizza (sabor, regiao, preco, tipo_id) values ("Doce de Leite", "Zona Oeste", 41.90, 2);
insert into tb_pizza (sabor, regiao, preco, tipo_id) values ("Carne", "Zona Sul", 2.90, 4);
insert into tb_pizza (sabor, regiao, preco, tipo_id) values ("Portuguesa", "Zona Leste", 45.90, 1);

update tb_pizza set preco = 2.90 where id = 7;
update tb_pizza set preco = 3.90 where id = 2;
update tb_pizza set preco = 4.90 where id = 5;
 
select * from tb_pizza;

select sabor, regiao, preco, tipo, quantidade from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.tipo_id where preco > 45;

select sabor, regiao, preco, tipo, quantidade from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.tipo_id where preco between 29 and 60;

select sabor, regiao, preco, tipo, quantidade from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.tipo_id where preco between 2 and 29; -- para ver a quantidade de esfihas


select * from tb_pizza where sabor like "%c%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.tipo_id;

select sabor, regiao, preco, tipo, quantidade from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.tipo_id where tipo = "pizza";




