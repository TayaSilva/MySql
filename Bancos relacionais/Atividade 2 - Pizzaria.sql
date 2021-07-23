use db_pizzaria_legal;

create table tb_categoria (
id_categoria int not null auto_increment,
 nome varchar (50) not null,
 telefone char (9) not null,
 endereço varchar (200) not null,
primary key (id_categoria)
);

create table tb_produto (
id_produto int not null auto_increment,
tipo_pizza varchar(50) not null,
adicional varchar(50) not null,
borda varchar (50) not null,
bebida varchar (50) not null, 
preço float not null,
quantidade_Pizzas int not null,
caixinha_motoca float not null,
fk_categoria int,
primary key (id_produto),
foreign key (fk_categoria) references tb_categoria (id_categoria)

);

insert into tb_categoria (nome, telefone, endereço) 
values
('João', '987654321', 'Rua Vitoria Regina 23'),
('Kenay', '943654321', 'Rua Regina Vitoria 33'),
('Iris', '987654961', 'Rua Vinte e três 32'),
('Eduarda', '237654321', 'Regina Vinte 232'),
('Henrique', '327654321', 'Rua Três Vitoria 322');


insert into tb_produto (tipo_pizza, adicional, borda, bebida, preço, quantidade_Pizzas, caixinha_motoca, fk_categoria)
values
('Marquerita', 'cheddar', 'cheddar', 'Coca Cola', 45.80, 1, 2.50,2),
('Portuguesa', 'cheddar', 'sem bordar', 'Fanta', 40.80, 1, 5.50,3),
('Calabresa', 'sem adicional', 'cheddar', 'Coca Cola', 45.80, 2, 10.00,1),
('Marquerita', 'calabresa', 'Catupiry', 'Fanta', 45.80, 1, 1.50,4),
('Mussarela', 'Gorgonzola', 'Catupiry', 'Coca Cola', 50.80, 2, 2.50,5),
('Calabresa', 'queijo', 'cheddar', 'Coca Cola', 50.80, 1, 5.50,2),
('Quatro queijos', 'cheddar', 'Catupiry', 'Sem refrigerante', 35.80, 1, 0.50,3),
('Chocolate', 'morango', 'ninho', 'Coca Cola', 60.80, 1, 3.50,5);


#Faça um select que retorne os Produtos com o valor maior do que 45 reais.
SELECT * FROM tb_produto where preço > 45;

#Faça um select trazendo os Produtos com valor entre 29 e 60 reais.
SELECT * FROM tb_produto where preço >= 29 and  preço <= 60;


#Faça um select utilizando LIKE buscando os Produtos com a letra C.
SELECT * FROM tb_produto where tipo_pizza like '%c%';

#Faça um um select com Inner join entre tabela categoria e pizza.
 SELECT * FROM tb_produto
   inner join db_gpizzaria_legal.tb_categoria ON tb_categoria.id_categoria = tb_produto.id_produto;
   
   