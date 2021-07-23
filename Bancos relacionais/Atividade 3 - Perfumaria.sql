create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria (
id_categoria int not null auto_increment,
categoria varchar (50) not null,
estante int  not null,
 prateleira int not null,
primary key (id_categoria)
);

create table tb_produto (
id_produto int not null auto_increment,
nome varchar(50) not null,
validade varchar(50) not null,
cor varchar (50) not null,
tamanho varchar (50) not null, 
preço float not null,
quantidade int not null,
bula varchar (40) not null,
fk_categoria int,
primary key (id_produto),
foreign key (fk_categoria) references tb_categoria (id_categoria)

);

insert into tb_categoria (categoria, estante, prateleira) 
values
('Cosmeticos', '1', '3'),
('Remedios', '32', '4'),
('Vitaminas', '21', '2'),
('Bebes', '12', '32'),
('Perfumaria', '13', '8');


insert into tb_produto (nome, validade, cor, tamanho, preço, quantidade, bula)
values
('Esmalte', '12-2-20', 'Rosa', 'pequena', 2.57, 1, 'sem bula'),
('Dipirona', '13-4-23', 'sem cor', 'pequeno', 10.00, 1, 'com bula'),
('Absorvente', '12-5-34', 'rosa', 'pequeno', 6.00, 2, 'sem bula'),
('Shampoo', '12-3-60', 'sem cor', 'pequeno', 12.00, 1, 'sem bula'),
('Creme hidratante', '2-3-43', 'rosa', 'médio', 50.80, 2, 'sem bula'),
('Espuma de barbear', '12-3-23', 'branca', 'pequeno', 13.80, 1, 'sem bula'),
('água oxigenada', '12-3-25', 'branca', 'pequeno', 5.80, 1, 'sem bula'),
('Fralda', '12-3-32', 'sem cor', 'médio', 17.80, 1, 'sem bula');


#Faça um select que retorne os Produtos com o valor maior do que 50 reais.
SELECT * FROM tb_produto where preço > 50;

#Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_produto where preço >= 3 and  preço <= 60;


#Faça um select utilizando LIKE buscando os Produtos com a letra b.
SELECT * FROM tb_produto where nome like '%B%';


   
   SELECT tb_produto.id_produto, tb_produto.nome, tb_categoria.categoria
from tb_produto
inner join tb_categoria ON tb_categoria.id_categoria = tb_produto.fk_categoria where tb_categoria.categoria = 'Remedios';
   