create database db_generation_game_online; -- Criação do banco de dados

use db_generation_game_online; -- Escolha do banco de dados

-- Criação da tabela de classe

create table tb_classe (  
id bigint auto_increment, 
tipo varchar (255) not null, 
mapa varchar (255) not null, 
ativo boolean not null, 
primary key (id) ); 

-- Criação da tabela de personagens e atributos
create table tb_personagem ( 
id bigint auto_increment, 
nome varchar (255) not null, 
def float not null, 
ata float not null, 
habilidade varchar (255) not null, 
classe_id bigint not null, 
primary key (id), 
foreign key (classe_id) references tb_classe (id) );

-- Populando a tabela de classe com 5 dados:

insert into tb_classe (tipo, mapa, ativo) values ("Guerreira", "Mirage", true);
insert into tb_classe (tipo, mapa, ativo) values ("Arqueiro", "Dust", true);
insert into tb_classe (tipo, mapa, ativo) values ("Mago", "Inferno", true);
insert into tb_classe (tipo, mapa, ativo) values ("Troll", "Train", true);
insert into tb_classe (tipo, mapa, ativo) values ("Sage", "Arcange", true); 

update tb_classe set tipo = "Paladinho" where id = 5;

select * from tb_classe;

-- Populando a tabela de personagens com 8 dados:

insert into tb_personagem (nome, def, ata, habilidade, classe_id) values ("Ace", 2000, 4000, "Estrategista", 5);
insert into tb_personagem (nome, def, ata, habilidade, classe_id) values ("Beef", 500, 3000, "Força Física", 4);
insert into tb_personagem (nome, def, ata, habilidade, classe_id) values ("Elmo", 4000, 1000, "Estrategista", 3);
insert into tb_personagem (nome, def, ata, habilidade, classe_id) values ("Gixmo", 1800, 6000, "Estrategista", 1);
insert into tb_personagem (nome, def, ata, habilidade, classe_id) values ("Hoss", 500, 7000, "Estrategista", 2);
insert into tb_personagem (nome, def, ata, habilidade, classe_id) values ("Hunk", 3800, 1500, "Estrategista", 3);
insert into tb_personagem (nome, def, ata, habilidade, classe_id) values ("Biggie", 1000, 3500, "Estrategista", 4);
insert into tb_personagem (nome, def, ata, habilidade, classe_id) values ("Sparkye", 1800, 5000, "Estrategista", 5);

update tb_personagem set habilidade = "Feitiço" where id = 3;
update tb_personagem set habilidade = "Destreza" where id = 4;
update tb_personagem set habilidade = "Visão de Longo Alcance" where id = 5;
update tb_personagem set habilidade = "Feitiço" where id = 6;
update tb_personagem set habilidade = "Força Física" where id = 7;


select * from tb_personagem;

select * from tb_personagem where ata > 2000;
select * from tb_personagem where def between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select nome, def, ata, tb_classe.tipo, tb_classe.mapa from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

