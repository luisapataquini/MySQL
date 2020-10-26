-- criar um banco de dados
create database db_escola;
-- acessar o banco de dados
use db_escola;
-- criar uma tabela
create table tb_alunos(
RA bigint auto_increment,
nome varchar(255) not null,
idade int not null,
turma varchar(255) not null,
mediafinal decimal(10,2) not null, 
primary key (RA)
);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Luisa", 10, "B5", 9.75);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("João", 10, "B5", 6.75);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Maria", 7, "B4", 7.25);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Rita", 7, "B4", 5.50);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Enzo", 11, "B6", 6.00);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Valentina", 9, "B5", 7.75);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Felipe", 9, "B5", 6.75);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Elisa", 7, "B4", 8.75);

select * from tb_alunos;

select * from tb_alunos where mediafinal > 7;
select * from tb_alunos where mediafinal < 7;

update tb_alunos set mediafinal = 6.50 where RA = 5;

select * from tb_alunos

