
create table tb_produtos (
id bigint (6) auto_increment,
camisa varchar (30) null,
bone varchar (40) null,
calça varchar (30) null,
tenis varchar (30) null,
blusa varchar (30) null,
saia varchar (30) null,
vestido varchar (30) null,
preço float not null,
primary key (id)
)


SELECT * FROM ecommerce.tb_produtos where preço > 500;

SELECT * FROM ecommerce.tb_produtos where preço < 500




