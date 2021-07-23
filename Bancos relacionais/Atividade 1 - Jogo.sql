use db_generation_game_online;

create table tb_classe (
id_classe int not null auto_increment,
classe varchar (50) not null,
arma varchar (50) not null,
tipo_de_dano varchar (50) not null,
primary key (id_classe)
);



create table tb_personagem (
id_personagem int not null auto_increment,
nome varchar(50) not null,
cabelo varchar(50) not null,
veiculo varchar (50) not null,
defesa int not null,
ataque int not null, 
velocidade int not null,
nivel int not null,
fk_classe int,
primary key (id_personagem),
foreign key (fk_classe) references tb_classe (id_classe)

);


insert into tb_classe (classe, arma, tipo_de_dano) 
values 
('atirador', 'pistola', 'fisico'),
 ('suporte', 'cajado', 'magico'),
('tank', 'soco ingles', 'fisico'),
('assasino', 'adaga', 'magico'),
 ('mago', 'varinha', 'magico');


insert into tb_personagem (nome,cabelo,veiculo,defesa,ataque,velocidade,nivel, fk_classe)
 values 
 ('Jhon', 'branco','moto',5000,3600,200,4,5),
('Geocen', 'verde','carro',9000,1000,50,7,2),
 ('Arcanjo', 'branco','asas',1000,500,400,8,3),
('Pedro', 'rosa','asas',1500,9600,900,9,2),
 ('Esther', 'vermelho','cavalo',1500,300,200,3,3),
 ('William', 'preto','tapete',4500,3600,200,5,4),
 ('Vic', 'preto','bike',8500,3600,200,5,3),
 ('Cast', 'preto','loiro',7500,8600,500,5,2);


#Faça um select que retorne os personagens com o poder de ataque maior do que 2000.

SELECT * FROM db_generation_game_online.tb_personagem where ataque > 2000;


#Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.

SELECT * FROM db_generation_game_online.tb_personagem where defesa <= 2000 AND defesa >= 1000;


#Faça um select utilizando LIKE buscando os personagens com a letra C.

SELECT * FROM db_generation_game_online.tb_personagem where nome like '%c%';

   SELECT * FROM tb_personagem
   inner join db_generation_game_online.tb_classe ON tb_classe.id_classe = tb_personagem.id_classe;
   
   /*Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
os personagens que são arqueiros). */

SELECT tb_personagem.id_personagem, tb_personagem.nome, tb_classe.classe
from tb_personagem
inner join tb_classe ON tb_classe.id_classe = tb_personagem.fk_classe where tb_classe.classe = 'suporte';
   
   
   