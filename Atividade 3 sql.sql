use notas;

create table notas_alunos (
id int (40) not null auto_increment,
nome varchar (50) not null,
idade int (4) not null,
sala varchar (50) not null,
materia varchar (50) not null,
nota float not null, 
primary key (id)
);


SELECT * FROM notas.notas_alunos where nota < 7;


SELECT * FROM notas.notas_alunos where nota > 7