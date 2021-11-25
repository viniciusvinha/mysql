use db_eco;

create table tb_produtos (
id bigint (8) auto_increment,
categoria varchar (255) not null,
marca varchar (255) not null, 
fabricante varchar (255) not null,
quantidade int not null, 
preco decimal (10,2) not null,
primary key (id)
);

insert into tb_produtos (categoria, marca, fabricante, quantidade, preco) values ("Eletrodoméstico", "LG", "Brasil", 48, 490.00);
insert into tb_produtos (categoria, marca, fabricante, quantidade, preco) values ("Tecnologia", "HP", "Indonésia", 20, 4000.00);
insert into tb_produtos (categoria, marca, fabricante, quantidade, preco) values ("Moda", "Nike", "EUA", 200, 70.00);
insert into tb_produtos (categoria, marca, fabricante, quantidade, preco) values ("Automotivo", "Mercedes", "Inglaterra", 10, 200000.00);
insert into tb_produtos (categoria, marca, fabricante, quantidade, preco) values ("Decoração", "Tok&Stok", "China", 170, 50.00);
insert into tb_produtos (categoria, marca, fabricante, quantidade, preco) values ("Esporte e Lazer", "Adidas", "Taiwan", 200, 570.00);
insert into tb_produtos (categoria, marca, fabricante, quantidade, preco) values ("Saúde e Cuidados Pessoais", "3M", "Filipinas", 130, 25.00);
insert into tb_produtos (categoria, marca, fabricante, quantidade, preco) values ("Móveis", "Bartira", "Brasil", 77, 1100.00);

select * from tb_produtos;

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set marca = "Samsung" where id = 1;
